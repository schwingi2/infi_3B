BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Artikel" (
	"Lieferantennummern"	TEXT,
	"ID"	INTEGER,
	"Produktcode"	TEXT,
	"Artikelname"	TEXT,
	"Beschreibung"	TEXT,
	"Standardkosten"	TEXT,
	"Listenpreis"	TEXT,
	"Mindestbestand"	INTEGER,
	"ZielfürBestand"	INTEGER,
	"Liefereinheit"	TEXT,
	"Auslaufartikel"	INTEGER,
	"MindeststückzahlfürNachbestellung"	INTEGER,
	"Kategorie"	TEXT,
	"Anlagen"	TEXT,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Personal" (
	"ID"	INTEGER,
	"Firma"	TEXT,
	"Nachname"	TEXT,
	"Vorname"	TEXT,
	"E-Mail-Adresse"	TEXT,
	"Position"	TEXT,
	"Telefon(geschäftlich)"	TEXT,
	"Telefonprivat"	TEXT,
	"Mobiltelefon"	TEXT,
	"Faxnummer"	TEXT,
	"Straße"	TEXT,
	"Ort"	TEXT,
	"Bundesland/Kanton"	TEXT,
	"PLZ"	INTEGER,
	"Land/Region"	TEXT,
	"Webseite"	TEXT,
	"Bemerkungen"	TEXT,
	"Anlagen"	TEXT
);
CREATE TABLE IF NOT EXISTS "Bestelldetails" (
	"ID"	INTEGER,
	"Bestell-Nr"	INTEGER,
	"Artikel-Nr"	INTEGER,
	"Anzahl"	INTEGER,
	"Einzelpreis"	TEXT,
	"Rabatt"	TEXT,
	"Status-Nr"	INTEGER,
	"Zugeteiltam"	TEXT,
	"Auftrags-Nr"	TEXT,
	"Bestands-Nr"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Bestellungen" (
	"Bestell-Nr"	INTEGER,
	"Personal-Nr"	INTEGER,
	"Kunden-Code"	INTEGER,
	"Bestelldatum"	TEXT,
	"Versanddatum"	TEXT,
	"Versandfirmen-Nr"	TEXT,
	"Liefername"	TEXT,
	"Lieferadresse"	TEXT,
	"Lieferort"	TEXT,
	"Bundesland"	TEXT,
	"PLZ"	INTEGER,
	"Bestimmungsland/-region"	TEXT,
	"Versandkosten"	TEXT,
	"Steuern"	TEXT,
	"Zahlungsart"	TEXT,
	"Zahlungsdatum"	TEXT,
	"Bemerkungen"	TEXT,
	"Steuersatz"	TEXT,
	"Steuerstatus"	TEXT,
	"Status-Nr"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Kunden" (
	"ID"	INTEGER,
	"Firma"	TEXT,
	"Nachname"	TEXT,
	"Vorname"	TEXT,
	"E-Mail-Adresse"	TEXT,
	"Position"	TEXT,
	"Telefon(geschäftlich)"	TEXT,
	"Telefonprivat"	TEXT,
	"Mobiltelefon"	TEXT,
	"Faxnummer"	TEXT,
	"Straße"	TEXT,
	"Ort"	TEXT,
	"Bundesland/Kanton"	TEXT,
	"PLZ"	INTEGER,
	"Land/Region"	TEXT,
	"Webseite"	TEXT,
	"Bemerkungen"	TEXT,
	"Anlagen"	TEXT
);
CREATE TABLE IF NOT EXISTS "Rechnungen" (
	"Rechnungs-Nr"	INTEGER,
	"Bestell-Nr"	INTEGER,
	"Rechnungsdatum"	TEXT,
	"Fälligkeitsdatum"	TEXT,
	"Steuer"	TEXT,
	"Versand"	TEXT,
	"FälligerBetrag"	TEXT
);
INSERT INTO "Artikel" VALUES ('4',1,'NWTB-1','Northwind Traders Chai',NULL,'€ 13,50','€ 18,00',10,40,'10 Kartons x 20 Beutel',0,10,'Getränke',NULL);
INSERT INTO "Artikel" VALUES ('10',3,'NWTCO-3','Northwind Traders Syrup',NULL,'€ 7,50','€ 10,00',25,100,'12 x 550-ml-Flaschen',0,25,'Gewürze',NULL);
INSERT INTO "Artikel" VALUES ('10',4,'NWTCO-4','Northwind Traders Cajun Seasoning',NULL,'€ 16,50','€ 22,00',10,40,'48 x 6-oz-Gläser',0,10,'Gewürze',NULL);
INSERT INTO "Artikel" VALUES ('10',5,'NWTO-5','Northwind Traders Olive Oil',NULL,'€ 16,01','€ 21,35',10,40,'36 Kartons',0,10,'Öl',NULL);
INSERT INTO "Artikel" VALUES ('2;6',6,'NWTJP-6','Northwind Traders Boysenberry Spread',NULL,'€ 18,75','€ 25,00',25,100,'12 x 8-oz-Gläser',0,25,'Marmelade, Konfitüre',NULL);
INSERT INTO "Artikel" VALUES ('2',7,'NWTDFN-7','Northwind Traders Dried Pears',NULL,'€ 22,50','€ 30,00',10,40,'12 x 1-lb-Packungen',0,10,'Trockenfrüchte & Nüsse',NULL);
INSERT INTO "Artikel" VALUES ('8',8,'NWTS-8','Northwind Traders Curry Sauce',NULL,'€ 30,00','€ 40,00',10,40,'12 x 12-oz-Gläser',0,10,'Saucen',NULL);
INSERT INTO "Artikel" VALUES ('2;6',14,'NWTDFN-14','Northwind Traders Walnuts',NULL,'€ 17,44','€ 23,25',10,40,'40 x 100-g-Packungen',0,10,'Trockenfrüchte & Nüsse',NULL);
INSERT INTO "Artikel" VALUES ('6',17,'NWTCFV-17','Northwind Traders Fruit Cocktail',NULL,'€ 29,25','€ 39,00',10,40,'15,25 oz',0,10,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('1',19,'NWTBGM-19','Northwind Traders Chocolate Biscuits Mix',NULL,'€ 6,90','€ 9,20',5,20,'10 Kartons x 12 Stück',0,5,'Backwaren & Backmischungen',NULL);
INSERT INTO "Artikel" VALUES ('2;6',20,'NWTJP-6','Northwind Traders Marmalade',NULL,'€ 60,75','€ 81,00',10,40,'30 Geschenkpackungen',0,10,'Marmelade, Konfitüre',NULL);
INSERT INTO "Artikel" VALUES ('1',21,'NWTBGM-21','Northwind Traders Scones',NULL,'€ 7,50','€ 10,00',5,20,'24 Packungen x 4 Stück',0,5,'Backwaren & Backmischungen',NULL);
INSERT INTO "Artikel" VALUES ('4',34,'NWTB-34','Northwind Traders Beer',NULL,'€ 10,50','€ 14,00',15,60,'24 x 12-oz-Flaschen',0,15,'Getränke',NULL);
INSERT INTO "Artikel" VALUES ('7',40,'NWTCM-40','Northwind Traders Crab Meat',NULL,'€ 13,80','€ 18,40',30,120,'24 x 4-oz-Dosen',0,30,'Fleischkonserven',NULL);
INSERT INTO "Artikel" VALUES ('6',41,'NWTSO-41','Northwind Traders Clam Chowder',NULL,'€ 7,24','€ 9,65',10,40,'12 x 12-oz-Dosen',0,10,'Suppen',NULL);
INSERT INTO "Artikel" VALUES ('3;4',43,'NWTB-43','Northwind Traders Coffee',NULL,'€ 34,50','€ 46,00',25,100,'16 x 500-g-Dosen',0,25,'Getränke',NULL);
INSERT INTO "Artikel" VALUES ('10',48,'NWTCA-48','Northwind Traders Chocolate',NULL,'€ 9,56','€ 12,75',25,100,'10 Packungen',0,25,'Süßigkeiten',NULL);
INSERT INTO "Artikel" VALUES ('2',51,'NWTDFN-51','Northwind Traders Dried Apples',NULL,'€ 39,75','€ 53,00',10,40,'50 x 300-g-Packungen',0,10,'Trockenfrüchte & Nüsse',NULL);
INSERT INTO "Artikel" VALUES ('1',52,'NWTG-52','Northwind Traders Long Grain Rice',NULL,'€ 5,25','€ 7,00',25,100,'16 x 2-kg-Kartons',0,25,'Getreide',NULL);
INSERT INTO "Artikel" VALUES ('1',56,'NWTP-56','Northwind Traders Gnocchi',NULL,'€ 28,50','€ 38,00',30,120,'24 x 250-g-Packungen',0,30,'Nudeln',NULL);
INSERT INTO "Artikel" VALUES ('1',57,'NWTP-57','Northwind Traders Ravioli',NULL,'€ 14,63','€ 19,50',20,80,'24 x 250-g-Packungen',0,20,'Nudeln',NULL);
INSERT INTO "Artikel" VALUES ('8',65,'NWTS-65','Northwind Traders Hot Pepper Sauce',NULL,'€ 15,79','€ 21,05',10,40,'32 x 8-oz-Flaschen',0,10,'Saucen',NULL);
INSERT INTO "Artikel" VALUES ('8',66,'NWTS-66','Northwind Traders Tomato Sauce',NULL,'€ 12,75','€ 17,00',20,80,'24 x 8-oz-Gläser',0,20,'Saucen',NULL);
INSERT INTO "Artikel" VALUES ('5',72,'NWTD-72','Northwind Traders Mozzarella',NULL,'€ 26,10','€ 34,80',10,40,'24 x 200-g-Packungen',0,10,'Milchprodukte',NULL);
INSERT INTO "Artikel" VALUES ('2;6',74,'NWTDFN-74','Northwind Traders Almonds',NULL,'€ 7,50','€ 10,00',5,20,'5-kg-Packungen',0,5,'Trockenfrüchte & Nüsse',NULL);
INSERT INTO "Artikel" VALUES ('10',77,'NWTCO-77','Northwind Traders Mustard',NULL,'€ 9,75','€ 13,00',15,60,'12 Kartons',0,15,'Gewürze',NULL);
INSERT INTO "Artikel" VALUES ('2',80,'NWTDFN-80','Northwind Traders Dried Plums',NULL,'€ 3,00','€ 3,50',50,75,'1-lb-Beutel',0,25,'Trockenfrüchte & Nüsse',NULL);
INSERT INTO "Artikel" VALUES ('3',81,'NWTB-81','Northwind Traders Green Tea',NULL,'€ 2,00','€ 2,99',100,125,'20 Beutel pro Karton',0,25,'Getränke',NULL);
INSERT INTO "Artikel" VALUES ('1',82,'NWTC-82','Northwind Traders Granola',NULL,'€ 2,00','€ 4,00',20,100,NULL,0,NULL,'Getreideprodukte',NULL);
INSERT INTO "Artikel" VALUES ('9',83,'NWTCS-83','Northwind Traders Potato Chips',NULL,'€ 0,50','€ 1,80',30,200,NULL,0,NULL,'Chips, Snacks',NULL);
INSERT INTO "Artikel" VALUES ('1',85,'NWTBGM-85','Northwind Traders Brownie Mix',NULL,'€ 9,00','€ 12,49',10,20,'3 Kartons',0,5,'Backwaren & Backmischungen',NULL);
INSERT INTO "Artikel" VALUES ('1',86,'NWTBGM-86','Northwind Traders Cake Mix',NULL,'€ 10,50','€ 15,99',10,20,'4 Kartons',0,5,'Backwaren & Backmischungen',NULL);
INSERT INTO "Artikel" VALUES ('7',87,'NWTB-87','Northwind Traders Tea',NULL,'€ 2,00','€ 4,00',20,50,'100 Stück pro Karton',0,NULL,'Getränke',NULL);
INSERT INTO "Artikel" VALUES ('6',88,'NWTCFV-88','Northwind Traders Pears',NULL,'€ 1,00','€ 1,30',10,40,'15,25 oz',0,NULL,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('6',89,'NWTCFV-89','Northwind Traders Peaches',NULL,'€ 1,00','€ 1,50',10,40,'15,25 oz',0,NULL,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('6',90,'NWTCFV-90','Northwind Traders Pineapple',NULL,'€ 1,00','€ 1,80',10,40,'15,25 oz',0,NULL,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('6',91,'NWTCFV-91','Northwind Traders Cherry Pie Filling',NULL,'€ 1,00','€ 2,00',10,40,'15,25 oz',0,NULL,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('6',92,'NWTCFV-92','Northwind Traders Green Beans',NULL,'€ 1,00','€ 1,20',10,40,'14,5 oz',0,NULL,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('6',93,'NWTCFV-93','Northwind Traders Corn',NULL,'€ 1,00','€ 1,20',10,40,'14,5 oz',0,NULL,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('6',94,'NWTCFV-94','Northwind Traders Peas',NULL,'€ 1,00','€ 1,50',10,40,'14,5 oz',0,NULL,'Obst- & Gemüsekonserven',NULL);
INSERT INTO "Artikel" VALUES ('7',95,'NWTCM-95','Northwind Traders Tuna Fish',NULL,'€ 0,50','€ 2,00',30,50,'5 oz',0,NULL,'Fleischkonserven',NULL);
INSERT INTO "Artikel" VALUES ('7',96,'NWTCM-96','Northwind Traders Smoked Salmon',NULL,'€ 2,00','€ 4,00',30,50,'5 oz',0,NULL,'Fleischkonserven',NULL);
INSERT INTO "Artikel" VALUES ('1',97,'NWTC-82','Northwind Traders Hot Cereal',NULL,'€ 3,00','€ 5,00',50,200,NULL,0,NULL,'Getreideprodukte',NULL);
INSERT INTO "Artikel" VALUES ('6',98,'NWTSO-98','Northwind Traders Vegetable Soup',NULL,'€ 1,00','€ 1,89',100,200,NULL,0,NULL,'Suppen',NULL);
INSERT INTO "Artikel" VALUES ('6',99,'NWTSO-99','Northwind Traders Chicken Soup',NULL,'€ 1,00','€ 1,95',100,200,NULL,0,NULL,'Suppen',NULL);
INSERT INTO "Personal" VALUES (1,'Northwind Traders','Freehafer','Nancy','nancy@northwindtraders.com','Vertriebsmitarbeiterin','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 1st Avenue','Seattle','WA',99999,'USA','#http://northwindtraders.com#',NULL,NULL);
INSERT INTO "Personal" VALUES (2,'Northwind Traders','Cencini','Andrew','andrew@northwindtraders.com','Stellvertretender Vorsitzender, Vertrieb','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 2nd Avenue','Bellevue','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#','Einstieg in das Unternehmen als Vertriebsmitarbeiterin, Beförderung zur Vertriebsmanagerin, anschließend Ernennung zur stellvertretenden Vorsitzenden für den Vertrieb.',NULL);
INSERT INTO "Personal" VALUES (3,'Northwind Traders','Kotas','Jan','jan@northwindtraders.com','Vertriebsmitarbeiter','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 3rd Avenue','Redmond','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#','Einstellung als Vertriebsmitarbeiter und Beförderung zum Außendienstmitarbeiter.',NULL);
INSERT INTO "Personal" VALUES (4,'Northwind Traders','Sergienko','Mariya','mariya@northwindtraders.com','Vertriebsmitarbeiterin','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 4th Avenue','Kirkland','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,NULL);
INSERT INTO "Personal" VALUES (5,'Northwind Traders','Thorpe','Steven','steven@northwindtraders.com','Vertriebsmanager','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 5th Avenue','Seattle','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#','Einstieg in das Unternehmen als Vertriebsmitarbeiter, Beförderung zum Vertriebsmanager. Spricht fließend Französisch.',NULL);
INSERT INTO "Personal" VALUES (6,'Northwind Traders','Neipper','Michael','michael@northwindtraders.com','Vertriebsmitarbeiter','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 6th Avenue','Redmond','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#','Spricht fließend Japanisch und kann Französisch, Portugiesisch und Spanisch lesen und schreiben.',NULL);
INSERT INTO "Personal" VALUES (7,'Northwind Traders','Zare','Robert','robert@northwindtraders.com','Vertriebsmitarbeiter','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 7th Avenue','Seattle','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,NULL);
INSERT INTO "Personal" VALUES (8,'Northwind Traders','Giussani','Laura','laura@northwindtraders.com','Vertriebskoordinator','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 8th Avenue','Redmond','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#','Kann Französisch lesen und schreiben.',NULL);
INSERT INTO "Personal" VALUES (9,'Northwind Traders','Hellung-Larsen','Anne','anne@northwindtraders.com','Vertriebsmitarbeiterin','(1 23) 55 50 100','(1 23) 5 55 01 02',NULL,'(1 23) 5 55 01 03','123 9th Avenue','Seattle','WA',99999,'USA','http://northwindtraders.com#http://northwindtraders.com/#','Französisch und Deutsch fließend.',NULL);
INSERT INTO "Bestelldetails" VALUES (27,30,34,100,'€ 14,00','0,00',2,NULL,'96',83);
INSERT INTO "Bestelldetails" VALUES (28,30,80,30,'€ 3,50','0,00',2,NULL,NULL,63);
INSERT INTO "Bestelldetails" VALUES (29,31,7,10,'€ 30,00','0,00',2,NULL,NULL,64);
INSERT INTO "Bestelldetails" VALUES (30,31,51,10,'€ 53,00','0,00',2,NULL,NULL,65);
INSERT INTO "Bestelldetails" VALUES (31,31,80,10,'€ 3,50','0,00',2,NULL,NULL,66);
INSERT INTO "Bestelldetails" VALUES (32,32,1,15,'€ 18,00','0,00',2,NULL,NULL,67);
INSERT INTO "Bestelldetails" VALUES (33,32,43,20,'€ 46,00','0,00',2,NULL,NULL,68);
INSERT INTO "Bestelldetails" VALUES (34,33,19,30,'€ 9,20','0,00',2,NULL,'97',81);
INSERT INTO "Bestelldetails" VALUES (35,34,19,20,'€ 9,20','0,00',2,NULL,NULL,69);
INSERT INTO "Bestelldetails" VALUES (36,35,48,10,'€ 12,75','0,00',2,NULL,NULL,70);
INSERT INTO "Bestelldetails" VALUES (37,36,41,200,'€ 9,65','0,00',2,NULL,'98',79);
INSERT INTO "Bestelldetails" VALUES (38,37,8,17,'€ 40,00','0,00',2,NULL,NULL,71);
INSERT INTO "Bestelldetails" VALUES (39,38,43,300,'€ 46,00','0,00',2,NULL,'99',77);
INSERT INTO "Bestelldetails" VALUES (40,39,48,100,'€ 12,75','0,00',2,NULL,'100',75);
INSERT INTO "Bestelldetails" VALUES (41,40,81,200,'€ 2,99','0,00',2,NULL,'101',73);
INSERT INTO "Bestelldetails" VALUES (42,41,43,300,'€ 46,00','0,00',1,NULL,'102',104);
INSERT INTO "Bestelldetails" VALUES (43,42,6,10,'€ 25,00','0,00',2,NULL,NULL,84);
INSERT INTO "Bestelldetails" VALUES (44,42,4,10,'€ 22,00','0,00',2,NULL,NULL,85);
INSERT INTO "Bestelldetails" VALUES (45,42,19,10,'€ 9,20','0,00',2,NULL,'103',110);
INSERT INTO "Bestelldetails" VALUES (46,43,80,20,'€ 3,50','0,00',1,NULL,NULL,86);
INSERT INTO "Bestelldetails" VALUES (47,43,81,50,'€ 2,99','0,00',1,NULL,NULL,87);
INSERT INTO "Bestelldetails" VALUES (48,44,1,25,'€ 18,00','0,00',1,NULL,NULL,88);
INSERT INTO "Bestelldetails" VALUES (49,44,43,25,'€ 46,00','0,00',1,NULL,NULL,89);
INSERT INTO "Bestelldetails" VALUES (50,44,81,25,'€ 2,99','0,00',1,NULL,NULL,90);
INSERT INTO "Bestelldetails" VALUES (51,45,41,50,'€ 9,65','0,00',2,NULL,'104',116);
INSERT INTO "Bestelldetails" VALUES (52,45,40,50,'€ 18,40','0,00',2,NULL,NULL,91);
INSERT INTO "Bestelldetails" VALUES (53,46,57,100,'€ 19,50','0,00',2,NULL,'105',101);
INSERT INTO "Bestelldetails" VALUES (54,46,72,50,'€ 34,80','0,00',2,NULL,'106',114);
INSERT INTO "Bestelldetails" VALUES (55,47,34,300,'€ 14,00','0,00',2,NULL,'107',108);
INSERT INTO "Bestelldetails" VALUES (56,48,8,25,'€ 40,00','0,00',2,NULL,'108',106);
INSERT INTO "Bestelldetails" VALUES (57,48,19,25,'€ 9,20','0,00',2,NULL,'109',112);
INSERT INTO "Bestelldetails" VALUES (59,50,21,20,'€ 10,00','0,00',2,NULL,NULL,92);
INSERT INTO "Bestelldetails" VALUES (60,51,5,25,'€ 21,35','0,00',2,NULL,NULL,93);
INSERT INTO "Bestelldetails" VALUES (61,51,41,30,'€ 9,65','0,00',2,NULL,NULL,94);
INSERT INTO "Bestelldetails" VALUES (62,51,40,30,'€ 18,40','0,00',2,NULL,NULL,95);
INSERT INTO "Bestelldetails" VALUES (66,56,48,10,'€ 12,75','0,00',2,NULL,'111',99);
INSERT INTO "Bestelldetails" VALUES (67,55,34,87,'€ 14,00','0,00',2,NULL,NULL,117);
INSERT INTO "Bestelldetails" VALUES (68,79,7,30,'€ 30,00','0,00',2,NULL,NULL,119);
INSERT INTO "Bestelldetails" VALUES (69,79,51,30,'€ 53,00','0,00',2,NULL,NULL,118);
INSERT INTO "Bestelldetails" VALUES (70,78,17,40,'€ 39,00','0,00',2,NULL,NULL,120);
INSERT INTO "Bestelldetails" VALUES (71,77,6,90,'€ 25,00','0,00',2,NULL,NULL,121);
INSERT INTO "Bestelldetails" VALUES (72,76,4,30,'€ 22,00','0,00',2,NULL,NULL,122);
INSERT INTO "Bestelldetails" VALUES (73,75,48,40,'€ 12,75','0,00',2,NULL,NULL,123);
INSERT INTO "Bestelldetails" VALUES (74,74,48,40,'€ 12,75','0,00',2,NULL,NULL,124);
INSERT INTO "Bestelldetails" VALUES (75,73,41,10,'€ 9,65','0,00',2,NULL,NULL,125);
INSERT INTO "Bestelldetails" VALUES (76,72,43,5,'€ 46,00','0,00',2,NULL,NULL,126);
INSERT INTO "Bestelldetails" VALUES (77,71,40,40,'€ 18,40','0,00',2,NULL,NULL,127);
INSERT INTO "Bestelldetails" VALUES (78,70,8,20,'€ 40,00','0,00',2,NULL,NULL,128);
INSERT INTO "Bestelldetails" VALUES (79,69,80,15,'€ 3,50','0,00',2,NULL,NULL,129);
INSERT INTO "Bestelldetails" VALUES (80,67,74,20,'€ 10,00','0,00',2,NULL,NULL,130);
INSERT INTO "Bestelldetails" VALUES (81,60,72,40,'€ 34,80','0,00',2,NULL,NULL,131);
INSERT INTO "Bestelldetails" VALUES (82,63,3,50,'€ 10,00','0,00',2,NULL,NULL,132);
INSERT INTO "Bestelldetails" VALUES (83,63,8,3,'€ 40,00','0,00',2,NULL,NULL,133);
INSERT INTO "Bestelldetails" VALUES (84,58,20,40,'€ 81,00','0,00',2,NULL,NULL,134);
INSERT INTO "Bestelldetails" VALUES (85,58,52,40,'€ 7,00','0,00',2,NULL,NULL,135);
INSERT INTO "Bestelldetails" VALUES (86,80,56,10,'€ 38,00','0,00',1,NULL,NULL,136);
INSERT INTO "Bestelldetails" VALUES (90,81,81,0,'€ 2,99','0,00',5,NULL,NULL,NULL);
INSERT INTO "Bestelldetails" VALUES (91,81,56,0,'€ 38,00','0,00',0,NULL,NULL,NULL);
INSERT INTO "Bestellungen" VALUES (30,9,27,'15.1.2006 00:00:00','22.1.2006 00:00:00','2','Karen Toh','789 27th Street','Las Vegas','NV',99999,'USA','� 200,00','� 0,00','Scheck','15.1.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (31,3,4,'20.1.2006 00:00:00','22.1.2006 00:00:00','1','Christina Lee','123 4th Street','New York','NY',99999,'USA','� 5,00','� 0,00','Kreditkarte','20.1.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (32,4,12,'22.1.2006 00:00:00','22.1.2006 00:00:00','2','John Edwards','123 12th Street','Las Vegas','NV',99999,'USA','� 5,00','� 0,00','Kreditkarte','22.1.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (33,6,8,'30.1.2006 00:00:00','31.1.2006 00:00:00','3','Elizabeth Andersen','123 8th Street','Portland','OR',99999,'USA','� 50,00','� 0,00','Kreditkarte','30.1.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (34,9,4,'6.2.2006 00:00:00','7.2.2006 00:00:00','3','Christina Lee','123 4th Street','New York','NY',99999,'USA','� 4,00','� 0,00','Scheck','6.2.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (35,3,29,'10.2.2006 00:00:00','12.2.2006 00:00:00','2','Soo Jung Lee','789 29th Street','Denver','CO',99999,'USA','� 7,00','� 0,00','Scheck','10.2.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (36,4,3,'23.2.2006 00:00:00','25.2.2006 00:00:00','2','Thomas Axen','123 3rd Street','Los Angeles','CA',99999,'USA','� 7,00','� 0,00','Bar','23.2.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (37,8,6,'6.3.2006 00:00:00','9.3.2006 00:00:00','2','Francisco P�rez-Olaeta','123 6th Street','Milwaukee','WI',99999,'USA','� 12,00','� 0,00','Kreditkarte','6.3.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (38,9,28,'10.3.2006 00:00:00','11.3.2006 00:00:00','3','Amritansh Raghav','789 28th Street','Memphis','TN',99999,'USA','� 10,00','� 0,00','Scheck','10.3.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (39,3,8,'22.3.2006 00:00:00','24.3.2006 00:00:00','3','Elizabeth Andersen','123 8th Street','Portland','OR',99999,'USA','� 5,00','� 0,00','Scheck','22.3.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (40,4,10,'24.3.2006 00:00:00','24.3.2006 00:00:00','2','Roland Wacker','123 10th Street','Chicago','IL',99999,'USA','� 9,00','� 0,00','Kreditkarte','24.3.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (41,1,7,'24.3.2006 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (42,1,10,'24.3.2006 00:00:00','7.4.2006 00:00:00','1','Roland Wacker','123 10th Street','Chicago','IL',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,2);
INSERT INTO "Bestellungen" VALUES (43,1,11,'24.3.2006 00:00:00',NULL,'3','Peter Krschne','123 11th Street','Miami','FL',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (44,1,1,'24.3.2006 00:00:00',NULL,NULL,'Anna Bedecs','123 1st Street','Seattle','WA',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (45,1,28,'7.4.2006 00:00:00','7.4.2006 00:00:00','3','Amritansh Raghav','789 28th Street','Memphis','TN',99999,'USA','� 40,00','� 0,00','Kreditkarte','7.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (46,7,9,'5.4.2006 00:00:00','5.4.2006 00:00:00','1','Sven Mortensen','123 9th Street','Salt Lake City','UT',99999,'USA','� 100,00','� 0,00','Scheck','5.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (47,6,6,'8.4.2006 00:00:00','8.4.2006 00:00:00','2','Francisco P�rez-Olaeta','123 6th Street','Milwaukee','WI',99999,'USA','� 300,00','� 0,00','Kreditkarte','8.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (48,4,8,'5.4.2006 00:00:00','5.4.2006 00:00:00','2','Elizabeth Andersen','123 8th Street','Portland','OR',99999,'USA','� 50,00','� 0,00','Scheck','5.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (50,9,25,'5.4.2006 00:00:00','5.4.2006 00:00:00','1','John Rodman','789 25th Street','Chicago','IL',99999,'USA','� 5,00','� 0,00','Bar','5.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (51,9,26,'5.4.2006 00:00:00','5.4.2006 00:00:00','3','Run Liu','789 26th Street','Miami','FL',99999,'USA','� 60,00','� 0,00','Kreditkarte','5.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (55,1,29,'5.4.2006 00:00:00','5.4.2006 00:00:00','2','Soo Jung Lee','789 29th Street','Denver','CO',99999,'USA','� 200,00','� 0,00','Scheck','5.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (56,2,6,'3.4.2006 00:00:00','3.4.2006 00:00:00','3','Francisco P�rez-Olaeta','123 6th Street','Milwaukee','WI',99999,'USA','� 0,00','� 0,00','Scheck','3.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (57,9,27,'22.4.2006 00:00:00','22.4.2006 00:00:00','2','Karen Toh','789 27th Street','Las Vegas','NV',99999,'USA','� 200,00','� 0,00','Scheck','22.4.2006 00:00:00',NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (58,3,4,'22.4.2006 00:00:00','22.4.2006 00:00:00','1','Christina Lee','123 4th Street','New York','NY',99999,'USA','� 5,00','� 0,00','Kreditkarte','22.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (59,4,12,'22.4.2006 00:00:00','22.4.2006 00:00:00','2','John Edwards','123 12th Street','Las Vegas','NV',99999,'USA','� 5,00','� 0,00','Kreditkarte','22.4.2006 00:00:00',NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (60,6,8,'30.4.2006 00:00:00','30.4.2006 00:00:00','3','Elizabeth Andersen','123 8th Street','Portland','OR',99999,'USA','� 50,00','� 0,00','Kreditkarte','30.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (61,9,4,'7.4.2006 00:00:00','7.4.2006 00:00:00','3','Christina Lee','123 4th Street','New York','NY',99999,'USA','� 4,00','� 0,00','Scheck','7.4.2006 00:00:00',NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (62,3,29,'12.4.2006 00:00:00','12.4.2006 00:00:00','2','Soo Jung Lee','789 29th Street','Denver','CO',99999,'USA','� 7,00','� 0,00','Scheck','12.4.2006 00:00:00',NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (63,4,3,'25.4.2006 00:00:00','25.4.2006 00:00:00','2','Thomas Axen','123 3rd Street','Los Angeles','CA',99999,'USA','� 7,00','� 0,00','Bar','25.4.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (64,8,6,'9.5.2006 00:00:00','9.5.2006 00:00:00','2','Francisco P�rez-Olaeta','123 6th Street','Milwaukee','WI',99999,'USA','� 12,00','� 0,00','Kreditkarte','9.5.2006 00:00:00',NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (65,9,28,'11.5.2006 00:00:00','11.5.2006 00:00:00','3','Amritansh Raghav','789 28th Street','Memphis','TN',99999,'USA','� 10,00','� 0,00','Scheck','11.5.2006 00:00:00',NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (66,3,8,'24.5.2006 00:00:00','24.5.2006 00:00:00','3','Elizabeth Andersen','123 8th Street','Portland','OR',99999,'USA','� 5,00','� 0,00','Scheck','24.5.2006 00:00:00',NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (67,4,10,'24.5.2006 00:00:00','24.5.2006 00:00:00','2','Roland Wacker','123 10th Street','Chicago','IL',99999,'USA','� 9,00','� 0,00','Kreditkarte','24.5.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (68,1,7,'24.5.2006 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (69,1,10,'24.5.2006 00:00:00',NULL,'1','Roland Wacker','123 10th Street','Chicago','IL',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (70,1,11,'24.5.2006 00:00:00',NULL,'3','Peter Krschne','123 11th Street','Miami','FL',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (71,1,1,'24.5.2006 00:00:00',NULL,'3','Anna Bedecs','123 1st Street','Seattle','WA',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (72,1,28,'7.6.2006 00:00:00','7.6.2006 00:00:00','3','Amritansh Raghav','789 28th Street','Memphis','TN',99999,'USA','� 40,00','� 0,00','Kreditkarte','7.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (73,7,9,'5.6.2006 00:00:00','5.6.2006 00:00:00','1','Sven Mortensen','123 9th Street','Salt Lake City','UT',99999,'USA','� 100,00','� 0,00','Scheck','5.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (74,6,6,'8.6.2006 00:00:00','8.6.2006 00:00:00','2','Francisco P�rez-Olaeta','123 6th Street','Milwaukee','WI',99999,'USA','� 300,00','� 0,00','Kreditkarte','8.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (75,4,8,'5.6.2006 00:00:00','5.6.2006 00:00:00','2','Elizabeth Andersen','123 8th Street','Portland','OR',99999,'USA','� 50,00','� 0,00','Scheck','5.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (76,9,25,'5.6.2006 00:00:00','5.6.2006 00:00:00','1','John Rodman','789 25th Street','Chicago','IL',99999,'USA','� 5,00','� 0,00','Bar','5.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (77,9,26,'5.6.2006 00:00:00','5.6.2006 00:00:00','3','Run Liu','789 26th Street','Miami','FL',99999,'USA','� 60,00','� 0,00','Kreditkarte','5.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (78,1,29,'5.6.2006 00:00:00','5.6.2006 00:00:00','2','Soo Jung Lee','789 29th Street','Denver','CO',99999,'USA','� 200,00','� 0,00','Scheck','5.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (79,2,6,'23.6.2006 00:00:00','23.6.2006 00:00:00','3','Francisco P�rez-Olaeta','123 6th Street','Milwaukee','WI',99999,'USA','� 0,00','� 0,00','Scheck','23.6.2006 00:00:00',NULL,'0,00',NULL,3);
INSERT INTO "Bestellungen" VALUES (80,2,4,'25.4.2006 17:03:55',NULL,NULL,'Christina Lee','123 4th Street','New York','NY',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Bestellungen" VALUES (81,2,3,'25.4.2006 17:26:53',NULL,NULL,'Thomas Axen','123 3rd Street','Los Angeles','CA',99999,'USA','� 0,00','� 0,00',NULL,NULL,NULL,'0,00',NULL,0);
INSERT INTO "Kunden" VALUES (1,'Firma A','Bedecs','Anna',NULL,'Inhaberin','(123)555-0100',NULL,NULL,'(123)555-0101','123 1st Street','Seattle','WA',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (2,'Firma B','Gratacos Solsona','Antonio',NULL,'Inhaber','(123)555-0100',NULL,NULL,'(123)555-0101','123 2nd Street','Boston','MA',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (3,'Firma C','Axen','Thomas',NULL,'Einkaufsmitarbeiter','(123)555-0100',NULL,NULL,'(123)555-0101','123 3rd Street','Los Angeles','CA',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (4,'Firma D','Lee','Christina',NULL,'Einkaufsmanagerin','(123)555-0100',NULL,NULL,'(123)555-0101','123 4th Street','New York','NY',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (5,'Firma E','O’Donnell','Martin',NULL,'Inhaber','(123)555-0100',NULL,NULL,'(123)555-0101','123 5th Street','Minneapolis','MN',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (6,'Firma F','Pérez-Olaeta','Francisco',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','123 6th Street','Milwaukee','WI',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (7,'Firma G','Xie','Ming-Yang',NULL,'Inhaber','(123)555-0100',NULL,NULL,'(123)555-0101','123 7th Street','Boise','ID',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (8,'Firma H','Andersen','Elizabeth',NULL,'Einkaufsmitarbeiter','(123)555-0100',NULL,NULL,'(123)555-0101','123 8th Street','Portland','OR',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (9,'Firma I','Mortensen','Sven',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','123 9th Street','Salt Lake City','UT',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (10,'Firma J','Wacker','Roland',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','123 10th Street','Chicago','IL',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (11,'Firma K','Krschne','Peter',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','123 11th Street','Miami','FL',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (12,'Firma L','Edwards','John',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','123 12th Street','Las Vegas','NV',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (13,'Firma M','Ludick','Andre',NULL,'Einkaufsmitarbeiter','(123)555-0100',NULL,NULL,'(123)555-0101','456 13th Street','Memphis','TN',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (14,'Firma N','Grilo','Carlos',NULL,'Vertreter für den Einkauf','(123)555-0100',NULL,NULL,'(123)555-0101','456 14th Street','Denver','CO',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (15,'Firma O','Kupkova','Helena',NULL,'Einkaufsmanagerin','(123)555-0100',NULL,NULL,'(123)555-0101','456 15th Street','Honolulu','HI',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (16,'Firma P','Goldschmidt','Daniel',NULL,'Einkaufsmitarbeiter','(123)555-0100',NULL,NULL,'(123)555-0101','456 16th Street','San Francisco','CA',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (17,'Firma Q','Bagel','Jean Philippe',NULL,'Inhaber','(123)555-0100',NULL,NULL,'(123)555-0101','456 17th Street','Seattle','WA',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (18,'Firma R','Autier Miconi','Catherine',NULL,'Einkaufsmitarbeiter','(123)555-0100',NULL,NULL,'(123)555-0101','456 18th Street','Boston','MA',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (19,'Firma S','Eggerer','Alexander',NULL,'Assistent der Buchhaltung','(123)555-0100',NULL,NULL,'(123)555-0101','789 19th Street','Los Angeles','CA',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (20,'Firma T','Li','George',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','789 20th Street','New York','NY',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (21,'Firma U','Tham','Bernard',NULL,'Buchhaltungsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','789 21th Street','Minneapolis','MN',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (22,'Firma V','Ramos','Luciana',NULL,'Einkaufsassistentin','(123)555-0100',NULL,NULL,'(123)555-0101','789 22th Street','Milwaukee','WI',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (23,'Firma W','Entin','Michael',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','789 23th Street','Portland','OR',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (24,'Firma X','Hasselberg','Jonas',NULL,'Inhaber','(123)555-0100',NULL,NULL,'(123)555-0101','789 24th Street','Salt Lake City','UT',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (25,'Firma Y','Rodman','John',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','789 25th Street','Chicago','IL',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (26,'Firma Z','Liu','Run',NULL,'Assistent der Buchhaltung','(123)555-0100',NULL,NULL,'(123)555-0101','789 26th Street','Miami','FL',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (27,'Firma AA','Toh','Karen',NULL,'Einkaufsmanagerin','(123)555-0100',NULL,NULL,'(123)555-0101','789 27th Street','Las Vegas','NV',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (28,'Firma BB','Raghav','Amritansh',NULL,'Einkaufsmanager','(123)555-0100',NULL,NULL,'(123)555-0101','789 28th Street','Memphis','TN',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Kunden" VALUES (29,'Firma CC','Lee','Soo Jung',NULL,'Manager Einkauf','(123)555-0100',NULL,NULL,'(123)555-0101','789 29th Street','Denver','CO',99999,'USA',NULL,NULL,NULL);
INSERT INTO "Rechnungen" VALUES (5,31,'22.3.2006 16:08:59',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (6,32,'22.3.2006 16:10:27',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (7,40,'24.3.2006 10:41:41',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (8,39,'24.3.2006 10:55:46',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (9,38,'24.3.2006 10:56:57',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (10,37,'24.3.2006 10:57:38',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (11,36,'24.3.2006 10:58:40',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (12,35,'24.3.2006 10:59:41',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (13,34,'24.3.2006 11:00:55',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (14,33,'24.3.2006 11:02:02',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (15,30,'24.3.2006 11:03:00',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (16,56,'3.4.2006 13:50:15',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (17,55,'4.4.2006 11:05:04',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (18,51,'4.4.2006 11:06:13',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (19,50,'4.4.2006 11:06:56',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (20,48,'4.4.2006 11:07:37',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (21,47,'4.4.2006 11:08:14',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (22,46,'4.4.2006 11:08:49',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (23,45,'4.4.2006 11:09:24',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (24,79,'4.4.2006 11:35:54',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (25,78,'4.4.2006 11:36:21',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (26,77,'4.4.2006 11:36:47',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (27,76,'4.4.2006 11:37:09',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (28,75,'4.4.2006 11:37:49',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (29,74,'4.4.2006 11:38:11',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (30,73,'4.4.2006 11:38:32',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (31,72,'4.4.2006 11:38:53',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (32,71,'4.4.2006 11:39:29',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (33,70,'4.4.2006 11:39:53',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (34,69,'4.4.2006 11:40:16',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (35,67,'4.4.2006 11:40:38',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (36,42,'4.4.2006 11:41:14',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (37,60,'4.4.2006 11:41:45',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (38,63,'4.4.2006 11:42:26',NULL,'€ 0,00','€ 0,00','€ 0,00');
INSERT INTO "Rechnungen" VALUES (39,58,'4.4.2006 11:43:08',NULL,'€ 0,00','€ 0,00','€ 0,00');
COMMIT;
