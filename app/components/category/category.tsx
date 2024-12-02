'use client'
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Link from 'next/link';
import styles from './category.module.scss';
import { ChevronRight, Menu, X } from 'lucide-react';
import clsx from 'clsx';
import { Sidepanel } from '../sidepanel/sidepanel';

interface CategoryBarProps {
    id?: number;
    title?: string;
    price?: string;
    mobile?: boolean;
    desktop?: boolean;
    className?: string;
}

export const CategoryBar = ({ id, title, price, mobile, desktop, className }: CategoryBarProps) => {
    const [categories, setCategories] = useState<string[]>([]);
    const [hoveredCategory, setHoveredCategory] = useState<string | null>(null);
    const [categoryItems, setCategoryItems] = useState<CategoryBarProps[]>([]);


    useEffect(() => {
        async function fetchCategories() {
            try {
                const response = await axios.get<string[]>("https://fakestoreapi.com/products/categories");
                setCategories(response.data);
            } catch (error) {
                console.error('Error fetching categories:', error);
            }
        }
        fetchCategories();
    }, []);

    useEffect(() => {
        async function fetchCategoryItems() {
            if (hoveredCategory) {
                try {
                    const response = await axios.get<CategoryBarProps[]>(`https://fakestoreapi.com/products/category/${hoveredCategory}`);
                    setCategoryItems(response.data);
                } catch (error) {
                    console.error(`Error fetching items for category ${hoveredCategory}:`, error);
                }
            }
        }
        fetchCategoryItems();
    }, [hoveredCategory]);

    const handleMouseEnter = (category: string) => {
        setHoveredCategory(category);
    };

    const handleMouseLeave = () => {
        setHoveredCategory(null);
    };

    return (
        <div className={styles.categoryBar}>
            <div className={styles.menu}>
                {mobile && (
                    <div className={styles.mobileSidepanelContainer}>
                        <Sidepanel
                            className={styles.mobileSidepanel}
                            id="menu-sidepanel"
                            trigger={
                                <div id='menu-sidepanel-trigger' className={styles.mobileSidepanelTrigger}>
                                    <Menu />
                                </div>
                            }
                            SVG={<X />}
                        >
                            <ul className={styles.sidePanelLinks}>
                                {categories.map((category) => (
                                    <li key={category}>
                                        <Link
                                            href={`/category/${category.toLowerCase().replace(/ /g, '').replace(/'/g, '')}`}
                                            onClick={(e) => {
                                                // Prevent default link navigation behavior
                                                e.preventDefault();
                                    
                                                // Trigger the click on the sidepanel trigger to close the panel
                                                const sidepanelTrigger = document.getElementById("menu-sidepanel-trigger");
                                                if (sidepanelTrigger) {
                                                  sidepanelTrigger.click(); // This will toggle the sidepanel state
                                                }
                                    
                                                // Navigate to the category page after closing the sidepanel
                                                window.location.href = `/category/${category.toLowerCase().replace(/ /g, '').replace(/'/g, '')}`;
                                              }}
                                        >
                                            {category}
                                        </Link>
                                        <ChevronRight />
                                    </li>
                                ))}
                            </ul>
                        </Sidepanel>
                    </div>
                )}
                {desktop && (
                    <div className={styles.desktopMenu}>
                        {categories.map(category => (
                            <Link
                                key={category}
                                href={`/category/${category.toLowerCase().replace(/ /g, '').replace(/'/g, '')}`}
                                className={styles.submenuItem}
                                onMouseEnter={() => handleMouseEnter(category)}
                                onMouseLeave={handleMouseLeave}
                            >
                                {category}
                            </Link>
                        ))}
                    </div>
                )}
            </div>
            {hoveredCategory && (
                <div
                    className={styles.categoryItems}
                    onMouseEnter={() => handleMouseEnter(hoveredCategory)}
                    onMouseLeave={handleMouseLeave}
                >
                    <ul className={styles.catItems}>
                        {categoryItems.map(item => (
                            <li key={item.id}>
                                <span className={styles.itemTitle}>{item.title}</span>
                                <span className={styles.itemPrice}>${item.price}</span>
                            </li>
                        ))}
                    </ul>
                </div>
            )}
        </div>
    );
};
