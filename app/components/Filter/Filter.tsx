import React from "react";
import styles from "./Filter.module.scss";
import { Sidepanel } from "../sidepanel/sidepanel";
import { FilterIcon, X } from "lucide-react";
import clsx from "clsx";

import { Category, Color } from "@/app/types/types";

type FilterProps = {
  className?: string;
  mobile?: boolean;
  desktop?: boolean;
  categories: Category[];
  colors: Color[];
  onApplyFilters: (
    selectedCategories: number[],
    selectedColors: number[]
  ) => void;
  selectedCategories: number[];
  selectedColors: number[];
  onClearFilters: () => void;
};

export const Filter = ({
  className,
  mobile,
  desktop,
  categories,
  colors,
  onApplyFilters,
  selectedCategories,
  selectedColors,
  onClearFilters,
}: FilterProps) => {
  // Handle category checkbox change
  const handleCategoryChange = (categoryID: number) => {
    const newSelectedCategories = selectedCategories.includes(categoryID)
      ? selectedCategories.filter((id) => id !== categoryID)
      : [...selectedCategories, categoryID];
    onApplyFilters(newSelectedCategories, selectedColors);
  };

  // Handle color checkbox change
  const handleColorChange = (colorID: number) => {
    const newSelectedColors = selectedColors.includes(colorID)
      ? selectedColors.filter((id) => id !== colorID)
      : [...selectedColors, colorID];
    onApplyFilters(selectedCategories, newSelectedColors);
  };

  const colorHexMap: { [key: string]: string } = {
    Black: "#333333",
    "Silver-Tone": "#B0B0B0",
    Brown: "#6F4F1F",
    Blue: "#4682B4",
    Red: "#B22222",
    "Gold-Tone": "#D4AF37",
    Grey: "#A9A9A9",
    Multicolour: "#008080",
    Yellow: "#FFF200",
    White: "#FFFFFF",
    Green: "#228B22",
    "Purple/Violet": "#8A2BE2",
    "Natural/Wooden": "#A0522D",
  };

  return (
    <div className={clsx(styles.filterContent, className)}>
      {desktop && (
        <div className={styles.desktopFilter}>
          {/* Categories Section */}
          <h4>Categories</h4>
          <ul className={styles.generalFilterStyling}>
            {categories.map((category) => (
              <li key={category.CategoryID}>
                <label
                  htmlFor={`desktop-category-${category.CategoryID}`}
                  className={styles.filterLabel}
                >
                  <input
                    id={`desktop-category-${category.CategoryID}`}
                    onChange={() => handleCategoryChange(category.CategoryID)}
                    checked={selectedCategories.includes(category.CategoryID)}
                    type="checkbox"
                  />
                  <div className={styles.filterText}>
                    {category.CategoryName}
                  </div>
                </label>
              </li>
            ))}
          </ul>

          {/* Colors Section */}
          <h4>Colors</h4>
          <ul className={styles.generalFilterStyling}>
            {colors.map((color) => (
              <li key={color.ColorID}>
                <label
                  htmlFor={`desktop-color-${color.ColorID}`}
                  className={clsx(styles.filterLabel, styles.checkboxColor)}
                >
                  <input
                    id={`desktop-color-${color.ColorID}`}
                    onChange={() => handleColorChange(color.ColorID)}
                    checked={selectedColors.includes(color.ColorID)}
                    type="checkbox"
                    style={{
                      backgroundColor: colorHexMap[color.ColorName], // Use the color from colorHexMap
                      ...(color.ColorName === "White" && { border: "1px solid black" }), // Apply border if White
                    }}

                  />
                  <div className={styles.filterText}>
                    {color.ColorName}
                  </div>
                </label>
              </li>
            ))}
          </ul>
        </div>
      )}

      {mobile && (
        <div className={styles.mobileFilter}>
          <Sidepanel
            id="filterSidepanel"
            className={styles.filterSidepanel}
            trigger={
              <div id="mobile-filter-sidepanel" className={styles.filterTrigger}>
                <div className={styles.mobileFilterText}>Filters</div>
                <FilterIcon />
              </div>
            }
            SVG={<X />}
          >
            <div className={styles.SidepanelFilterContainer}>
              <div className={styles.filterProductsContainer}>
                <h3>Filter Products</h3>
                {(selectedCategories.length > 0 || selectedColors.length > 0) && (
                  <div onClick={onClearFilters} className={styles.clearFilterButton}>Clear Filters ({selectedCategories.length + selectedColors.length})</div>
                )}
              </div>
              {/* Categories Section */}
              <h4>Categories</h4>
              <ul className={styles.generalFilterStyling}>
                {categories.map((category) => (
                  <li key={category.CategoryID}>
                    <label
                      htmlFor={`mobile-category-${category.CategoryID}`}
                      className={styles.filterLabel}
                    >
                      <input
                        id={`mobile-category-${category.CategoryID}`}
                        onChange={() => handleCategoryChange(category.CategoryID)}
                        checked={selectedCategories.includes(category.CategoryID)}
                        type="checkbox"
                      />
                      <div className={styles.filterText}>
                        {category.CategoryName}
                      </div>
                    </label>
                  </li>
                ))}
              </ul>

              {/* Colors Section */}
              <h4>Colors</h4>
              <ul className={styles.generalFilterStyling}>
                {colors.map((color) => (
                  <li key={color.ColorID}>
                    <label
                      htmlFor={`mobile-color-${color.ColorID}`}
                      className={clsx(styles.filterLabel, styles.checkboxColor)}
                    >
                      <input
                        id={`mobile-color-${color.ColorID}`}
                        onChange={() => handleColorChange(color.ColorID)}
                        checked={selectedColors.includes(color.ColorID)}
                        type="checkbox"
                        style={{
                          backgroundColor: colorHexMap[color.ColorName], // Use the color from colorHexMap
                          ...(color.ColorName === "White" && { border: "1px solid black" }), // Apply border if White
                        }}
                      />
                      <div className={styles.filterText}>
                        {color.ColorName}
                      </div>
                    </label>
                  </li>
                ))}
              </ul>
              <div
                onClick={() => {
                  const trigger = document.getElementById(
                    "mobile-filter-sidepanel"
                  );
                  if (trigger) {
                    trigger.click();
                  }
                }}
                className={styles.showResultsButton}
              >
                Show results
              </div>
            </div>
          </Sidepanel>
        </div>
      )}
    </div>
  );
};
