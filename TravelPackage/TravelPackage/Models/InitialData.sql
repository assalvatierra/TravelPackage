Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('DAVAO','Davao City','DavaoPage','/Images/abreeza-mall.gif',1),
('BOHOL','Central Visayas','BoholPage','/Images/SamalIslandHopping.png',2),
('CAMIGUIN','Northern Mindanao','CamiguinPage','/Images/SamalIslandHopping.png',3);


Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 
('City Tour','City Tour','ProductDefaultView','/Images/abreeza-mall.gif',1,1),
('Country Side Tour','Country Side Tour','ProductDefaultView','/Images/CountrySide.gif',1,1),
('Country Side Tour','Country Side Tour','ProductDefaultView','/Images/CountrySide.gif',1,2),
('Panglao Tour','Panglao Tour','ProductDefaultView2','/Images/SamalIslandHopping.png',1,2);

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values
(3,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','Blood Compact Shrine','Blood Compact Shrine',1),
(3,'/Images/Destinations/Bohol/LobocRiverCruising.jpg','Loboc River Cruising','Loboc River Cruising',2),
(3,'/Images/Destinations/Bohol/BaclayonChurch.jpg','Baclayon Church','BaclayonChurch.jpg',3),
(3,'/Images/Destinations/Bohol/ChocolateHills.jpg','Chocolate Hills','ChocolateHills.jpg',4),
(3,'/Images/Destinations/Bohol/ManMadeForest.jpg','Man Made Forest','ManMadeForest.jpg',5),
(3,'/Images/Destinations/Bohol/BloodCompactShrine.jpg','Blood Compact Shrine','Blood Compact Shrine',6),
(3,'/Images/Destinations/Bohol/Tarsier.jpg','Tarsier','Tarsier.jpg',7);
