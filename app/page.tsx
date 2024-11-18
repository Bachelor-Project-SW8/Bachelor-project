'use client'

import pic1 from "../images/pic1.jpg"
import pic2 from "../images/pic2.jpg"
import pic3 from "../images/pic3.jpg"
import pic4 from "../images/pic4.jpg"
import pic5 from "../images/pic5.jpg"

import { Carousel } from "./components/carousel/carousel"
import styles from './page.module.scss'

const IMAGES = [pic1, pic2, pic3, pic4, pic5]

export default function Home() {

  const imageUrls = IMAGES.map((image) => image.src); // Convert to string[]

  return (
    <div className={styles.carousel}>
      <Carousel imageUrls={imageUrls} />
    </div>
  );
}
