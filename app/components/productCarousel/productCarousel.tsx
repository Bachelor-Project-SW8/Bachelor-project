import { ReactNode } from "react";

// npm install react-multi-carousel --save
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";

import styles from "./productCarousel.module.scss";

type ProductCarouselProps = {
  children: ReactNode;
};

export function ProductCarousel({
  children,
}: ProductCarouselProps) {
  const responsive = {
    superLargeDesktop: {
      breakpoint: { max: 3000, min: 2600 },
      items: 11,
      slidesToSlide: 3,
    },
    largeDesktop: {
      breakpoint: { max: 2600, min: 2150 },
      items: 9,
      slidesToSlide: 3,
    },
    desktop: {
      breakpoint: { max: 2150, min: 1650 },
      items: 7,
      slidesToSlide: 3,
    },
    smallerDesktop: {
      breakpoint: { max: 1650, min: 1200 },
      items: 5,
    },
    smallDesktop: {
      breakpoint: { max: 1200, min: 980 },
      items: 4,
    },
    tablet: {
      breakpoint: { max: 980, min: 768 },
      items: 3,
    },
    mobile: {
      breakpoint: { max: 768, min: 0 },
      items: 2,
    },
  };

  return (
    <Carousel
      className={styles.productCarousel}
      responsive={responsive}
      draggable={true}
      swipeable={true}
    >
      {children}
    </Carousel>
  );
}
