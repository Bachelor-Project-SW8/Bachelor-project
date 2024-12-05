import { ReactNode } from "react";

// npm install react-multi-carousel --save
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import styles from './widgetCarousel.module.scss'
import clsx from "clsx";

type ProductCarouselProps = {
  children: ReactNode;
  className?: string;
  header?: string;
};

export function WidgetCarousel({ children, className, header }: ProductCarouselProps) {
  const responsive = {
    largeDesktop: {
      breakpoint: { max: 4000, min: 3000 },
      items: 2,
    },
    desktop: {
      breakpoint: { max: 3000, min: 1024 },
      items: 3,
    },
    tablet: {
      breakpoint: { max: 1024, min: 650 },
      items: 2,
    },
    mobile: {
      breakpoint: { max: 650, min: 0 },
      items: 2,
    },
  };

  return (
    <div className={styles.carouselContainer}>
      <div className={styles.widgetCarouselHeader}>Check out our categories below</div>
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
