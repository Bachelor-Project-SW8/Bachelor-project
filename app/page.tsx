"use client";

import { useEffect, useState } from "react";
import { Carousel } from "./components/carousel/carousel";
import pic1 from "../images/pic1.jpg";
import pic2 from "../images/pic2.jpg";
import pic3 from "../images/pic3.jpg";
import pic4 from "../images/pic4.jpg";
import pic5 from "../images/pic5.jpg";

import steelBracelet from "./components/widget/widgetPictures/steelbracelet.png";
import { Widget } from "./components/widget/widget";

import styles from "./page.module.scss";
import { ProductTile } from "./components/productTile/productTile";
import { Filter } from "./components/Filter/Filter";

import {
  Product,
  Category,
  Color,
  ProductCategory,
  ProductColor,
} from "./types/types"; // Importer typerne
import { ProductCarousel } from "./components/productCarousel/productCarousel";

export default function Home() {
  const [products, setProducts] = useState<Product[]>([]);
  const [categories, setCategories] = useState<Category[]>([]);
  const [colors, setColors] = useState<Color[]>([]);
  const [productCategories, setProductCategories] = useState<ProductCategory[]>(
    []
  );
  const [productColors, setProductColors] = useState<ProductColor[]>([]);
  const [filteredProducts, setFilteredProducts] = useState<Product[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch("/api/Data"); // Adjust to your API endpoint

      if (!response.ok) {
        console.error("Error fetching data:", response.status);
        return;
      }

      try {
        const data = await response.json();
        console.log("Data:", data);
        setProducts(data.products);
        setCategories(data.categories); // These populate the filter options
        setColors(data.colors); // These populate the filter options
        setProductCategories(data.productCategories); // Populate ProductCategory mapping
        setProductColors(data.productColors); // Populate ProductColor mapping
      } catch (error) {
        console.error("Error parsing JSON:", error);
      }
    };

    fetchData();
  }, []);

  const filterProducts = (
    selectedCategories: number[],
    selectedColors: number[]
  ) => {
    const filtered = products.filter((product) => {
      // Match categories
      const categoryMatch =
        selectedCategories.length === 0 ||
        productCategories.some(
          (pc) =>
            pc.ProductID === product.ProductID &&
            selectedCategories.includes(pc.CategoryID)
        );

      // Match colors
      const colorMatch =
        selectedColors.length === 0 ||
        productColors.some(
          (pc) =>
            pc.ProductID === product.ProductID &&
            selectedColors.includes(pc.ColorID)
        );

      return categoryMatch && colorMatch;
    });

    console.log("Filtered Products:", filtered);

    setFilteredProducts(filtered);
  };

  // Oprindelige billeder til carousellen
  const carouselImages = [pic1, pic2, pic3, pic4, pic5];

  return (
    <div className={styles.screengrid}>
      {/* Carousel */}
      <div className={styles.carousel}>
        <Carousel imageUrls={carouselImages.map((image) => image.src)} />
      </div>

      <div className={styles.productContainer}>
        <div className={styles.filterContainer}>
          <Filter
            className={styles.filterTrigger}
            mobile
            desktop
            categories={categories}
            colors={colors}
            onApplyFilters={filterProducts}
          />
        </div>

        <div className={styles.productTileGrid}>
          {(filteredProducts.length > 0 ? filteredProducts : products).map(
            (product) => (
              <div key={product.ProductID}>
                <ProductTile className={styles.productTile} product={product} />
              </div>
            )
          )}
        </div>
      </div>
      <div className={styles.productCarouselContainer}>
        <h2 className={styles.productCarouselHeader}>
          Looking for something specific?
        </h2>
        <ProductCarousel>
          {products.map((product) => (
            <Widget
              key={product.ProductID}
              picture={product.ProductPicture}
              text={product.ProductName}
            />
          ))}
        </ProductCarousel>
      </div>
    </div>
  );
}
