import { ReactNode } from "react";

// npm install react-multi-carousel --save
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";

type ProductCarouselProps = {
  children: ReactNode;
  className?: string;
};

export function WidgetCarousel({ children, className }: ProductCarouselProps) {
  const responsive = {
    largeDesktop: {
      breakpoint: { max: 4000, min: 3000 },
      items: 2,
    },
    desktop: {
      breakpoint: { max: 3000, min: 1024 },
      items: 2,
    },
    tablet: {
      breakpoint: { max: 1024, min: 600 },
      items: 2,
    },
    mobile: {
      breakpoint: { max: 600, min: 0 },
      items: 2,
    },
  };

  return (
    <Carousel
      className={className}
      responsive={responsive}
      draggable={true}
      swipeable={true}
    >
      {children}
    </Carousel>
  );
}
