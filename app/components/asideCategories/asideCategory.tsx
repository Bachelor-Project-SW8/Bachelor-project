// AsideCategories.tsx
import React, { useState, useEffect, FC } from 'react';
import axios from 'axios';

interface AsideCategoriesProps {
    onCategorySelect: (category: string) => void;
}

const AsideCategories: FC<AsideCategoriesProps> = ({ onCategorySelect }) => {
    const [categories, setCategories] = useState<string[]>([]);

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

    return (
        <aside>
            <h2>Categories</h2>
            <ul>
                {categories.map(category => (
                    <li key={category} onClick={() => onCategorySelect(category)}>
                        {category}
                    </li>
                ))}
            </ul>
        </aside>
    );
};

export default AsideCategories;
