"use client";

import { Carousel } from "./components/carousel/carousel";
import pic1 from "../images/pic1.jpg";
import pic2 from "../images/pic2.jpg";
import pic3 from "../images/pic3.jpg";
import pic4 from "../images/pic4.jpg";
import pic5 from "../images/pic5.jpg";

import styles from "./page.module.scss";

export default function Home() {
  const carouselImages = [pic1, pic2, pic3, pic4, pic5];

  return (
    <div className={styles.screengrid}>

      <div className={styles.carousel}>
        <Carousel imageUrls={carouselImages.map((image) => image.src)} />
      </div>

    </div>
  );
}
