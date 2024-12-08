"use client";
import React from "react";
import Link from "next/link";
import styles from "./category.module.scss";
import { ChevronRight, Menu, X } from "lucide-react";
import { Sidepanel } from "../sidepanel/sidepanel";

interface CategoryBarProps {
  mobile?: boolean;
  desktop?: boolean;
  className?: string;
}

export const CategoryBar = ({
  mobile,
  desktop,
  className,
}: CategoryBarProps) => {
  const categories = [
    //Remeber lowercasing
    { name: "Bracelets", path: "/category/bracelets" }, // Changed to absolute path
    { name: "Necklaces", path: "/category/necklaces" },
    { name: "Rings", path: "/category/rings" },
    { name: "Earrings", path: "/category/earrings" },
  ];

  return (
    <div className={styles.categoryBar}>
      <div className={styles.menu}>
        {mobile && (
          <div className={styles.mobileSidepanelContainer}>
            <Sidepanel
              className={styles.mobileSidepanel}
              id="menu-sidepanel"
              trigger={
                <div
                  id="menu-sidepanel-trigger"
                  className={styles.mobileSidepanelTrigger}
                >
                  <Menu />
                </div>
              }
              SVG={<X />}
            >
              <h3>Categories</h3>
              <ul className={styles.sidePanelLinks}>
                {categories.map((category) => (
                  <Link
                    onClick={() => {
                      const closeButton = document.getElementById("menu-sidepanel-trigger");
                      if (closeButton) {
                        closeButton.click();
                      }
                    }}
                    key={category.name} href={category.path}>
                    <li className={styles.categoryLink}>
                      {category.name}
                      <ChevronRight />
                    </li>
                  </Link>
                ))}
              </ul>
            </Sidepanel>
          </div>
        )}
        {desktop && (
          <div className={styles.desktopMenu}>
            {categories.map((category) => (
              <Link
                key={category.name}
                href={category.path}
                className={styles.submenuItem}
              >
                {category.name}
              </Link>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};
