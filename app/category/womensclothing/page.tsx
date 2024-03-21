'use client'
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Image from 'next/image';

const WomenClothing = () => {
    const [womenClothingImages, setWomenClothingImages] = useState<string[]>([]);

    useEffect(() => {
        async function fetchWomenClothingImages() {
            try {
                const response = await axios.get<any[]>('https://fakestoreapi.com/products');
                const womenClothingImages = response.data
                    .filter(item => item.category === "women's clothing")
                    .map(item => item.image);
                setWomenClothingImages(womenClothingImages);
            } catch (error) {
                console.error('Error fetching women\'s clothing images:', error);
            }
        }
        fetchWomenClothingImages();
    }, []);

    return (
        <div>
            <div style={{ display: 'flex', flexWrap: 'wrap' }}>
                {womenClothingImages.map((image, index) => (
                    <div key={index} style={{ margin: '10px', textAlign: 'center' }}>
                        <Image src={image} alt={`Women's Clothing ${index}`} width={125} height={125} />
                    </div>
                ))}
            </div>
        </div>
    );
};

export default WomenClothing;
