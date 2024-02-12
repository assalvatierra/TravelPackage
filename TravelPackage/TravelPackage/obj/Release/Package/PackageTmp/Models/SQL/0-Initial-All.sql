--Readme
--Adding new products with cshtml views
-- add in the tpProducts, add description and images
-- add cshtml under views/(Destination)Packages, add content / ProductDefaultView - set desciption intpProductDescs
-- add add images in sql
-- add in tpProdCats to either main view or sub view


Insert into tpCategories([Description],[SysCode]) values
('Featured','FEATURED'),('Addon','ADDON'),('Activities','ACTIVITY'),('Accommodation','ACCOM'),('Transportation','TRANSPO');

Insert into tpUoms([Measure],[Remarks]) values
('Unit','Per unit ( Room, Car, Boat)'),('Pax','per person rate');

Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('DAVAO','Davao City','DavaoPage','/Images/Abreeza-Davao-City.jpg',1),
('BOHOL','One of the most popular travel and vacation destination in Philippines. Great Tour packages awaits!','BoholPage','/Images/Bohol101.jpg',2),
('CEBU','Visit Cebu City for vacation in the middle of the city in Philippines.','CebuPage','/Images/CebuCity.jpg',3),
('EL NIDO','Explore various islands and lagoons in El Nido, Palawan, Philippines.','ElNidoPage','/Images/El_Nido_Palawan.jpg',4),
('CORON','Visit Coron, Palawan and explore its facinating wonders. ','CoronPage','/Images/coron_palawan.jpg',5),
('PUERTO PRINCESA','A must see and explore the wonders of the underground river and Puerto Princesa.','PuertoPrincesaPage','/Images/Puerto.JPG',6)
;
--('CAMIGUIN','Northern Mindanao','CamiguinPage','/Images/SamalIslandHopping.png',3);


Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 
-- Davao 
-- 1-2
('City Tour','City Tour','ProductDefaultView','/Images/abreeza-mall.gif',1,1),
('Country Side Tour','Country Side Tour','ProductDefaultView','/Images/CountrySide.gif',2,1),

-- Bohol
-- 3-7 
('Country Side Tour','7 - 9 hrs tour across the island of Bohol. Passing thru is cultural destinations and fascinating views of the main island','BoholPackages/CountrySide','/Images/Destinations/Bohol/CountrySideTour.png',1,2),
('Panglao Tour','8hrs island tour to the treasured beaches of Panglao.','BoholPackages/Panglao','/Images/Destinations/Bohol/PanglaoTour.png',2,2),
('3D2N Vacation','3Days 2 Nights Vacation Package. staying at the heart of the most visited beaches of Panglao.','BoholPackages/3d2n_Panglao_Alona42','/Images/Destinations/Bohol/3d2nBoholVacation.png',4,2),
('Domestic Airticket Manila - Bohol','Economy Airticket Manila - Tagbilaran','BoholPackages/AirTicket','/Images/Destinations/Bohol/Airlines101.png',3,2),
('Bohol Bee Farm - Panglao, Bohol','Resort & Restaurant','ProductDefaultView','/Images/Destinations/Bohol/accom_boholbeefarm_04.jpg',8,2),
-- 8-12
('Alona Tropical Beach Resort','Resort and Accommodation','ProductDefaultView','/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-10.jpg',5,2),
('South Palms Resort Panglao','Resort and Accommodation','ProductDefaultView','/Images/Destinations/Bohol/accom_southpalmresort_08.jpg',6,2),
('Dumaluan Beach Resort - Panglao','Resort and Accommodation','ProductDefaultView','/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-09.jpg',7,2),
('Bohol Beach Club - Panglao, Bohol','Resort and Accommodation','ProductDefaultView','/Images/Destinations/Bohol/accom_bohol_beachclub_02.jpg',4,2),
('Island Hopping','Dolphin and whale watching, Island Hopping (Balicasag and Virgin Island)','BoholPackages/IslandHopping','/Images/Destinations/Bohol/Attraction_BoholIslandHopping.png',3,2),
-- 13-14
('Countryside and Panglao','3 Days 2 Nights Vacation Package','BoholPackages/3d2nCountrysidePanglao','/Images/Destinations/Bohol/3d2nCountrySidePanglao2.jpg',9,2),
('3D2N Countryside','3 Days 2 Nights Vacation Package','BoholPackages/3d2nCountryside','/Images/Destinations/Bohol/3d2nCountrySide.jpg',10,2)

--Camiguin
--('Camiguin Tour Package','Tour Package','CamiguinPackages/CamiguinTour','/Images/Destinations/Camiguin/CamiguinTourPackageDefault.jpg',1,3)
;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values
-- Bohol -CountrySide tour --
(3,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','Blood Compact Shrine','Blood Compact Shrine',1),
(3,'/Images/Destinations/Bohol/LobocRiverCruising.jpg','Loboc River Cruising','Loboc River Cruising',2),
(3,'/Images/Destinations/Bohol/BaclayonChurch.jpg','Baclayon Church','BaclayonChurch.jpg',3),
(3,'/Images/Destinations/Bohol/ChocolateHills.jpg','Chocolate Hills','ChocolateHills.jpg',4),
(3,'/Images/Destinations/Bohol/ManMadeForest.jpg','Man Made Forest','ManMadeForest.jpg',5),
(3,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','Blood Compact Shrine','Blood Compact Shrine',6),
(3,'/Images/Destinations/Bohol/Tarsier.jpg','Tarsier','Tarsier.jpg',7),
-- Bohol -Panglao tour --
(4,'/Images/Destinations/Bohol/attraction_Panglao_dauis_church.jpg','Dauis Church','Dauis Church',1),
(4,'/Images/Destinations/Bohol/attraction_Panglao_Hinagdanan_Cave.jpg','Hinagdanan Cave','Hinagdanan Cave',2),
(4,'/Images/Destinations/Bohol/attraction_Panglao_church.jpg','Panglao Church','Panglao Church',3),
(4,'/Images/Destinations/Bohol/attraction_Panglao_beefarm.jpg','Bee Farm','Bee Farm',4),
(4,'/Images/Destinations/Bohol/attraction_Panglao_beach1.jpg','Beach Resort','Beach Resort',5),
(4,'/Images/Destinations/Bohol/attraction_Panglao_beach2.jpg','Beach Resort','Beach Resort',6),
(4,'/Images/Destinations/Bohol/attraction_Panglao_beach3.jpg','Beach Resort','Beach Resort',7),
(4,'/Images/Destinations/Bohol/attraction_Panglao_beach4.jpg','Beach Resort','Beach Resort',8),
-- Bohol -3d 2n vacation --
(5,'/Images/Destinations/Bohol/holiday_bohol_3d2n_01.jpg','Alona42 Beach Resort','alona42',1),
(5,'/Images/Destinations/Bohol/holiday_bohol_3d2n_02.jpg','Hinagdanan Cave','Hinagdanan Cave',2),
(5,'/Images/Destinations/Bohol/holiday_bohol_3d2n_03.jpg','Panglao Church','Panglao Church',3),
(5,'/Images/Destinations/Bohol/holiday_bohol_3d2n_04.jpg','Bee Farm','Bee Farm',4),
(5,'/Images/Destinations/Bohol/holiday_bohol_3d2n_05.jpg','Beach Resort','Beach Resort',5),
-- Bohol -Bee Farm resort and Restaurant--
(7,'/Images/Destinations/Bohol/accom_boholbeefarm_01.jpg','Bee Farm Restaurant','Bee Farm Restaurant',1),
(7,'/Images/Destinations/Bohol/accom_boholbeefarm_02.jpg','Ocean view','Ocean view',2),
(7,'/Images/Destinations/Bohol/accom_boholbeefarm_03.jpg','at night','Bee farm at night',3),
(7,'/Images/Destinations/Bohol/accom_boholbeefarm_04.jpg','Pool View','Bee farm Pool View',4),
(7,'/Images/Destinations/Bohol/accom_boholbeefarm_05.jpg','Pool','Bee Farm Pool',5),
(7,'/Images/Destinations/Bohol/accom_boholbeefarm_06.jpg','Garden','Bee Farm Garden',6),
-- Alona Tropical Beach Resort--
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-01.jpg','','Alona Tropical Beach Resort',1),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-02.jpg','','Alona Tropical Beach Resort',2),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-03.jpg','','Alona Tropical Beach Resort',3),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-04.jpg','','Alona Tropical Beach Resort',4),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-05.jpg','','Alona Tropical Beach Resort',5),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-06.jpg','','Alona Tropical Beach Resort',6),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-07.jpg','','Alona Tropical Beach Resort',7),
--(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-08.jpg','','Alona Tropical Beach Resort',8),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-09.jpg','','Alona Tropical Beach Resort',9),
--(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-10.jpg','','Alona Tropical Beach Resort',10),
--(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-11.jpg','','Alona Tropical Beach Resort',11),
(8,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-12.jpg','','Alona Tropical Beach Resort',12),
-- South Palms Beach Resort--
(9,'/Images/Destinations/Bohol/accom_southpalmresort_01.jpg','','South Palms Beach Resort',1),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_02.jpg','','South Palms Beach Resort',2),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_03.jpg','','South Palms Beach Resort',3),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_04.jpg','','South Palms Beach Resort',4),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_05.jpg','','South Palms Beach Resort',5),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_06.jpg','','South Palms Beach Resort',6),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_07.jpg','','South Palms Beach Resort',7),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_08.jpg','','South Palms Beach Resort',8),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_09.jpg','','South Palms Beach Resort',9),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_10.jpg','','South Palms Beach Resort',10),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_11.jpg','','South Palms Beach Resort',11),
(9,'/Images/Destinations/Bohol/accom_southpalmresort_12.jpg','','South Palms Beach Resort',12),
-- Dumaluan Beach Resort--
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-01.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-02.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-03.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-04.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-05.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-06.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-07.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-08.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-09.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-10.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-11.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-12.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-13.jpg','','Dumaluan beach resort',1),
(10,'/Images/Destinations/Bohol/accom_Dumaluan_beach-resort-14.jpg','','Dumaluan beach resort',1),
-- Bohol Beach Club--
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_01.jpg','','Bohol Beach Club',1),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_02.jpg','','Bohol Beach Club',2),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_03.jpg','','Bohol Beach Club',3),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_04.jpg','','Bohol Beach Club',4),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_05.jpg','','Bohol Beach Club',5),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_06.jpg','','Bohol Beach Club',6),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_07.jpg','','Bohol Beach Club',7),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_08.jpg','','Bohol Beach Club',8),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_09.jpg','','Bohol Beach Club',9),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_10.jpg','','Bohol Beach Club',10),
(11,'/Images/Destinations/Bohol/accom_bohol_beachclub_11.jpg','','Bohol Beach Club',11),
-- Bohol - Island Hopping --
(12,'/Images/Destinations/Bohol/attraction_islandHopping_virgin_island_01.JPG','','Island Hopping Virgin Island Bohol ',1),
(12,'/Images/Destinations/Bohol/attraction_islandHopping.jpg','','Bohol Island Hopping',2),
(12,'/Images/Destinations/Bohol/attraction_islandHopping_balicasag_island_02.jpg','','Island Hopping Balicasag Island Bohol ',3),
(12,'/Images/Destinations/Bohol/attraction_islandHopping_balicasag_island_04.jpg','','Island Hopping Balicasag Island Bohol ',4),
(12,'/Images/Destinations/Bohol/attraction_islandHopping_snorkeling_01.jpg','','Island Hopping Snorkeling Balicasag Island Bohol ',5),
(12,'/Images/Destinations/Bohol/attraction_islandHopping_snorkeling_02.jpg','','Island Hopping Snorkeling Balicasag Island Bohol ',6),
(12,'/Images/Destinations/Bohol/attraction_islandHopping_snorkeling_03.jpg','','Island Hopping Snorkeling Balicasag Island Bohol ',7),


-- Bohol - Countryside and Panglao
(13,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-01.jpg','Alona Tropical Resort','Bohol Alona Resort',1),
(13,'/Images/Destinations/Bohol/accom_bohol_beachclub_02.jpg','Bohol Beach Club','Bohol Beach Club',2),
(13,'/Images/Destinations/Bohol/attraction_Panglao_church.jpg','Panglao Church','Panglao Church',3),
(13,'/Images/Destinations/Bohol/attraction_Panglao_beefarm.jpg','Panglao bee Farm','Panglao Bee Farm',4),
(13,'/Images/Destinations/Bohol/attraction_Panglao_beach3.jpg','Panglao Beach','Pangalao Beach',5),
(13,'/Images/Destinations/Bohol/ChocolateHills.jpg','Chocolate hills','chocolate hills',6),
(13,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','blood compact shrine','blood compact shrine',7),
(13,'/Images/Destinations/Bohol/BoholLobocRiver.JPG','Bohol Loboc River','Bohol Loboc River',8),

-- Bohol - 3d2n Countryside 
(14,'/Images/Destinations/Bohol/accom_alona-tropical-beach-resort-01.jpg','Alona Tropical Resort','Bohol Alona Resort',1),
(14,'/Images/Destinations/Bohol/accom_bohol_beachclub_02.jpg','Bohol Beach Club','Bohol Beach Club',2),
(14,'/Images/Destinations/Bohol/attraction_Panglao_church.jpg','Panglao Church','Panglao Church',3),
(14,'/Images/Destinations/Bohol/attraction_Panglao_beefarm.jpg','Panglao bee Farm','Panglao Bee Farm',4),
(14,'/Images/Destinations/Bohol/attraction_Panglao_beach3.jpg','Panglao Beach','Pangalao Beach',5),
(14,'/Images/Destinations/Bohol/ChocolateHills.jpg','Chocolate hills','chocolate hills',6),
(14,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','blood compact shrine','blood compact shrine',7),
(14,'/Images/Destinations/Bohol/BoholLobocRiver.JPG','Bohol Loboc River','Bohol Loboc River',8)
;


Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,1),(1,2), -- Davao
(1,3),(1,4),(1,5),(1,12),(1,13),(1,14), -- Bohol - Featured - Tour Packages 
(2,7),(2,8),(2,9),(2,10),(2,11) -- bohol add on products
; 

Insert into tpProdRates([tpProductsId],[tpUomId],[GroupOf],[Rate],[Remarks],[Sort]) values
(3,2,1,4250,'',1),(3,2,2,2600,'',1),(3,2,3,2100,'',1),(3,2,4,1950,'',1),(3,2,5,1800,'',1),(3,2,6,1700,'',1),(3,2,7,1600,'',1),(3,2,8,1550,'',1),(3,2,9,1450,'',1),(3,2,10,1350,'',1);

Insert into tpProductDescs([tpProductsId],[tpDescH1],[tpDescH2], [tpDesc],[Sort]) values
(7,'Garden Rooms - Php3,000','(12 units, 25sqm, 3pax)','Inspired by fruits and vegetables ingredients with farm.',1),
(7,'Deluxe Rooms - Php4,000','(8 units, 30sqm, 3pax)','These beehive rooms are our garden view rooms. Have veranda and lounge.',2),
(7,'Family Rooms - Php5,000','(6 units)','2 queen size beds, 2 toilet and bath',3),
(7,'Ocean View - Php6,000','(8 units)','Spacious and veranda and lounge with excellent view of the beach. 1 king size beds and 1 single bed',4),
(7,'','','-------------------------------------',5),
(7,'Extra Person - Php800/night','','',6),
(7,'Amenities','','- Farm Tour (Organic farming, Craft & Livelihood, Raffia Weaving, Bee Colony)',7),
(7,'','','- Dive Center',8),
(7,'','','- Massage SPA and Wellness',9),
(7,'','','- Function Halls (Wedding, Birthday, Special Events)',10),
-- Alona rooms --
(8,'Double Deluxe','Php 3,360 per room/night','Tax inclusive',1),
(8,'','Php 4,015 per room/night','With BreakFast, Tax inclusive',2),
(8,'','Php 4,730 per room/night','Half Board, Tax inclusive',3),
(8,'','Php 5,445 per room/night','Full Board, Tax inclusive',4),
(8,'Suite Beach Front','Php 3,360 per room/night','Tax inclusive',5),
(8,'','Php 6,815 per room/night','With BreakFast, Tax inclusive',6),
(8,'','Php 7,530 per room/night','Half Board, Tax inclusive',7),
(8,'','Php 8,245 per room/night','Full Board, Tax inclusive',8),
(8,'Suite Pool View','Php 6,750 per room/night','Tax inclusive',9),
(8,'','Php 7,450 per room/night','With BreakFast, Tax inclusive',10),
(8,'','Php 8,130 per room/night','Half Board, Tax inclusive',11),
(8,'','Php 8,840 per room/night','Full Board, Tax inclusive',12),

-- South Palms  --
(9,'Deluxe - Double or Twin','Php 9,125 per night Pool View','With Breakfast for 2',1),
(9,'','Php 11,050 per night Beach Front','With Breakfast for 2',2),
(9,'Premium - Double or Twin','Php 18,650 per night Beach Front','With Breakfast for 2',3),
(9,'Panglao Villa','Php 39,050 per night','With Breakfast for 2',3),

-- Dumaluan  --
(10,'Room Rates','No Available as of this time','Contact our travel consultants for reservation',1),

-- Bohol Beach Club --
(11,'Room Rates','No Available as of this time.','Contact our travel consultants for reservation',1)


-- Camiguin Tour Package - removed --
--(13,'Camiguin Tour Package','Highlights','',1),
--(13,'','','- Sunken Cemetery',2),
--(13,'','','- White island,',3),
--(13,'','','- Katibawasan falls',4),
--(13,'','','- Walkway to Old Volcano',5),
--(13,'','','- Gui-ob Church',6),
--(13,'','','- Sto. Niño Cold Spring',7),
--(13,'','Inclusions:','',8),
--(13,'','','- Transportation from hotel/airport to Camiguin and back to airport or hotel Applicable Entrances',9),
--(13,'','','',10),
--(13,'','','Exclusions (available upon request)',4),
--(13,'','','Airfare, Tour guide, Meals and Accommodation',5),
--(13,'','','- Gui-ob Church',6),
--(13,'','','- Sto. Niño Cold Spring',7)
;


Insert into tpKeywords([Keyword],[tpProductsId]) values
('Bohol','3'),('Tour','3'),('Travel','3'),('Vacation','3'),('Package','3'),
('Bohol','4'),('Tour','4'),('Travel','4'),('Vacation','4'),('Package','4'),
('Bohol','5'),('Tour','5'),('Travel','5'),('Vacation','5'),('Package','5'),
('Bohol','6'),('Tour','6'),('Travel','6'),('Vacation','6'),('Package','6'),
('Bohol','7'),('Tour','7'),('Travel','7'),('Vacation','7'),('Package','7'),
('Bohol','8'),('Tour','8'),('Travel','8'),('Vacation','8'),('Package','8'),
('Bohol','9'),('Tour','9'),('Travel','9'),('Vacation','9'),('Package','9'),
('Bohol','10'),('Tour','10'),('Travel','10'),('Vacation','10'),('Package','10'),
('Bohol','11'),('Tour','11'),('Travel','11'),('Vacation','11'),('Package','11'),
('Bohol','12'),('Tour','12'),('Travel','12'),('Vacation','12'),('Package','12'),
('Bohol','13'),('Tour','13'),('Travel','13'),('Vacation','13'),('Package','13'),
('Bohol','14'),('Tour','14'),('Travel','14'),('Vacation','14'),('Package','14')
--('Camiguin','13'),('Tour','13'),('Travel','13'),('Vacation','13'),('Package','13')
;


Insert into tpBacklinks([LinkType],[LinkUrl],[Description],[LinkExpiry],[Status]) values
('PRODUCT','http://realbreezedavaotours.com/','Real Breeze Davao - Affordable Tour Packages in Davao','2020-01-01','ACT'),
('PRODUCT','http://davaotourpackages.com/','Popular Tour Packages in Davao','2020-01-01','ACT'),
('PRODUCT','http://www.ajdavaocarrental.com/','AJ Davao Car Rental - Rent a car in Davao','2020-01-01','ACT'),
('PRODUCT','http://realwheelsdavao.com/','Real Wheels Davao  Rent a car in Davao','2020-01-01','ACT');




Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 

--Coron Palawan
-- 15-19
('Coron Town Tour','Explore the Coron Country Side in a Tour Package','CoronPackages/CoronTownTour','/Images/Destinations/Palawan/Coron/Coron-Town-Tour.jpg',1,5),
('Coron Island Tour','Visit popular destinations and islands in Coron Island Tour Package','CoronPackages/CoronIslandTour','/Images/Destinations/Palawan/Coron/coron-island-tour.jpg',2,5),
('Coron Escapade Tour','Enjoy an escapade in Coro with our package','CoronPackages/CoronEscapadeTour','/Images/Destinations/Palawan/Coron/Coron-Escapade-Tour.jpg',3,5),
('Reefs and Wrecks Tour','Offers a thrilling snorkeling above historic wrecks and best coral reefs','CoronPackages/CoronReefsWrecks','/Images/Destinations/Palawan/Coron/Reefs-Wrecks-Tour.jpg',4,5),
('Caluit Safari Tour','Enjoy Safari Exprience as you see giraffes and zebras in Caluit','CoronPackages/CaluitSafariTour','/Images/Destinations/Palawan/Coron/Caluit-Safari-Tour.jpg',5,5),

--El Nido Palawan
-- 20-23
('El Nido tour A','Small Lagoon, Big Lagoon, Secret Lagoon, Zimizu Island, 7 Commando Beach','ElNidoPackages/ElNidoTourA','/Images/Destinations/Palawan/Elnido/TourA/el-nido-tour-a.jpg',1,4),
('El Nido tour B','Snake Island, Cathedral Cave, Pinagbuyutan Island, Entalula Island, Condungnon Cave','ElNidoPackages/ElNidoTourB','/Images/Destinations/Palawan/Elnido/TourB/el-nido-tour-b.jpg',2,4),
('El Nido tour C','Star Island, Hidden Beach, Helicopter Island, Secret Island, Mantiloc Beach','ElNidoPackages/ElNidoTourC','/Images/Destinations/Palawan/Elnido/TourC/el-nido-tour-c.jpg',3,4),
('El Nido tour D','Pasandigan Beach, Paradise Beach, Natnat Beach, Cadlao Beach, Bukal Beach','ElNidoPackages/ElNidoTourD','/Images/Destinations/Palawan/Elnido/TourD/el-nido-tour-d.jpg',4,4),

--El Nido Palawan
-- 24-31
('Underground River','Most popular tourist destination in Palawan','PuertoPrincesaPackages/UndergroundRiver','/Images/Destinations/Palawan/PuertoPrincesa/underground-river-tour.jpg',1,6),
('Honda Bay','Relax and enjoy the beach in Honda Bay and its Islands','PuertoPrincesaPackages/HondaBay','/Images/Destinations/Palawan/PuertoPrincesa/honda-bay-tour.jpg',2,6),
('Tabon Cave','Visit the Tabon Cave in Puerto Princesa','PuertoPrincesaPackages/TabonCave','/Images/Destinations/Palawan/PuertoPrincesa/Tabon-Cave-tour.jpg',3,6),
('City Tour','Explore the city of Palawan','PuertoPrincesaPackages/CityTour','/Images/Destinations/Palawan/PuertoPrincesa/city-tour.jpg',4,6),
('Estrella Falls','Go and relax in the Estrella Falls in Puero Princesa','PuertoPrincesaPackages/EstrellaFalls','/Images/Destinations/Palawan/PuertoPrincesa/estrella-falls.jpg',5,6),
('Dolphin Watching','Watch the dolphins in Puerto Princesa ','PuertoPrincesaPackages/DolphinWatching','/Images/Destinations/Palawan/PuertoPrincesa/DolphinWatching.jpg',6,6),
('Firefly Watching','Watch the fireflies at night','PuertoPrincesaPackages/FireFlyWatching','/Images/Destinations/Palawan/PuertoPrincesa/Firefly-watching.jpg',7,6),
('Dos Palmas Day Tour','Relax in the Dos Palmas Resort','PuertoPrincesaPackages/DosPalmasDayTour','/Images/Destinations/Palawan/PuertoPrincesa/Dos-Palma-Tour.jpg',8,6)

--Camiguin
--('Camiguin Tour Package','Tour Package','CamiguinPackages/CamiguinTour','/Images/Destinations/Camiguin/CamiguinTourPackageDefault.jpg',1,3)
;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values

-- Coron, Palawan - Coron Town Tour 
(15,'/Images/Destinations/Palawan/Coron/coron-town-baywalk.jpg','Baywalk','Baywalk',1),
(15,'/Images/Destinations/Palawan/Coron/coron-town-cashew.jpg','Cashew','Cashew',2),
(15,'/Images/Destinations/Palawan/Coron/coron-town-maquinit-hot-spring.jpg','Maquinit Hot Spring','Maquinit Hot spring',3),
(15,'/Images/Destinations/Palawan/Coron/coron-town-mt-tapyas.jpg','Mt Tapyas','Mt Tapyas',4),
(15,'/Images/Destinations/Palawan/Coron/coron-town-public-market.jpg','Public Market','Public Market',5),
(15,'/Images/Destinations/Palawan/Coron/coron-town-san-agustin.jpg','San Agustin','San Agustin',6),
(15,'/Images/Destinations/Palawan/Coron/coron-town-souvenir-shop.jpg','Souvenir Shop','Souvenir Shop',7),
(15,'/Images/Destinations/Palawan/Coron/coron-town-town-plaza.jpg','Town Plaza','Town Plaza',8),

-- Coron, Palawan - Coron Island Tour 
(16,'/Images/Destinations/Palawan/Coron/coron-island-balinsasayaw-resort.jpg','Balinsasayaw Resort','Balinsasayaw Resort',1),
(16,'/Images/Destinations/Palawan/Coron/coron-island-beach-91.jpg','Beach 91','Beach 91',2),
(16,'/Images/Destinations/Palawan/Coron/coron-island-cyc.jpg','Cyc Beach','Cyc Beach',3),
(16,'/Images/Destinations/Palawan/Coron/coron-island-kayangan-lake.jpg','Kayangan Lake','Kayangan Lake',4),
(16,'/Images/Destinations/Palawan/Coron/coron-island-malwawey-coral.jpg','Malwawey Coral','Malwawey Coral',5),
(16,'/Images/Destinations/Palawan/Coron/coron-island-skeleton-wreck.jpg','Skeleton Wreck','Skeleton Wreck',6),
(16,'/Images/Destinations/Palawan/Coron/coron-island-twin-lagoon.jpg','Twin Lagoon','Twin Lagoon',7),

-- Coron, Palawan - Coron Escapade Tour 
(17,'/Images/Destinations/Palawan/Coron/coron-escapade-banana-island.jpg','Banana Island','Banana Island',1),
(17,'/Images/Destinations/Palawan/Coron/coron-escapade-bulog-dos.jpg','Bulog Dos','Bulog Dos',2),
(17,'/Images/Destinations/Palawan/Coron/coron-escapade-malcapuya.jpg','Malcapuya','Malcapuya',3),

-- Coron, Palawan - Coron Reefs and wrecks Tour 
(18,'/Images/Destinations/Palawan/Coron/Reefs-Wrecks-coral-garden.jpg','Coral Garden','Coral Garden',1),
(18,'/Images/Destinations/Palawan/Coron/Reefs-Wrecks-lusong-gunboat.jpg','Lusong GunBoat','Lusong GunBoat',2),
(18,'/Images/Destinations/Palawan/Coron/Reefs-Wrecks-Pass-Island.jpg','Pass Island','Pass Island',3),

-- Coron, Palawan - Caluit Tour
(19,'/Images/Destinations/Palawan/Coron/caluit-Black-Island-Cave.jpg','Black Island Cave','Black Island Cave',1),
(19,'/Images/Destinations/Palawan/Coron/caluit-black-island.jpg','Black Island','Black Island',2),
(19,'/Images/Destinations/Palawan/Coron/caluit-buluang-restaurant.jpg','Buluang Restaurant','Buluang Restaurant',3),
(19,'/Images/Destinations/Palawan/Coron/caluit-malbato-church.jpg','Malbato Church','Malbato Church',4),
(19,'/Images/Destinations/Palawan/Coron/caluit-safari.jpg','Caluit Safari','Caluit Safari',5),

-- El Nido, Palawan - Tour A
(20,'/Images/Destinations/Palawan/Elnido/TourA/el-nido-tour-a-big-lagoon.jpg','Big Lagoon','Big Lagoon',1),
(20,'/Images/Destinations/Palawan/Elnido/TourA/el-nido-tour-a-secret-lagoon.jpg','Secret Lagoon','Secret Lagoon',2),
(20,'/Images/Destinations/Palawan/Elnido/TourA/el-nido-tour-a-small-lagoon.jpg','Small Lagoon','Small Lagoon',3),
(20,'/Images/Destinations/Palawan/Elnido/TourA/el-nido-tour-a-shimizu.jpg','Zimizu','Zimizu',4),
(20,'/Images/Destinations/Palawan/Elnido/TourA/el-nido-tour-a-seven-commando.jpg','Seven Commando Beach','Seven Commando Beach',5),

-- El Nido, Palawan - Tour B
(21,'/Images/Destinations/Palawan/Elnido/TourB/el-nido-tour-b-codugnon-cave.jpg','Codugnon Cave','Codugnon Cave',1),
(21,'/Images/Destinations/Palawan/Elnido/TourB/el-nido-tour-b-entalula-island.jpg','Entalula Island','Entalula Island',2),
(21,'/Images/Destinations/Palawan/Elnido/TourB/el-nido-tour-b-pinagbuyutan-island.jpg','Pinagbabuyan Island','Pinagbabuyan Island',3),
(21,'/Images/Destinations/Palawan/Elnido/TourB/el-nido-tour-b-snake-island.jpg','Snake Island','Snake Island',4),
(21,'/Images/Destinations/Palawan/Elnido/TourB/el-nido-tour-b-cathedral-cave.jpg','Cathedral Cave','Cathedral Cave',5),

-- El Nido, Palawan - Tour C
(22,'/Images/Destinations/Palawan/Elnido/TourC/el-nido-tour-c-helicopter-island.jpg','Helicopter Island','Helicopter Island',1),
(22,'/Images/Destinations/Palawan/Elnido/TourC/el-nido-tour-c-mantiloc-shrine.jpg','Mantiloc Shrine','Mantiloc Shrine',2),
(22,'/Images/Destinations/Palawan/Elnido/TourC/el-nido-tour-c-secret-beach.jpg','Secret Beach','Secret Beach',3),
(22,'/Images/Destinations/Palawan/Elnido/TourC/el-nido-tour-c-star-beach.jpg','Star Beach','Star Beach',4),
(22,'/Images/Destinations/Palawan/Elnido/TourC/el-nido-tour-c-Hidden-Beach.jpg','Hidden Beach','Hidden Beach',5),

-- El Nido, Palawan - Tour D
(23,'/Images/Destinations/Palawan/Elnido/TourD/el-nido-tour-d-bukal.jpg','Bukal Beach','Bukal Beach',1),
(23,'/Images/Destinations/Palawan/Elnido/TourD/el-nido-tour-d-cadlao-lagoon.jpg','Cadlao Lagoon','Cadlao Lagoon',2),
(23,'/Images/Destinations/Palawan/Elnido/TourD/el-nido-tour-d-natnat-beach.jpg','Natnat Beach','Natnat Beach',3),
(23,'/Images/Destinations/Palawan/Elnido/TourD/el-nido-tour-d-paradise-beach.jpg','Paradise Beach','Paradise Beach',4),
(23,'/Images/Destinations/Palawan/Elnido/TourD/el-nido-tour-d-pasandigan-beach.jpg','Pasandigan Beach','Pasandigan Beach',5),

-- Puerto Princesa, Palawan - Honda Bay Tour
(25,'/Images/Destinations/Palawan/PuertoPrincesa/Honda-Bay-Luli-Island.jpg','Luli Island','Luli Island',1),
(25,'/Images/Destinations/Palawan/PuertoPrincesa/Honda-Bay-Starfish-Island.jpg','Starfish Island','Starfish Island',2),
(25,'/Images/Destinations/Palawan/PuertoPrincesa/Honda-Bay-Cowrie-Island.jpg','Cowrie Island','Cowrie Island',3),

-- Puerto Princesa, Palawan - City Tour
(27,'/Images/Destinations/Palawan/PuertoPrincesa/CityTour/city-tour-bakers-hills.jpg','Bakers Hills','Bakers Hills',1),
(27,'/Images/Destinations/Palawan/PuertoPrincesa/CityTour/city-tour-baywalk.jpg','Baywalk','Baywalk',2),
(27,'/Images/Destinations/Palawan/PuertoPrincesa/CityTour/city-tour-binuatan.jpg','Binuatan Creations','Binuatan Creations',3),
(27,'/Images/Destinations/Palawan/PuertoPrincesa/CityTour/city-tour-crocodile-park.jpg','Crocodile Park','Crocodile Park',4),
(27,'/Images/Destinations/Palawan/PuertoPrincesa/CityTour/city-tour-mitras-ranch.jpg','Mitras Ranch','Mitras Ranch',5),
(27,'/Images/Destinations/Palawan/PuertoPrincesa/CityTour/city-tour-plaza-cuarte.jpg','Plaza Cuarte','Plaza Cuarte',5)
;


Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,15),(1,16),(1,17),(1,18),(1,19), -- Coron, Palawan Tour Package
(1,20),(1,21),(1,22),(1,23),        -- El Nido, Palawan Tour Package
(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30), -- Puerto Princesa, Palawan Tour Package
(1,31)-- Puerto Princesa, Palawan Tour Package
; 


Insert into tpKeywords([Keyword],[tpProductsId]) values
('Palawan','15'),('Tour','15'),('Travel','15'),('Vacation','15'),('Package','15'),('Coron','15'),
('Palawan','16'),('Tour','16'),('Travel','16'),('Vacation','16'),('Package','16'),('Coron','16'),
('Palawan','17'),('Tour','17'),('Travel','17'),('Vacation','17'),('Package','17'),('Coron','17'),
('Palawan','18'),('Tour','18'),('Travel','18'),('Vacation','18'),('Package','18'),('Coron','18'),
('Palawan','19'),('Tour','19'),('Travel','19'),('Vacation','19'),('Package','19'),('Coron','19'),
('Palawan','20'),('Tour','20'),('Travel','20'),('Vacation','20'),('Package','20'),('El Nido','20'),
('Palawan','21'),('Tour','21'),('Travel','21'),('Vacation','21'),('Package','21'),('El Nido','21'),
('Palawan','22'),('Tour','22'),('Travel','22'),('Vacation','22'),('Package','22'),('El Nido','22'),
('Palawan','23'),('Tour','23'),('Travel','23'),('Vacation','23'),('Package','23'),('El Nido','23'),
('Palawan','24'),('Tour','24'),('Travel','24'),('Vacation','24'),('Package','24'),('Puerto Princesa','24'),
('Palawan','25'),('Tour','25'),('Travel','25'),('Vacation','25'),('Package','25'),('Puerto Princesa','25'),
('Palawan','26'),('Tour','26'),('Travel','26'),('Vacation','26'),('Package','26'),('Puerto Princesa','26'),
('Palawan','27'),('Tour','27'),('Travel','27'),('Vacation','27'),('Package','27'),('Puerto Princesa','27'),
('Palawan','28'),('Tour','28'),('Travel','28'),('Vacation','28'),('Package','28'),('Puerto Princesa','28'),
('Palawan','29'),('Tour','29'),('Travel','29'),('Vacation','29'),('Package','29'),('Puerto Princesa','29'),
('Palawan','30'),('Tour','30'),('Travel','30'),('Vacation','30'),('Package','30'),('Puerto Princesa','30'),
('Palawan','31'),('Tour','31'),('Travel','31'),('Vacation','31'),('Package','31'),('Puerto Princesa','31')
;--Readme
--Adding new products with cshtml views
-- add in the tpProducts, add description and images
-- add cshtml under views/(Destination)Packages, add content / ProductDefaultView - set desciption intpProductDescs
-- add add images in sql
-- add in tpProdCats to either main view or sub view


Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 

-- Cebu 
-- 32-34
('Cebu Twin City Tour','Enjoy the best attractions in the city of Cebu.','CebuPackages/CebuTwinCityTour','/Images/Destinations/Cebu/Twin-city/cebu-twin-city-tour.jpg',1,3),
('Mactan Island Hopping','Nauslan Island, Hilutungan Isand and Caohagan Island','CebuPackages/MactanIslandHoppingTour','/Images/Destinations/Cebu/Mactan-Islands/Mactan-Island-Hopping.jpg',2,3),
('Oslob Whale Watching','Watch and swim with the whales in Oslob','CebuPackages/OslobWhaleTour','/Images/Destinations/Cebu/Oslob/Olsob-Whale-Tour.jpg',3,3)

;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values

-- Cebu City Twin Tour
(32,'/Images/Destinations/Cebu/Twin-City/Cebu-Heritage-Monument.jpg','Cebu Heritage Monument','Cebu Heritage Monument',1),
(32,'/Images/Destinations/Cebu/Twin-City/Fort-San-Pedro.jpg','Fort San Pedro','Fort san Pedro',2),
(32,'/Images/Destinations/Cebu/Twin-City/Guitar-Factory.jpg','Guitar Factory','Guitar Factory',3),
(32,'/Images/Destinations/Cebu/Twin-City/Mactan-Shrine.jpg','Mactan Shrine','Mactan Shrine',4),
(32,'/Images/Destinations/Cebu/Twin-City/Magellans-Cross.jpg','Magellans Cross','Magellans Cross',5),
(32,'/Images/Destinations/Cebu/Twin-City/Old-House.jpg','Yap San Diego Old House','Yap San Diego Old House',6),
(32,'/Images/Destinations/Cebu/Twin-City/Pasalubong-Center.jpg','Pasalubong Center','Pasalubong Center',7),
(32,'/Images/Destinations/Cebu/Twin-City/Sto-Nino-Cathedral.jpg','Sto Nino Cathedral','Sto Nino Cathedral',8),
(32,'/Images/Destinations/Cebu/Twin-City/Taoist-Temple.jpg','Taoist Temple','Taoist Temple',9),

-- Mactan Island Hopping tour
(33,'/Images/Destinations/Cebu/Mactan-Islands/Caohagan-Island.jpg','Caohagan Island','Caohagan Island',1),
(33,'/Images/Destinations/Cebu/Mactan-Islands/Hilutungan-Island.jpg','Hilutungan Island','Hilutungan Island',2),
(33,'/Images/Destinations/Cebu/Mactan-Islands/Nauslan-Island.jpg','Nauslan Island','Nauslan Island',3),

-- oslob dolphin watching                
(34,'/Images/Destinations/Cebu/Oslob/whale-shark-oslob.jpg','Whale Shark','Whale Shark',1),
(34,'/Images/Destinations/Cebu/Oslob/whale-shark.jpg','Whale Shark','Whale Shark',2)
;


Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,32),(1,33),(1,34)      -- Cebu
; 


Insert into tpKeywords([Keyword],[tpProductsId]) values
('Cebu','29'),('Tour','29'),('Travel','29'),('Vacation','29'),('Package','29'),
('Cebu','30'),('Tour','30'),('Travel','30'),('Vacation','30'),('Package','30'),
('Cebu','31'),('Tour','31'),('Travel','31'),('Vacation','31'),('Package','31')
;

--Readme
--Adding new products with cshtml views
-- add in the tpProducts, add description and images
-- add cshtml under views/(Destination)Packages, add content / ProductDefaultView - set desciption intpProductDescs
-- add add images in sql
-- add in tpProdCats to either main view or sub view

Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('MALAYSIA' ,'International Tour in Malaysia'   ,'MalaysiaPage' ,'/Images/Destinations/Malaysia/Malaysia.jpg'  ,7),
('THAILAND' ,'International Tour in Thailand'   ,'ThailandPage' ,'/Images/Destinations/Thailand/Thailand.jpg'  ,8),
('KOREA'    ,'International Tour in South Korea','KoreaPage'    ,'/Images/Destinations/Korea/Korea.jpg'        ,9),
('SINGAPORE','International Tour in Singapore'  ,'SingaporePage','/Images/Destinations/Singapore/Singapore.jpg',10)
;

Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 

-- Malaysia
-- 35
('4D3N Genting Kuala Lumpur Tour','Enjoy the best attractions in Genting and Kuala Lumpur Malaysia.','MalaysiaPackages/4d3nGentingKualaLumpurTour','/Images/Destinations/Malaysia/4d3nGentingKualaLumpurTour.jpg',1,7),

-- Thailand
-- 36
('4D3N Bangkok Pattaya Tour','Enjoy the best attractions in Bangkok and Pattaya, Thailand.','ThailandPackages/4d3nBangkokPattayaTour','/Images/Destinations/Thailand/4d3nBangkokPattayaTour.jpg',1,8),

-- Korea
-- 37
('4D3N Korea Tour Package','Enjoy the best attractions in South Korea.','KoreaPackages/4d3nKoreaTour','/Images/Destinations/Korea/4d3nKoreaTourPackage.jpg',1,9),

-- Singapore
-- 38
('5D4N Singapore Tour','Enjoy the best attractions in Singapore.','SingaporePackages/5d4nSingaporeTour','/Images/Destinations/Singapore/5d4nSingaporeTour.jpg',1,10)
;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values

-- Malaysia
(35,'/Images/Destinations/Malaysia/4d2nGentingKualaLumpur/batu-caves.jpg','Batu Caves','Batu Caves',1),
(35,'/Images/Destinations/Malaysia/4d2nGentingKualaLumpur/independence-square.jpg','Independence Sqaure','Independence Sqaure',2),
(35,'/Images/Destinations/Malaysia/4d2nGentingKualaLumpur/Kuala-Lumpur-International-Airport.jpg','Kuala Lumpur International Airport','Kuala Lumpur International Airport',3),
(35,'/Images/Destinations/Malaysia/4d2nGentingKualaLumpur/National-Monument.jpg','National Monument','National Monument',4),
(35,'/Images/Destinations/Malaysia/4d2nGentingKualaLumpur/Petronas-Twin-Towers.jpg','Pertronas Twin Tower','Pertronas Twin Tower',4),

-- Thailand
(36,'/Images/Destinations/Thailand/4d3nBangkokPattayaTour/Bee-Farm-Pattaya.jpg','Bee Farm Pattaya','Bee Farm Pattaya',1),
(36,'/Images/Destinations/Thailand/4d3nBangkokPattayaTour/elephant-in-the-jungle.jpg','Elephant in the Jungle','Elephant in the Jungle',2),
(36,'/Images/Destinations/Thailand/4d3nBangkokPattayaTour/Frost-Magical-Siam.jpg','Frost Magical Siam','Frost Magical Siam',3),
(36,'/Images/Destinations/Thailand/4d3nBangkokPattayaTour/Noongnooch.jpg','Noongnooch','Noongnooch',4),

-- Korea
(37,'/Images/Destinations/Korea/4d3nKoreaTourPackage/Deoksugung-Palace.jpg','Deoksugung Palace','Deoksugung Palace',1),
(37,'/Images/Destinations/Korea/4d3nKoreaTourPackage/Dongdaemun-Market.jpg','Dongdeamun Market','Dongdeamun Market',2),
(37,'/Images/Destinations/Korea/4d3nKoreaTourPackage/Everland-Park-Korea.jpg','Everland Park Korea','Everland Park Korea',3),
(37,'/Images/Destinations/Korea/4d3nKoreaTourPackage/padlock-Wall-korea.jpg','Padlock Wall','Padlock Wall',4),
(37,'/Images/Destinations/Korea/4d3nKoreaTourPackage/Petite-France-Korea.jpg','Petite France Korea','Petite France Korea',5),
(37,'/Images/Destinations/Korea/4d3nKoreaTourPackage/Seoul-Tower.jpg','Seoul Tower','Seoul Tower',6),

-- Singapore
(38,'/Images/Destinations/Singapore/5d4nSingaporeTour/Changi-Airport.jpg','Changi Airport','Changi Airport',1),
(38,'/Images/Destinations/Singapore/5d4nSingaporeTour/fountain-of-wealth.jpg','Fountain of Wealth','Fountain of Wealth',2),
(38,'/Images/Destinations/Singapore/5d4nSingaporeTour/merlion-park.jpg','Merlion Park','Merlion Park',3),
(38,'/Images/Destinations/Singapore/5d4nSingaporeTour/Singapore-Cable-Car.jpg','Singapore Cable Car','Singapore Cable Car',4),
(38,'/Images/Destinations/Singapore/5d4nSingaporeTour/The-Helix-Bridge.jpg','The Helix Bridge','The Helix Bridge',5),
(38,'/Images/Destinations/Singapore/5d4nSingaporeTour/Universal-Studio.jpg','Universal Studio','Universal Studio',6),
(38,'/Images/Destinations/Singapore/5d4nSingaporeTour/Universal-studios-minions.jpg','Universal Studio','Universal Studio',7)
;

Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,35),(1,36),(1,37),(1,38)       -- International 
; 

Insert into tpKeywords([Keyword],[tpProductsId]) values
('Malaysia','35'),('Tour','35'),('Travel','35'),('Vacation','35'),('Package','35'),('International','35'), --Malaysia
('Thailand','36'),('Tour','36'),('Travel','36'),('Vacation','36'),('Package','36'),('International','36'), --Thailand
('Korea','37')   ,('Tour','37'),('Travel','37'),('Vacation','37'),('Package','37'),('International','37'), --Korea
('Singapore','37'),('Tour','37'),('Travel','37'),('Vacation','37'),('Package','37'),('International','38') --Singapore
;

--Readme
-- Adding new products with cshtml views
-- add in the tpProducts, add description and images
-- add cshtml under views/(Destination)Packages, add content / ProductDefaultView - set desciption intpProductDescs
-- add add images in sql
-- add in tpProdCats to either main view or sub view

Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('ILOCOS','Ilocos Tour Packages'  ,'IlocosPage','/Images/Destinations/Ilocos/IlocosMainTour.jpg',11)

Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 
-- ilocos 
-- 39-42
('Ilocos Tour','Enjoy the best attractions in the Ilocos.','IlocosPackages/IlocosTour','/Images/Destinations/Ilocos/Ilocos/Ilocos-Tour-2019.jpg',1,11),
('Bolinao Tour','Enjoy the best attractions in the Bolinao Tour','IlocosPackages/BolinaoTour','/Images/Destinations/Ilocos/Bolinao/Bolinao-Tour-Package.jpg',2,11),
('Sagada Tour','Enjoy the best attractions in the Sagada Tour','IlocosPackages/SagadaTour','/Images/Destinations/Ilocos/Sagada/Sagada-Tour-Package.jpg',3,11),
('Baler Tour','Enjoy the best attractions in the Baler Tour','IlocosPackages/BalerTour','/Images/Destinations/Ilocos/Baler/Baler-Tour-Package.jpg',4,11),
('4D3N Ilocos Tour','Enjoy the best attractions in the Baguio,Laoag,Pagudpud and Vigan Tour','IlocosPackages/Ilocos4D3NTour','/Images/Destinations/Ilocos/Ilocos4D3N/Ilocos-4d3N-Tour-Package.jpg',5,11)
;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values
-- Ilocos Tour
(39,'/Images/Destinations/Ilocos/Ilocos/Ilocos-Vigan.jpg','Vigan','Vigan',1),
(39,'/Images/Destinations/Ilocos/Ilocos/Ilocos-Wind-Farm.jpg','Wind Farm','Wind Farm',2),
(39,'/Images/Destinations/Ilocos/Ilocos/Ilocos Sand Dunes.jpg','Sand Dunes','Sand Dunes',3),
(39,'/Images/Destinations/Ilocos/Ilocos/Malacanang of the North.jpg','Malacanang of the North','Malacanang of the North',4),

-- Bolinao Tour
(40,'/Images/Destinations/Ilocos/Bolinao/100-Islands-Alaminos.jpg','Hundred Islands','Hundred Islands',1),
(40,'/Images/Destinations/Ilocos/Bolinao/bolinao-falls.png','Bolinao Falls','Bolinao Falls',2),
(40,'/Images/Destinations/Ilocos/Bolinao/Bolinao Church.jpg','Bolinao Church','Bolinao Church',3),
(40,'/Images/Destinations/Ilocos/Bolinao/Enchanted-Cave.jpg','Enchanted Cave','Enchanted Cave',4),
(40,'/Images/Destinations/Ilocos/Bolinao/pilgrimage-island-at-hundred-islands.png','Bolinao Church','Bolinao Church',5),

-- Sagada Tour       
(41,'/Images/Destinations/Ilocos/Sagada/La Trinidad Houses.jpg','La Trinidad Houses','La Trinidad Houses',1),
(41,'/Images/Destinations/Ilocos/Sagada/sagada-Banaue.jpg','Banaue','Banaue',2),
(41,'/Images/Destinations/Ilocos/Sagada/Sagada-sea-of-clouds.jpg','Sagada Sea of Clouds','Sagada Sea of Clouds',3),
(41,'/Images/Destinations/Ilocos/Sagada/Strawberry.jpg','Strawberry Farm','Strawberry Farm',3),

-- Baler Tour       
(42,'/Images/Destinations/Ilocos/Baler/Baler-Beach.jpg','Beach in Baler, Aurora','Beach in Baler, Aurora',1),
(42,'/Images/Destinations/Ilocos/Baler/Aurora-House.jpg','Aurora-House','Aurora-House',2),
(42,'/Images/Destinations/Ilocos/Baler/Mother-Falls.jpg','Mother-Falls','Mother-Falls',3),
(42,'/Images/Destinations/Ilocos/Baler/Museo de Baler.jpg','Museo de Baler','Museo de Baler',3),

-- Ilocos 4d3n Tour       
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Bantay-Church-Bell-Tower.jpg','Bantayan Church Bell Tower','Bantayan Church Bell Tower',1),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Cape Bonjeador Lighthouse.jpg','Cape Bonjeador','Cape Bonjeador',2),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Ilocos-Wind-mills.jpg','Wind Mills','Wind Mills',3),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Juan-Luna Shrine.jpg','Juan Luna Shrine','Juan Luna Shrine',4),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Kapurpuran Rock Formation.jpg','Kapurpuran Rock Formation','Kapurpuran Rock Formation',5),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Laoag Church.jpg','Laoag Church','Laoag Church',6),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Pagudpud.jpg','Pagudpud','Pagudpud',7),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/PAgudpud-Beach.jpg','Pagupud Beach','Pagupud Beach',8),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Pagupud-blue-lagoon.jpg','Pagupud blue lagoon','Pagupud blue lagoon',9),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/St.Paul Cathedral.jpg','St.Paul Cathedral','St.Paul Cathedral',10),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/St-Williams-church.jpg','St Williams church','St Williams church',11),
(43,'/Images/Destinations/Ilocos/Ilocos4D3N/Vigan-Heritage-Village-1.jpg','Vigan Heritage Village','Vigan Heritage Village',12)
;


Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,39),(1,40),(1,41),(1,42),(1,43)       -- Ilocos
; 


Insert into tpKeywords([Keyword],[tpProductsId]) values

('Ilocos','39'),('Tour','39'),('Travel','39'),('Vacation','39'),('Package','39'),
('Ilocos','40'),('Tour','40'),('Travel','40'),('Vacation','40'),('Package','40'),
('Ilocos','41'),('Tour','41'),('Travel','41'),('Vacation','41'),('Package','41'),
('Ilocos','42'),('Tour','42'),('Travel','42'),('Vacation','42'),('Package','42'),
('Ilocos','43'),('Tour','43'),('Travel','43'),('Vacation','43'),('Package','43')
;
--Readme
-- Adding new products with cshtml views
-- add in the tpProducts, add description and images
-- add cshtml under views/(Destination)Packages, add content / ProductDefaultView - set desciption intpProductDescs
-- add add images in sql
-- add in tpProdCats to either main view or sub view

Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('BAGUIO','Baguio Tour Packages'  ,'BaguioPage','/Images/Destinations/Baguio/BaguioMainTour.jpg',12);

Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 
-- baguio 
-- 44
('2D1N Baguio Tour','Enjoy the best attractions in the Baguio.','BaguioPackages/BaguioTour','/Images/Destinations/Baguio/Baguio-Tour-Package.jpg',1,12)
;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values

-- Baguio Tour       
(44,'/Images/Destinations/Baguio/Baguio-Cathedral.jpeg','Baguio Cathedral','Baguio Cathedral',1),
(44,'/Images/Destinations/Baguio/Baguio-strawberry-farm.jpg','Baguio strawberry farm','Baguio strawberry farm',2),
(44,'/Images/Destinations/Baguio/burnham-park-Baguio.jpg','burnham park Baguio','burnham park Baguio',3),
(44,'/Images/Destinations/Baguio/Camp-John-Hay-Baguio.jpg','Camp John hay','Camp John hay',4),
(44,'/Images/Destinations/Baguio/Camp-John-hay.jpg','Camp John hay','Camp John hay',5),
(44,'/Images/Destinations/Baguio/Mines_View_Park,_Baguio_City.jpg','Mines View Park, Baguio City','Mines View Park, Baguio City',6),
(44,'/Images/Destinations/Baguio/Tam-awan-Village-Baguio.jpg','Tam-awan Village Baguio','Tam-awan Village Baguio',7),
(44,'/Images/Destinations/Baguio/The_Mansion,_Baguio_City.jpg','The Mansion, Baguio City','The Mansion, Baguio City',8)
;


Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,44)       -- Ilocos
; 


Insert into tpKeywords([Keyword],[tpProductsId]) values
('Ilocos','44'),('Tour','44'),('Travel','44'),('Vacation','44'),('Package','44')
;

--Readme
--Adding new products with cshtml views
-- add in the tpProducts, add description and images
-- add cshtml under views/(Destination)Packages, add content / ProductDefaultView - set desciption intpProductDescs
-- add add images in sql
-- add in tpProdCats to either main view or sub view


Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 

--45-50,
('Cebu Kawasan and Moalboal Tour','Kawasan and Moalboal Tour','CebuPackages/CebuKawasanMoalboal','/Images/Destinations/Cebu/Kawasan-Moalboal/Cebu-Kawasan-Moalboal-Tour.png',4,3),
('Cebu Canyoneering and Moalboal Tour','Cebu Canyoneering and Moalboal Tour','CebuPackages/CanyoneeringMoalboal','/Images/Destinations/Cebu/Canyoneering-Moalboal/Canyoneering-Moalboal.png',5,3),
('Simala and Cebu City Tour Package','Simala Cebu Tour Package','CebuPackages/SimalaCebuTour','/Images/Destinations/Cebu/Simala-Cebu-Tour-Package/Simala-Cebu-Tour-Package.png',6,3),
('Oslob Whaleshark Watching and Kawasan Tour','Oslob Whale Shark Watching and Kawasan Tour','CebuPackages/OslobWhalesharkKawasan','/Images/Destinations/Cebu/Whaleshark-Kawasan/Oslob-Whale-Kawasan.png',7,3),
('Oslob Whaleshark Watching with Sumilon and Tumalog Tour','Oslob Whale Shark Watching w/ Sumilon & Tumalog Tour','CebuPackages/OslobWhalesharkSumilonTumalog','/Images/Destinations/Cebu/Whaleshark-Sumilon-Tumalog/Oslob-Whale-Sumilon-Tumalog.png',8,3),
('Oslob Whaleshark Watching with Sumilon and Kawasan Tour','Oslob Whale Shark Watching w/ Sumilon & Kawasan Tour','CebuPackages/OslobWhalesharkSumilonKawasan','/Images/Destinations/Cebu/Whaleshark-Sumilon-Kawasan/Whaleshark-Sumilon-Kawasan.png',9,3),

--51-52,

('Simala with Oceanpark Tour Package','Simala & Cebu City w/ Oceanpark Tour','CebuPackages/SimalaCebuOceanparkTour','/Images/Destinations/Cebu/Simala-Cebu-Oceanpark/Simala-Cebu-Oceanpark.png',11,3),
('Cebu with Oceanpark Tour Package','Cebu City w/ Oceanpark Tour','CebuPackages/CebuOceanparkTour','/Images/Destinations/Cebu/Cebu-Oceanpark/Cebu-City-Oceanpark.png',12,3)
;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values

-- Kawasan and Moalboal Tour             
(45,'/Images/Destinations/Cebu/Kawasan-Moalboal/Pescador-Island.png','Pescador Island','Pescador Island',1),
(45,'/Images/Destinations/Cebu/Kawasan-Moalboal/Turtle-Point.png','Turtle Point','Turtle Point',2),
(45,'/Images/Destinations/Cebu/Kawasan-Moalboal/Sardine-Run.png','Sardine-Run','Sardine-Run',3),
(45,'/Images/Destinations/Cebu/Kawasan-Moalboal/Kawasan-Falls.png','Kawasan Falls','Kawasan Falls',4),

-- Cebu Canyoneering and Moalboal Tour             
(46,'/Images/Destinations/Cebu/Canyoneering-Moalboal/Pescador-Island.png','Pescador Island','Pescador Island',1),
(46,'/Images/Destinations/Cebu/Canyoneering-Moalboal/Turtle-Point.png','Turtle Point','Turtle Point',2),
(46,'/Images/Destinations/Cebu/Canyoneering-Moalboal/Sardine-Run.png','Sardine-Run','Sardine-Run',3),
(46,'/Images/Destinations/Cebu/Canyoneering-Moalboal/Kawasan-Falls.png','Kawasan Falls','Kawasan Falls',4),
(46,'/Images/Destinations/Cebu/Canyoneering-Moalboal/Canyoneering.png','Canyoneering','Canyoneering',5),

-- Simala and Cebu City Tour             
(47,'/Images/Destinations/Cebu/Simala-Cebu-Tour-Package/Simala-Church.jpg','Simala Church','Simala Church',1),
(47,'/Images/Destinations/Cebu/Simala-Cebu-Tour-Package/Sirao-Flower-Garden.png','Sirao Flower Garden','Sirao Flower Garden',2),
(47,'/Images/Destinations/Cebu/Simala-Cebu-Tour-Package/Sto-Nino-Cathedral.jpg','Sto Nino Cathedral','Sto Nino Cathedral',3),
(47,'/Images/Destinations/Cebu/Simala-Cebu-Tour-Package/Taoist-Temple.jpg','Kawasan Falls','Kawasan Falls',4),
(47,'/Images/Destinations/Cebu/Simala-Cebu-Tour-Package/Temple-of-Leah.png','Canyoneering','Canyoneering',5),

-- Oslob Whaleshark watching and kawasan tour  
(48,'/Images/Destinations/Cebu/Whaleshark-Kawasan/whale-shark.jpg','Whaleshark Watching','Whaleshark Watching',1),
(48,'/Images/Destinations/Cebu/Whaleshark-Kawasan/Kawasan-Falls.png','Kawasan Falls','Kawasan Falls',2),

-- Oslob Whaleshark watching with Sumilon and Tumalog
(49,'/Images/Destinations/Cebu/Whaleshark-Sumilon-Tumalog/whale-shark.jpg','Whaleshark Watching','Whaleshark Watching',1),
(49,'/Images/Destinations/Cebu/Whaleshark-Sumilon-Tumalog/Sumilon-Island.png','Sumilon Island','Sumilon Island',2),
(49,'/Images/Destinations/Cebu/Whaleshark-Sumilon-Tumalog/Tumalog-Falls.png','Tumalog-Falls','Tumalog-Falls',3),

-- Oslob Whaleshark watching with Sumilon and Kawasan
(50,'/Images/Destinations/Cebu/Whaleshark-Sumilon-Kawasan/whale-shark.jpg','Whaleshark Watching','Whaleshark Watching',1),
(50,'/Images/Destinations/Cebu/Whaleshark-Sumilon-Kawasan/Sumilon-Island.png','Sumilon Island','Sumilon Island',2),
(50,'/Images/Destinations/Cebu/Whaleshark-Sumilon-Kawasan/Tumalog-Falls.png','Tumalog-Falls','Tumalog-Falls',3),

-- Simala with Oceanpark Tour Package
(51,'/Images/Destinations/Cebu/Simala-Cebu-Oceanpark/Simala-Church.jpg','Simala Shrine','Simala-Shrine',1),
(51,'/Images/Destinations/Cebu/Simala-Cebu-Oceanpark/Cebu-Oceanpark-2.png','Cebu Oceanpark','Cebu Oceanpark',2),

-- Cebu with Oceanpark Tour Package
(52,'/Images/Destinations/Cebu/Simala-Cebu-Oceanpark/Simala-Church.jpg','Simala Shrine','Simala-Shrine',1),
(52,'/Images/Destinations/Cebu/Simala-Cebu-Oceanpark/Cebu-Oceanpark-2.png','Cebu Oceanpark','Cebu Oceanpark',2)
;


Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,45),(1,46),(1,47),(1,48),(1,49)  ,    -- Cebu
(1,50),(1,51),(1,52) 
; 

Insert into tpKeywords([Keyword],[tpProductsId]) values
('Cebu','45'),('Tour','45'),('Travel','45'),('Vacation','45'),('Package','45'),
('Cebu','46'),('Tour','46'),('Travel','46'),('Vacation','46'),('Package','46'),
('Cebu','47'),('Tour','47'),('Travel','47'),('Vacation','47'),('Package','47'),
('Cebu','48'),('Tour','48'),('Travel','48'),('Vacation','48'),('Package','48'),
('Cebu','49'),('Tour','49'),('Travel','49'),('Vacation','49'),('Package','49'),
('Cebu','50'),('Tour','50'),('Travel','50'),('Vacation','50'),('Package','50'),
('Cebu','51'),('Tour','51'),('Travel','51'),('Vacation','51'),('Package','51'),
('Cebu','52'),('Tour','52'),('Travel','52'),('Vacation','52'),('Package','52'),
('Cebu','53'),('Tour','53'),('Travel','53'),('Vacation','53'),('Package','53')
;