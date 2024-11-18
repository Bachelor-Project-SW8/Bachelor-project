import { useState } from "react"
import { ChevronLeft, ChevronRight, Circle, CircleDot } from "lucide-react"
import styles from './carousel.module.scss'
import clsx from "clsx"

type CarouselProps = {
    imageUrls: string[]
}

export function Carousel({ imageUrls }: CarouselProps) {
    const [imageIndex, setImageIndex] = useState(0)

    function showNextImage() {
        setImageIndex(index => {
            if (index === imageUrls.length - 1) return 0
            return index + 1
        })
    }

    function showPrevImage() {
        setImageIndex(index => {
            if (index === 0) return imageUrls.length - 1
            return index - 1
        })
    }

    return (
        <div className={styles.carouselSlider}>
            <div className={styles.carouselImages}>
                {imageUrls.map(url => (
                    // eslint-disable-next-line @next/next/no-img-element
                    <img
                        alt="images"
                        key={url}
                        src={url}
                        className={styles.sliderImg}
                        style={{ translate: `${-100 * imageIndex}%` }} />
                ))}
            </div>
            <button onClick={showPrevImage} className={clsx(styles.imgSliderBtn, styles.left)}>
                <ChevronLeft />
            </button>
            <button onClick={showNextImage} className={clsx(styles.imgSliderBtn, styles.right)}>
                <ChevronRight />
            </button>
            <div className={styles.carouselDotBtn}>
                {imageUrls.map((_, index) => (
                    <button
                        key={index}
                        className={styles.dotBtn}
                        onClick={() => setImageIndex(index)}
                    >
                        {index === imageIndex ? <CircleDot /> : <Circle />}
                    </button>
                ))}
            </div>
        </div>
    )
}