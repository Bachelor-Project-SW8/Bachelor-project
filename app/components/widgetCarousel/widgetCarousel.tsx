import { ReactNode } from "react";

// npm install react-multi-carousel --save
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import styles from './widgetCarousel.module.scss'
import clsx from "clsx";

type ProductCarouselProps = {
  children: ReactNode;
  className?: string;
};

export function WidgetCarousel({ children, className }: ProductCarouselProps) {
  const responsive = {
    largeDesktop: {
      breakpoint: { max: 4000, min: 2500 },
      items: 3,
    },
    biggerDesktop: {
      breakpoint: { max: 2500, min: 1675 },
      items: 2,
    },
    desktop: {
      breakpoint: { max: 1675, min: 1200 },
      items: 3,
    },
    tablet: {
      breakpoint: { max: 1200, min: 650 },
      items: 2,
    },
    mobile: {
      breakpoint: { max: 650, min: 0 },
      items: 2,
    },
  };

  return (
    <div className={styles.carouselContainer}>
      <div className={styles.widgetCarouselHeader}>Find by category</div>
      <Carousel
        className={clsx(className, styles.widgetCarouselContainer)}
        responsive={responsive}
        draggable={true}
        swipeable={true}
      >
        {children}
      </Carousel>
    </div>
  );
}
