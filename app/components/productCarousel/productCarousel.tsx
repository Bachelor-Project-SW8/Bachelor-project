import { ReactNode } from 'react';
import Carousel from 'react-multi-carousel';
import 'react-multi-carousel/lib/styles.css';

type ProductCarouselProps = {
    children: ReactNode,
    id?: string,
    className?: string,
}

export function ProductCarousel({children, id, className}:ProductCarouselProps) {

    const responsive = {
        largeDesktop: {
          breakpoint: { max: 4000, min: 3000 },
          items: 5
        },
        desktop: {
          breakpoint: { max: 3000, min: 1024 },
          items: 3
        },
        tablet: {
          breakpoint: { max: 1024, min: 464 },
          items: 2
        },
        mobile: {
          breakpoint: { max: 464, min: 0 },
          items: 1
        }
      }

    return (
        <Carousel
        responsive={responsive}
        containerClass="carousel-container"
        >
            <div>{children}</div>
        </Carousel>
    )
}