-- CREATE TABLE PRODUCT (product_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, description TEXT NOT NULL, price double NOT NULL); 

-- DROP TABLE PRODUCT;
-- INSERT INTO PRODUCT (name,description,price)
-- VALUES ("Armbånd","Lolleren",100);

-- DELETE FROM PRODUCT Where product_id = ;

-- DROP TABLE Category;
--DROP TABLE Color;

-- INSERT INTO Product (ProductName,Price,Description,ProductPicture)
-- VALUES ("Lolle",299.00, "Smuk armbåndskæde i rustfrit, sølvtonet stål. Designet er simpelt og frækt, og armbåndet vil med garanti befinde sig godt rundt om dit håndled.

-- Låsen der holder kædeleddene sammen er nem at åbn og lukke.","https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt850b15718be6eb13/60dbcb7793730d0ef6fc0cc3/s-br-8mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=384");

-- CREATE TABLE Product (
--     ProductID INTEGER  PRIMARY KEY AUTOINCREMENT,
--     ProductName TEXT NOT NULL,
--     Price DECIMAL(10, 2) NOT NULL,
--     Description TEXT,
--     ProductPicture TEXT,
--     Brand TEXT
-- );

-- Create Category table
-- CREATE TABLE Category (
--     CategoryID INTEGER  PRIMARY KEY AUTOINCREMENT,
--     CategoryName VARCHAR(100) NOT NULL,
--     CategoryPicture TEXT
-- );

-- Create Color table
-- CREATE TABLE Color (
--     ColorID INTEGER PRIMARY KEY AUTOINCREMENT,
--     ColorName VARCHAR(50) NOT NULL
-- );

-- -- Create a junction table for Product-Category relationship
-- DROP TABLE ProductCategory;
-- CREATE TABLE ProductCategory (
--     ProductID INT,
--     CategoryID INT,
--     PRIMARY KEY (ProductID, CategoryID),
--     FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE,
--     FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) ON DELETE CASCADE
-- );

-- -- Create a junction table for Product-Color relationship
-- DROP TABLE ProductColor;
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


-- INSERT INTO Product (ProductName, Price, Description, ProductPicture) 
-- VALUES 
-- ("Black Lava Rock |  Onyx & Coconut Bracelet Set" ,23.10,https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4f21efff1c790e7e/60dba2da467112384c7b46d8/black-on-black-bracelet-set.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800,Lucleon)
-- ("Icon | Black Leather  Onyx & Tigers Eye Double Bracelet",41.30,https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt25d5cf8e3b62b240/60dc0f38c5c41538a1558c47/20315.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800,Lucleon)
-- ("Icon | Black Leather & Silver-Tone Stainless Steel Bracelet",41.30,https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt454db6faf33a6a7e/60dc10572e95e10f21f2c2a4/20255.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800,Lucleon);

-- UPDATE Product
-- SET Description = 'This bracelet is made of high quality and is designed by Trendhim, a brand known for stylish and modern accessories. The bracelet is crafted with care and precision, ensuring a durable and luxurious feel. With its timeless design, it is perfect for both everyday casual looks and more formal occasions. Whether you want to add a touch of elegance to your style or make a statement with a unique accessory, this bracelet is the ideal choice. Trendhim delivers products that combine functionality and style at their best, and this bracelet is no exception. It is made to impress and last for many years to come.'
-- WHERE Description = 'Dette armbånd er lavet af høj kvalitet og er designet af Trendhim, et mærke kendt for stilfuldt og moderne tilbehør. Armbåndet er fremstillet med omhu og præcision, hvilket sikrer en holdbar og luksuriøs følelse. Med sit tidløse design passer det perfekt til både hverdagens afslappede look og mere formelle anledninger. Uanset om du ønsker at tilføje et strejf af elegance til din stil eller gøre et statement med et unikt accessory, vil dette armbånd være det ideelle valg. Trendhim leverer produkter, der kombinerer funktionalitet og stil på bedste vis, og dette armbånd er ingen undtagelse. Det er skabt til at imponere og holde i mange år fremover.';

-- SELECT DISTINCT Brand FROM Product;


-- Insert colors (tilføjer nogle farver, som produkter kan bruge)
-- INSERT INTO Color (ColorName)
-- VALUES 
--   ('Black'),
--   ('Silver'),
--   ('Gold'),
--   ('Blue'),
--   ('Red');

-- Insert product-category relations (mange-til-mange forhold mellem produkter og kategorier)
-- INSERT INTO ProductCategory (ProductID, CategoryID)
-- VALUES
--   (1, 1),  -- Armbånd tilknyttet 'Bracelets'
--   (2, 1),  -- Leather Strap Bracelet tilknyttet 'Bracelets'
--   (3, 2),  -- Gold Plated Chain Bracelet tilknyttet 'Necklaces'
--   (4, 1),  -- Silver Twist Bracelet tilknyttet 'Bracelets'
--   (5, 1),  -- Black Rubber & Steel Bracelet tilknyttet 'Bracelets'
--   (6, 3),  -- Steel Sport Bracelet tilknyttet 'Watches'
--   (7, 1),  -- Beaded Charm Bracelet tilknyttet 'Bracelets'
--   (8, 1),  -- Rope Bracelet with Silver Clasp tilknyttet 'Bracelets'
--   (9, 1),  -- Minimalist Black Steel Bracelet tilknyttet 'Bracelets'
--   (10, 1); -- Gold Mesh Bracelet tilknyttet 'Bracelets'


-- Insert product-color relations (mange-til-mange forhold mellem produkter og farver)
-- INSERT INTO ProductColor (ProductID, ColorID)
-- VALUES
--   (1, 1),  -- Classic Stainless Steel Bracelet er sort
--   (2, 2),  -- Leather Strap Bracelet er sølv
--   (3, 3),  -- Gold Plated Chain Bracelet er guld
--   (4, 2),  -- Silver Twist Bracelet er sølv
--   (5, 1),  -- Black Rubber & Steel Bracelet er sort
--   (6, 2),  -- Steel Sport Bracelet er sølv
--   (7, 4),  -- Beaded Charm Bracelet er blå
--   (8, 5),  -- Rope Bracelet with Silver Clasp er rød
--   (9, 1),  -- Minimalist Black Steel Bracelet er sort
--   (10, 3); -- Gold Mesh Bracelet er guld

--UPDATE

-- INSERT INTO Color (ColorName) VALUES ("Black");
-- INSERT INTO Color (ColorName) VALUES ("Blue");
-- INSERT INTO Color (ColorName) VALUES ("Brown");
-- INSERT INTO Color (ColorName) VALUES ("Gold");
-- INSERT INTO Color (ColorName) VALUES ("Green");
-- INSERT INTO Color (ColorName) VALUES ("Red");
-- INSERT INTO Color (ColorName) VALUES ("Silver");
-- INSERT INTO Color (ColorName) VALUES ("White");
-- INSERT INTO Color (ColorName) VALUES ("Yellow");


-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (1, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (2, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (3, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (4, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (5, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (6, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (7, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (8, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (9, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (10, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (11, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (12, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (13, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (14, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (15, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (16, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (17, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (18, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (19, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (20, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (21, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (22, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (23, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (24, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (25, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (26, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (27, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (28, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (29, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (30, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (31, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (32, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (33, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (34, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (35, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (36, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (37, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (38, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (39, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (40, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (41, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (42, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (43, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (44, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (45, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (46, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (47, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (48, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (49, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (50, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (51, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (52, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (53, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (54, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (55, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (56, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (57, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (58, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (59, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (60, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (61, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (62, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (63, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (64, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (65, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (66, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (67, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (68, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (69, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (70, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (71, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (72, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (73, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (74, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (75, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (76, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (77, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (78, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (79, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (80, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (81, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (82, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (83, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (84, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (85, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (86, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (87, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (88, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (89, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (90, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (91, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (92, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (93, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (94, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (95, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (96, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (97, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (98, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (99, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (100, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (101, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (102, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (103, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (104, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (105, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (106, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (107, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (108, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (109, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (110, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (111, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (112, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (113, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (114, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (115, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (116, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (117, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (118, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (119, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (120, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (121, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (122, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (123, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (124, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (125, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (126, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (127, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (128, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (129, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (130, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (131, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (132, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (133, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (134, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (135, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (136, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (137, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (138, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (139, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (140, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (141, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (142, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (143, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (144, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (145, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (146, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (147, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (148, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (149, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (150, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (151, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (152, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (153, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (154, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (155, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (156, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (157, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (158, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (159, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (160, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (161, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (162, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (163, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (164, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (165, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (166, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (167, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (168, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (169, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (170, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (171, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (172, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (173, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (174, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (175, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (176, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (177, 3);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (178, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (179, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (180, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (181, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (182, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (183, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (184, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (185, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (186, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (187, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (188, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (189, 2);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (190, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (191, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (192, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (193, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (194, 0);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (195, 1);
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (196, 2);



-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (1, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (2, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (3, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (4, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (5, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (6, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (7, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (8, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (9, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (10, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (11, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (12, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (13, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (14, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (15, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (16, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (17, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (18, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (19, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (20, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (21, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (22, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (23, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (24, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (25, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (26, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (27, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (28, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (29, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (30, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (31, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (32, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (33, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (34, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (35, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (36, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (37, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (38, 8);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (39, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (40, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (41, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (42, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (43, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (44, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (45, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (46, 8);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (47, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (48, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (49, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (50, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (51, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (52, 7);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (53, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (54, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (55, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (56, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (57, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (58, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (59, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (60, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (61, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (62, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (63, 5);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (64, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (65, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (66, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (67, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (68, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (69, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (70, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (71, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (72, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (73, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (74, 8);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (75, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (76, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (77, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (78, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (79, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (80, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (81, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (82, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (83, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (84, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (85, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (86, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (87, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (88, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (89, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (90, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (91, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (92, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (93, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (94, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (95, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (96, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (97, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (98, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (99, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (100, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (101, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (102, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (103, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (104, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (105, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (106, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (107, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (108, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (109, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (110, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (111, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (112, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (113, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (114, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (115, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (116, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (117, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (118, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (119, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (120, 8);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (121, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (122, 8);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (123, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (124, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (125, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (126, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (127, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (128, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (129, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (130, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (131, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (132, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (133, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (134, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (135, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (136, 8);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (137, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (138, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (139, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (140, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (141, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (142, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (143, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (144, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (145, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (146, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (147, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (148, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (149, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (150, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (151, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (152, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (153, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (154, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (155, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (156, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (157, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (158, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (159, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (160, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (161, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (162, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (163, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (164, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (165, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (166, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (167, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (168, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (169, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (170, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (171, 7);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (172, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (173, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (174, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (175, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (176, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (177, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (178, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (179, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (180, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (181, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (182, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (183, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (184, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (185, 1);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (186, 2);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (187, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (188, 4);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (189, 6);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (190, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (191, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (192, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (193, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (194, 0);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (195, 3);
-- INSERT INTO ProductColor (ProductID, ColorID) VALUES (196, 6);



-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Lava Rock |  Onyx & Coconut Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4f21efff1c790e7e/60dba2da467112384c7b46d8/black-on-black-bracelet-set.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Black Leather  Onyx & Tiger's Eye Double Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt25d5cf8e3b62b240/60dc0f38c5c41538a1558c47/20315.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Black Leather & Silver-Tone Stainless Steel Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt454db6faf33a6a7e/60dc10572e95e10f21f2c2a4/20255.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Black Lava Rock  Coconut & Tiger's Eye Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt53ce1aa626ef0f8a/60dbb3eda37ada0f2ccf9d57/7-1_356.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("8mm Silver-Tone Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt850b15718be6eb13/60dbcb7793730d0ef6fc0cc3/s-br-8mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black & Natural Wooden Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt0815aefa741d41f8/60dba28d8491e60f790bc97b/impeccable_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("2mm Black Stainless Steel Curb Chain Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt1fcd6b4d2b92db76/60dc2741bcc58b0f8f8ac316/6-1_434422e4933471b99adbe2bea3ba9b0f_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Wrap-around Brown Leather Adjustable Bracelet", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf3005cc91f14b5b2/60dba19776a3de39ad15b9c0/brunt-justerbart-snoet-laderarmband.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | All Black Leather & Stainless Steel Wrap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt141816de075d7712/60dbb8dfa7307e39e4df1f7f/5-2_297.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Black Lava Rock & Blue Agate Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt80cf839321990707/60dbb769a37ada0f2ccfaa9f/3-1_135_1_45_1_57_1_190.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Red |  Brown & Black With Wood |  Coconut & Cotton Bracelet Set", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt3964548cbc3bd557/60db9cf73388dd0edc09edc6/br62-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Black & Brown Leather & Stainless Steel Wrap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb2d9c0d211403423/60dbb43d467112384c7b871a/12-2_199.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | All Black Leather & Stainless Steel Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt668d70a521f7a7e2/60dc0cd4f1ff900f4d411270/20261.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Black Leather & Stainless Steel Wrap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf9fe44357c1dd68c/60dbbefa63584e0ecae4742f/1-2_121_1_172_1_101_3_40.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("All Black Braided Leather & Stainless Steel Bracelet", 38.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt50647565aec87792/60dbadcaed93bb0fb199b8a4/10-4_46.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black & Brown Braided Nylon Bracelet Set", 16.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt15e5e0105d0e2e54/60dc0c5d5543520fcbc3d3b2/12-22c2869f74f68d3218e116789f53af95a.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("8mm Black Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc8c508a9af184e40/60dbbb6ea37ada0f2ccfb9ef/b-br-8mm_1_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("4mm Black Stainless Steel Curb Chain Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt5d1f8bdb29162c99/60dc2afa90ef0d39a20025a5/3-1_2d5baf56fabe36f420a22c932cfca701_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Black Lava Rock & Natural Stone Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltac32b80b585052cd/6156cce42e35f3558b362d95/11miiiro.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("2mm Silver-Tone Stainless Steel Curb Chain Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4b366e553d4736f0/60dc298b3388dd0edc0bf34a/5-1.7a0b90a447207b0910769198733a4263_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=800", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("6mm Silver-Tone Stainless Steel Curb Chain Bracelet", 26.60, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9fd45a78e6041922/62d7e3ae652a953c7dc54210/15108-s-brac1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Braided Leather Cord Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9d2c823f1ee8944e/60dbb7e85775160f9f228dbd/2_286.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Gold-Tone & Black Leather Cord Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt914270b96f4af191/60dc0e41bbd30c0f67e375a7/sdfknsdfk3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 3mm Rusty Brown Woven Leather Wrap Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd82e14085c920a2d/61b71d285372e915540c8e43/10-17c4ec95959d797b50682c9e9abbada14_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Light Brown & Black Braided Leather Cord Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt923cc34a08184282/60dbb3c2993b043846434448/6_59_1_35_2_66_3_207.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Yellow &  Red & Blue Braided Yarn Bracelet Set", 13.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt6b1b6631d11c92c9/60dc1c99467112384c7d0540/19-244c54e82d9583e7c29fe68f8e68f074f.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Adjustable Black Nylon Lucky Knot Bracelet", 13.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf04382217b3fe1ec/60dc0bf1bcc58b0f8f8a5f2c/3-2_56777ca2d08cd2b3aacdc7a7d4107bc9.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Snowflake Obsidian Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltbeba3815f62ea810/60dc2bc520a5380ed1a4e582/8-1.9da5afd317c9d907a997fc80bd219f2c_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Onyx & Pear Tree Wooden Bracelet Set", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltabeb7412502e80c8/60dbb2e75e51ad3b1d272c4a/8_11_1_128.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Thin Black Stainless Steel Cuff Bracelet", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt581342eafd097f1e/60dc145f8491e60f790d6c3d/thin3b56154267bef51d8e5d0f0d75a25a1b_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Adjustable Multicolour Nylon Bracelet Set", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd4882340914dfac3/60dc0fa1fd14d30f3eaf711e/15-11721051211a9db4311c506e7b67ec37b.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Black Leather & Grey Jasper Double Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt1399264f4127492c/60dc247922d24e38a38c704a/20321.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("10mm Black Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt5301f3057219ec2f/60dbbddb467112384c7baca8/b-br-10mm_1_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Dark & Black Leather & Steel Single Strap Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt3f57b018565d6e8b/60dbc54315da443b102d8179/15-2_140.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Bolo | Blue Leather Rope & Stainless Steel Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltbfa3b2fa14ed86f7/6182547b2c8e662bb79c6c53/11-102a4721954f24e35543f3c5129e2c13a_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Black Lava Rock &  Wooden & Coconut Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltfa4c4c652c2153fc/60dbc45fcbc6070f5c3cd420/12-1_73_1_185.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Blue Lapis Lazuli Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltdd02a289b584ec6b/60dc010820a5380ed1a4425c/14-1ac9b60fcc6ea92f8515be4608e131cfd_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Adjustable Red Nylon Lucky Knot Bracelet", 13.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc500552660297812/60dc200cc5c41538a155c8bf/4-2_6f36c833563423772fa05647a7d4bcc0-2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Onyx & Stainless Steel Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt6d7c80ad76ad6bba/60dbaac4bbd30c0f67e20b11/BR96.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Black & Silver-Tone Leather Cord Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb31f86b9e0ee6395/60dc28f25c97640f94447a07/20267_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Polished Black Onyx Bead Bracelet", 16.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf5cc811fa30454f1/60dbb89ee1461d39eb8bdcff/22_86.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Lava Rock & Agate Pearl Bracelet Set", 16.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt55fe1dc5e9c0a662/60dba07a22d24e38a38a8f96/6_59_1_8.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Fort Tempus");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Adjustable Blue Nylon Lucky Knot Bracelet", 13.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltaa68435513f566c5/60dc1b44bcc58b0f8f8a96c2/2-2_5b4c0da481976b633c4c321794715021.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Brown Braided Leather & Stainless Steel Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta5d1968603269ae5/60dbc617993b043846438b38/16-3_42.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 6mm Brown & Black Woven Leather Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4818884be6356396/61b33da1e196250e72153e08/1-1.67878e7147ce1e11795229eb7d1673f3_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Red Tiger's Eye & Stainless Steel Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt29dbdb9994bccd4e/60dbb8648491e60f790c1cdb/sfsf_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Picasso Stone Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt845d94557966a82e/60dc28c720a5380ed1a4d95c/1-1.3c3fec0232d7fdb55f30dd6275de0466_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Black & Red Leather & Stainless Steel Wrap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt43178fd43052b199/60dbb1e4c5c41538a15436f1/4-2_321.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 3mm Brown Woven Leather Wrap Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4696624a8479e7cf/61b7204afbea36106b05915e/11-1537e05fb5510c13eaa4edb77b980f873_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Beads &  Tiger's Eye &", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt5e7e92935ff19ce6/60dc0fc9bbd30c0f67e37b75/20-1b459979fee6ddf355abf6fbcae395dde.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Brown & Black Leather Cord Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt68041a65b1339f10/60dc10cc96e07e0f6e5598ed/20279.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Emerald Green Agate Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt44d1e7e89ae4e797/60dc147822d24e38a38c3838/1-1_beca64c70a967dffa0828e813b28581d.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Black & Blue Leather Cord Wrap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd13d2eecbb4bcc18/60dbccddbcc58b0f8f897b50/6-2_47_2_51_3_151.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Tiger's Eye Bracelet", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt670145d5bb654e51/60dba0b793730d0ef6fb7045/br91_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 3mm Brown Woven Leather Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt71a3ada3ca48f9c9/61b379a85bc2bb1167434657/5-1.ccce6a4eb08dbd45b33b40f282ee4257_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Green & Blue Braided Nylon Bracelet Set", 16.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt813a93e3b8b454de/60dc0cea20a5380ed1a47212/13-26c5728462ac28125d2ba8d9749839754.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black & Grey Braided Nylon Bracelet Set", 16.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt2302e907b0dd0b7c/60dc1f24ed93bb0fb19b56dc/11-252f9d6525128abcc6ff1740473c1436d.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Adjustable Grey Nylon Lucky Knot Bracelet", 13.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt74a0f33e894f380e/60dc161d76a3de39ad176370/1-2_fbfd1069a162477fec035bbecc93bafc.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Arie | Polished Silver-Tone Stainless Steel Bangle Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltfa9b2e5a66f4d9e5/61a893f8b742142c0dca6d5e/11-1-clean.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Black Leather & Lava Rock Double Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd4474bf0a008d405/60dc0b012e95e10f21f2ae8a/20327.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Thin Silver-Tone Stainless Steel Cuff Bracelet", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt01592c6c12aa78bd/60dc162a76a3de39ad176394/Silv720672ab17e925e76113334bb72bdef8_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("10mm Silver-Tone Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc89eabc7ff6f8555/60dbd0135775160f9f22e567/s-br-10mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("White Turquoise & Stainless Steel Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt53d9b55ffe00e819/60dc0d1f2e95e10f21f2b664/4-1_d7d315b0bc0f0ee6c9c8dce320d033ff.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Golden Brown Leather Cuff Bracelet", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd13b01853755d0a5/60db9e9b2446e93b5b641dea/brunt_bredt_laederarmband-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy Bracelet Extenders in Black Stainless Steel", 5.60, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt391f8219a0e86f79/60dc11393388dd0edc0b9a9a/22168-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("10mm Gold-Tone Stainless Steel ID Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt51c44d97c99fb7e2/60dc041376a3de39ad171d06/5-1_478.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Fort Tempus");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black &  Brown & Cream Natural Wooden Bracelet Set", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt49364b7d59783d86/60dba2c5d9a5243b669c6e3c/15_5_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 6mm Black Woven Leather Wrap Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltefa1e4280a9e8c38/61b72948f2d5ef1430fab25e/2-1.8b798cdd022e941eaa3a7c0a87ede2b6_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Natural Wood Bead & Vintage Brown Leather Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta1e6986ba0f3c8bb/61781890431af80e6fcdb532/5-1.6ea5a2242ad3d6167cd9f946fe1086de_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Wave  | Silver-Tone Light Grey and Wooden Bracelet Set", 17.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4ff503f2f5ca7449/60dc0a61f1ff900f4d4108e0/9-1_copy_17.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Black & Yellow Leather & Stainless Steel Wrap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9894f97c02fbf103/60dbcebb5775160f9f22e08b/2-2_391.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Lava Rock & Natural Wooden Bracelet Set", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltab195a2e26c33f69/60db9e5e0bc1b20fa6b9365d/br74_afterlife_bracelet-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black & Natural Stone & Braided White Cotton Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt847fa760265ef5ec/60db9ea05c97640f94427d9b/dallas_bracelet_br65.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 1/8 (3 mm) Red Woven Leather Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt59cc49c364408a2c/636248eef6afc05908452020/07-zeismont-ll-collins-leather-bracelets8012-red-kolin_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Nomen | Brown Leather and Gold-tone ID Plate Bracelet", 45.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt551aa6ac6de5a245/63d7aaf17504842aaf69f3e4/5-1imme.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Bolo | Brown Leather Rope & Stainless Steel Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt80a78744c1d0439f/6177cc8bbf413c0e7c10ba4d/12-1f800c392465aea54d5dab80dbd2c289d_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Rico | All Black Lava Rock & Onyx Skull Bracelet Set", 87.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt496031a2ed670939/61692976ece25f443028ed9f/avgukj.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Sanatio | 8mm Black & Blue Lava Rock |  Onyx & Sodalite Bracelet", 48.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd560369ba3fffd60/6155d472b084d01848874054/ahiihkhvgbbk_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Sanatio | 6mm Black Lava Rock & Amethyst Bracelet", 48.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt6db6179ee5c68110/6155d448e6463f2c6c6cef2a/avghvhvjhk.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Jasper Bead Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9162984f73ba838e/60dc2439f1ff900f4d41675e/2-1.8c636b9fb0c2d32ad4d16c8f7e36a924_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Amager | 10mm Gunmetal Stainless Steel Rope Chain Bracelet", 48.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt1d348bec98877b31/60dc295076a3de39ad17abb8/1-1.db1f47f039c268363b0a52415d4657c5_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Amager | Gold-Tone Cable Chain Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt3bd56a0607ad74ee/60dc243addcd520eeb8cc513/23-1102abb06c3d28508f236aa7ee7f875fc_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("12mm Black Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltcd5a0a262f7daf26/60dc1b4620a5380ed1a4a75e/1-1-black12mm_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Black &  Natural & White Coconut Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt1a4580e1e7f7451f/60dbcff715da443b102da819/2-1_84_1_396.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Natural-Tone Wooden & Coconut Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta852e45e72628e0f/60dbbe815c97640f9442f40b/13-1_50_1_215.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black & Silver-Tone Anchor Bracelet", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltde088882a0e45dca/60dbafde5e51ad3b1d2720e4/13_52_1_88_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Tailor Toki");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 3mm Black Woven Leather Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte0315b4bffa9ce85/61b362a5bba36d393fae2278/4-1.0f22e6f5406b17f3d3a53a9eb668d3a2_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Red Tiger's Eye Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt84e7cbe584dc219a/60dc2a1c5e51ad3b1d28e03a/3-1.4bf8813ec157b68a26a2ba3bb45d59d1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Turquoise Natural Stone Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt80d7bf6be69d14e3/60dc0c47f1ff900f4d41103c/3-1_395a5e6321ad750a90cd85012084365e.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Silver-Tone Stainless Steel Cuff Bracelet", 17.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt0ac38c8a61e66fd4/60dc20742e95e10f21f2fcce/brusd45a14861196b84229d5351457fc202f_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Leather & Yellow Tiger's Eye Double Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltcd2a6cc29abe5f4c/60dc0e8590ef0d39a2ffbce6/20309.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Wood Bead Bracelet Sets", 11.20, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte5ec5973f491e9cd/60dba2b1993b043846430514/11_8_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Brown Wooden Wrap Bracelet", 17.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltaf04fbcfcb2031a8/60db9e69a8fb870f8831951b/br76-brown_clarity_bracelet-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 6mm Brown Woven Leather Wrap Around Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte6fa7549e1cde407/61b72a9e70cffc08f34df928/3-1.8a7144c9ff674cd566cb54e20a708a3e_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | 3mm Black Woven Leather Wrap Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9c025962d85c464b/61b71ad00260d23bde0434a8/9-1.8ea1a726aa346fba29f4ffc98b5f6210_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Red Imperial Jasper Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt48839bfff0c86ad4/60dc0296a37ada0f2cd0baff/13-17094530de4ccd53b53f0f487547e604d_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Frosted Black Agate Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9fb6ea3a32e67c70/60dc0294e1461d39eb8ce507/12-158addab9c1a8f723e2c94abe16a935fe_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Black Agate Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltfb366ef45d13b0e8/60dbfef42e95e10f21f27f4e/11-139e5c726b542a600a9e87e8b1476643f_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Lava Rock Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf3e1c9adf44f8b13/60dc29ae3388dd0edc0bf3f2/9-1.58d4ce5cf504306e24062e41d28f2b84_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("2mm Gold-Tone Stainless Steel Curb Chain Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte492fbab3e96dcee/60dc28452446e93b5b661284/4-1.182e74eacd4e730025272d536ad08e70_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Stainless Steel Cuff Bracelet", 17.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt3b3d2b70f8acebbe/60dc18bbbbd30c0f67e39b2f/blacddbbfab6d04beb2f3dda7b148876ab91_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy Bracelet Extenders in Silver-Tone Stainless Steel", 5.60, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt50e72e97f61b6b2d/60dc27e42446e93b5b66111e/22169-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("12mm Silver-Tone Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt2feaca5851dbbc5a/60dc27660bc1b20fa6bb2ddb/1-1-silver12mm.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Wooden Bead & Black Leather Cord Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb7edfb217a897e34/60dc11523388dd0edc0b9aee/20291.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES (" (6 mm) Gold-Tone Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltebaf8a116bc62369/62d7e9666c31723d18906afb/15096-g-brac1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("6mm Black Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt8626dd8c4ffa0ea3/62d7ea844473103b37954c65/15083-b-brac1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Brown Braided Leather & Stainless Steel Bracelet", 38.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte30ed856a743bfed/60dbb5925e51ad3b1d273682/11-4_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Matte Black Stone & Braided Leather Band Bracelet Set", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta6cca62fcbd0a719/62286f11445ecd4d7642bf49/avljgh_bkn.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black & White Agate & Leather Cord Bracelet Set", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt622c874367b3c0b7/62285b5da5d81e09dc01608c/agvgjv_.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Brown Leather & Stainless Steel Braided Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt8bc7d149f0397349/614dca79ee82ec791a872a6e/bgfukjgh_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Brown Wood Bead Bracelet Sets", 11.20, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9f09b397127516c5/60dba16976a3de39ad15b940/12_5_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Red Tiger's Eye & Black Lava Rock & Leather Cord Bracelet Set", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte3f271d768549822/60db9e9c5543520fcbc2415a/1_26_3_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Bolo | Double Black Leather Cord Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb0070429c65aabf1/60db9db0892a730f5883f2e1/sort-splittet-bolo-laderarmband-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Fort Tempus");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Gladius | Brown Full Grain Buffalo Leather Wrap-around Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt51ec49e4350c1d88/64a42b9b9aa241587eba5645/28687-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Gladius | Black Full Grain Buffalo Leather Wrap-around Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt2097fc6349b66bb4/66bb0c8c353bc380d83708a6/28686g.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Brown Braided Leather Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9a81071c26f32257/6475d336f5af530cd3059662/28581-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Braided Leather Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt94b817e3a2517212/6475d2e1083c416e916b6a02/28577-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Braided Black Stainless Steel Cross Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta97eee6b29b12921/6475d03c10c3af5cd63babb3/28561-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Braided Silver-Tone Stainless Steel Cross Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt3195fdd6a7fa4e19/6475cfe94605c54ab2618093/28556-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | (3 mm) Red Woven Leather Wrap Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltcf5248ec709d94c7/63624d4c5a03b04b6e6ebeea/09-zeismont-ll-collins-leather-bracelfgdgdets8031-red_copy-kolin_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | (3 mm) Navy Blue Woven Leather Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt01a1929155c051b1/636247475badeb5b191295ab/08-zeismont-ll-collins-leather-bracelets8012_copy_2-kolin_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | (6 mm) Red Leather Wrap Around Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd57f65aa734baea1/635f9525922dcb23e3ada836/03-Z71c9a46846bf4e454ebd63fab42ce5cd_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Nomen | Triple Gold-tone and Brown Leather Bolo Weave ID Bracelet", 52.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4adf6872dd4a1467/63d79a7bb4240a32ea04915f/3-1imme.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Pure Magnetic Titanium Bracelet", 52.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb54badfa03d50477/6335c6d469f2b00d1e712645/10-2mag.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES (" (3 mm) Silver-Tone Chain Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt7a489cf1d5b57bc9/6331c94d48a05e7e90ad8de7/5-2.5ac7cfbb57b70ab76f1aeb76bb8d29e6_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Atlas | Silver-tone Stainless Steel North Star Charm Bracelet", 48.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf40ca275475b2c8a/62ed0d11892fae3ba7c43b8c/2-1aa462a65ec2b644f2e55e80831c9d42b0_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Atlas | Silver-tone Stainless Steel North Star Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd882e369aa97091e/62ed03f5a8f508306ed04cea/1-1aa79064b203db0bfddf35a394c7dae273_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | Simple Brown Leather Wrap Around Cord Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc0564054a66529be/61b722c25583a20dd5665543/7-1.982488a17631f76991d06a26d8df3d8e_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Brown &  Beige & Black Wood Bead Bracelet", 11.20, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltbd379949b421febf/60db9dbba7307e39e4debb65/brunt_ny_multi_perlearmb_nd.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Arie | Silver-Tone Stainless Steel Rope Texture Bangle Bracelet", 45.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blteb2c778da21bc475/61a9dc0628bf243c8907e728/14-1-uze_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Vasilios | Dark Grey & Black Hematite Stone Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt6a137a20fbfa5839/6196955123523311c70bbbb9/24271-17-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Ankh | Brown Leather & Wooden Bracelet Set", 52.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte77e6f07e0277ef4/616feb069d191809f6b90c3c/13-126238a42760d7656c3f082e00086a81b_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Sanatio | Black Lava Rock & Tiger's Eye Double Bracelet", 52.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt7a6ed6117307a561/6155d47ce626b31b3ebc2338/atiger.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Unakite Bead Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt73e18c0c2db8eadf/60dc2af08491e60f790dbfd5/6-1.9ab23bccf30839663f6f22924826aedf_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Amager | Gunmetal Stainless Steel Cable Chain Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt2e1a6a18b2fab164/60dc27950bc1b20fa6bb2ead/21-1a90fcfb579e024f6ad4833e7c93bb388_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Red & Grey Braided Nylon Bracelet Set", 16.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte70e030f535f226e/60dc119915da443b102e96b5/14-2380396926347ad18a20af9816efef892.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Waykins");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Matte Black Onyx & Stainless Steel ID Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt69f1f872a17c5917/60dc1267a37ada0f2cd0fa7b/20-15c87c846f008d3a580ffc77f2f9ad952.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Onyx &  Lapis Lazuli & Tiger's Eye Bracelet", 38.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltbf67cd029eec0338/60dc0bf876a3de39ad173d86/11-19772fd3495ba1cf7b947097802c9ed87.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roas | Grey Jasper & Rose Gold-Tone Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte65a7fc9eadaf1eb/60dc2831fd14d30f3eafccd6/2-1_de3ca6d63d59db73a485750de06a3ecf.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Black Leather & Green Stone Double Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf57a6f3fb736f3c3/60dc11bd0401cb0ebfac0f1a/20285.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Black Lava Rock & Multicolour Natural Stone Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4a08a79ebf248dc3/60dbb351993b04384643429e/10-2_3_1_2_2_236.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Natural-Tone Bamboo & Coconut Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt138f3c8e2ca10520/60dbb856a37ada0f2ccfadff/4-1_424.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Black & Dark Leather & Steel Single Strap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9f477adf91027084/60dbbb89ed93bb0fb199ec26/10-2_3_1_2_2_230.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Roy | Black & Dark Leather & Stainless Steel Double Strap Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltcbb2afc19d4a1491/60dbbd6a15da443b102d63bb/9-2_230.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Rustic Stainless Steel Double Curb Chain Bracelet", 52.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf164cc2b16cce4a8/60dbba3a3388dd0edc0a5b14/11-2_2_217.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Fort Tempus");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Waxed Cotton & Silver Bracelet", 45.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta7526ba52758ee2d/60dbb3d1454f930f33f581ac/2-1_84_1_243.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Grey Waxed Cotton & Silver Bracelet", 48.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blted939a34feb42121/60dbc1cbddcd520eeb8b6137/1-1_201_1_172.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Navy Blue & Silver-Tone Anchor Bracelet", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4b048d9008cfbae1/60dbbb3ef1ff900f4d3fed22/14_95_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Tailor Toki");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("White Turquoise &  Blue Lapis Lazuli & Black Zirconia Bracelet", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9d02eb7076c9bd83/60dbbc81bbd30c0f67e24f4f/11122-01.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Lava Rock & Alabaster Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte1aac3671b9a117e/60dbb85e3388dd0edc0a53fa/11113-01.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Tan & Black Braided Leather Cord Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt45698197c90781ec/60dbb5df892a730f58844c91/1_50_1_189_1_82.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Stainless Steel Band Bracelet", 26.60, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd34af4738d88be1d/60dbb9d9c5c41538a154554b/33_46.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Fort Tempus");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Turquoise Imperial Jasper Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc98e6b1ae93b5eb7/60dc008b5e51ad3b1d28426e/10-1377257c2f048d9763f13fb32092715ec_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Leather Adjustable Wide Wrap Cuff Bracelet", 16.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt458db770b2c5d8ca/60db9e89467112384c7b36e2/long1-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins |  (8 mm) Black Woven Leather Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt50fe44853c538ed7/63624fee2109c24a1437906e/11-zeismont-ll-collins-leather-bracelets8103-black-kolin_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins |  (6 mm) Navy Blue Leather Wrap Around Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt1403776ded557c54/635bda9a7c70ac2fcc121878/01-Z18cd54f0de431c3cfa3c0c4e7784e870_4.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Amager | Silver-Tone Zirconia Stainless Steel Chain Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt238ce153f720cfb7/6332b6d5e8f1d913680bbc60/4-2l2cf0f4dfe6dfe7305dbba23af025d243_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Grey & Black Braided Leather Cord Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt10c69136312f6dbc/62349d278dff6c096a2c95c4/3_15100c0ca3106e5528c175940a3432addf_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins | Simple Black Leather Wrap Around Cord Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt678b8f931823a539/61b7245171e6c346981bcd24/8-1.66a550dae06a9a888338282a1cead4d5_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Naxos | Black Braided Leather & Green Tiger's Eye Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt2f3be468944048ba/60dc272520a5380ed1a4d2ac/7-1.dde2570a36e93a4da7758b3f23f1888f_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Rico | Silver-Tone Stainless Steel Skull Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt5ddf686c73f86da0/60dc282322d24e38a38c7e88/2-1.1758af39c95c3b5d89eb323432382fbd_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Lava Rock & Multicolour Natural Stone Bracelet", 21.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt3bd4c8cccdbd9b92/60dc200cbcc58b0f8f8aa772/1-1.940beafe534e9514699edb3672e87415.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("8mm Gold-Tone Stainless Steel Curb Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb2b3c3e2ab1c2933/60dbc1795c97640f9442fee1/g-br-8mm_1_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Miro | Black Lava Rock & Red Tiger's Eye Bracelet Set", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltc6244d94e94f2845/60dbb7b7c5c41538a1544d7d/9-1_7_17.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Slim Black Titanium Link Chain Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt5cf0de515cb3ba4b/60dbc1025543520fcbc2c24a/3-3_204.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Basic 5mm Stainless Steel Chain Bracelet", 25.90, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltdd4cc284cf3d9f59/60dbbd895543520fcbc2b594/35_38.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Fort Tempus");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Lava Rock &  Natural Stone & Leather Bracelet Set", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltef01df7fbce864ee/60dbb65896e07e0f6e544eab/BR94.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Blue Agate & Leather Cord Bracelet Set", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta987a440d509d7ea/63c005f9e632f770ada82982/8947-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Violet Natural Stone & Black Leather Bracelet Set", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9bd767eb89446eed/62285a2f0051ec017752cd17/avbgj_bh.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Blue & Black Natural Stone & Leather Bracelet Set", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltd0b77616665a526e/615aea472e35f3558b38ba0c/avcgfvjhb.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Neshraw");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Green & Tan Paracord Bracelet", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf4d4c774a2dad028/60dbab3296e07e0f6e542419/6_59_1_35_2_30.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Tailor Toki");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Paracord Firestarter Bracelet", 18.90, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt38d03cc82a50ca17/60dbab96cbc6070f5c3c76a0/7_122.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Tailor Toki");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Paracord Bracelet", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltee2f1331d2f1f8a7/60dba785467112384c7b57e4/8_11_1_96.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Tailor Toki");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Paracord & Metal Lock Bracelet", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltbc2c0b9feaf475b6/60dbb0e920a5380ed1a32034/3_134_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Tailor Toki");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black Rubber & Stainless Steel Cross Bracelet", 18.90, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltfe723406b34a0420/60db9ebfa7307e39e4debf0b/gummi-kors-armband-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Fort Tempus");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Argentia | 925s | 7 mm Rhodium-Plated Sterling Silver ID Bracelet", 80.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt5f6e981ad28cf54f/64b1267b764bf96c0b080f4b/15-1-silvvarge_1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Seizmont");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Black & Natural Wooden & Cotton Bracelet Set", 17.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte72ae1c612318fcb/60dba00896e07e0f6e53fb7d/texas_bracelet_br64.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials |  (3 mm) Gunmetal Black Rectangular Box Chain Bracelet", 28.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb25d85a41495a095/64956fe83999f70b9c405dca/rectangular_box_chain_3mm_-_30189_f1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials |  (1 mm) Silver-Tone Rectangular Box Chain Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltbb0b92298bf7a632/649d48fcccbfe5eb41d625ec/rectangular_box_chain_1mm_-_30109_f1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Wrap-around Blue Leather Adjustable Bracelet", 15.40, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt22859aa6d4088302/60db9caf22d24e38a38a81c4/blat_snoet-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Collin Rowe");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials |  (4 mm) Silver-Tone Rope Chain Bracelet", 26.60, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltb26832f9ce1e5f32/64de0b0ccc07e0413b9afc0f/52-2-4_mm_rope.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials |  (6 mm) Gunmetal Black Herringbone Chain Bracelet", 32.20, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt14ad413970b4b1bc/64943d9e4986fa70bad99a2b/herringbone_chain_6mm_-_29619_f1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials |  (4 mm) Gunmetal Black Herringbone Chain Bracelet", 28.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltf3c17ff7771367ba/64943b7595237f29076ccedf/herringbone_chain_4mm_-_29559_f1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials | (4 mm) Silver-Tone Herringbone Chain Bracelet", 28.00, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt4216769d2b2c58d9/649d4052f90873671dc4b0a3/herringbone_chain_4mm_-_29539_f1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials |  (4 mm) Gunmetal Black Figaro Chain Bracelet", 25.90, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt19a4f5a7e240c644/649428a39c8fba68de43f5e4/figaro_chain_4mm_-_29001_f1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Essentials |  (8 mm) Silver-tone Figaro Chain Bracelet", 23.10, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltcc9b3ce258393e94/64ddfe9cf8895c908671ce23/55-3_2mmfigaro.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Blue Stainless Steel Wire Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt45a3b94c0790340f/6475d2922f11cb39310ff247/28573-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Icon | Brown Leather and Stainless Steel Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt6176807294975bfa/6475cc134d6840359a19df96/28551-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Blue Retro Leather Bracelet", 38.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt1aeb25c99ff0976f/647752ee40097a0ffc2c3c05/6-restbrac.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Rico | Tiger’s Eye & Gold-Tone Stainless Steel Skull Bracelet", 52.50, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltaa284d0d62e09589/644930b38ad200f493c765a5/28212-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Rico | Gold-Tone Stainless Steel Skull Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt5a206b420cf19615/64491160dd27a459416a793c/22-11rikko_3.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Unity | 6 mm Onyx Star of David Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt8e9f74477979e58b/64242bb73a4ea6772987a10b/11-1-beadunit.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Unity | 6 mm Lapis Lazuli Star of David Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blta28d1be493753d30/64242af490f6f105a89c7156/7-1-beadunit.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Unity | 6 mm Lapis Lazuli Hamsa Hand Bracelet", 41.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blte9b52a68df9f0806/6424292f20b3f571499a93fd/6-1-beadunit.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Unity | Gold-tone Double Chain Cross Bracelet", 34.30, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt89da433eab42b73d/64241cad19680775c918b68a/8-1-narunit.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Arkai");
-- INSERT INTO Product (ProductName, Price, ProductPicture, Brand) VALUES ("Collins |  (3 mm) Navy Blue Woven Leather Wrap Bracelet", 30.80, "https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/blt9d8503d70f22b40e/63624b23444899577ea2b415/10-zeismont-ll-collins-leather-bracelets8031_copy-kolind_1_2.jpg?format=pjpg&auto=webp&quality=75%2C90&width=180", "Lucleon");


--Delete existing entries for ProductID 1 to 196
-- DELETE FROM ProductCategory WHERE ProductID BETWEEN 1 AND 196;

-- -- ProductID 1
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (1, 3);  -- Beaded
-- -- ProductID 2
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (2, 3);  -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (2, 2);  -- Leather
-- -- ProductID 3
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (3, 2);  -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (3, 1);  -- Steel
-- -- ProductID 4
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (4, 3);  -- Beaded
-- -- ProductID 5
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (5, 1);  -- Steel
-- -- ProductID 6
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (6, 3);  -- Beaded
-- -- ProductID 7
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (7, 1);  -- Steel
-- -- ProductID 8
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (8, 2);  -- Leather
-- -- ProductID 9
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (9, 3);  -- Leather
-- -- ProductID 10
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (10, 3); -- Beaded
-- -- ProductID 11
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (11, 3); -- Beaded
-- -- ProductID 12
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (12, 2); -- Leather
-- -- ProductID 13
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (13, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (13, 1); -- Steel
-- -- ProductID 14
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (14, 2); -- Leather
-- -- ProductID 15
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (15, 2); -- Leather
-- -- ProductID 16
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (16, 2); -- leather
-- -- ProductID 17
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (17, 1); -- Steel
-- -- ProductID 18
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (18, 1); -- Steel
-- -- ProductID 19
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (19, 3); -- Beaded
-- -- ProductID 20
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (20, 1); -- Steel
-- -- ProductID 21
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (21, 1); -- Steel
-- -- ProductID 22
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (22, 2); -- leather
-- -- ProductID 23
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (23, 2); -- Leather
-- -- ProductID 24
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (24, 2); -- Leather
-- -- ProductID 25
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (25, 2); -- Leather
-- -- ProductID 26
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (26, 3); -- Beaded
-- -- ProductID 27
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (27, 3); -- Beaded
-- -- ProductID 28
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (28, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (28, 2); -- leather
-- -- ProductID 29
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (29, 3); -- Beaded
-- -- ProductID 30
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (30, 1); -- steel
-- -- ProductID 31
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (31, 3); -- Beaded
-- -- ProductID 32
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (32, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (32, 2); -- leather
-- -- ProductID 33
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (33, 1); -- Steel
-- -- ProductID 34
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (34, 2); -- leather
-- -- ProductID 35
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (35, 2); -- leather
-- -- ProductID 36
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (36, 3); -- beaded
-- -- ProductID 37
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (37, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (37, 3); -- beaded
-- -- ProductID 38
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (38, 3); -- beaded
-- -- ProductID 39
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (39, 3); -- Beaded
-- -- ProductID 40
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (40, 2); -- Leather
-- -- ProductID 41
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (41, 3); -- Beaded
-- -- ProductID 42
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (42, 3); -- Beaded
-- -- ProductID 43
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (43, 3); -- Beaded
-- -- ProductID 44
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (44, 2); -- Leather
-- -- ProductID 45
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (45, 2); -- leather
-- -- ProductID 46
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (46, 3); -- Beaded
-- -- ProductID 47
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (47, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (47, 2); -- Leather
-- -- ProductID 48
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (48, 2); -- Leather
-- -- ProductID 49
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (49, 2); -- Leather
-- -- ProductID 50
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (50, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (50, 2); -- leather
-- -- ProductID 51
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (51, 2); -- Leather
-- -- ProductID 52
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (52, 3); -- beaded
-- -- ProductID 53
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (53, 2); -- leather
-- -- ProductID 54
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (54, 3); -- Beaded
-- -- ProductID 55
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (55, 2); -- Leather
-- -- ProductID 56
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (56, 3); -- Beaded
-- -- ProductID 57
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (57, 3); -- Beaded
-- -- ProductID 58
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (58, 3); -- Beaded
-- -- ProductID 59
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (59, 1); -- steel
-- -- ProductID 60
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (60, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (60, 3); -- Beaded
-- -- ProductID 61
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (61, 1); -- Steel
-- -- ProductID 62
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (62, 1); -- Steel
-- -- ProductID 63
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (63, 3); -- Beaded
-- -- ProductID 64
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (64, 2); -- Leather
-- -- ProductID 65
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (65, 1); -- Steel
-- -- ProductID 66
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (66, 1); -- Steel
-- -- ProductID 67
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (67, 3); -- Beaded
-- -- ProductID 68
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (68, 2); -- Leather
-- -- ProductID 69
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (69, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (69, 3); -- Beaded
-- -- ProductID 70
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (70, 3); -- Beaded
-- -- ProductID 71
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (71, 2); -- Leather
-- -- ProductID 72
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (72, 3); -- Beaded
-- -- ProductID 73
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (73, 3); -- Beaded
-- -- ProductID 74
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (74, 2); -- leather
-- -- ProductID 75
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (75, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (75, 1); -- steel
-- -- ProductID 76
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (76, 2); -- leather
-- -- ProductID 77
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (77, 3); -- Beaded
-- -- ProductID 78
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (78, 3); -- Beaded
-- -- ProductID 79
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (79, 3); -- Beaded
-- -- ProductID 80
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (80, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (80, 3); -- beaded
-- -- ProductID 81
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (81, 1); -- Steel
-- -- ProductID 82
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (82, 1); -- Steel
-- -- ProductID 83
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (83, 1); -- steel
-- -- ProductID 84
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (84, 3); -- Beaded
-- -- ProductID 85
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (85, 3); -- Beaded
-- -- ProductID 86
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (86, 3); -- Beaded
-- -- ProductID 87
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (87, 2); -- Leather
-- -- ProductID 88
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (88, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (88, 2); -- leather
-- -- ProductID 89
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (89, 3); -- Beaded
-- -- ProductID 90
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (90, 1); -- Steel
-- -- ProductID 91
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (91, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (91, 3); -- beaded
-- -- ProductID 92
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (92, 3); -- Beaded
-- -- ProductID 93
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (93, 3); -- Beaded
-- -- ProductID 94
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (94, 2); -- Leather
-- -- ProductID 95
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (95, 2); -- Leather
-- -- ProductID 96
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (96, 2); -- leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (96, 3); -- Beaded
-- -- ProductID 97
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (97, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (97, 3); -- Beaded
-- -- ProductID 98
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (98, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (98, 3); -- Beaded
-- -- ProductID 99
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (99, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (99, 3); -- Beaded
-- -- ProductID 100
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (100, 1); -- Steel
-- -- ProductID 101
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (101, 1); -- Steel
-- -- ProductID 102
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (102, 1); -- Steel
-- -- ProductID 103
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (103, 1); -- Steel
-- -- ProductID 104
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (104, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (104, 2); -- Leather
-- -- ProductID 105
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (105, 1); -- Steel
-- -- ProductID 106
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (106, 1); -- Steel
-- -- ProductID 107
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (107, 2); -- Leather
-- -- ProductID 108
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (108, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (108, 2); -- Leather
-- -- ProductID 109
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (109, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (109, 2); -- Leather
-- -- ProductID 110
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (110, 2); -- Leather
-- -- ProductID 111
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (111, 3); -- Beaded
-- -- ProductID 112
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (112, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (112, 2); -- Leather
-- -- ProductID 113
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (113, 1); -- Steel
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (113, 2); -- Leather
-- -- ProductID 114
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (114, 2); -- Leather
-- -- ProductID 115
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (115, 2); -- Leather
-- -- ProductID 116
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (116, 2); -- Leather
-- -- ProductID 117
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (117, 2); -- Leather
-- -- ProductID 118
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (118, 1); -- Steel
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (118, 2); -- Leather
-- -- ProductID 119
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (119, 1); -- Steel
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (119, 2); -- Leather
-- -- ProductID 120
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (120, 2); -- Leather
-- -- ProductID 121
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (121, 2); -- Leather
-- -- ProductID 122
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (122, 2); -- Leather
-- -- ProductID 123
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (123, 1); -- Steel
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (123, 2); -- Leather
-- -- ProductID 124
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (124, 1); -- Steel
-- -- ProductID 125
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (125, 1); -- Steel
-- -- ProductID 126
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (126, 1); -- Steel
-- -- ProductID 127
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (127, 1); -- steel
-- -- ProductID 128
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (128, 2); -- leather
-- -- ProductID 129
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (129, 3); -- beaded
-- -- ProductID 130
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (130, 1); -- steel
-- -- ProductID 131
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (131, 3); -- Beaded
-- -- ProductID 132
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (132, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (132, 3); -- Beaded
-- -- ProductID 133
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (133, 3); -- Beaded
-- -- ProductID 134
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (134, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (134, 3); -- Beaded
-- -- ProductID 135
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (135, 1); -- steel
-- -- ProductID 136
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (136, 3); -- beaded
-- -- ProductID 137
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (137, 3); -- Beaded
-- -- ProductID 138
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (138, 3); -- Beaded
-- -- ProductID 139
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (139, 3); -- Beaded
-- -- ProductID 140
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (140, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (140, 2); -- Leather
-- -- ProductID 141
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (141, 3); -- Beaded
-- -- ProductID 142
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (142, 3); -- Beaded
-- -- ProductID 143
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (143, 2); -- leather
-- -- ProductID 144
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (144, 2); -- leather
-- -- ProductID 145
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (145, 1); -- steel
-- -- ProductID 146
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (146, 3); -- Beaded
-- -- ProductID 147
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (147, 3); -- Beaded
-- -- ProductID 148
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (148, 3); -- Beaded
-- -- ProductID 149
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (149, 3); -- Beaded
-- -- ProductID 150
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (150, 3); -- Beaded
-- -- ProductID 151
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (151, 2); -- Leather
-- -- ProductID 152
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (152, 1); -- Steel
-- -- ProductID 153
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (153, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (153, 2); -- Leather
-- -- ProductID 154
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (154, 2); -- Leather
-- -- ProductID 155
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (155, 2); -- leather
-- -- ProductID 156
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (156, 2); -- Leather
-- -- ProductID 157
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (157, 1); -- steel
-- -- ProductID 158
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (158, 2); -- Leather
-- -- ProductID 159
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (159, 2); -- Leather
-- -- ProductID 160
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (160, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (160, 3); -- Beaded
-- -- ProductID 161
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (161, 1); -- Steel
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (161, 3); -- Beaded
-- -- ProductID 162
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (162, 3); -- Beaded
-- -- ProductID 163
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (163, 1); -- Steel
-- -- ProductID 164
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (164, 3); -- beaded
-- -- ProductID 165
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (165, 1); -- Steel
-- -- ProductID 166
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (166, 1); -- Steel
-- -- ProductID 167
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (167, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (167, 3); -- beaded
-- -- ProductID 168
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (168, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (168, 3); -- beaded
-- -- ProductID 169
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (169, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (169, 3); -- beaded
-- -- ProductID 170
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (170, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (170, 3); -- beaded
-- -- ProductID 171
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (171, 3); -- Beaded
-- -- ProductID 172
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (172, 3); -- Beaded
-- -- ProductID 173
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (173, 3); -- Beaded
-- -- ProductID 174
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (174, 3); -- Beaded
-- -- ProductID 175
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (175, 1); -- Steel
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (175, 2); -- leather
-- -- ProductID 176
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (176, 1); -- steel
-- -- ProductID 177
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (177, 3); -- Beaded
-- -- ProductID 178
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (178, 1); -- Steel
-- -- ProductID 179
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (179, 1); -- Steel
-- -- ProductID 180
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (180, 2); -- Leather
-- -- ProductID 181
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (181, 1); -- Steel
-- -- ProductID 182
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (182, 1); -- Steel
-- -- ProductID 183
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (183, 1); -- steel
-- -- ProductID 184
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (184, 1); -- Steel
-- -- ProductID 185
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (185, 1); -- steel
-- -- ProductID 186
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (186, 1); -- Steel
-- -- ProductID 187
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (187, 1); -- Steel
-- -- ProductID 188
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (188, 2); -- Leather
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (188, 1); -- Steel
-- -- ProductID 189
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (189, 2); -- Leather
-- -- ProductID 190
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (190, 3); -- Beaded
-- -- ProductID 191
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (191, 3); -- Beaded
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (191, 1); -- Steel
-- -- ProductID 192
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (192, 3); -- Beaded
-- -- ProductID 193
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (193, 3); -- Beaded
-- -- ProductID 194
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (194, 3); -- Beaded
-- -- ProductID 195
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (195, 1); -- Steel
-- -- ProductID 196
-- INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (196, 2); -- Leather

-- -- Drop the existing ProductColor table
-- DROP TABLE IF EXISTS ProductColor;

-- -- Drop the existing Color table
-- DROP TABLE IF EXISTS Color;

-- -- Recreate the Color table
-- CREATE TABLE Color (
--     ColorID INT PRIMARY KEY,
--     ColorName VARCHAR(50) NOT NULL
-- );

-- -- Insert colors into the Color table
-- INSERT INTO Color (ColorID, ColorName) VALUES (1, 'Black');
-- INSERT INTO Color (ColorID, ColorName) VALUES (2, 'Silver-Tone');
-- INSERT INTO Color (ColorID, ColorName) VALUES (3, 'Brown');
-- INSERT INTO Color (ColorID, ColorName) VALUES (4, 'Blue');
-- INSERT INTO Color (ColorID, ColorName) VALUES (5, 'Red');
-- INSERT INTO Color (ColorID, ColorName) VALUES (6, 'Gold-Tone');
-- INSERT INTO Color (ColorID, ColorName) VALUES (7, 'Grey');
-- INSERT INTO Color (ColorID, ColorName) VALUES (8, 'Multicolour');
-- INSERT INTO Color (ColorID, ColorName) VALUES (9, 'Yellow');
-- INSERT INTO Color (ColorID, ColorName) VALUES (10, 'White');
-- INSERT INTO Color (ColorID, ColorName) VALUES (11, 'Green');
-- INSERT INTO Color (ColorID, ColorName) VALUES (12, 'Purple/Violet');
-- INSERT INTO Color (ColorID, ColorName) VALUES (13, 'Natural/Wooden');

-- -- Recreate the ProductColor table
-- CREATE TABLE ProductColor (
--     ProductID INT NOT NULL,
--     ColorID INT NOT NULL,
--     PRIMARY KEY (ProductID, ColorID),
--     FOREIGN KEY (ProductID) REFERENCES Product(ProductID)ON DELETE CASCADE,
--     FOREIGN KEY (ColorID) REFERENCES Color(ColorID) ON DELETE CASCADE
-- );

-- -- Insert data into ProductColor
-- -- Include all the INSERT statements for ProductColor here


-- Clear existing data (if necessary)
DELETE FROM ProductColor WHERE ProductID BETWEEN 1 AND 196;
-- ProductID 1: "Black Lava Rock | Onyx & Coconut Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (1, 1);   -- Black
-- ProductID 2: "Icon | Black Leather Onyx & Tiger's Eye Double Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (2, 1);   -- Black (Black Leather, Onyx)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (2, 13);   -- Natural wooden (Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (2, 8);   -- Natural wooden (Tiger's Eye)
-- ProductID 3: "Icon | Black Leather & Silver-Tone Stainless Steel Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (3, 1);   -- Black (Black Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (3, 2);   -- Silver-Tone (Stainless Steel)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (3, 8);   -- Natural wooden (Tiger's Eye)
-- ProductID 4: "Miro | Wooden Bead & Black Onyx Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (4, 1);   -- Black (Black Onyx)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (4, 13);  -- Natural/Wooden (Wooden Bead)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (4, 8);  -- Natural/Wooden (Wooden Bead)
-- ProductID 5: "Silver-Tone Stainless Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (5, 2);   -- Silver-Tone
-- ProductID 6: "Black Lava Rock & Natural Stone Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (6, 1);   -- Black (Black Lava Rock)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (6, 13);  -- Natural/Wooden (Natural Stone)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (6, 8);  -- Natural/Wooden (Natural Stone)
-- ProductID 7: "Black Stainless Steel Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (7, 1);   -- Black
-- ProductID 8: "Brown Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (8, 3);   -- Brown
-- ProductID 9: "Black Braided Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (9, 1);   -- Black
-- ProductID 10: "Black & Blue Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (10, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (10, 4);  -- Blue
-- ProductID 11: "Red Bead Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (11, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (11, 5);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (11, 13); -- Natural/Wooden (if applicable)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (11, 8);  -- Natural/Wooden (Natural Stone)
-- ProductID 12: "Black Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (12, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (12, 3);  -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (12, 8);  -- Brown
-- ProductID 13: "Black Leather & Silver-Tone Steel Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (13, 1);  -- Black
-- ProductID 14: "Black Leather Bracelet with Silver-Tone Clasp"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (14, 1);  -- Black
-- ProductID 15: "Black Leather & Steel Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (15, 1);  -- Black
-- ProductID 16: "Black Lava Rock & Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (16, 1);  -- Black (Lava Rock)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (16, 3);  -- Brown (Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (16, 8);  -- Brown (Tiger's Eye)
-- ProductID 17: "Black Stainless Steel Curb Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (17, 1);  -- Black
-- ProductID 18: "Silver-Tone Stainless Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (18, 1);  -- black
-- ProductID 19: "Matte Black Onyx Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (19, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (19, 13);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (19, 8);  -- Black
-- ProductID 20: "Gold-Tone Stainless Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (20, 2);  -- silber
-- ProductID 21: "Black Lava Rock Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (21, 2);  -- silver
-- ProductID 22: "Silver-Tone Steel ID Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (22, 1);  -- black
-- ProductID 23: "Brown Leather Braided Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (23, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (23, 6);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (23, 8);  -- Black
-- ProductID 24: "Tiger's Eye & Black Onyx Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (24, 3);  -- Brown (Tiger's Eye)
-- ProductID 25: "Black Lava Rock & Hematite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (25, 3);  -- Brown
-- ProductID 26: "Blue Lapis Lazuli Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (26, 4);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (26, 5);  -- 
INSERT INTO ProductColor (ProductID, ColorID) VALUES (26, 8);  -- 
INSERT INTO ProductColor (ProductID, ColorID) VALUES (26, 9);  -- 
-- ProductID 27: "Black Onyx & Blue Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (27, 1);  -- Black (Onyx)
-- ProductID 28: "Green Malachite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (28, 1); -- 
-- ProductID 29: "Stainless Steel Skull Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (29, 1);  
INSERT INTO ProductColor (ProductID, ColorID) VALUES (29, 8);  
INSERT INTO ProductColor (ProductID, ColorID) VALUES (29, 13);  
-- ProductID 30: "Black Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (30, 1);  -- Black
-- ProductID 31: "Silver-Tone Steel Cuff Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (31, 1);  
INSERT INTO ProductColor (ProductID, ColorID) VALUES (31, 5);  
INSERT INTO ProductColor (ProductID, ColorID) VALUES (31, 8);  
INSERT INTO ProductColor (ProductID, ColorID) VALUES (31, 9);  
INSERT INTO ProductColor (ProductID, ColorID) VALUES (31, 10);  
-- ProductID 32: "Black Lava Rock & White Howlite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (32, 1);  -- Black (Lava Rock)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (32, 7); -- White (Howlite)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (32, 8);  
-- ProductID 33: "Brown Leather Braided Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (33, 1);  -- Brown
-- ProductID 34: "Red Agate Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (34, 1); 
INSERT INTO ProductColor (ProductID, ColorID) VALUES (34, 3); 
INSERT INTO ProductColor (ProductID, ColorID) VALUES (34, 8);  
-- ProductID 35: "Gold-Tone Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (35, 4);  
-- ProductID 36: "Black Stainless Steel ID Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (36, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (36, 8);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (36, 13);  -- Black
-- ProductID 37: "Black Leather Bracelet with Silver Clasp"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (37, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (37, 8);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (37, 4);  -- Silver-Tone
-- ProductID 38: "Silver-Tone Steel Link Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (38, 5);  -- Silver-Tone
-- ProductID 39: "Black Onyx & Hematite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (39, 1);  -- Black (Onyx)
-- ProductID 40: "Silver-Tone Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (40, 2);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (40, 1);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (40, 8);  -- Silver-Tone
-- ProductID 41: "Brown Leather Braided Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (41, 1);  -- Brown
-- ProductID 42: "Black Lava Rock Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (42, 1);  -- Black
-- ProductID 43: "Silver-Tone Steel Curb Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (43, 4);  -- Silver-Tone
-- ProductID 44: "Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (44, 3);  -- Brown
-- ProductID 45: "Black Onyx Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (45, 13);  -- Black
-- ProductID 46: "Blue Agate Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (46, 5);  -- Blue
-- ProductID 47: "Green Jasper Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (47, 1); -- Green
INSERT INTO ProductColor (ProductID, ColorID) VALUES (47, 8); -- Green
INSERT INTO ProductColor (ProductID, ColorID) VALUES (47, 13); -- Green
-- ProductID 48: "Red Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (48, 5);  -- Red (Red Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (48, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (48, 8);  -- Black
-- ProductID 49: "Silver-Tone Steel Skull Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (49, 3);  -- Silver-Tone
-- ProductID 50: "Black Stainless Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (50, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (50, 8);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (50, 13);  -- Black
-- ProductID 51: "Black Onyx & Lava Rock Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (51, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (51, 8);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (51, 3);  -- Black
-- ProductID 52: "Silver-Tone Steel ID Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (52, 11);  -- Silver-Tone
-- ProductID 53: "Brown Wood Bead Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (53, 1);   -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (53, 4);  -- Natural/Wooden
-- ProductID 54: "Black Lava Rock & Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (54, 13);  -- Black
-- ProductID 55: "Black Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (55, 3);  -- Black
-- ProductID 56: "Multicolour Stone Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (56, 8);  -- Multicolour
INSERT INTO ProductColor (ProductID, ColorID) VALUES (56, 4);  -- Multicolour
INSERT INTO ProductColor (ProductID, ColorID) VALUES (56, 11);  -- Multicolour
-- ProductID 57: "Brown Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (57, 1);  -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (57, 7);  -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (57, 8);  -- Brown
-- ProductID 58: "Black Stainless Steel Cuff Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (58, 7);  -- Black
-- ProductID 59: "Black Leather Braided Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (59, 2);  -- Black
-- ProductID 60: "Black Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (60, 1);  -- Black
-- ProductID 61: "Brown Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (61, 2);  -- Brown
-- ProductID 62: "Black Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (62, 2);  -- Black
-- ProductID 63: "Black Onyx & Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (63, 10);  -- Black
-- ProductID 64: "Black Lava Rock & Hematite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (64, 3);  -- Black
-- ProductID 65: "Brown Leather Braided Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (65, 1);  -- Brown
-- ProductID 66: "Black Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (66, 6);  -- Black
-- ProductID 67: "Black Leather Bracelet with Silver Clasp"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (67, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (67, 3);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (67, 8);  -- Silver-Tone
-- ProductID 68: "Brown Leather Bracelet with Gold-Tone Clasp"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (68, 1);  -- Brown
-- ProductID 69: "Black Lava Rock & Lapis Lazuli Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (69, 13);  -- Black
-- ProductID 70: "Silver-Tone Stainless Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (70, 7);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (70, 13);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (70, 8);  -- Silver-Tone
-- ProductID 71: "Multicolour Jasper Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (71, 1);  -- Multicolour
INSERT INTO ProductColor (ProductID, ColorID) VALUES (71, 8);  -- Multicolour
INSERT INTO ProductColor (ProductID, ColorID) VALUES (71, 9);  -- Multicolour
-- ProductID 72: "Black Stainless Steel ID Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (72, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (72, 13);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (72, 8);  -- Black
-- ProductID 73: "Red Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (73, 1);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (73, 8);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (73, 13);  -- Brown
-- ProductID 74: "Green Malachite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (74, 5); -- Green
-- ProductID 75: "Purple Amethyst Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (75, 3); -- Purple/Violet
INSERT INTO ProductColor (ProductID, ColorID) VALUES (75, 6); -- Purple/Violet
INSERT INTO ProductColor (ProductID, ColorID) VALUES (75, 8); -- Purple/Violet
-- ProductID 76: "Black Lava Rock & Turquoise Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (76, 3);  -- Black
-- ProductID 77: "Brown Wood Bead Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (77, 1);   -- Brown
-- ProductID 78: "Black Onyx & Red Agate Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (78, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (78, 4);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (78, 8);  -- Red
-- ProductID 79: "Blue Lapis Lazuli Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (79, 1);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (79, 8);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (79, 12);  -- Blue
-- ProductID 80: "Silver-Tone Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (80, 1);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (80, 8);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (80, 13);  -- Silver-Tone
-- ProductID 81: "Black Lava Rock Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (81, 1);  -- Black
-- ProductID 82: "Brown Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (82, 6);  -- Brown
-- ProductID 83: "Green Jade Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (83, 1); -- Green
-- ProductID 84: "Black Onyx & Hematite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (84, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (84, 8);  -- Grey
INSERT INTO ProductColor (ProductID, ColorID) VALUES (84, 10);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (84, 13);  -- Black
-- ProductID 85: "Red Garnet Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (85, 3);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (85, 8);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (85, 10);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (85, 13);  -- Red
-- ProductID 86: "Blue Agate Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (86, 1);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (86, 4);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (86, 8);  -- Blue
-- ProductID 87: "Black Lava Rock & Tiger's Eye Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (87, 1);  -- Black
-- ProductID 88: "Multicolour Stone Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (88, 1);  -- Multicolour
INSERT INTO ProductColor (ProductID, ColorID) VALUES (88, 5);  -- Multicolour
INSERT INTO ProductColor (ProductID, ColorID) VALUES (88, 8);  -- Multicolour
-- ProductID 89: "Black Onyx Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (89, 4);  -- Black
-- ProductID 90: "Black Stainless Steel Cuff Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (90, 2);  -- Black
-- ProductID 91: "Brown Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (91, 1);  -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (91, 8);  -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (91, 9);  -- Brown
-- ProductID 92: "Black Leather Bracelet with Silver Clasp"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (92, 1);  -- Black
-- ProductID 93: "Tiger's Eye & Black Onyx Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (93, 3);  -- Brown (Tiger's Eye)
-- ProductID 94: "Black Lava Rock & Hematite Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (94, 3);  -- Black
-- ProductID 95: "Green Aventurine Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (95, 1); -- Green
-- ProductID 96: "Blue Lapis Lazuli Beaded Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (96, 1);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (96, 8);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (96, 5);  -- Blue
-- ProductID 97: "Black Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (97, 1);  -- Black
-- ProductID 98: "Silver-Tone Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (98, 1);  -- Silver-Tone
-- ProductID 99: "Brown Leather Braided Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (99, 1);  -- Brown
-- ProductID 100: "Black Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (100, 6); -- Black
-- ProductID 101: "Black Stainless Steel Cuff Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (101, 1);  -- Black
-- ProductID 102: "Roy Bracelet Extenders in Silver-Tone Stainless Steel"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (102, 2);  -- Silver-Tone
-- ProductID 103: "12mm Silver-Tone Stainless Steel Curb Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (103, 2);  -- Silver-Tone
-- ProductID 104: "Icon | Wooden Bead & Black Leather Cord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (104, 1);   -- Black (Black Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (104, 8);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (104, 13);  -- Natural/Wooden (Wooden Bead)
-- ProductID 105: "(6 mm) Gold-Tone Stainless Steel Curb Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (105, 6);  -- Gold-Tone
-- ProductID 106: "6mm Black Stainless Steel Curb Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (106, 1);  -- Black
-- ProductID 107: "Brown Braided Leather & Stainless Steel Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (107, 3);  -- Brown (Brown Leather)
-- ProductID 108: "Matte Black Stone & Braided Leather Band Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (108, 1);  -- Black (Matte Black Stone)
--ProductID 109: "Black & White Agate & Leather Cord Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (109, 1);   -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (109, 10);  -- White
INSERT INTO ProductColor (ProductID, ColorID) VALUES (109, 8);  -- Natural/Wooden (Agate is a natural stone)
-- ProductID 110: "Brown Leather & Stainless Steel Braided Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (110, 3);  -- Brown (Brown Leather)
-- ProductID 111: "Brown Wood Bead Bracelet Sets"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (111, 3);   -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (111, 13);  -- Natural/Wooden
-- ProductID 112: "Red Tiger's Eye & Black Lava Rock & Leather Cord Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (112, 5);   -- Red (Red Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (112, 1);   -- Black (Black Lava Rock)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (112, 8);   -- Brown (Tiger's Eye)
-- ProductID 113: "Bolo | Double Black Leather Cord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (113, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (113, 2);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (113, 8);  -- Black
-- ProductID 114: "Gladius | Brown Full Grain Buffalo Leather Wrap-around Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (114, 3);  -- Brown
-- ProductID 115: "Gladius | Black Full Grain Buffalo Leather Wrap-around Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (115, 1);  -- Black
-- ProductID 116: "Brown Braided Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (116, 3);  -- Brown
-- ProductID 117: "Black Braided Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (117, 1);  -- Black
-- ProductID 118: "Braided Black Stainless Steel Cross Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (118, 1);  -- Black
-- ProductID 119: "Black Braided Silver-Tone Stainless Steel Cross Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (119, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (119, 2);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (119, 8);  -- Silver-Tone
-- ProductID 120: "Collins | (3 mm) Red Woven Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (120, 5);  -- Red
-- ProductID 121: "Collins | (3 mm) Navy Blue Woven Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (121, 4);  -- Blue
-- ProductID 122: "Collins | (6 mm) Red Leather Wrap Around Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (122, 5);  -- Red
-- ProductID 123: "Nomen | Triple Gold-tone and Brown Leather Bolo Weave ID Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (123, 6);  -- Gold-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (123, 3);  -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (123, 8);  -- Brown
-- ProductID 124: "Black Pure Magnetic Titanium Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (124, 1);  -- Black
-- ProductID 125: "(3 mm) Silver-Tone Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (125, 2);  -- Silver-Tone
-- ProductID 126: "Atlas | Silver-tone Stainless Steel North Star Charm Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (126, 2);  -- Silver-Tone
-- ProductID 127: "Atlas | Silver-tone Stainless Steel North Star Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (127, 2);  -- Silver-Tone
-- ProductID 128: "Collins | Simple Brown Leather Wrap Around Cord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (128, 3);  -- Brown
-- ProductID 129: "Brown &  Beige & Black Wood Bead Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (129, 3);   -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (129, 1);   -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (129, 8);   -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (129, 13);  -- Natural/Wooden
-- ProductID 130: "Arie | Silver-Tone Stainless Steel Rope Texture Bangle Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (130, 2);  -- Silver-Tone
-- ProductID 131: "Vasilios | Dark Grey & Black Hematite Stone Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (131, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (131, 7);  -- Grey
INSERT INTO ProductColor (ProductID, ColorID) VALUES (131, 8);  -- Grey
-- ProductID 132: "Ankh | Brown Leather & Wooden Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (132, 3);   -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (132, 13);  -- Natural/Wooden
-- ProductID 133: "Sanatio | Black Lava Rock & Tiger's Eye Double Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (133, 1);   -- Black (Lava Rock)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (133, 8);   -- Brown (Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (133, 13);   -- Brown (Tiger's Eye)
-- ProductID 134: "Naxos | Black Braided Leather & Unakite Bead Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (134, 1);   -- Black (Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (134, 8);   -- Black (Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (134, 11);  -- Green (Unakite)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (134, 13);   -- Black (Leather)
-- ProductID 135: "Amager | Gunmetal Stainless Steel Cable Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (135, 1);  -- Black (Gunmetal)
-- ProductID 136: "Red & Grey Braided Nylon Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (136, 5);  -- Red
INSERT INTO ProductColor (ProductID, ColorID) VALUES (136, 7);  -- Grey
INSERT INTO ProductColor (ProductID, ColorID) VALUES (136, 8);  -- Grey
-- ProductID 137: "Matte Black Onyx & Stainless Steel ID Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (137, 1);  -- Black
-- ProductID 138: "Black Onyx &  Lapis Lazuli & Tiger's Eye Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (138, 1);  -- Black (Onyx)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (138, 4);  -- Blue (Lapis Lazuli)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (138, 3);  -- Brown (Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (138, 8);  -- Brown (Tiger's Eye)
-- ProductID 139: "Roas | Grey Jasper & Rose Gold-Tone Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (139, 7);  -- Grey
INSERT INTO ProductColor (ProductID, ColorID) VALUES (139, 6);  -- Gold-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (139, 8);  -- Gold-Tone
-- ProductID 140: "Icon | Black Leather & Green Stone Double Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (140, 1);   -- Black (Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (140, 8);   -- Black (Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (140, 11);  -- Green (Stone)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (140, 13);   -- Black (Leather)
-- ProductID 141: "Miro | Black Lava Rock & Multicolour Natural Stone Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (141, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (141, 8);  -- Multicolour
-- ProductID 142: "Miro | Natural-Tone Bamboo & Coconut Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (142, 1); -- Natural/Wooden
INSERT INTO ProductColor (ProductID, ColorID) VALUES (142, 8); -- Natural/Wooden
INSERT INTO ProductColor (ProductID, ColorID) VALUES (142, 10); -- Natural/Wooden
INSERT INTO ProductColor (ProductID, ColorID) VALUES (142, 13); -- Natural/Wooden
-- ProductID 143: "Roy | Black & Dark Leather & Steel Single Strap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (143, 1);  -- Black
-- ProductID 144: "Roy | Black & Dark Leather & Stainless Steel Double Strap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (144, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (144, 3);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (144, 8);  -- Silver-Tone
-- ProductID 145: "Rustic Stainless Steel Double Curb Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (145, 2);  -- Silver-Tone
-- ProductID 146: "Black Waxed Cotton & Silver Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (146, 1);  -- Black
-- ProductID 147: "Grey Waxed Cotton & Silver Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (147, 7);  -- Grey
-- ProductID 148: "Navy Blue & Silver-Tone Anchor Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (148, 4);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (148, 5);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (148, 8);  -- Silver-Tone
-- ProductID 149: "White Turquoise &  Blue Lapis Lazuli & Black Zirconia Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (149, 10); -- White (White Turquoise)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (149, 4);  -- Blue (Lapis Lazuli)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (149, 8);  -- Black (Zirconia)
-- ProductID 150: "Black Lava Rock & Alabaster Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (150, 1);  -- Black (Lava Rock)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (150, 7); -- White (Alabaster)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (150, 8); -- White (Alabaster)
-- ProductID 151: "Tan & Black Braided Leather Cord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (151, 3);  -- Brown (Tan)
-- ProductID 152: "Stainless Steel Band Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (152, 2);  -- Silver-Tone
-- ProductID 153: "Naxos | Black Braided Leather & Turquoise Imperial Jasper Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (153, 1);  -- Black (Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (153, 4);  -- Blue (Turquoise)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (153, 8);  -- Blue (Turquoise)
-- ProductID 154: "Black Leather Adjustable Wide Wrap Cuff Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (154, 1);  -- Black
-- ProductID 155: "Collins | (8 mm) Black Woven Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (155, 1);  -- Black
-- ProductID 156: "Collins | (6 mm) Navy Blue Leather Wrap Around Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (156, 4);  -- Blue
-- ProductID 157: "Amager | Silver-Tone Zirconia Stainless Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (157, 2);  -- Silver-Tone
-- ProductID 158: "Grey & Black Braided Leather Cord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (158, 7);  -- Grey
-- ProductID 159: "Collins | Simple Black Leather Wrap Around Cord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (159, 1);  -- Black
-- ProductID 160: "Naxos | Black Braided Leather & Green Tiger's Eye Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (160, 1);   -- Black (Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (160, 8);  -- Green (Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (160, 11);  -- Green (Tiger's Eye)
-- ProductID 161: "Rico | Silver-Tone Stainless Steel Skull Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (161, 2);  -- Silver-Tone
-- ProductID 162: "Black Lava Rock & Multicolour Natural Stone Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (162, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (162, 8);  -- Multicolour
-- ProductID 163: "8mm Gold-Tone Stainless Steel Curb Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (163, 6);  -- Gold-Tone
-- ProductID 164: "Miro | Black Lava Rock & Red Tiger's Eye Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (164, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (164, 5);  -- Red (Red Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (164, 8);  -- Red (Red Tiger's Eye)
-- ProductID 165: "Slim Black Titanium Link Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (165, 1);  -- Black
-- ProductID 166: "Basic 5mm Stainless Steel Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (166, 2);  -- Silver-Tone
-- ProductID 167: "Black Lava Rock & Natural Stone & Leather Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (167, 1);   -- Black (Lava Rock)
-- ProductID 168: "Blue Agate & Leather Cord Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (168, 4);  -- Blue (Agate)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (168, 1);  -- Black (Leather)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (168, 8);  -- Black (Leather)
-- ProductID 169: "Violet Natural Stone & Black Leather Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (169, 12); -- Purple/Violet
INSERT INTO ProductColor (ProductID, ColorID) VALUES (169, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (169, 8);  -- Black (Leather)
-- ProductID 170: "Blue & Black Natural Stone & Leather Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (170, 4);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (170, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (170, 8);  -- Black
-- ProductID 171: "Green & Tan Paracord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (171, 11); -- Green
INSERT INTO ProductColor (ProductID, ColorID) VALUES (171, 9);  -- Brown (Tan)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (171, 8);  -- Brown (Tan)
-- ProductID 172: "Black Paracord Firestarter Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (172, 1);  -- Black
-- ProductID 173: "Black Paracord Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (173, 1);  -- Black
-- ProductID 174: "Black Paracord & Metal Lock Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (174, 1);  -- Black
-- ProductID 175: "Black Rubber & Stainless Steel Cross Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (175, 1);  -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (175, 2);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (175, 8);  -- Silver-Tone
-- ProductID 176: "Argentia | 925s | 7 mm Rhodium-Plated Sterling Silver ID Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (176, 2);  -- Silver-Tone
-- ProductID 177: "Black & Natural Wooden & Cotton Bracelet Set"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (177, 1);   -- Black
INSERT INTO ProductColor (ProductID, ColorID) VALUES (177, 8);  -- Natural/Wooden
INSERT INTO ProductColor (ProductID, ColorID) VALUES (177, 13);  -- Natural/Wooden
-- ProductID 178: "Essentials | (3 mm) Gunmetal Black Rectangular Box Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (178, 1);  -- Black (Gunmetal)
-- ProductID 179: "Essentials | (1 mm) Silver-Tone Rectangular Box Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (179, 2);  -- Silver-Tone
-- ProductID 180: "Wrap-around Blue Leather Adjustable Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (180, 4);  -- Blue
-- ProductID 181: "Essentials | (4 mm) Silver-Tone Rope Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (181, 2);  -- Silver-Tone
-- ProductID 182: "Essentials | (6 mm) Gunmetal Black Herringbone Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (182, 1);  -- Black (Gunmetal)
-- ProductID 183: "Essentials | (4 mm) Gunmetal Black Herringbone Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (183, 1);  -- Black (Gunmetal)
-- ProductID 184: "Essentials | (4 mm) Silver-Tone Herringbone Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (184, 2);  -- Silver-Tone
-- ProductID 185: "Essentials | (4 mm) Gunmetal Black Figaro Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (185, 1);  -- Black (Gunmetal)
-- ProductID 186: "Essentials | (8 mm) Silver-tone Figaro Chain Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (186, 2);  -- Silver-Tone
-- ProductID 187: "Blue Stainless Steel Wire Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (187, 4);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (187, 2);  -- Blue
INSERT INTO ProductColor (ProductID, ColorID) VALUES (187, 8);  -- Blue
-- ProductID 188: "Icon | Brown Leather and Stainless Steel Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (188, 3);  -- Brown
INSERT INTO ProductColor (ProductID, ColorID) VALUES (188, 2);  -- Silver-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (188, 8);  -- Blue
-- ProductID 189: "Blue Retro Leather Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (189, 4);  -- Blue
-- ProductID 190: "Rico | Tiger’s Eye & Gold-Tone Stainless Steel Skull Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (190, 13);  -- Brown (Tiger's Eye)
INSERT INTO ProductColor (ProductID, ColorID) VALUES (190, 6);  -- Gold-Tone
INSERT INTO ProductColor (ProductID, ColorID) VALUES (190, 8);  -- Gold-Tone
-- ProductID 191: "Rico | Gold-Tone Stainless Steel Skull Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (191, 6);  -- Gold-Tone
-- ProductID 192: "Unity | 6 mm Onyx Star of David Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (192, 1);  -- Black
-- ProductID 193: "Unity | 6 mm Lapis Lazuli Star of David Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (193, 4);  -- Blue
-- ProductID 194: "Unity | 6 mm Lapis Lazuli Hamsa Hand Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (194, 4);  -- Blue
-- ProductID 195: "Unity | Gold-tone Double Chain Cross Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (195, 6);  -- Gold-Tone
-- ProductID 196: "Collins | (3 mm) Navy Blue Woven Leather Wrap Bracelet"
INSERT INTO ProductColor (ProductID, ColorID) VALUES (196, 4);  -- Blue
