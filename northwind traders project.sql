create schema Northwind_traders;

use northwind_traders;

CREATE TABLE categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50),
    Description TEXT
);

INSERT INTO categories (CategoryID, CategoryName, Description) VALUES
(1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),
(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),
(3,'Confections','Desserts, candies, and sweet breads'),
(4,'Dairy Products','Cheeses'),
(5,'Grains & Cereals','Breads, crackers, pasta, and cereal'),
(6,'Meat & Poultry','Prepared meats'),
(7,'Produce','Dried fruit and bean curd'),
(8,'Seafood','Seaweed and fish');

CREATE TABLE customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CompanyName VARCHAR(100),
    ContactName VARCHAR(100),
    Contacttitle VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);


INSERT INTO customers (CustomerID,CompanyName,ContactName,Contacttitle,City,Country) VALUES
('ALFKI','Alfreds Futterkiste','Maria Anders','Sales Representative','Berlin','Germany'),
('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Mexico City','Mexico'),
('ANTON','Antonio Moreno Taquería','Antonio Moreno','Owner','Mexico City','Mexico'),
('AROUT','Around the Horn','Thomas Hardy','Sales Representative','London','UK'),
('BERGS','Berglunds snabbköp','Christina Berglund','Order Administrator','Luleå','Sweden'),
('BLAUS','Blauer See Delikatessen','Hanna Moos','Sales Representative','Mannheim','Germany'),
('BLONP','Blondesddsl père et fils','Frédérique Citeaux','Marketing Manager','Strasbourg','France'),
('BOLID','Bólido Comidas preparadas','Martín Sommer','Owner','Madrid','Spain'),
('BONAP','Bon app','Laurence Lebihan','Owner','Marseille','France'),
('BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Accounting Manager','Tsawassen','Canada'),
('BSBEV','B''s Beverages','Victoria Ashworth','Sales Representative','London','UK'),
('CACTU','Cactus Comidas para llevar','Patricio Simpson','Sales Agent','Buenos Aires','Argentina'),
('CENTC','Centro comercial Moctezuma','Francisco Chang','Marketing Manager','Mexico City','Mexico'),
('CHOPS','Chop-suey Chinese','Yang Wang','Owner','Bern','Switzerland'),
('COMMI','Comércio Mineiro','Pedro Afonso','Sales Associate','Sao Paulo','Brazil'),
('CONSH','Consolidated Holdings','Elizabeth Brown','Sales Representative','London','UK'),
('DRACD','Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','Aachen','Germany'),
('DUMON','Du monde entier','Janine Labrune','Owner','Nantes','France'),
('EASTC','Eastern Connection','Ann Devon','Sales Agent','London','UK'),
('ERNSH','Ernst Handel','Roland Mendel','Sales Manager','Graz','Austria'),
('FAMIA','Familia Arquibaldo','Aria Cruz','Marketing Assistant','Sao Paulo','Brazil'),
('FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','Madrid','Spain'),
('FOLIG','Folies gourmandes','Martine Rancé','Assistant Sales Agent','Lille','France'),
('FOLKO','Folk och fä HB','Maria Larsson','Owner','Bräcke','Sweden'),
('FRANK','Frankenversand','Peter Franken','Marketing Manager','München','Germany'),
('FRANR','France restauration','Carine Schmitt','Marketing Manager','Nantes','France'),
('FRANS','Franchi S.p.A.','Paolo Accorti','Sales Representative','Torino','Italy'),
('FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Sales Manager','Lisboa','Portugal'),
('GALED','Galería del gastrónomo','Eduardo Saavedra','Marketing Manager','Barcelona','Spain'),
('GODOS','Godos Cocina Típica','José Pedro Freyre','Sales Manager','Sevilla','Spain'),
('GOURL','Gourmet Lanchonetes','André Fonseca','Sales Associate','Campinas','Brazil'),
('GREAL','Great Lakes Food Market','Howard Snyder','Marketing Manager','Eugene','USA'),
('GROSR','GROSELLA-Restaurante','Manuel Pereira','Owner','Caracas','Venezuela'),
('HANAR','Hanari Carnes','Mario Pontes','Accounting Manager','Rio de Janeiro','Brazil'),
('HILAA','HILARION-Abastos','Carlos Hernández','Sales Representative','San Cristóbal','Venezuela'),
('HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','Elgin','USA'),
('HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Sales Associate','Cork','Ireland'),
('ISLAT','Island Trading','Helen Bennett','Marketing Manager','Cowes','UK'),
('KOENE','Königlich Essen','Philip Cramer','Sales Associate','Brandenburg','Germany'),
('LACOR','La corne d''abondance','Daniel Tonini','Sales Representative','Versailles','France'),
('LAMAI','La maison d''Asie','Annette Roulet','Sales Manager','Toulouse','France'),
('LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Marketing Assistant','Vancouver','Canada'),
('LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','Walla Walla','USA'),
('LEHMS','Lehmanns Marktstand','Renate Messner','Sales Representative','Frankfurt','Germany'),
('LETSS','Let''s Stop N Shop','Jaime Yorres','Owner','San Francisco','USA'),
('LILAS','LILA-Supermercado','Carlos González','Accounting Manager','Barquisimeto','Venezuela'),
('LINOD','LINO-Delicateses','Felipe Izquierdo','Owner','Margarita','Venezuela'),
('LONEP','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','Portland','USA'),
('MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Marketing Manager','Bergamo','Italy'),
('MAISD','Maison Dewey','Catherine Dewey','Sales Agent','Bruxelles','Belgium');

CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Title VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50),
    ReportsTo INT
);

INSERT INTO employees 
(EmployeeID,EmployeeName,Title,City,Country,ReportsTo) VALUES
(1,'Nancy Davolio','Sales Representative','New York','USA',8),
(2,'Andrew Fuller','Vice President Sales','New York','USA',NULL),
(3,'Janet Leverling','Sales Representative','New York','USA',8),
(4,'Margaret Peacock','Sales Representative','New York','USA',8),
(5,'Steven Buchanan','Sales Manager','London','UK',2),
(6,'Michael Suyama','Sales Representative','London','UK',5),
(7,'Robert King','Sales Representative','London','UK',5),
(8,'Laura Callahan','Sales Manager','New York','USA',2),
(9,'Anne Dodsworth','Sales Representative','London','UK',5);

CREATE TABLE order_details (
    OrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    Discount FLOAT
);

INSERT INTO order_details
(OrderID,ProductID,UnitPrice,Quantity,Discount)
VALUES
(10248,11,14,12,0),
(10248,42,9.8,10,0),
(10248,72,34.8,5,0),
(10249,14,18.6,9,0),
(10249,51,42.4,40,0),
(10250,41,7.7,10,0),
(10250,51,42.4,35,0),
(10250,65,16.8,15,0),
(10251,22,16.8,6,0),
(10251,57,15.6,15,0),
(10251,65,16.8,20,0),
(10252,20,64.8,40,0),
(10252,33,2,25,0),
(10252,60,27.2,40,0),
(10253,31,10,20,0),
(10253,39,14.4,42,0),
(10253,49,16,40,0),
(10254,24,3.6,15,0),
(10254,55,19.2,21,0),
(10254,74,8,21,0);

CREATE TABLE orders (
    OrderID INT PRIMARY KEY,
    CustomerID VARCHAR(10),
    EmployeeID INT,
    OrderDate DATE,
    RequiredDate DATE,
    ShippedDate DATE,
    ShipperID INT,
    Freight DECIMAL(10,2)
);

INSERT INTO orders
(OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipperID,Freight)
VALUES
(10248,'VINET',5,'2013-07-04','2013-08-01','2013-07-16',3,32.38),
(10249,'TOMSP',6,'2013-07-05','2013-08-16','2013-07-10',1,11.61),
(10250,'HANAR',4,'2013-07-08','2013-08-05','2013-07-12',2,65.83),
(10251,'VICTE',3,'2013-07-08','2013-08-05','2013-07-15',1,41.34),
(10252,'SUPRD',4,'2013-07-09','2013-08-06','2013-07-11',2,51.30),
(10253,'HANAR',3,'2013-07-10','2013-07-24','2013-07-16',2,58.17),
(10254,'CHOPS',5,'2013-07-11','2013-08-08','2013-07-23',2,22.98),
(10255,'RICSU',9,'2013-07-12','2013-08-09','2013-07-15',3,148.33),
(10256,'WELLI',3,'2013-07-15','2013-08-12','2013-07-17',2,13.97),
(10257,'HILAA',4,'2013-07-16','2013-08-13','2013-07-22',3,81.91),
(10258,'ERNSH',1,'2013-07-17','2013-08-14','2013-07-23',1,140.51),
(10259,'CENTC',4,'2013-07-18','2013-08-15','2013-07-25',3,3.25),
(10260,'OTTIK',4,'2013-07-19','2013-08-16','2013-07-29',1,55.09),
(10261,'QUEDE',4,'2013-07-19','2013-08-16','2013-07-30',2,3.05),
(10262,'RATTC',8,'2013-07-22','2013-08-19','2013-07-25',3,48.29),
(10263,'ERNSH',9,'2013-07-23','2013-08-20','2013-07-31',3,146.06),
(10264,'FOLKO',6,'2013-07-24','2013-08-21','2013-08-23',3,3.67),
(10265,'BLONP',2,'2013-07-25','2013-08-22','2013-08-12',1,55.28),
(10266,'WARTH',3,'2013-07-26','2013-09-06','2013-07-31',3,25.73),
(10267,'FRANK',4,'2013-07-29','2013-08-26','2013-08-06',1,208.58);


CREATE TABLE products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(150),
    QuantityPerUnit VARCHAR(100),
    UnitPrice DECIMAL(10,2),
    Discontinued INT,
    CategoryID INT
);

INSERT INTO products
(ProductID,ProductName,QuantityPerUnit,UnitPrice,Discontinued,CategoryID)
VALUES
(1,'Chai','10 boxes x 20 bags',18,0,1),
(2,'Chang','24 - 12 oz bottles',19,0,1),
(3,'Aniseed Syrup','12 - 550 ml bottles',10,0,2),
(4,'Chef Anton''s Cajun Seasoning','48 - 6 oz jars',22,0,2),
(5,'Chef Anton''s Gumbo Mix','36 boxes',21.35,1,2),
(6,'Grandma''s Boysenberry Spread','12 - 8 oz jars',25,0,2),
(7,'Uncle Bob''s Organic Dried Pears','12 - 1 lb pkgs.',30,0,7),
(8,'Northwoods Cranberry Sauce','12 - 12 oz jars',40,0,2),
(9,'Mishi Kobe Niku','18 - 500 g pkgs.',97,1,6),
(10,'Ikura','12 - 200 ml jars',31,0,8),
(11,'Queso Cabrales','1 kg pkg.',21,0,4),
(12,'Queso Manchego La Pastora','10 - 500 g pkgs.',38,0,4),
(13,'Konbu','2 kg box',6,0,8),
(14,'Tofu','40 - 100 g pkgs.',23.25,0,7),
(15,'Genen Shouyu','24 - 250 ml bottles',15.5,0,2),
(16,'Pavlova','32 - 500 g boxes',17.45,0,3),
(17,'Alice Mutton','20 - 1 kg tins',39,1,6),
(18,'Carnarvon Tigers','16 kg pkg.',62.5,0,8),
(19,'Teatime Chocolate Biscuits','10 boxes x 12 pieces',9.2,0,3),
(20,'Sir Rodney''s Marmalade','30 gift boxes',81,0,3),
(21,'Sir Rodney''s Scones','24 pkgs. x 4 pieces',10,0,3),
(22,'Gustaf''s Knackebröd','24 - 500 g pkgs.',21,0,5),
(23,'Tunnbröd','12 - 250 g pkgs.',9,0,5),
(24,'Guarana Fantastica','12 - 355 ml cans',4.5,1,1),
(25,'NuNuCa Nuss-Nougat-Creme','20 - 450 g glasses',14,0,3),
(26,'Gumbär Gummibärchen','100 - 250 g bags',31.23,0,3),
(27,'Schoggi Schokolade','100 - 100 g pieces',43.9,0,3),
(28,'Rossle Sauerkraut','25 - 825 g cans',45.6,1,7),
(29,'Thuringer Rostbratwurst','50 bags x 30 sausgs.',123.79,1,6),
(30,'Nord-Ost Matjeshering','10 - 200 g glasses',25.89,0,8),
(31,'Gorgonzola Telino','12 - 100 g pkgs',12.5,0,4),
(32,'Mascarpone Fabioli','24 - 200 g pkgs.',32,0,4),
(33,'Geitost','500 g',2.5,0,4),
(34,'Sasquatch Ale','24 - 12 oz bottles',14,0,1),
(35,'Steeleye Stout','24 - 12 oz bottles',18,0,1),
(36,'Inlagd Sill','24 - 250 g jars',19,0,8),
(37,'Gravad lax','12 - 500 g pkgs.',26,0,8),
(38,'Cote de Blaye','12 - 75 cl bottles',263.5,0,1),
(39,'Chartreuse verte','750 cc per bottle',18,0,1),
(40,'Boston Crab Meat','24 - 4 oz tins',18.4,0,8),
(41,'Jack''s New England Clam Chowder','12 - 12 oz cans',9.65,0,8),
(42,'Singaporean Hokkien Fried Mee','32 - 1 kg pkgs.',14,1,5),
(43,'Ipoh Coffee','16 - 500 g tins',46,0,1),
(44,'Gula Malacca','20 - 2 kg bags',19.45,0,2),
(45,'Rogede sild','1k pkg.',9.5,0,8),
(46,'Spegesild','4 - 450 g glasses',12,0,8),
(47,'Zaanse koeken','10 - 4 oz boxes',9.5,0,3),
(48,'Chocolade','10 pkgs.',12.75,0,3),
(49,'Maxilaku','24 - 50 g pkgs.',20,0,3),
(50,'Valkoinen suklaa','12 - 100 g bars',16.25,0,3),
(51,'Manjimup Dried Apples','50 - 300 g pkgs.',53,0,7),
(52,'Filo Mix','16 - 2 kg boxes',7,0,5),
(53,'Perth Pasties','48 pieces',32.8,1,6),
(54,'Tourtiere','16 pies',7.45,0,6),
(55,'Pate chinois','24 boxes x 2 pies',24,0,6),
(56,'Gnocchi di nonna Alice','24 - 250 g pkgs.',38,0,5),
(57,'Ravioli Angelo','24 - 250 g pkgs.',19.5,0,5),
(58,'Escargots de Bourgogne','24 pieces',13.25,0,8),
(59,'Raclette Courdavault','5 kg pkg.',55,0,4),
(60,'Camembert Pierrot','15 - 300 g rounds',34,0,4),
(61,'Sirop d''erable','24 - 500 ml bottles',28.5,0,2),
(62,'Tarte au sucre','48 pies',49.3,0,3),
(63,'Vegie-spread','15 - 625 g jars',43.9,0,2),
(64,'Wimmers gute Semmelknodel','20 bags x 4 pieces',33.25,0,5),
(65,'Louisiana Fiery Hot Pepper Sauce','32 - 8 oz bottles',21.05,0,2),
(66,'Louisiana Hot Spiced Okra','24 - 8 oz jars',17,0,2),
(67,'Laughing Lumberjack Lager','24 - 12 oz bottles',14,0,1),
(68,'Scottish Longbreads','10 boxes x 8 pieces',12.5,0,3),
(69,'Gudbrandsdalsost','10 kg pkg.',36,0,4),
(70,'Outback Lager','24 - 355 ml bottles',15,0,1),
(71,'Flotemysost','10 - 500 g pkgs.',21.5,0,4),
(72,'Mozzarella di Giovanni','24 - 200 g pkgs.',34.8,0,4),
(73,'Rod Kaviar','24 - 150 g jars',15,0,8),
(74,'Longlife Tofu','5 kg pkg.',10,0,7),
(75,'Rhonbrau Klosterbier','24 - 0.5 l bottles',7.75,0,1),
(76,'Lakkalikori','500 ml',18,0,1),
(77,'Original Frankfurter Grune Soße','12 boxes',13,0,2);

CREATE TABLE shippers (
    ShipperID INT PRIMARY KEY,
    CompanyName VARCHAR(100)
);

INSERT INTO shippers
(ShipperID,CompanyName)
VALUES
(1,'Speedy Express'),
(2,'United Package'),
(3,'Federal Shipping');

------------------------------------------------------------------------------------------------------------------

                                    #SELECT / WHERE / DISTINCT / ALIAS / LIMIT#
#List all customers from USA

select * from customers
where country='USA';

#Show DISTINCT country from Customers

select distinct country
from customers;

#Get product name and price with alias

select PRODUCTNAME as name, 
UNITPRICE as price
from products;

#Show top 5 expensive products

SELECT * FROM Products
ORDER BY UnitPrice DESC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------ 

                                     #ORDER BY / LIKE / BETWEEN / IN / NOT#

#Customers ordered by country (ORDER BY)

SELECT * FROM Customers
ORDER BY Country;

#Products name starts with 'C' (LIKE)

SELECT ProductName FROM Products
WHERE ProductName LIKE 'C%';

#Products price between 10 and 30 (BETWEEN)

SELECT ProductName, UnitPrice FROM Products
WHERE UnitPrice BETWEEN 10 AND 30;

#Customers from Germany, France, UK (IN)

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

#Products not in category 1 (NOT)

SELECT * FROM Products
WHERE CategoryID NOT IN (1);

---------------------------------------------------------------------------------------------------------------------

                                #GROUP BY / COUNT / SUM / AVG / MAX / MIN#

#Count orders per customer

SELECT CustomerID,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

#Average price per category

SELECT CategoryID,
       AVG(UnitPrice) AS AvgPrice
FROM Products
GROUP BY CategoryID;

#Maximum price in each category

SELECT CategoryID,
       MAX(UnitPrice) AS MaxPrice
FROM Products
GROUP BY CategoryID;

#Total quantity sold per product

SELECT ProductID,
       SUM(Quantity) AS TotalQty
FROM ORDER_DETAILS
GROUP BY ProductID;

#Minimum price product in each category

SELECT CategoryID,
       MIN(UnitPrice) AS MinPrice
FROM Products
GROUP BY CategoryID;

---------------------------------------------------------------------------------------------------------------------
                                       #HAVING (with GROUP BY)#

#Customers with less than 5  orders

SELECT CustomerID,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) < 5;

#Categories with avg price > 20

SELECT CategoryID,
       AVG(UnitPrice) AS AvgPrice
FROM Products
GROUP BY CategoryID
HAVING AVG(UnitPrice) > 20;

#Products with total quantity < 100

SELECT ProductID,
       SUM(Quantity) AS TotalQty
FROM ORDER_DETAILS
GROUP BY ProductID
HAVING SUM(Quantity) < 100;

#Customers with total orders between 1 and 10

SELECT CustomerID,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) BETWEEN 1 AND 10;

#Categories having more than 5 products

SELECT CategoryID,
       COUNT(*) AS TotalProducts
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 5;

------------------------------------------------------------------------------------------------------------------------

                                               #JOINS#

#Orders with customer name (INNER JOIN)

SELECT O.OrderID,
       C.CustomerID,
       C.CompanyName
FROM Orders O
INNER JOIN Customers C
ON O.CustomerID = C.CustomerID; 

#Products with category name (INNER JOIN)

SELECT P.ProductName,
       C.CategoryName
FROM Products P
JOIN Categories C
ON P.CategoryID = C.CategoryID;

#Customers with orders (LEFT JOIN)&(RIGHT JOIN)

SELECT C.CustomerID,
       O.OrderID
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID;

SELECT C.CustomerID,
       O.OrderID
FROM Customers C
RIGHT JOIN Orders O
ON C.CustomerID = O.CustomerID;

#Employees with manager name (SELF JOIN)

SELECT E1.EMPLOYEENAME AS Employee,
       E2.EMPLOYEENAME AS Manager
FROM Employees E1
LEFT JOIN Employees E2
ON E1.ReportsTo = E2.EmployeeID;

#Order details with product name (Multiple JOIN)

SELECT O.OrderID,
       P.ProductName,
       OD.Quantity
FROM Orders O
JOIN ORDER_DETAILS OD
ON O.OrderID = OD.OrderID
JOIN Products P
ON OD.ProductID = P.ProductID;

------------------------------------------------------------------------------------------------------------------------
                                           #SUBQUERY#

#Products costlier than average price

#(Subquery in WHERE)

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice >
(
    SELECT AVG(UnitPrice)
    FROM Products
);

#Customers who placed more orders than average

SELECT CustomerID
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) >
(
    SELECT AVG(OrderCount)
    FROM
    (
        SELECT COUNT(*) AS OrderCount
        FROM Orders
        GROUP BY CustomerID
    ) A
);

#Orders with maximum quantity

SELECT *
FROM Order_Details
WHERE Quantity =
(
    SELECT MAX(Quantity)
    FROM Order_Details
);

#Products in category with highest average price

SELECT * FROM Products
WHERE CategoryID =
(
    SELECT CategoryID
    FROM Products
    GROUP BY CategoryID
    ORDER BY AVG(UnitPrice) DESC
    LIMIT 1
);

-----------------------------------------------------------------------------------------------------------------------
                                           #CTE-common table expression#
#CTE for total orders per customer

WITH OrderCount AS
(
    SELECT CustomerID,
           COUNT(*) AS TotalOrders
    FROM Orders
    GROUP BY CustomerID
 )
SELECT *
FROM OrderCount;

#CTE with JOIN in order info

WITH OrderInfo AS
(
    SELECT O.OrderID,
           C.CompanyName
    FROM Orders O
    JOIN Customers C
    ON O.CustomerID = C.CustomerID
)
SELECT *
FROM OrderInfo;

#CTE with aggregate filter product quantity

WITH ProductQty AS
(
    SELECT ProductID,
           SUM(Quantity) AS TotalQty
    FROM Order_Details
    GROUP BY ProductID
)
SELECT *
FROM ProductQty
WHERE TotalQty > 20;

#Multiple CTE used joins

WITH A AS
(
    SELECT ProductID, UnitPrice
    FROM Products
),
B AS
(
    SELECT ProductID, Quantity
    FROM Order_Details
)
SELECT A.ProductID,
       A.UnitPrice,
       B.Quantity
FROM A
JOIN B
ON A.ProductID = B.ProductID;

#CTE with self join (employee manager)

WITH Emp AS
(
    SELECT EmployeeID,
           employeeName,
           ReportsTo
    FROM Employees
)
SELECT E1.employeeName AS Employee,
       E2.employeeName AS Manager
FROM Emp E1
LEFT JOIN Emp E2
ON E1.ReportsTo = E2.EmployeeID;

-------------------------------------------------------------------------------------------------------------------------
                                                #WINDOW FUNCTION#

#Row number for products by price

SELECT ProductName,
       UnitPrice,
       ROW_NUMBER() OVER (ORDER BY UnitPrice DESC) AS RowNum
FROM Products;  

#Rank products by price

SELECT ProductName,
       UnitPrice,
       RANK() OVER (ORDER BY UnitPrice DESC) AS RankNum
FROM Products;

#Dense rank by category

SELECT ProductName,
       CategoryID,
       UnitPrice,
       DENSE_RANK() OVER
       (
         PARTITION BY CategoryID
         ORDER BY UnitPrice DESC
       ) AS RankInCategory
FROM Products;

#Running total quantity

    SELECT ProductID,
       Quantity,
       SUM(Quantity) OVER
       (
         ORDER BY ProductID
       ) AS RunningTotal
FROM Order_Details;

#Lead / Lag order date

SELECT
       OrderID,
       OrderDate,
LAG(OrderDate) OVER (ORDER BY OrderDate) AS PrevOrder,
LEAD(OrderDate) OVER (ORDER BY OrderDate) AS NextOrder
FROM Orders;

-------------------------------------------------------------------------------------------------------------------------
                                         #UNION / UNION ALL#

#Customers + Employees names (UNION) names

SELECT ContactName AS Name
FROM Customers

UNION

SELECT employeeName
FROM Employees;

#Customers + Employees (UNION ALL) city

SELECT City
FROM Customers

UNION ALL

SELECT City
FROM Employees;

#Customers + Employees names (UNION ALL) names

SELECT ContactName AS Name
FROM Customers

UNION ALL

SELECT employeeName
FROM Employees;

#Orders before 1997 + after 1997

SELECT OrderID, OrderDate
FROM Orders
WHERE OrderDate < '2012-01-01'

UNION

SELECT OrderID, OrderDate
FROM Orders
WHERE OrderDate > '2012-12-31';

#Products low price + high price

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice < 20

UNION

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > 50;

#UNION with ORDER BY

SELECT employeeName AS Name
FROM Employees

UNION

SELECT ContactName
FROM Customers

ORDER BY Name;



select*from orders ;
