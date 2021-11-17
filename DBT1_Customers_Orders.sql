DBT1_Customers_Orders

-- Database: DBT1_Customers_Orders
-- DROP DATABASE IF EXISTS " DBT1_Customers_Orders";
CREATE DATABASE " DBT1_Customers_Orders"
    WITH     OWNER = postgres      ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default     CONNECTION LIMIT = -1;

Customer
CustomerID
First_Name
Last_Name
Phone
Email
Gender

-- Table: public. Customer
-- DROP TABLE IF EXISTS public."Customer";
CREATE TABLE IF NOT EXISTS public."Customer"
(    
CustomerID "serial",     
First_Name "char",     
Last_Name "char",     
Phone "char",     
Email "char",     
Gender "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Customer"     OWNER to postgres;


Orders
OrderID
CustomerID
Order_Date
Shipment_Date
Shipment_Cost

-- Table: public. Orders
-- DROP TABLE IF EXISTS public."Orders";
CREATE TABLE IF NOT EXISTS public."Orders"
(    
OrderID "serial",     
CustomerID "serial",     
Order_Date "date",     
Shipment_Date "date",     
Shipment_Cost "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Orders"     OWNER to postgres;


Order_Items
OrderID
ProductID
Quantity
Price 

-- Table: public. Order_Items
-- DROP TABLE IF EXISTS public."Order_Items";
CREATE TABLE IF NOT EXISTS public."Order_Items"
(    
OrderID "serial",
ProductID "serial",
Quantity "char",
Price "char"  
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Order_Items"     OWNER to postgres;

ShippingAddress
ShippingAddressID
CustomerID
Address
City
State
Index

-- Table: public. ShippingAddress
-- DROP TABLE IF EXISTS public."ShippingAddress";
CREATE TABLE IF NOT EXISTS public."ShippingAddress"
(    
ShippingAddressID "serial",
CustomerID "serial",
Address "char",
City "char",
State "char",
Index "char"  
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."ShippingAddress"     OWNER to postgres;


Product 
ProductID
Product_name
Description 
InputPrice
SellPrice 
CategoryID
Keywords 

-- Table: public. Product
-- DROP TABLE IF EXISTS public." Product";
CREATE TABLE IF NOT EXISTS public."Product"
(    
ProductID "serial",
Product_name "char",
Description  "char",
InputPrice "char",
SellPrice "char",
CategoryID "char",
Keywords "char"  
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Product"     OWNER to postgres;
