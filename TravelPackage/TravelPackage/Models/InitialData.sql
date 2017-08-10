﻿Insert into tpCategories([Description],[SysCode]) values
('Featured','FEATURED'),('Addon','ADDON'),('Activities','ACTIVITY'),('Accommodation','ACCOM'),('Transportation','TRANSPO');

Insert into tpUoms([Measure],[Remarks]) values
('Unit','Per unit ( Room, Car, Boat)'),('Pax','per person rate');

Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('DAVAO','Davao City','DavaoPage','/Images/abreeza-mall.gif',1),
('BOHOL','Place of wonderful beaches','BoholPage','/Images/Bohol101.png',2),
('CAMIGUIN','Northern Mindanao','CamiguinPage','/Images/SamalIslandHopping.png',3);


Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 
('City Tour','City Tour','ProductDefaultView','/Images/abreeza-mall.gif',1,1),
('Country Side Tour','Country Side Tour','ProductDefaultView','/Images/CountrySide.gif',2,1),
('Country Side Tour','7 - 9 hrs tour across the island of Bohol. Passing thru is cultural destinations and fascinating views of the main island','BoholPackages/CountrySide','/Images/Destinations/Bohol/CountrySideTour.png',1,2),
('Panglao Tour','8hrs island tour to the treasured beaches of Panglao.','BoholPackages/Panglao','/Images/Destinations/Bohol/PanglaoTour.png',2,2),
('3D2N Vacation','3Days 2 Nights Vacation Package. staying at the heart of the most visited beaches of Panglao.','BoholPackages/3d2n_Panglao_Alona42','/Images/Destinations/Bohol/3d2nBoholVacation.png',2,2),
('Manila-Bohol','Economy Airticket Manila - Tagbilaran','BoholPackages/AirTicket','/Images/Destinations/Bohol/Airlines101.png',3,2),
('Bohol Bee Farm','Resort & Restaurant','ProductDefaultView','/Images/Destinations/Bohol/accom_boholbeefarm_04.jpg',4,2),
('Blue Star Dive & Resort','Hotel/Accommodation','ProductDefaultView2','/Images/Destinations/Bohol/hotel.blue-star-dive-resort.jpg',5,2),
('The Peacock Garden','Hotel/Accommodation','ProductDefaultView2','/Images/Destinations/Bohol/hotel.ThePeacockGarden.jpg',6,2);

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
(7,'/Images/Destinations/Bohol/accom_boholbeefarm_06.jpg','Garden','Bee Farm Garden',6);

Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,1),(1,2),(1,3),(1,4),(1,5), -- Featured - Tour Packages 
(2,6),(2,7),(2,8),(2,9); -- add on products

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
(7,'','','- Function Halls (Wedding, Birthday, Special Events)',10);

