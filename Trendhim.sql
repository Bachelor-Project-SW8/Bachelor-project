-- CREATE TABLE PRODUCT (product_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, description TEXT NOT NULL, price double NOT NULL); 

-- DROP TABLE PRODUCT;
-- INSERT INTO PRODUCT (name,description,price)
-- VALUES ("Armbånd","Lolleren",100);

-- DELETE FROM PRODUCT Where product_id = ;

-- DROP TABLE Category;
-- DROP TABLE Color;

-- INSERT INTO Product (ProductName,Price,Description,ProductPicture)
-- VALUES ("Lolle",299.00, "Smuk armbåndskæde i rustfrit, sølvtonet stål. Designet er simpelt og frækt, og armbåndet vil med garanti befinde sig godt rundt om dit håndled.

-- Låsen der holder kædeleddene sammen er nem at åbn og lukke.","https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt850b15718be6eb13/60dbcb7793730d0ef6fc0cc3/s-br-8mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384");

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

-- INSERT INTO Category (CategoryName, CategoryPicture) 
-- VALUES 
-- ("Stainless Steel", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt172e6b362ac87f8b/60dbcb88892a730f58849cb1/jwm-megashoot-bracelets-15112.1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
-- ("Leather", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt12180f016190c61e/60dbbd6f993b043846436950/11606_square.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
-- ("Beaded Bracelets", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc60d9c155d9a9631/60dba52415da443b102d081b/2232.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384");


INSERT INTO Product (ProductName, Price, Description, ProductPicture) 
VALUES 
("Classic Stainless Steel Bracelet", 299.00, "Et klassisk armbånd i rustfrit stål, perfekt til hverdagsbrug.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9fd45a78e6041922/62d7e3ae652a953c7dc54210/15108-s-brac1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Leather Strap Bracelet", 149.00, "Et armbånd med en læderrem og rustfri stålspænde, perfekt til den afslappede stil.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4f21efff1c790e7e/60dba2da467112384c7b46d8/black-on-black-bracelet-set.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Gold Plated Chain Bracelet", 799.00, "Et elegant armbånd med guldbelægning, ideelt til festlige lejligheder.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltebaf8a116bc62369/62d7e9666c31723d18906afb/15096-g-brac1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Silver Twist Bracelet", 599.00, "Et flot og stilfuldt armbånd med et snoet design i sterlingsølv.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt28e057d2285a1864/60dc03f8993b04384644646c/9-1_14_2_324_1_45.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Black Rubber & Steel Bracelet", 199.00, "Moderne armbånd med gummi og stål for et råt og urban look.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt454db6faf33a6a7e/60dc10572e95e10f21f2c2a4/20255.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Steel Sport Bracelet", 399.00, "Et let og holdbart sport armbånd i titanium, designet til aktive personer.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt0ac38c8a61e66fd4/60dc20742e95e10f21f2fcce/brusd45a14861196b84229d5351457fc202f_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Beaded Charm Bracelet", 129.00, "Et smukt armbånd med perler og charm, perfekt som gave.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt141816de075d7712/60dbb8dfa7307e39e4df1f7f/5-2_297.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Rope Bracelet with Silver Clasp", 249.00, "Et smukt, velegnet armbånd med rebdesign og en sølvklips.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt50fe44853c538ed7/63624fee2109c24a1437906e/11-zeismont-ll-collins-leather-bracelets8103-black-kolin_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Minimalist Black Steel Bracelet", 399.00, "Et minimalistisk armbånd i sort stål, ideelt til både mænd og kvinder.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt8626dd8c4ffa0ea3/62d7ea844473103b37954c65/15083-b-brac1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384"),
("Gold Mesh Bracelet", 899.00, "Et luksuriøst armbånd i guldnet, perfekt til en elegant aften.", "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltbf2306e6ec7c2ac6/60dbba64a37ada0f2ccfb591/g-br-10mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384");

Insert colors (tilføjer nogle farver, som produkter kan bruge)
INSERT INTO Color (ColorName)
VALUES 
  ('Black'),
  ('Silver'),
  ('Gold'),
  ('Blue'),
  ('Red');

Insert product-category relations (mange-til-mange forhold mellem produkter og kategorier)
INSERT INTO ProductCategory (ProductID, CategoryID)
VALUES
  (1, 1),  -- Armbånd tilknyttet 'Bracelets'
  (2, 1),  -- Leather Strap Bracelet tilknyttet 'Bracelets'
  (3, 2),  -- Gold Plated Chain Bracelet tilknyttet 'Necklaces'
  (4, 1),  -- Silver Twist Bracelet tilknyttet 'Bracelets'
  (5, 1),  -- Black Rubber & Steel Bracelet tilknyttet 'Bracelets'
  (6, 3),  -- Steel Sport Bracelet tilknyttet 'Watches'
  (7, 1),  -- Beaded Charm Bracelet tilknyttet 'Bracelets'
  (8, 1),  -- Rope Bracelet with Silver Clasp tilknyttet 'Bracelets'
  (9, 1),  -- Minimalist Black Steel Bracelet tilknyttet 'Bracelets'
  (10, 1); -- Gold Mesh Bracelet tilknyttet 'Bracelets'


Insert product-color relations (mange-til-mange forhold mellem produkter og farver)
INSERT INTO ProductColor (ProductID, ColorID)
VALUES
  (1, 1),  -- Classic Stainless Steel Bracelet er sort
  (2, 2),  -- Leather Strap Bracelet er sølv
  (3, 3),  -- Gold Plated Chain Bracelet er guld
  (4, 2),  -- Silver Twist Bracelet er sølv
  (5, 1),  -- Black Rubber & Steel Bracelet er sort
  (6, 2),  -- Steel Sport Bracelet er sølv
  (7, 4),  -- Beaded Charm Bracelet er blå
  (8, 5),  -- Rope Bracelet with Silver Clasp er rød
  (9, 1),  -- Minimalist Black Steel Bracelet er sort
  (10, 3); -- Gold Mesh Bracelet er guld
