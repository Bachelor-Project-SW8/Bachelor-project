'use client'

import pic1 from "../images/pic1.jpg"
import pic2 from "../images/pic2.jpg"
import pic3 from "../images/pic3.jpg"
import pic4 from "../images/pic4.jpg"
import pic5 from "../images/pic5.jpg"

import steelBracelet from "./components/widget/widgetPictures/steelbracelet.png"

import { Carousel } from "./components/carousel/carousel"
import { Widget } from "./components/widget/widget"
import styles from './page.module.scss'
import { ProductTile } from "./components/productTile/productTile"

const IMAGES = [pic1, pic2, pic3, pic4, pic5]

export default function Home() {

  const imageUrls = IMAGES.map((image) => image.src); // Convert to string[]

  return (
    <div>
      <div className={styles.carousel}>
        <Carousel imageUrls={imageUrls} />
      </div>
      <Widget
        className={styles.widgetPicture}
        picture={"https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltfecf8e7ec7041c24/660e6fd0231cf0c3a2ccb798/steelcufffnew_steel_focus_-_drop2684_silver.jpg?format=pjpg&auto=webp&quality=75%2C90&width=640"}
        text="Steel Bracelets"
      />
      <ProductTile
        className={styles.productTile}
        picture="https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc89eabc7ff6f8555/60dbd0135775160f9f22e567/s-br-10mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=1080"
        productName="Lolle"
        price={123}
        brand="Lolle123"
      />
    </div>
  );
}
