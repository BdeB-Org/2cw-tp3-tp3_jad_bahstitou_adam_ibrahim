--------------------------------------------------------
--  Fichier créé - jeudi-mai-30-2024  
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AVIS
--------------------------------------------------------

  CREATE TABLE "RESTSCOTT"."AVIS" 
   (	"ID" NUMBER, 
	"UTILISATEUR_ID" NUMBER, 
	"LIVRE_ID" NUMBER, 
	"AVIS" CLOB COLLATE "USING_NLS_COMP", 
	"NOTE" NUMBER(1,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("AVIS") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table GENRES
--------------------------------------------------------

  CREATE TABLE "RESTSCOTT"."GENRES" 
   (	"ID" NUMBER, 
	"NOM" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIVRES
--------------------------------------------------------

  CREATE TABLE "RESTSCOTT"."LIVRES" 
   (	"ID" NUMBER, 
	"TITRE" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"AUTEUR" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"GENRE_ID" NUMBER, 
	"ANNEE_PUBLICATION" NUMBER(4,0), 
	"DISPONIBILITE" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP" DEFAULT 'disponible'
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for Table UTILISATEURS
--------------------------------------------------------

  CREATE TABLE "RESTSCOTT"."UTILISATEURS" 
   (	"ID" NUMBER, 
	"NOM" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"EMAIL" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"MOTDEPASSE" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"STATUT" VARCHAR2(7 BYTE) COLLATE "USING_NLS_COMP" DEFAULT 'actif'
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into RESTSCOTT.AVIS
SET DEFINE OFF;
Insert into RESTSCOTT.AVIS (ID,UTILISATEUR_ID,LIVRE_ID,NOTE) values ('1','7','2','5');
Insert into RESTSCOTT.AVIS (ID,UTILISATEUR_ID,LIVRE_ID,NOTE) values ('2','8','2','4');
Insert into RESTSCOTT.AVIS (ID,UTILISATEUR_ID,LIVRE_ID,NOTE) values ('3','7','2','2');
Insert into RESTSCOTT.AVIS (ID,UTILISATEUR_ID,LIVRE_ID,NOTE) values ('4','9','2','0');
REM INSERTING into RESTSCOTT.GENRES
SET DEFINE OFF;
Insert into RESTSCOTT.GENRES (ID,NOM) values ('1','ACTION');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('2','ROMANCE');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('3','FANTASTIQUE');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('4','SELF-IMPROVEMENT');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('5','POLICIER');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('6','SCIENCE-FICTION');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('7','CYBERPUNK');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('8','HORREUR');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('9','BIOGRAPHIE');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('10','COMEDIE');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('11','DRAME');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('12','BANDE DESSINEE');
Insert into RESTSCOTT.GENRES (ID,NOM) values ('13','MANGA');
REM INSERTING into RESTSCOTT.LIVRES
SET DEFINE OFF;
Insert into RESTSCOTT.LIVRES (ID,TITRE,AUTEUR,GENRE_ID,ANNEE_PUBLICATION,DISPONIBILITE) values ('1','FIGHT CLUB','CHUCK PALANHNIUK','1','2222','DISPONIBLE');
Insert into RESTSCOTT.LIVRES (ID,TITRE,AUTEUR,GENRE_ID,ANNEE_PUBLICATION,DISPONIBILITE) values ('2','THE SUMMER I TURNED PRETTY','JENNY HAN','2','2199','PRETE');
Insert into RESTSCOTT.LIVRES (ID,TITRE,AUTEUR,GENRE_ID,ANNEE_PUBLICATION,DISPONIBILITE) values ('3','HARRY POTTER AND THE PRISONER OF AZKABAN','J.K. ROWLING','3','2079','DISPONIBLE');
Insert into RESTSCOTT.LIVRES (ID,TITRE,AUTEUR,GENRE_ID,ANNEE_PUBLICATION,DISPONIBILITE) values ('4','THE POWER OF HABIT','CHARLES DUHIGG','4','1111','PRETE');

REM INSERTING into RESTSCOTT.UTILISATEURS
SET DEFINE OFF;
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('1','FRANCOIS','ADDE@MGIL.COM','1111','ACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('2','BERNARD','BBJERG@HOTLOOK.ZIP','2222','ACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('3','SHIK SHAK SHOK','SHISHASHO@PROTON.LALA','3333','ACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('4','FRITES','MCDO@33.KLIR','4444','INACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('5','MOTOMOTO','MEHMEH@###.NOURA','5555','ACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('6','PORTEZ','LUCIUS@LAMB.SAUCE','6666','INACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('7','PHOTOMATH','NILOU@-++-.===','7777','ACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('8','LASOURCE SLAVE','TURBINE@JIZZER.CUM','8888','ACTIF');
Insert into RESTSCOTT.UTILISATEURS (ID,NOM,EMAIL,MOTDEPASSE,STATUT) values ('9','MAMA LEO','GGMXZ@YOUTUBE.ORG','9999','ACTIF');
--------------------------------------------------------
--  DDL for Index SYS_C0012520
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESTSCOTT"."SYS_C0012520" ON "RESTSCOTT"."AVIS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012502
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESTSCOTT"."SYS_C0012502" ON "RESTSCOTT"."GENRES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012508
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESTSCOTT"."SYS_C0012508" ON "RESTSCOTT"."LIVRES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for Index SYS_C0012500
--------------------------------------------------------

  CREATE UNIQUE INDEX "RESTSCOTT"."SYS_C0012500" ON "RESTSCOTT"."UTILISATEURS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AVIS
--------------------------------------------------------

  ALTER TABLE "RESTSCOTT"."AVIS" MODIFY ("UTILISATEUR_ID" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."AVIS" MODIFY ("LIVRE_ID" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."AVIS" MODIFY ("NOTE" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."AVIS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GENRES
--------------------------------------------------------

  ALTER TABLE "RESTSCOTT"."GENRES" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."GENRES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LIVRES
--------------------------------------------------------

  ALTER TABLE "RESTSCOTT"."LIVRES" MODIFY ("TITRE" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."LIVRES" MODIFY ("AUTEUR" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."LIVRES" MODIFY ("GENRE_ID" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."LIVRES" MODIFY ("ANNEE_PUBLICATION" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."LIVRES" MODIFY ("DISPONIBILITE" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."LIVRES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;

--------------------------------------------------------
--  Constraints for Table UTILISATEURS
--------------------------------------------------------

  ALTER TABLE "RESTSCOTT"."UTILISATEURS" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."UTILISATEURS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."UTILISATEURS" MODIFY ("MOTDEPASSE" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."UTILISATEURS" MODIFY ("STATUT" NOT NULL ENABLE);
  ALTER TABLE "RESTSCOTT"."UTILISATEURS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AVIS
--------------------------------------------------------

  ALTER TABLE "RESTSCOTT"."AVIS" ADD CONSTRAINT "FK_UTILISATEUR_AVIS" FOREIGN KEY ("UTILISATEUR_ID")
	  REFERENCES "RESTSCOTT"."UTILISATEURS" ("ID") ENABLE;
  ALTER TABLE "RESTSCOTT"."AVIS" ADD CONSTRAINT "FK_LIVRE_AVIS" FOREIGN KEY ("LIVRE_ID")
	  REFERENCES "RESTSCOTT"."LIVRES" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVRES
--------------------------------------------------------

  ALTER TABLE "RESTSCOTT"."LIVRES" ADD CONSTRAINT "FK_GENRE" FOREIGN KEY ("GENRE_ID")
	  REFERENCES "RESTSCOTT"."GENRES" ("ID") ENABLE;