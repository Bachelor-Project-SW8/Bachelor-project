'use client'

import { useEffect, useState } from 'react'
import { Carousel } from './components/carousel/carousel'
import pic1 from "../images/pic1.jpg"
import pic2 from "../images/pic2.jpg"
import pic3 from "../images/pic3.jpg"
import pic4 from "../images/pic4.jpg"
import pic5 from "../images/pic5.jpg"

import steelBracelet from "./components/widget/widgetPictures/steelbracelet.png"
import { Widget } from "./components/widget/widget"

import styles from './page.module.scss'
import { ProductTile } from "./components/productTile/productTile"
import { Filter } from "./components/Filter/Filter"


import { Product, Category, Color } from './types/types' // Importer typerne
import { ProductCarousel } from './components/productCarousel/productCarousel'

export default function Home() {
  const [products, setProducts] = useState<Product[]>([])
  const [categories, setCategories] = useState<Category[]>([])
  const [colors, setColors] = useState<Color[]>([])

  useEffect(() => {
    const fetchData = async () => {
      // Justeret API-kald til den nye sti
      const response = await fetch('/api/Data') // Brug den nye sti til API'en

      if (!response.ok) {
        console.error('Fejl ved at hente data:', response.status)
        return
      }

      try {
        const data = await response.json()
        console.log('Data:', data)
        setProducts(data.products)
        setCategories(data.categories)
        setColors(data.colors)
      } catch (error) {
        console.error('Fejl ved parsing af JSON:', error)
      }
    }

    fetchData()
  }, [])


  // Oprindelige billeder til carousellen
  const carouselImages = [pic1, pic2, pic3, pic4, pic5]

  return (
    <div className={styles.screengrid}>
      {/* Carousel */}
      <div className={styles.carousel}>
        <Carousel imageUrls={carouselImages.map((image) => image.src)} />
      </div>

      <div className={styles.productContainer}>
      <div className={styles.filterContainer}>
        <Filter 
          mobile
          desktop
        />
      </div>
      
      
      <div className={styles.screen}>{/* Produkter */}
        <div className={styles.Filter}><Filter></Filter> </div>
      <div className={styles.productTileGrid}>
        {products.map((product) => (
          <div key={product.ProductID}>
            <ProductTile
              className={styles.productTile}
              productName={product.ProductName}
              price={product.Price}
              picture={product.ProductPicture}
              brand='Lucleon'
            />
          </div>
        ))}
      </div>
      </div>
    </div>
    <div className={styles.productCarouselContainer}>
        <h2 className={styles.productCarouselHeader}>Looking for something specific?</h2>
      <ProductCarousel>
        {products.map((product) => (
          <Widget
            key={product.ProductID}
            picture={product.ProductPicture}
            text={product.ProductName}
          />
        ))}
      </ProductCarousel>
      </div>
      
  </div>
  )
}
