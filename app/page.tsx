"use client";

import { Carousel } from "./components/carousel/carousel";
import frontpage1 from "../images/forside1.webp";
import frontpage2 from "../images/forside2.webp";
import frontpage3 from "../images/forside3.webp";
import category1 from '../images/categorybarImages/rings.webp'
import category2 from '../images/categorybarImages/bracelets.webp'
import category3 from '../images/categorybarImages/necklaces.webp'
import category4 from '../images/categorybarImages/watches.webp'
import category5 from '../images/categorybarImages/earrings.webp'
import Image from "next/image";

import styles from "./page.module.scss";
import { CategoryCarousel } from "./components/categoryCarousel/categoryCarousel";
import Link from "next/link";

export default function Home() {
  const carouselImages = [frontpage1, frontpage2, frontpage3];
  const categoryCarouselImages = [
    { name: "Rings", src: category1, link: "/category/rings" },
    { name: "Bracelets", src: category2, link: "/category/bracelets" },
    { name: "Necklaces", src: category3, link: "/category/necklaces" },
    { name: "Watches", src: category4, link: "" },
    { name: "Earrings", src: category5, link: "/category/earrings" },
  ]

  return (
    <div className={styles.homeContainer}>

      <div className={styles.carousel}>
        <Carousel imageUrls={carouselImages.map((image) => image.src)} />
      </div>
      <div className={styles.allJewelryHeader}>
        All Jewelry
      </div>
      <CategoryCarousel>
        {categoryCarouselImages.map((category) => (
          category.link ? (
            <Link key={category.name} href={category.link} passHref>
              <Image src={category.src} alt={category.name} />
            </Link>
          ) : (
            <Image key={category.name} src={category.src} alt={category.name} />
          )
        ))}
      </CategoryCarousel>
    </div>
  );
}
