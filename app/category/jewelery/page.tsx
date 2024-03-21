'use client'
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Image from 'next/image';

const Jewelry = () => {
    const [jewelryImages, setJewelryImages] = useState<string[]>([]);

    useEffect(() => {
        async function fetchJewelryImages() {
            try {
                const response = await axios.get<any[]>('https://fakestoreapi.com/products');
                const jewelryImages = response.data
                    .filter(item => item.category === 'jewelery') // Note the spelling correction here
                    .map(item => item.image);
                setJewelryImages(jewelryImages);
            } catch (error) {
                console.error('Error fetching jewelry images:', error);
            }
        }
        fetchJewelryImages();
    }, []);

    return (
        <div>
            <div style={{ display: 'flex', flexWrap: 'wrap' }}>
                {jewelryImages.map((image, index) => (
                    <div key={index} style={{ margin: '10px', textAlign: 'center' }}>
                        {/* Use Next.js's Image component */}
                        <Image src={image} alt={`Jewelry ${index}`} width={125} height={125} />
                    </div>
                ))}
            </div>
        </div>
    );
};

export default Jewelry;
