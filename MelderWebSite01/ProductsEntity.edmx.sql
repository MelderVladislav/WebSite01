
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/18/2016 16:29:36
-- Generated from EDMX file: C:\Users\Vladislav\Documents\Visual Studio 2015\Projects\MelderWebSite01\MelderWebSite01\ProductsEntity.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ProductsBase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CATEGORY_ID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PRODUCTS] DROP CONSTRAINT [FK_CATEGORY_ID];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PRODUCTS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PRODUCTS];
GO
IF OBJECT_ID(N'[dbo].[PRODUCTS_CATEGORY]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PRODUCTS_CATEGORY];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PRODUCTS'
CREATE TABLE [dbo].[PRODUCTS] (
    [ROBOT_ID] int  NOT NULL,
    [CATEGORY_ID] int  NOT NULL,
    [URL_NAME] nvarchar(50)  NOT NULL,
    [USUAL_NAME] nvarchar(50)  NOT NULL,
    [PRODUCT_DESCRIPTION] nvarchar(max)  NOT NULL,
    [PRICE] decimal(19,4)  NULL,
    [IMAGE] nvarchar(max)  NULL
);
GO

-- Creating table 'PRODUCTS_CATEGORY'
CREATE TABLE [dbo].[PRODUCTS_CATEGORY] (
    [CATEGORY_ID] int  NOT NULL,
    [URL_CATEGURY_NAME] nvarchar(50)  NOT NULL,
    [USUAL_CATEGORY_NAME] nvarchar(50)  NOT NULL,
    [CATEGORY_DESCRIPTION] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ROBOT_ID] in table 'PRODUCTS'
ALTER TABLE [dbo].[PRODUCTS]
ADD CONSTRAINT [PK_PRODUCTS]
    PRIMARY KEY CLUSTERED ([ROBOT_ID] ASC);
GO

-- Creating primary key on [CATEGORY_ID] in table 'PRODUCTS_CATEGORY'
ALTER TABLE [dbo].[PRODUCTS_CATEGORY]
ADD CONSTRAINT [PK_PRODUCTS_CATEGORY]
    PRIMARY KEY CLUSTERED ([CATEGORY_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CATEGORY_ID] in table 'PRODUCTS'
ALTER TABLE [dbo].[PRODUCTS]
ADD CONSTRAINT [FK_CATEGORY_ID]
    FOREIGN KEY ([CATEGORY_ID])
    REFERENCES [dbo].[PRODUCTS_CATEGORY]
        ([CATEGORY_ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CATEGORY_ID'
CREATE INDEX [IX_FK_CATEGORY_ID]
ON [dbo].[PRODUCTS]
    ([CATEGORY_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------