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
('SINGAPORE','International Tour in Malaysia'   ,'SingaporePage','/Images/Destinations/Singapore/Singapore.jpg',10)
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
('5D4N Singapore Tour','Enjoy the best attractions in Singapore.','SingaporePackages/5d4nSingaporeTour.cshtml','/Images/Destinations/Singapore/5d4nSingaporeTour.jpg',1,10)
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