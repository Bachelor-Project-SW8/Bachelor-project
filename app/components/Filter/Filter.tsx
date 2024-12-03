import React, { useEffect } from "react";
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
            </div>
          </Sidepanel>
        </div>
      )}
    </div>
  );
};
