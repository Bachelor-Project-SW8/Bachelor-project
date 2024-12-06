import { ReactNode, useEffect, useState } from "react";

// npm install react-multi-carousel --save
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import styles from './categoryCarousel.module.scss'
import clsx from "clsx";

type ProductCarouselProps = {
    children: ReactNode;
    className?: string;
};

export function CategoryCarousel({ children, className }: ProductCarouselProps) {
    const responsive = {
        largeDesktop: {
            breakpoint: { max: 4000, min: 3000 },
            items: 5,
        },
        desktop: {
            breakpoint: { max: 3000, min: 1024 },
            items: 4,
        },
        tablet: {
            breakpoint: { max: 1024, min: 650 },
            items: 3,
        },
        mobile: {
            breakpoint: { max: 650, min: 0 },
            items: 2,
        },
    };

    return (

        <Carousel
            className={clsx(className, styles.categoryCarouselContainer)}
            responsive={responsive}
            draggable={true}
            swipeable={true}
            infinite={false}
            partialVisbile={false}
        >
            {children}
        </Carousel>
    );
}
