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
import { ProductCarousel } from "@/app/components/productCarousel/productCarousel";
import Link from "next/link";
import { ProductTile } from "@/app/components/productTile/productTile";
import { ChevronLeft } from "lucide-react";

const ProductPage = () => {
  const { id } = useParams(); // Get the dynamic product ID from URL
  const [product, setProduct] = useState<Product | null>(null);
  const [categories, setCategories] = useState<Category[]>([]);
  const [colors, setColors] = useState<Color[]>([]);
  const [productCategories, setProductCategories] = useState<ProductCategory[]>(
    []
  );
  const [productColors, setProductColors] = useState<ProductColor[]>([]);
  const [products, setProducts] = useState<Product[]>([]);

  useEffect(() => {
    const fetchProductData = async () => {
      try {
        const response = await fetch("/api/Data"); // Fetch data for products
        if (!response.ok) throw new Error("Error fetching product data");

        const data = await response.json();
        const productId = parseInt(Array.isArray(id) ? id[0] : id || "");
        if (isNaN(productId)) return;

        const foundProduct = data.products.find(
          (p: Product) => p.ProductID === productId
        );
        if (foundProduct) {
          setProduct(foundProduct);
          setProducts(data.products);
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

  // Find related categories and colors for the current product
  const relatedCategories = productCategories
    .filter((pc) => pc.ProductID === product.ProductID)
    .map((pc) => categories.find((cat) => cat.CategoryID === pc.CategoryID))
    .filter(Boolean);

  const relatedColors = productColors
    .filter((pc) => pc.ProductID === product.ProductID)
    .map((pc) => colors.find((color) => color.ColorID === pc.ColorID))
    .filter(Boolean);

  // Filter products based on matching category and color
  const relatedProducts = products.filter((prod) => {
    // Exclude the current product
    if (prod.ProductID === product.ProductID) {
      return false;
    }

    const productCategoriesForProd = productCategories
      .filter((pc) => pc.ProductID === prod.ProductID)
      .map((pc) => categories.find((cat) => cat.CategoryID === pc.CategoryID))
      .filter(Boolean);

    const productColorsForProd = productColors
      .filter((pc) => pc.ProductID === prod.ProductID)
      .map((pc) => colors.find((color) => color.ColorID === pc.ColorID))
      .filter(Boolean);

    // Check if the product shares any category or color with the current product
    const matchesCategory = productCategoriesForProd.some((cat) =>
      relatedCategories.some(
        (relatedCat) => relatedCat?.CategoryID === cat?.CategoryID
      )
    );

    const matchesColor = productColorsForProd.some((color) =>
      relatedColors.some(
        (relatedColor) => relatedColor?.ColorID === color?.ColorID
      )
    );

    return matchesCategory && matchesColor;
  });

  return (
    <div className={styles.productPage}>
      <Link href={"/category/bracelets"} className={styles.goBackButton}>
        <ChevronLeft />
        <span>Go Back</span>
      </Link>
      <div className={styles.productinfocontainer}>
        <div className={styles.imageContainer}>
          <img src={product.ProductPicture} alt={product.ProductName} />
        </div>

        <div className={styles.detailsContainer}>
          <div className={styles.details}>
            <p className={styles.brand}>{product.Brand}</p>
            <div className={styles.productNameContainer}>
              <h1>{product.ProductName}</h1>
              <p className={styles.price}>${product.Price}</p>
            </div>
            <div className={styles.categories}>
              <h3>Categories:</h3>
              <ul>
                {relatedCategories.map((category) => (
                  <li key={category?.CategoryID}>{category?.CategoryName}</li>
                ))}
              </ul>
            </div>

            <div className={styles.colors}>
              <h3>Colors:</h3>
              <ul>
                {relatedColors.map((color) => (
                  <li key={color?.ColorID}>{color?.ColorName}</li>
                ))}
              </ul>
            </div>

            <div className={styles.addToCart}>
              <button>Add to Cart</button>
            </div>
            <div className={styles.productInfo}>
              <ul className={styles.infoList}>
                <li>Free shipping on orders above $50</li>
                <li>30 days of returns</li>
                <li>1-2 days shipping</li>
              </ul>

              <div className={styles.description}>
                <h2>Description</h2>
                <p>{product.Description}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className={styles.productCarouselContainer}>
        <h4 className={styles.productCarouselHeader}>Related products</h4>
        <ProductCarousel>
          {relatedProducts.map((product) => (
            <Link
              className={styles.productTileLink}
              key={product.ProductID}
              href={`/category/bracelets/products/${product.ProductID}`}
            >
              <ProductTile
                className={styles.carouselProductTiles}
                product={product}
              ></ProductTile>
            </Link>
          ))}
        </ProductCarousel>
      </div>
      <div className={styles.videoContainer}>
        <h2>Product Video</h2>
        <div className={styles.videoFrame}>
          <iframe
            className={styles.productVideo}
            width="100%"
            height="400"
            src="https://player.vimeo.com/video/870984545?autopause=0&loop=1&quality=auto&app_id=122963"
            title="Product Video"
            frameBorder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowFullScreen
          />
        </div>
      </div>
    </div>
  );
};

export default ProductPage;
