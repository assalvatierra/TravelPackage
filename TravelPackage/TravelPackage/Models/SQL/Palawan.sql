--Readme
--Adding new products with cshtml views
-- add in the tpProducts, add description and images
-- add cshtml under views/(Destination)Packages, add content / ProductDefaultView - set desciption intpProductDescs
-- add add images in sql
-- add in tpProdCats to either main view or sub view


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
;