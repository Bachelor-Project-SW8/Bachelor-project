import { NextResponse } from 'next/server'
import sqlite3 from 'sqlite3'
import { open } from 'sqlite'
import { Product, Category, Color, ProductCategory, ProductColor } from '../../types/types'// Justeret sti for at importere typerne

const getDatabaseConnection = async () => {
  return open({
    filename: './Trendhim.db', // Erstat med din sti til SQLite-fil
    driver: sqlite3.Database,
  })
}

export async function GET() {
  try {
    const db = await getDatabaseConnection()

    // Hent alle produkter fra Product-tabellen
    const products: Product[] = await db.all('SELECT * FROM Product')

    // Hent alle kategorier fra Category-tabellen
    const categories: Category[] = await db.all('SELECT * FROM Category')

    // Hent alle farver fra Color-tabellen
    const colors: Color[] = await db.all('SELECT * FROM Color')

    // Hent data fra de relevante relationstabeller
    const productCategories: ProductCategory[] = await db.all('SELECT * FROM ProductCategory')
    const productColors: ProductColor[] = await db.all('SELECT * FROM ProductColor')

    await db.close()

    // Returner et objekt, der indeholder data fra alle tabeller
    return NextResponse.json({
      products,
      categories,
      colors,
      productCategories,
      productColors,
    })
  } catch (error) {
    console.error('Fejl ved hentning af data fra SQLite-databasen:', error)
    return NextResponse.error()
  }
}


