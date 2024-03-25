import React, { useState, useEffect } from 'react';
import axios from 'axios';
import styles from './carousel.module.scss';
import Image from 'next/image';

interface Product {
  id: number;
  title: string;
  description: string;
  image: string;
}

const ProductCarousel: React.FC = () => {
  const [products, setProducts] = useState<Product[]>([]);
  const [activeIndex, setActiveIndex] = useState(0);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Product[]>('https://fakestoreapi.com/products');
        setProducts(response.data);
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();
  }, []);

  const handleIndicatorClick = (index: number) => {
    setActiveIndex(index);
  };

  const handlePrevClick = () => {
    setActiveIndex((prevIndex) => (prevIndex === 0 ? products.length - 1 : prevIndex - 1));
  };

  const handleNextClick = () => {
    setActiveIndex((prevIndex) => (prevIndex === products.length - 1 ? 0 : prevIndex + 1));
  };

  const imageWidth = 300;

  const activeItemPosition = {
    transform: `translateX(-${activeIndex * imageWidth}px) translateX(calc((100% - ${imageWidth}px) / 2))`,
  };

  return (
    <div className={styles.container}>
      <h2 className={styles.title}>Product Carousel</h2>
      <div id="carouselExampleIndicators" className={styles.carousel} data-ride="carousel">
        <ol className={styles.indicators}>
          {products.map((product, index) => (
            <li
              key={index}
              onClick={() => handleIndicatorClick(index)}
              className={`${styles.indicator} ${index === activeIndex ? styles.active : ''}`}
            ></li>
          ))}
        </ol>
        <div className={styles.inner} style={activeItemPosition}>
          {products.map((product, index) => (
            <div key={index} className={styles.slide}>
              <Image className={styles.image} src={product.image} alt={product.title} width={250} height={250} />
              <div className={styles.caption}>
                <h5 className={styles.title}>{product.title}</h5>
              </div>
            </div>
          ))}
        </div>
        <button className={styles.controlPrev} onClick={handlePrevClick}>
          Prev
        </button>
        <button className={styles.controlNext} onClick={handleNextClick}>
          Next
        </button>
      </div>
    </div>
  );
};

export default ProductCarousel;
