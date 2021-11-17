-- Database: DBT4_Amfut_2022
-- DROP DATABASE IF EXISTS "DBT4_Amfut_2022";
CREATE DATABASE "DBT4_Amfut_2022"
    WITH     OWNER = postgres      ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default     CONNECTION LIMIT = -1;


-- Table: public. AmfutTeam
-- DROP TABLE IF EXISTS public."AmfutTeam";
CREATE TABLE IF NOT EXISTS public."AmfutTeam"
(    
TeamID "serial",
TeamName "char",
Logo "char",
AddressID "char",
LeagueID "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."AmfutTeam"     OWNER to postgres;


-- Table: public. Leagues
-- DROP TABLE IF EXISTS public."Leagues";
CREATE TABLE IF NOT EXISTS public."Leagues"
(    
LeagueID "serial",
LeagueName  "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Leagues"     OWNER to postgres;


-- Table: public.Address
-- DROP TABLE IF EXISTS public."Address";
CREATE TABLE IF NOT EXISTS public."Address"
(    
AddressID "serial",
Country "char",
City  "char",
Site "char",
CoachID "serial",
Email "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Address"     OWNER to postgres;


-- Table: public. Teams
-- DROP TABLE IF EXISTS public."Teams";
CREATE TABLE IF NOT EXISTS public."Teams"
(    
TeamID "serial",
CouchID "char",
TeamName "char",
City "char",
Player "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Teams"     OWNER to postgres;


-- Table: public.Couches
-- DROP TABLE IF EXISTS public."Couches";
CREATE TABLE IF NOT EXISTS public."Couches"
(    
CouchID "serial",
First_name "char",
Last_name "char",
TeamID "serial",
Tel "char",
Email "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Couches"     OWNER to postgres;


-- Table: public.Players
-- DROP TABLE IF EXISTS public."Players";
CREATE TABLE IF NOT EXISTS public."Players"
(    
PlayerID "serial",
First_name "char",
Last_name "char",
Position "char",
Number "char",
Age "char",
Height  "char",
Weight "char",
Photo "char"
)
WITH (    OIDS = FALSE )
TABLESPACE pg_default;
ALTER TABLE IF EXISTS public."Players"     OWNER to postgres;
