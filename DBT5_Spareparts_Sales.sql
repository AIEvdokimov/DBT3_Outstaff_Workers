-- Database: DBT5_Spareparts_Sales
-- DROP DATABASE IF EXISTS "DBT5_Spareparts_Sales";
CREATE DATABASE "DBT5_Spareparts_Sales"
    WITH     OWNER = postgres      ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default     CONNECTION LIMIT = -1;


-- Table: public.Parts
-- DROP TABLE IF EXISTS public."Parts";
CREATE TABLE IF NOT EXISTS public."Parts"
(    
PartID "serial",
GeneralCode "char",
ProducersCompany "char",
SellersCompany "char",
Name "char",
Weight "char",
Size "char",
Price  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Parts"     OWNER to postgres;


-- Table: public.Sizes
-- DROP TABLE IF EXISTS public."Sizes";
CREATE TABLE IF NOT EXISTS public."Sizes"
(    
Length "char",
Width  "char",
Height "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Sizes"     OWNER to postgres;

-- Table: public.WarehouseParts
-- DROP TABLE IF EXISTS public."WarehouseParts";
CREATE TABLE IF NOT EXISTS public."WarehouseParts"
(    
WHID  "serial",
Parts "char",
Count "char",
WarehouseLocation "char",
Address  "char",
Company "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."WarehouseParts"     OWNER to postgres;



-- Table: public.Sellers
-- DROP TABLE IF EXISTS public."Sellers";
CREATE TABLE IF NOT EXISTS public."Sellers"
(    
SellerID "serial",
CompanyName "char",
CompanyINN "char",
AgreementNumber "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Sellers"     OWNER to postgres;


-- Table: public.ShoppingBusket
-- DROP TABLE IF EXISTS public."ShoppingBusket";
CREATE TABLE IF NOT EXISTS public."ShoppingBusket"
(    
CustomerID "serial",
PartID "char",
WHID "char",
Price  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."ShoppingBusket"     OWNER to postgres;


-- Table: public.Customers
-- DROP TABLE IF EXISTS public."Customers";
CREATE TABLE IF NOT EXISTS public."Customers"
(    
CustomerID "serial",
Email "char",
Phone "char",
Address "char",
RegistrationID "serial"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Customers"     OWNER to postgres;
