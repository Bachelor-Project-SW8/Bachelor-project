"use client";

import React, { useEffect, useState } from "react";
import { Widget } from "../../components/widget/widget";
import styles from "../../page.module.scss";
import { ProductTile } from "../../components/productTile/productTile";
import { Filter } from "../../components/Filter/Filter";

import {
  Product,
  Category,
  Color,
  ProductCategory,
  ProductColor,
} from "../../types/types"; // Importer typerne
import { ProductCarousel } from "../../components/productCarousel/productCarousel";
import Link from "next/link";

const Bracelets = () => {
  const [products, setProducts] = useState<Product[]>([]);
  const [categories, setCategories] = useState<Category[]>([]);
  const [colors, setColors] = useState<Color[]>([]);
  const [productCategories, setProductCategories] = useState<ProductCategory[]>(
    []
  );
  const [productColors, setProductColors] = useState<ProductColor[]>([]);
  const [filteredProducts, setFilteredProducts] = useState<Product[]>([]);
  const [selectedCategories, setSelectedCategories] = useState<number[]>([]); // Store selected category IDs
  const [selectedColors, setSelectedColors] = useState<number[]>([]); // Store selected color IDs

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

  // Update the filters when categories or colors are selected/deselected
  const handleApplyFilters = (
    newSelectedCategories: number[],
    newSelectedColors: number[]
  ) => {
    setSelectedCategories(newSelectedCategories);
    setSelectedColors(newSelectedColors);
    filterProducts(newSelectedCategories, newSelectedColors);
  };

  return (
    <div className={styles.screengrid}>
      <div className={styles.productContainer}>
        <div className={styles.filterContainer}>
          <Filter
            className={styles.filterTrigger}
            mobile
            desktop
            categories={categories}
            colors={colors}
            onApplyFilters={handleApplyFilters} // Pass the handler to Filter component
            selectedCategories={selectedCategories} // Pass selected categories
            selectedColors={selectedColors} // Pass selected colors
          />
        </div>

        <div className={styles.productTileGrid}>
          {(filteredProducts.length > 0 ? filteredProducts : products).map(
            (product, index) =>
              index % 8 === 7 ? (
                <div key={`widget-${index}`} className={styles.widgetContainer}>
                  <Widget
                    key={`widget-${index}`}
                    picture={
                      categories[index % categories.length].CategoryPicture
                    } // Increment index for widget
                    text={categories[index % categories.length].CategoryName}
                    onClick={() => {
                      // Find the category by name and filter products
                      const selectedCategory =
                        categories[index % categories.length];
                      if (selectedCategory) {
                        handleApplyFilters([selectedCategory.CategoryID], []); // Pass only the clicked category's ID
                      }
                    }}
                  />
                </div>
              ) : (
                <div key={product.ProductID}>
                  <Link
                    className={styles.productTileLink}
                    href={`/category/bracelets/products/${product.ProductID}`}
                  >
                    <ProductTile
                      className={styles.productTile}
                      product={product}
                    />
                  </Link>
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
};
export default Bracelets;
