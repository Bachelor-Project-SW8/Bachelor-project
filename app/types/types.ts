// types.ts

// Produkt relaterede typer
export interface Product {
    ProductID: number
    ProductName: string
    Price: number
    Description: string
    ProductPicture: string
  }
  
  export interface ProductCategory {
    ProductID: number
    CategoryID: number
  }
  
  export interface ProductColor {
    ProductID: number
    ColorID: number
  }
  
  // Kategori relaterede typer
  export interface Category {
    CategoryID: number
    CategoryName: string
    CategoryPicture?: string
  }
  
  // Farve relaterede typer
  export interface Color {
    ColorID: number
    ColorName: string
  }
  