
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/27/2017 15:48:25
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

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tpAreas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpAreas];
GO
IF OBJECT_ID(N'[dbo].[tpProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tpProducts];
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------