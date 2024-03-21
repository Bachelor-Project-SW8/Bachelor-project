'use client'
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Image from 'next/image';


const Electronics = () => {
    const [electronicsImages, setElectronicsImages] = useState<string[]>([]);

    useEffect(() => {
        async function fetchElectronicsImages() {
            try {
                const response = await axios.get<any[]>('https://fakestoreapi.com/products');
                const electronicsImages = response.data
                    .filter(item => item.category === 'electronics')
                    .map(item => item.image);
                setElectronicsImages(electronicsImages);
            } catch (error) {
                console.error('Error fetching electronics images:', error);
            }
        }
        fetchElectronicsImages();
    }, []);

    return (
        <div>
            <div style={{ display: 'flex', flexWrap: 'wrap' }}>
                {electronicsImages.map((image, index) => (
                    <div key={index} style={{ margin: '10px', textAlign: 'center' }}>
                         <Image src={image} alt={`Electronics ${index}`} width={125} height={125} />
                    </div>
                ))}
            </div>
        </div>
    );
};

export default Electronics