import React from "react";
import styles from "./Filter.module.scss";

export const Filter =() =>{

    return (
        <div className={styles.page}>
          {/* Main content wrapper */}
          <div className={styles.contentWrapper}>
            
            {/* Left Sidebar (Filter) */}
            <aside className={styles.sidebar}>
              <h2>Filtrer produkter</h2>
              <ul>
                <li><label><input type="checkbox" /> Filter 1</label></li>
                <li><label><input type="checkbox" /> Filter 2</label></li>
                <li><label><input type="checkbox" /> Filter 3</label></li>
              </ul>
            </aside>
    
          </div>
        </div>
      );
    };
    


