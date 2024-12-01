import { ReactNode } from 'react';

// npm install react-multi-carousel --save
import Carousel from 'react-multi-carousel';
import 'react-multi-carousel/lib/styles.css';

import styles from './productCarousel.module.scss'

type ProductCarouselProps = {
  children: ReactNode,
  id?: string,
  className?: string,
}

export function ProductCarousel({ children, id, className }: ProductCarouselProps) {

  const responsive = {
    largeDesktop: {
      breakpoint: { max: 4000, min: 3000 },
      items: 4
    },
    desktop: {
      breakpoint: { max: 3000, min: 1024 },
      items: 3
    },
    tablet: {
      breakpoint: { max: 1024, min: 600 },
      items: 2
    },
    mobile: {
      breakpoint: { max: 600, min: 0 },
      items: 2,
    }
  }

  return (
    <Carousel
      className={styles.productCarousel}
      responsive={responsive}
      draggable={true}
    >
      {children}
    </Carousel>
  )
}