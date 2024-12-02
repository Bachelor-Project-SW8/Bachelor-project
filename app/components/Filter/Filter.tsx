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
  categories: Category[]; // Pass an array of categories
  colors: Color[]; // Pass an array of colors
};

export const Filter = ({
  className,
  mobile,
  desktop,
  categories,
  colors,
}: FilterProps) => {
  return (
    <div className={clsx(styles.filterContent, className)}>
      {desktop && (
        <div className={styles.desktopFilter}>
          <h3>Filter Products</h3>

          {/* Categories Section */}
          <h4>Categories</h4>
          <ul>
            {categories.map((category) => (
              <li key={category.CategoryID}>
                <div>{category.CategoryName}</div>
              </li>
            ))}
          </ul>

          {/* Colors Section */}
          <h4>Colors</h4>
          <ul>
            {colors.map((color) => (
              <li key={color.ColorID}>
                <div>{color.ColorName}</div>
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
              <div className={styles.filterTrigger}>
                <div className={styles.mobileFilterText}>Filters</div>
                <FilterIcon />
              </div>
            }
            SVG={<X />}
          >
            <div>
              <h2>Filtrer produkter</h2>

              {/* Example checkboxes for mobile filter */}
              <ul>
                {categories.map((category) => (
                  <li key={category.CategoryID}>
                    <label>
                      <input type="checkbox" /> {category.CategoryName}
                    </label>
                  </li>
                ))}
                {colors.map((color) => (
                  <li key={color.ColorID}>
                    <label>
                      <input type="checkbox" /> {color.ColorName}
                    </label>
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
