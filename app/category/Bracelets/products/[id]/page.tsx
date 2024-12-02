'use client';

import { useParams } from 'next/navigation'; // For accessing dynamic URL params
import { useEffect, useState } from 'react';
import { Product, Category, Color, ProductCategory, ProductColor } from '../../../../types/types'; // Import relevant types

const ProductPage = () => {
    const { id } = useParams(); // Get the dynamic product ID from URL
    const [product, setProduct] = useState<Product | null>(null);
    const [categories, setCategories] = useState<Category[]>([]);
    const [colors, setColors] = useState<Color[]>([]);
    const [productCategories, setProductCategories] = useState<ProductCategory[]>([]);
    const [productColors, setProductColors] = useState<ProductColor[]>([]);

    useEffect(() => {
        const fetchProductData = async () => {
            try {
                const response = await fetch('/api/Data'); // Fetch data for products
                if (!response.ok) {
                    throw new Error('Error fetching product data');
                }

                const data = await response.json();

                // Ensure `id` is a valid integer
                const productId = parseInt(Array.isArray(id) ? id[0] : id); // Ensure it's a string before parsing

                if (isNaN(productId)) {
                    console.error('Invalid product ID');
                    return;
                }

                // Find the product by ID
                const foundProduct = data.products.find((p: Product) => p.ProductID === productId);
                if (foundProduct) {
                    setProduct(foundProduct);
                    setCategories(data.categories);
                    setColors(data.colors);
                    setProductCategories(data.productCategories);
                    setProductColors(data.productColors);
                } else {
                    console.error('Product not found');
                }
            } catch (error) {
                console.error('Error fetching product data:', error);
            }
        };

        if (id) {
            fetchProductData(); // Fetch data only if `id` exists
        }
    }, [id]);

    if (!product) {
        return <p>Loading...</p>;
    }

    // Get related categories and colors for the product
    const relatedCategories = productCategories
        .filter((pc) => pc.ProductID === product.ProductID)
        .map((pc) => categories.find((cat) => cat.CategoryID === pc.CategoryID));

    const relatedColors = productColors
        .filter((pc) => pc.ProductID === product.ProductID)
        .map((pc) => colors.find((color) => color.ColorID === pc.ColorID));

    return (
        <div>
            <h1>{product.ProductName}</h1>
            <img src={product.ProductPicture} alt={product.ProductName} />
            <p>${product.Price}</p>
            <p>Brand: {product.Brand}</p>

            <div>
                <h3>Categories:</h3>
                <ul>
                    {relatedCategories.map((category) =>
                        category ? <li key={category.CategoryID}>{category.CategoryName}</li> : null
                    )}
                </ul>
            </div>

            <div>
                <h3>Colors:</h3>
                <ul>
                    {relatedColors.map((color) =>
                        color ? <li key={color.ColorID}>{color.ColorName}</li> : null
                    )}
                </ul>
            </div>
        </div>
    );
};

export default ProductPage;
