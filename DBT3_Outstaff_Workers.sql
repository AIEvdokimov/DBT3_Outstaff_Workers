-- Database: DBT3_Outstaff_Workers
-- DROP DATABASE IF EXISTS "DBT3_Outstaff_Workers";
CREATE DATABASE "DBT3_Outstaff_Workers"
    WITH     OWNER = postgres      ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default     CONNECTION LIMIT = -1;

-- Table: public. Workers
-- DROP TABLE IF EXISTS public."Workers";
CREATE TABLE IF NOT EXISTS public."Workers"
(    
WorkerID "serial",
SuppliersID "serial",
First_Name "char",
Last_name "char",
CV "char",
Main_Stack "char",
Grade "char",
Rate_IN "char",
Rate_OUT "char",
Worker_agrement_Number "char",
Contacts "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Workers"     OWNER to postgres;


-- Table: public. Suppliers
-- DROP TABLE IF EXISTS public."Suppliers";
CREATE TABLE IF NOT EXISTS public."Suppliers"
(    
SupplierID "serial",
SupplierName "char",
AgrementNumber "char",
Supplier_INN  "char",
ResourcesID  "serial"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Suppliers"     OWNER to postgres;


-- Table: public. Resources
-- DROP TABLE IF EXISTS public."Resources";
CREATE TABLE IF NOT EXISTS public."Resources"
(    
ResourceID "serial",
WorkerID  "serial"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Resources"     OWNER to postgres;

-- Table: public. Clients
-- DROP TABLE IF EXISTS public."Clients";
CREATE TABLE IF NOT EXISTS public."Clients"
(    
ClientID "serial",
Client_Order_Id "serial",
Client_INN "char",
Client_ContactsID "serial"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Clients"     OWNER to postgres;


-- Table: public. Client_Order
-- DROP TABLE IF EXISTS public."Client_Order";
CREATE TABLE IF NOT EXISTS public."Client_Order"
(    
Client_Order_Id "serial",
WorkerID "serial",
StageID "serial",
Duration "char",
Start_date "char",
Finish_estimation "char",
Real_start "char",
Real_Finish "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Client_Order"     OWNER to postgres;


-- Table: public. Stages
-- DROP TABLE IF EXISTS public."Stages";
CREATE TABLE IF NOT EXISTS public."Stages"
(    
StageID "serial",
Stage_Type "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Stages"     OWNER to postgres

-- Table: public. Client_Contacts
-- DROP TABLE IF EXISTS public."Client_Contacts";
CREATE TABLE IF NOT EXISTS public."Client_Contacts"
(    
Client_Contacts_id "serial",
Site "char",
Email "char",
Contact_Person "char",
Telegram "char",
Address_Main "char",
Address_Documents  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Client_Contacts"     OWNER to postgres;

