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