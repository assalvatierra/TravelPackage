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
('5D4N Singapore Tour','Enjoy the best attractions in Singapore.','SingaporePackages/4d3nSingaporeTour','/Images/Destinations/Cebu/Twin-city/cebu-twin-city-tour.jpg',1,10)
;

Insert into [tpProductImages]([tpProductsId], [ImgPath],[Desc],[AltName],[Sort]) values

-- Cebu City Twin Tour
(32,'/Images/Destinations/Cebu/Twin-City/Cebu-Heritage-Monument.jpg','Cebu Heritage Monument','Cebu Heritage Monument',1),
(32,'/Images/Destinations/Cebu/Twin-City/Fort-San-Pedro.jpg','Fort San Pedro','Fort san Pedro',2),
(32,'/Images/Destinations/Cebu/Twin-City/Guitar-Factory.jpg','Guitar Factory','Guitar Factory',3),
(32,'/Images/Destinations/Cebu/Twin-City/Mactan-Shrine.jpg','Mactan Shrine','Mactan Shrine',4)
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