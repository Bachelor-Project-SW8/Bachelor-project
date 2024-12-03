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
    { name: "Necklaces", path: "/category/electronics" },
    { name: "Rings", path: "/category/Rings" },
    { name: "Earrings", path: "/category/Earrings" },
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
              <ul className={styles.sidePanelLinks}>
                {categories.map((category) => (
                  <li key={category.name}>
                    <Link href={category.path}>{category.name}</Link>
                    <ChevronRight />
                  </li>
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
