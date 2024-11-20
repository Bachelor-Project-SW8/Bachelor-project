// app/api/products/route.ts
import { NextResponse } from 'next/server'
import sqlite3 from 'sqlite3'
import { open } from 'sqlite'

const getDatabaseConnection = async () => {
  return open({
    filename: './Trendhim.db', // Erstat med din sti til SQLite fil
    driver: sqlite3.Database,
  })
}

export async function GET() {
  try {
    const db = await getDatabaseConnection()

    // Hent alle produkter fra Product-tabellen
    const products = await db.all('SELECT * FROM Product')

    await db.close()

    return NextResponse.json(products)
  } catch (error) {
    console.error('Fejl ved hentning af data fra SQLite-databasen:', error)
    return NextResponse.error()
  }
}
