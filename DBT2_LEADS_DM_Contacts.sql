-- Database: DBT2_LEADS_DM_Contacts
-- DROP DATABASE IF EXISTS "DBT2_LEADS_DM_Contacts";
CREATE DATABASE "DBT2_LEADS_DM_Contacts"
    WITH     OWNER = postgres      ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default     CONNECTION LIMIT = -1;

-- Table: public. Company
-- DROP TABLE IF EXISTS public."Company";
CREATE TABLE IF NOT EXISTS public."Company"
(    
CompanyID "serial",
Company_Name "char",
INN_Company "char",
Main_Site "char",
Main_email "char",
CIO_id "serial",
TD_id "serial",
LIN_site "char",
FB_Site "char",
VK_Site "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Company"     OWNER to postgres;


-- Table: public. CIO
-- DROP TABLE IF EXISTS public."CIO";
CREATE TABLE IF NOT EXISTS public."CIO"
(    
CIO_id  "serial",
CompanyID  "char",
First_name  "char",
Last_name  "char",
LIN_Page_CIO  "char",
FB_Page_CIO  "char",
Email_CIO  "char",
Mobile_CIO  "char",
TEL_CIO  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."CIO"     OWNER to postgres;


-- Table: public. TD
-- DROP TABLE IF EXISTS public."TD";
CREATE TABLE IF NOT EXISTS public."TD"
(    
ТД_id "serial",
CompanyID "char",
First_name "char",
Last_name "char",
LIN_Page_TD "char",
FB_Page_TD "char",
Email_TD "char",
Mobile_TD "char",
TEL_TD "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."TD"     OWNER to postgres;


-- Table: public. Segmentation
-- DROP TABLE IF EXISTS public."Segmentation";
CREATE TABLE IF NOT EXISTS public."Segmentation"
(    
CompanyID "char",
CompanySegment  "char",
Company_Industry "char",
Company_ESKD_code "char",
Segment_Type "char",
SegmentID "serial",
Description  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Segmentation"     OWNER to postgres;


-- Table: public. LeadGeneration
-- DROP TABLE IF EXISTS public."LeadGeneration";
CREATE TABLE IF NOT EXISTS public."LeadGeneration"
(    
LeadID "serial",
Date_contact "date",
Current_Stage  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."LeadGeneration"     OWNER to postgres;
