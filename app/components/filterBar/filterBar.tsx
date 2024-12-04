import clsx from "clsx"
import styles from './filterBar.module.scss'

import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import { ReactNode } from "react";

type FilterBarProps = {
    className?: string,
    children: ReactNode,
}

const responsive = {
    largeDesktop: {
        breakpoint: { max: 4000, min: 3000 },
        items: 4,
    },
    desktop: {
        breakpoint: { max: 3000, min: 1024 },
        items: 9,
        slidesToSlide: 1,
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
    )
}