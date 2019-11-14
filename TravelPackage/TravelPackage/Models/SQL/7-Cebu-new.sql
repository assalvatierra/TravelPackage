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
(45,'/Images/Destinations/Cebu/Oslob/whale-shark-oslob.jpg','Whale Shark','Whale Shark',1),
(45,'/Images/Destinations/Cebu/Oslob/whale-shark.jpg','Whale Shark','Whale Shark',2)
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