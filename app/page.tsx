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

interface Product {
  ProductID: number
  ProductName: string
  Price: number
  Description: string
  ProductPicture: string
}

export default function Home() {
  const [products, setProducts] = useState<Product[]>([])

  useEffect(() => {
    // Definer fetchProducts inden i useEffect
    const fetchProducts = async () => {
      const response = await fetch('/api/products')

      if (!response.ok) {
        console.error('Fejl ved at hente produkter:', response.status)
        return
      }

      try {
        const data = await response.json()
        console.log('Produkdata:', data)
        setProducts(data)
      } catch (error) {
        console.error('Fejl ved parsing af JSON:', error)
      }
    }

    // Kald funktionen
    fetchProducts()

  }, []) // Empty dependency array to run once when the component mounts

  // Oprindelige billeder til carousellen
  const carouselImages = [pic1, pic2, pic3, pic4, pic5]

  return (
    <div>
      {/* Carousel */}
      <div className={styles.carousel}>
        <Carousel imageUrls={carouselImages.map((image) => image.src)} />
      </div>

      {/* Produkter */}
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
  )
}
