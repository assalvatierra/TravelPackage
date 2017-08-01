
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/01/2017 14:35:10
-- Generated from EDMX file: D:\Data\Real\Apps\GitHub\TravelPackage\TravelPackage\TravelPackage\Models\TravelDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-TravelPackage-20170726021530];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_tpAreastpProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tpProducts] DROP CONSTRAINT [FK_tpAreastpProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_tpProductstpProductImages]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tpProductImages] DROP CONSTRAINT [FK_tpProductstpProductImages];
GO
IF OBJECT_ID(N'[dbo].[FK_tpCategorytpProdCat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tpProdCats] DROP CONSTRAINT [FK_tpCategorytpProdCat];
GO
IF OBJECT_ID(N'[dbo].[FK_tpProductstpProdCat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tpProdCats] DROP CONSTRAINT [FK_tpProductstpProdCat];
GO
IF OBJECT_ID(N'[dbo].[FK_tpProductstpInqServices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tpInqServices] DROP CONSTRAINT [FK_tpProductstpInqServices];
GO
IF OBJECT_ID(N'[dbo].[FK_tpInquirytpInqServices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tpInqServices] DROP CONSTRAINT [FK_tpInquirytpInqServices];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tpAreas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpAreas];
GO
IF OBJECT_ID(N'[dbo].[tpProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpProducts];
GO
IF OBJECT_ID(N'[dbo].[tpProductImages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpProductImages];
GO
IF OBJECT_ID(N'[dbo].[tpInquiries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpInquiries];
GO
IF OBJECT_ID(N'[dbo].[tpProdCats]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpProdCats];
GO
IF OBJECT_ID(N'[dbo].[tpCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpCategories];
GO
IF OBJECT_ID(N'[dbo].[tpInqServices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpInqServices];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tpAreas'
CREATE TABLE [dbo].[tpAreas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(30)  NOT NULL,
    [PageRemarks] nvarchar(255)  NULL,
    [PageView] nvarchar(30)  NULL,
    [PgFeatureImg] nvarchar(150)  NULL,
    [Sort] int  NOT NULL
);
GO

-- Creating table 'tpProducts'
CREATE TABLE [dbo].[tpProducts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(80)  NOT NULL,
    [ShortRemarks] nvarchar(250)  NULL,
    [PageView] nvarchar(50)  NULL,
    [PgFeatureImg] nvarchar(150)  NULL,
    [Sort] int  NOT NULL,
    [tpAreasId] int  NOT NULL
);
GO

-- Creating table 'tpProductImages'
CREATE TABLE [dbo].[tpProductImages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [tpProductsId] int  NOT NULL,
    [ImgPath] nvarchar(250)  NOT NULL,
    [Desc] nvarchar(150)  NULL,
    [AltName] nvarchar(80)  NULL,
    [Sort] int  NOT NULL
);
GO

-- Creating table 'tpInquiries'
CREATE TABLE [dbo].[tpInquiries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [dtInquiry] datetime  NOT NULL,
    [LeadGuest] nvarchar(250)  NOT NULL,
    [ContactNo] nvarchar(50)  NULL,
    [Email] nvarchar(120)  NULL,
    [NoOfChild] int  NOT NULL,
    [NoOfAdult] int  NOT NULL,
    [Status] nvarchar(10)  NOT NULL
);
GO

-- Creating table 'tpProdCats'
CREATE TABLE [dbo].[tpProdCats] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [tpCategoryId] int  NOT NULL,
    [tpProductsId] int  NOT NULL
);
GO

-- Creating table 'tpCategories'
CREATE TABLE [dbo].[tpCategories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(80)  NOT NULL,
    [SysCode] nvarchar(10)  NOT NULL
);
GO

-- Creating table 'tpInqServices'
CREATE TABLE [dbo].[tpInqServices] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [tpInquiryId] int  NOT NULL,
    [tpProductsId] int  NOT NULL,
    [dtSvcStart] datetime  NOT NULL,
    [Message] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'tpAreas'
ALTER TABLE [dbo].[tpAreas]
ADD CONSTRAINT [PK_tpAreas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tpProducts'
ALTER TABLE [dbo].[tpProducts]
ADD CONSTRAINT [PK_tpProducts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tpProductImages'
ALTER TABLE [dbo].[tpProductImages]
ADD CONSTRAINT [PK_tpProductImages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tpInquiries'
ALTER TABLE [dbo].[tpInquiries]
ADD CONSTRAINT [PK_tpInquiries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tpProdCats'
ALTER TABLE [dbo].[tpProdCats]
ADD CONSTRAINT [PK_tpProdCats]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tpCategories'
ALTER TABLE [dbo].[tpCategories]
ADD CONSTRAINT [PK_tpCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tpInqServices'
ALTER TABLE [dbo].[tpInqServices]
ADD CONSTRAINT [PK_tpInqServices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tpAreasId] in table 'tpProducts'
ALTER TABLE [dbo].[tpProducts]
ADD CONSTRAINT [FK_tpAreastpProducts]
    FOREIGN KEY ([tpAreasId])
    REFERENCES [dbo].[tpAreas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tpAreastpProducts'
CREATE INDEX [IX_FK_tpAreastpProducts]
ON [dbo].[tpProducts]
    ([tpAreasId]);
GO

-- Creating foreign key on [tpProductsId] in table 'tpProductImages'
ALTER TABLE [dbo].[tpProductImages]
ADD CONSTRAINT [FK_tpProductstpProductImages]
    FOREIGN KEY ([tpProductsId])
    REFERENCES [dbo].[tpProducts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tpProductstpProductImages'
CREATE INDEX [IX_FK_tpProductstpProductImages]
ON [dbo].[tpProductImages]
    ([tpProductsId]);
GO

-- Creating foreign key on [tpCategoryId] in table 'tpProdCats'
ALTER TABLE [dbo].[tpProdCats]
ADD CONSTRAINT [FK_tpCategorytpProdCat]
    FOREIGN KEY ([tpCategoryId])
    REFERENCES [dbo].[tpCategories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tpCategorytpProdCat'
CREATE INDEX [IX_FK_tpCategorytpProdCat]
ON [dbo].[tpProdCats]
    ([tpCategoryId]);
GO

-- Creating foreign key on [tpProductsId] in table 'tpProdCats'
ALTER TABLE [dbo].[tpProdCats]
ADD CONSTRAINT [FK_tpProductstpProdCat]
    FOREIGN KEY ([tpProductsId])
    REFERENCES [dbo].[tpProducts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tpProductstpProdCat'
CREATE INDEX [IX_FK_tpProductstpProdCat]
ON [dbo].[tpProdCats]
    ([tpProductsId]);
GO

-- Creating foreign key on [tpProductsId] in table 'tpInqServices'
ALTER TABLE [dbo].[tpInqServices]
ADD CONSTRAINT [FK_tpProductstpInqServices]
    FOREIGN KEY ([tpProductsId])
    REFERENCES [dbo].[tpProducts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tpProductstpInqServices'
CREATE INDEX [IX_FK_tpProductstpInqServices]
ON [dbo].[tpInqServices]
    ([tpProductsId]);
GO

-- Creating foreign key on [tpInquiryId] in table 'tpInqServices'
ALTER TABLE [dbo].[tpInqServices]
ADD CONSTRAINT [FK_tpInquirytpInqServices]
    FOREIGN KEY ([tpInquiryId])
    REFERENCES [dbo].[tpInquiries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tpInquirytpInqServices'
CREATE INDEX [IX_FK_tpInquirytpInqServices]
ON [dbo].[tpInqServices]
    ([tpInquiryId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------