'use client'
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Link from 'next/link';
import styles from './category.module.scss';

interface Item {
    id: number;
    title: string;
    price: string;
}

export const CategoryBar = () => {
    const [categories, setCategories] = useState<string[]>([]);
    const [hoveredCategory, setHoveredCategory] = useState<string | null>(null);
    const [categoryItems, setCategoryItems] = useState<Item[]>([]);

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
                    const response = await axios.get<Item[]>(`https://fakestoreapi.com/products/category/${hoveredCategory}`);
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
            <div className={styles.submenu}>
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
