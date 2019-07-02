--Readme
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
(1,32),(1,33),(1,34)       -- Cebu
; 


Insert into tpKeywords([Keyword],[tpProductsId]) values

('Cebu','29'),('Tour','29'),('Travel','29'),('Vacation','29'),('Package','29'),
('Cebu','30'),('Tour','30'),('Travel','30'),('Vacation','30'),('Package','30'),
('Cebu','31'),('Tour','31'),('Travel','31'),('Vacation','31'),('Package','31')
;