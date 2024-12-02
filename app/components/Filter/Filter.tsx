import React, { useEffect, useState } from "react";
import styles from "./Filter.module.scss";
import { Sidepanel } from "../sidepanel/sidepanel";
import { FilterIcon, X } from "lucide-react";
import clsx from "clsx";

import { Category, Color } from "@/app/types/types";

type FilterProps = {
  className?: string;
  mobile?: boolean;
  desktop?: boolean;
  categories: Category[]; // Pass an array of categories
  colors: Color[]; // Pass an array of colors
  onApplyFilters: (
    selectedCategories: number[],
    selectedColors: number[]
  ) => void;
};

export const Filter = ({
  className,
  mobile,
  desktop,
  categories,
  colors,
  onApplyFilters,
}: FilterProps) => {
  const [selectedCategories, setSelectedCategories] = useState<number[]>([]); // Store selected category IDs
  const [selectedColors, setSelectedColors] = useState<number[]>([]); // Store selected color IDs

  useEffect(() => {
    onApplyFilters(selectedCategories, selectedColors);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [selectedCategories, selectedColors]);

  // Handle category checkbox change
  const handleCategoryChange = (categoryID: number) => {
    setSelectedCategories(
      (prev) =>
        prev.includes(categoryID)
          ? prev.filter((id) => id !== categoryID) // Remove from selected
          : [...prev, categoryID] // Add to selected
    );
  };

  // Handle color checkbox change
  const handleColorChange = (colorID: number) => {
    setSelectedColors(
      (prev) =>
        prev.includes(colorID)
          ? prev.filter((id) => id !== colorID) // Remove from selected
          : [...prev, colorID] // Add to selected
    );
  };

  return (
    <div className={clsx(styles.filterContent, className)}>
      {desktop && (
        <div className={styles.desktopFilter}>
          <h3>Filter Products</h3>

          {/* Categories Section */}
          <h4>Categories</h4>
          <ul className={styles.generalFilterStyling}>
            {categories.map((category) => (
              <li key={category.CategoryID}>
                <div>
                  <input
                    onChange={() => handleCategoryChange(category.CategoryID)}
                    checked={selectedCategories.includes(category.CategoryID)}
                    type="checkbox"
                  />
                  {category.CategoryName}
                </div>
              </li>
            ))}
          </ul>

          {/* Colors Section */}
          <h4>Colors</h4>
          <ul className={styles.generalFilterStyling}>
            {colors.map((color) => (
              <li key={color.ColorID}>
                <div>
                  <input
                    onChange={() => handleColorChange(color.ColorID)}
                    checked={selectedColors.includes(color.ColorID)}
                    type="checkbox"
                  />
                  {color.ColorName}
                </div>
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
              <div
                id="mobile-filter-sidepanel"
                className={styles.filterTrigger}
              >
                <div className={styles.mobileFilterText}>Filters</div>
                <FilterIcon />
              </div>
            }
            SVG={<X />}
          >
            <div className={styles.SidepanelFilterContainer}>
              <h3>Filter Products</h3>

              {/* Categories Section */}
              <h4>Categories</h4>
              <ul className={styles.generalFilterStyling}>
                {categories.map((category) => (
                  <li key={category.CategoryID}>
                    <div>
                      <input
                        onChange={() =>
                          handleCategoryChange(category.CategoryID)
                        }
                        checked={selectedCategories.includes(
                          category.CategoryID
                        )}
                        type="checkbox"
                      />
                      {category.CategoryName}
                    </div>
                  </li>
                ))}
              </ul>

              {/* Colors Section */}
              <h4>Colors</h4>
              <ul className={styles.generalFilterStyling}>
                {colors.map((color) => (
                  <li key={color.ColorID}>
                    <div>
                      <input
                        onChange={() => handleColorChange(color.ColorID)}
                        checked={selectedColors.includes(color.ColorID)}
                        type="checkbox"
                      />
                      {color.ColorName}
                    </div>
                  </li>
                ))}
              </ul>
              <div
                onClick={() => {
                  // Trigger the sidepanel to close
                  const trigger = document.getElementById(
                    "mobile-filter-sidepanel"
                  );
                  if (trigger) {
                    trigger.click();
                  }
                }}
                className={styles.applyButton}
              >
                Show Result(s)
              </div>
            </div>
          </Sidepanel>
        </div>
      )}
    </div>
  );
};
