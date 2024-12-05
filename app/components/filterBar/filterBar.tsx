import clsx from "clsx";
import styles from "./filterBar.module.scss";

import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import { ReactNode } from "react";

type FilterBarProps = {
  className?: string;
  children: ReactNode;
};

const responsive = {
  largeDesktop: {
    breakpoint: { max: 4000, min: 3000 },
    items: 4,
  },
  desktop: {
    breakpoint: { max: 3000, min: 1500 },
    items: 9,
    slidesToSlide: 1,
  },
  smallDesk: {
    breakpoint: { max: 1500, min: 1200 },
    items: 7,
  },
  bigTablet: {
    breakpoint: { max: 1200, min: 1024 },
    items: 6,
  },
  tablet: {
    breakpoint: { max: 1024, min: 768 },
    items: 4,
  },
  phablet: {
    breakpoint: { max: 768, min: 480 },
    items: 3,
  },
  mobile: {
    breakpoint: { max: 480, min: 0 },
    items: 2,
  },
};

export const Filterbar = ({ className, children }: FilterBarProps) => {
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
};
