Insert into tpCategories([Description],[SysCode]) values
('Featured','FEATURED'),('Addon','ADDON'),('Activities','ACTIVITY'),('Accommodation','ACCOM'),('Transportation','TRANSPO');

Insert into tpUoms([Measure],[Remarks]) values
('Unit','Per unit ( Room, Car, Boat)'),('Pax','per person rate');

Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('DAVAO','Davao City','DavaoPage','/Images/abreeza-mall.gif',1),
('BOHOL','Central Visayas','BoholPage','/Images/SamalIslandHopping.png',2),
('CAMIGUIN','Northern Mindanao','CamiguinPage','/Images/SamalIslandHopping.png',3);


Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 
('City Tour','City Tour','ProductDefaultView','/Images/abreeza-mall.gif',1,1),
('Country Side Tour','Country Side Tour','ProductDefaultView','/Images/CountrySide.gif',1,1),
('Country Side Tour','Country Side Tour','BoholPackages/CountrySide','/Images/CountrySide.gif',1,2),
('Panglao Tour','Panglao Tour','ProductDefaultView2','/Images/SamalIslandHopping.png',2,2),
('3D2N Panglao Vacation','3Days 2 Nights Vacation Stay','ProductDefaultView2','/Images/Destinations/Bohol/hotel.ThePeacockGarden.jpg',2,2),
('Manila-Bohol','Economy Airticket Manila - Tagbilaran','ProductDefaultView2','/Images/Destinations/Bohol/PlanePAL.jpg',3,2),
('J&R Residence','Hotel/Accommodation','ProductDefaultView2','/Images/Destinations/Bohol/hotel.JRresidence.jpg',4,2),
('Blue Star Dive & Resort','Hotel/Accommodation','ProductDefaultView2','/Images/Destinations/Bohol/hotel.blue-star-dive-resort.jpg',5,2),
('The Peacock Garden','Hotel/Accommodation','ProductDefaultView2','/Images/Destinations/Bohol/hotel.ThePeacockGarden.jpg',6,2);

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values
(3,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','Blood Compact Shrine','Blood Compact Shrine',1),
(3,'/Images/Destinations/Bohol/LobocRiverCruising.jpg','Loboc River Cruising','Loboc River Cruising',2),
(3,'/Images/Destinations/Bohol/BaclayonChurch.jpg','Baclayon Church','BaclayonChurch.jpg',3),
(3,'/Images/Destinations/Bohol/ChocolateHills.jpg','Chocolate Hills','ChocolateHills.jpg',4),
(3,'/Images/Destinations/Bohol/ManMadeForest.jpg','Man Made Forest','ManMadeForest.jpg',5),
(3,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','Blood Compact Shrine','Blood Compact Shrine',6),
(3,'/Images/Destinations/Bohol/Tarsier.jpg','Tarsier','Tarsier.jpg',7);

Insert into tpProdCats([tpCategoryId],[tpProductsId]) values
(1,1),(1,2),(1,3),(1,4),(1,5), -- Featured - Tour Packages 
(2,6),(2,7),(2,8),(2,9); -- add on products

Insert into tpProdRates([tpProductsId],[tpUomId],[GroupOf],[Rate],[Remarks],[Sort]) values
(3,2,1,4250,'',1),(3,2,2,2600,'',1),(3,2,3,2100,'',1),(3,2,4,1950,'',1),(3,2,5,1800,'',1),(3,2,6,1700,'',1),(3,2,7,1600,'',1),(3,2,8,1550,'',1),(3,2,9,1450,'',1),(3,2,10,1350,'',1);


