'use client'
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Image from 'next/image';

const MensClothing = () => {
    const [menClothingImages, setMenClothingImages] = useState<string[]>([]);

    useEffect(() => {
        async function fetchMenClothingImages() {
            try {
                const response = await axios.get<any[]>('https://fakestoreapi.com/products');
                const menClothingImages = response.data
                    .filter(item => item.category === "men's clothing")
                    .map(item => item.image);
                setMenClothingImages(menClothingImages);
            } catch (error) {
                console.error('Error fetching men\'s clothing images:', error);
            }
        }
        fetchMenClothingImages();
    }, []);

    return (
        <div>
            <div style={{ display: 'flex', flexWrap: 'wrap' }}>
                {menClothingImages.map((image, index) => (
                    <div key={index} style={{ margin: '10px', textAlign: 'center' }}>
                        <Image src={image} alt={`Men's Clothing ${index}`} width={125} height={125} />
                    </div>
                ))}
            </div>
        </div>
    );
};

export default MensClothing;
