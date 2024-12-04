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
import { Filterbar } from "@/app/components/filterBar/filterBar";

import Anchor from '../../../images/filterbarImages/AnchorBracelets.png'
import Bangle from '../../../images/filterbarImages/BangleBracelets.png'
import Beaded from '../../../images/filterbarImages/BeadedBracelets.png'
import Stones from '../../../images/filterbarImages/BraceletsWStones.png'
import Braided from '../../../images/filterbarImages/BraidedBracelets.png'
import Chain from '../../../images/filterbarImages/ChainBracelets.png'
import Charm from '../../../images/filterbarImages/CharmBracelets.png'
import Cross from '../../../images/filterbarImages/CrossBracelets.png'
import Cuff from '../../../images/filterbarImages/CuffBracelets.png'
import Gold from '../../../images/filterbarImages/GoldBracelets.png'
import Leather from '../../../images/filterbarImages/LeatherBracelets.png'
import Paracord from '../../../images/filterbarImages/ParacordBracelets.png'
import Silver from '../../../images/filterbarImages/SilverBracelets.png'
import Steel from '../../../images/filterbarImages/SteelBracelets.png'
import Wide from '../../../images/filterbarImages/WideBracelets.png'
import Image from "next/image";

const braceletTypes = [
  { name: 'Anchor Bracelets', src: Anchor },
  { name: 'Bangle Bracelets', src: Bangle },
  { name: 'Beaded Bracelets', src: Beaded },
  { name: 'Bracelets with Stones', src: Stones },
  { name: 'Braided Bracelets', src: Braided },
  { name: 'Chain Bracelets', src: Chain },
  { name: 'Charm Bracelets', src: Charm },
  { name: 'Cross Bracelets', src: Cross },
  { name: 'Cuff Bracelets', src: Cuff },
  { name: 'Gold Bracelets', src: Gold },
  { name: 'Leather Bracelets', src: Leather },
  { name: 'Paracord Bracelets', src: Paracord },
  { name: 'Silver Bracelets', src: Silver },
  { name: 'Steel Bracelets', src: Steel },
  { name: 'Wide Bracelets', src: Wide },
];

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

  const nameMapping: { [key: string]: string } = {
    "Steel Bracelets": "Stainless Steel",
    "Anchor Bracelets": "Anchor",
    "Bangle Bracelets": "Bangle",
    "Beaded Bracelets": "Beaded Bracelets",
    "Bracelets with Stones": "Bracelets with Stones",
    "Braided Bracelets": "Braided",
    "Chain Bracelets": "Chain",
    "Charm Bracelets": "Charm",
    "Cross Bracelets": "Cross",
    "Cuff Bracelets": "Cuff",
    "Gold Bracelets": "Gold",
    "Leather Bracelets": "Leather",
    "Paracord Bracelets": "Paracord",
    "Silver Bracelets": "Silver",
    "Wide Bracelets": "Wide",
  };

  const colorMapping: { [key: string]: number[] } = {
    "Gold Bracelets": [colors.find(color => color.ColorName === "Gold-Tone")?.ColorID ?? -1],
    "Silver Bracelets": [colors.find(color => color.ColorName === "Silver-Tone")?.ColorID ?? -1],
  };

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
      <Filterbar
        className={styles.topFilterBar}
      >
        {braceletTypes.map((bracelet, index) => (
          <div
            onClick={() => {
              // Normalize the bracelet name using the nameMapping
              const normalizedBraceletName = nameMapping[bracelet.name] || bracelet.name.replace(/ Bracelets$/, "").toLowerCase();

              // Convert both to lowercase for a case-insensitive match
              const selectedCategory = categories.find(
                (category) =>
                  category.CategoryName.toLowerCase() === normalizedBraceletName.toLowerCase()
              );

              // Get the corresponding color filters for Gold and Silver Bracelets
              const selectedColorFilters = colorMapping[bracelet.name] || [];

              // If a matching category exists, apply both category and color filters
              if (selectedCategory) {
                handleApplyFilters(
                  [selectedCategory.CategoryID],
                  selectedColorFilters
                );
              } else if (selectedColorFilters.length > 0) {
                // If no category is found, but a valid color filter is found (e.g. Gold or Silver Bracelets)
                handleApplyFilters([], selectedColorFilters); // Apply only the color filter
              } else {
                // If no match is found in either categories or color mapping, do nothing
                console.log(`No category or color match found for ${bracelet.name}`);
              }
            }}
            className={styles.filterBarContent} key={index}>
            <Image className={styles.topFilterPictures} src={bracelet.src} alt={bracelet.name} />
            <p>{bracelet.name}</p>
          </div>
        ))}
      </Filterbar>
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
              index % 20 === 19 ? (
                <div key={`widget-${index}`} className={styles.widgetContainer}>
                  <Widget
                    key={`widget-${index}`}
                    picture={
                      categories[index % categories.length].CategoryPicture
                    } // Increment index for widget
                    text={categories[index % categories.length].CategoryName}
                    seeAll="See All"
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
