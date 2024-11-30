import React from "react";
import styles from "./Filter.module.scss";
import { Sidepanel } from "../sidepanel/sidepanel";
import { FilterIcon, X } from "lucide-react";
import clsx from "clsx";

type FilterProps = {
  className?: string,
  mobile?: boolean,
  desktop?: boolean,
}

export const Filter = ({className, mobile, desktop}: FilterProps) =>{

    return (
        <div className={clsx(styles.filterContent, className)}>

            {desktop && (
            <div className={styles.desktopFilter}>
              <h2>Filtrer produkter</h2>
              <ul>
                <li><label><input type="checkbox" /> Filter 1</label></li>
                <li><label><input type="checkbox" /> Filter 2</label></li>
                <li><label><input type="checkbox" /> Filter 3</label></li>
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
              SVG={<X/>}
            >
              <div>
              <h2>Filtrer produkter</h2>
              <ul>
                <li><label><input type="checkbox" /> Filter 1</label></li>
                <li><label><input type="checkbox" /> Filter 2</label></li>
                <li><label><input type="checkbox" /> Filter 3</label></li>
              </ul>
              </div>
            </Sidepanel>
            </div>
          )}

        </div>
      );
    };
    


