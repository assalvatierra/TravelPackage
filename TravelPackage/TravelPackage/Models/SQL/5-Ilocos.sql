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