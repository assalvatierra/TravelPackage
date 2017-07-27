Insert into tpAreas([Name],[PageRemarks],[PageView],[PgFeatureImg],[Sort]) values 
('DAVAO','Davao City','DavaoPage','/Images/abreeza-mall.gif',1),
('BOHOL','Central Visayas','BoholPage','/Images/SamalIslandHopping.png',2),
('CAMIGUIN','Northern Mindanao','CamiguinPage','/Images/SamalIslandHopping.png',3);


Insert into [tpProducts]([Name],[ShortRemarks],[PageView],[PgFeatureImg], [Sort], [tpAreasId]) values 
('City Tour','City Tour','Page1','/Images/abreeza-mall.gif',1,1),
('Country Side Tour','Country Side Tour','Page1','/Images/CountrySide.gif',1,1),
('Country Side Tour','Country Side Tour','Page1','/Images/CountrySide.gif',1,2),
('Panglao Tour','Panglao Tour','Page1','/Images/SamalIslandHopping.png',1,2);

