-- CREATE TABLE PRODUCT (product_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, description TEXT NOT NULL, price double NOT NULL); 

-- DROP TABLE PRODUCT;
-- INSERT INTO PRODUCT (name,description,price)
-- VALUES ("Armbånd","Lolleren",100);

-- DELETE FROM PRODUCT Where product_id = ;

-- DROP TABLE Category;
-- DROP TABLE Color;

INSERT INTO Product (ProductName,Price,Description,ProductPicture)
VALUES ("Lolle",299.00, "Smuk armbåndskæde i rustfrit, sølvtonet stål. Designet er simpelt og frækt, og armbåndet vil med garanti befinde sig godt rundt om dit håndled.

Låsen der holder kædeleddene sammen er nem at åbn og lukke.","https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt850b15718be6eb13/60dbcb7793730d0ef6fc0cc3/s-br-8mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384");

-- CREATE TABLE Product (
--     ProductID INTEGER  PRIMARY KEY AUTOINCREMENT,
--     ProductName VARCHAR(100) NOT NULL,
--     Price DECIMAL(10, 2) NOT NULL,
--     Description TEXT,
--     ProductPicture TEXT
-- );

-- Create Category table
-- CREATE TABLE Category (
--     CategoryID INTEGER  PRIMARY KEY AUTOINCREMENT,
--     CategoryName VARCHAR(100) NOT NULL,
--     CategoryPicture TEXT
-- );

-- -- Create Color table
-- CREATE TABLE Color (
--     ColorID INTEGER PRIMARY KEY AUTOINCREMENT,
--     ColorName VARCHAR(50) NOT NULL
-- );

-- -- Create a junction table for Product-Category relationship
-- CREATE TABLE ProductCategory (
--     ProductID INT,
--     CategoryID INT,
--     PRIMARY KEY (ProductID, CategoryID),
--     FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE,
--     FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) ON DELETE CASCADE
-- );

-- -- Create a junction table for Product-Color relationship
-- CREATE TABLE ProductColor (
--     ProductID INT,
--     ColorID INT,
--     PRIMARY KEY (ProductID, ColorID),
--     FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE,
--     FOREIGN KEY (ColorID) REFERENCES Color(ColorID) ON DELETE CASCADE
-- );