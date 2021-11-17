-- Database: DBT6_CRM
-- DROP DATABASE IF EXISTS "DBT6_CRM";
CREATE DATABASE "DBT6_CRM"
    WITH     OWNER = postgres      ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default     CONNECTION LIMIT = -1;


-- Table: public.Companies
-- DROP TABLE IF EXISTS public."Companies";
CREATE TABLE IF NOT EXISTS public."Companies"
(    
CompaniID "serial",
CompanyName "char",
ContactID "serial",
Manager "char",
Segment "char",
Stage "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Companies"     OWNER to postgres;


-- Table: public.Contacts
-- DROP TABLE IF EXISTS public."Contacts";
CREATE TABLE IF NOT EXISTS public."Contacts"
(    
ContactID "serial",
CompanyID "serial",
Tel "char",
ContactPerson "char",
Contacts "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Contacts"     OWNER to postgres;


-- Table: public.Segment
-- DROP TABLE IF EXISTS public."Segment";
CREATE TABLE IF NOT EXISTS public."Segment"
(    
SegmentID "serial",
SegmentName  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Segment"     OWNER to postgres;


-- Table: public.Address
-- DROP TABLE IF EXISTS public."Address";
CREATE TABLE IF NOT EXISTS public."Address"
(    
Country "char",
Region "char",
Town "char",
Address  "char",
Site "char",
Email "char",
LIN "char",
FB "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Address"     OWNER to postgres;


-- Table: public.Stages
-- DROP TABLE IF EXISTS public."Stages";
CREATE TABLE IF NOT EXISTS public."Stages"
(    
StageID "serial",
StageName "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Stages"     OWNER to postgres;


-- Table: public.Managers
-- DROP TABLE IF EXISTS public."Managers";
CREATE TABLE IF NOT EXISTS public."Managers"
(    
ManagerID "serial",
FirstName "char",
LastName "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Managers"     OWNER to postgres;


-- Table: public.Orders
-- DROP TABLE IF EXISTS public."Orders";
CREATE TABLE IF NOT EXISTS public."Orders"
(    
OrderID "serial",
OrderName "char",
Description  "char",
Stack "char",
Grade  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Orders"     OWNER to postgres;

-- Table: public.Stack
-- DROP TABLE IF EXISTS public."Stack";
CREATE TABLE IF NOT EXISTS public."Stack"
(    
StackID "serial",
StackName  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Stack"     OWNER to postgres;

