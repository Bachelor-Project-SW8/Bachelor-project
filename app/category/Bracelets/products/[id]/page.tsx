"use client";
import {
  Product,
  Category,
  Color,
  ProductCategory,
  ProductColor,
} from "@/app/types/types";
import { useParams } from "next/navigation";
import { useState, useEffect } from "react";
import styles from "../products.module.scss";

const ProductPage = () => {
  const { id } = useParams(); // Get the dynamic product ID from URL
  const [product, setProduct] = useState<Product | null>(null);
  const [categories, setCategories] = useState<Category[]>([]);
  const [colors, setColors] = useState<Color[]>([]);
  const [productCategories, setProductCategories] = useState<ProductCategory[]>(
    []
  );
  const [productColors, setProductColors] = useState<ProductColor[]>([]);

  useEffect(() => {
    const fetchProductData = async () => {
      try {
        const response = await fetch("/api/Data"); // Fetch data for products
        if (!response.ok) throw new Error("Error fetching product data");

        const data = await response.json();
        const productId = parseInt(Array.isArray(id) ? id[0] : id);
        if (isNaN(productId)) return;

        const foundProduct = data.products.find(
          (p: Product) => p.ProductID === productId
        );
        if (foundProduct) {
          setProduct(foundProduct);
          setCategories(data.categories);
          setColors(data.colors);
          setProductCategories(data.productCategories);
          setProductColors(data.productColors);
        }
      } catch (error) {
        console.error(error);
      }
    };

    if (id) fetchProductData();
  }, [id]);

  if (!product) return <p>Loading...</p>;

  const relatedCategories = productCategories
    .filter((pc) => pc.ProductID === product.ProductID)
    .map((pc) => categories.find((cat) => cat.CategoryID === pc.CategoryID));

  const relatedColors = productColors
    .filter((pc) => pc.ProductID === product.ProductID)
    .map((pc) => colors.find((color) => color.ColorID === pc.ColorID));

  return (
    <div className={styles.productPage}>
      <div className={styles.imageContainer}>
        <img src={product.ProductPicture} alt={product.ProductName} />
      </div>

      <div className={styles.details}>
        <p className={styles.brand}> {product.Brand}</p>
        <div className={styles.productnamecontainer}>
          <h1>{product.ProductName}</h1>
          <p className={styles.price}>${product.Price}</p>
        </div>
        <div className={styles.categories}>
          <h3>Categories:</h3>
          <ul>
            {relatedCategories.map((category) =>
              category ? (
                <li key={category.CategoryID}>{category.CategoryName}</li>
              ) : null
            )}
          </ul>
        </div>

        <div className={styles.colors}>
          <h3>Colors:</h3>
          <ul>
            {relatedColors.map((color) =>
              color ? <li key={color.ColorID}>{color.ColorName}</li> : null
            )}
          </ul>
        </div>

        <div className={styles.addToCart}>
          <button>Add to Cart</button>
        </div>
        <div>
          <ul className={styles.infoList}>
            <li>Gratis levering på ordrer over $50</li>
            <li>30 dages returret</li>
            <li>Hurtig levering: 1-2 hverdage</li>
          </ul>

          <div className={styles.description}>
            <p>product.</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ProductPage;
