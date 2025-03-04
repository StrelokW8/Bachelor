 
 
 
 
 
 
 
 USE master  
  if NOt exists (SELECT * FROM sys.databases WHERE name=N'vsdata')
  begin
	USE master 
	CREATE DATABASE vsdata
  end

GO

USE [vsdata]
GO
/****** Object:  Table [dbo].[dodavatele]    Script Date: 23.04.2023 18:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dodavatele](
	[Kod_dodavatele] [nvarchar](15) NOT NULL,
	[Nazev] [nvarchar](150) NULL,
	[ICO] [nvarchar](20) NULL,
	[DIC] [nvarchar](20) NULL,
	[Ulice] [nvarchar](50) NULL,
	[PSC] [nvarchar](8) NULL,
	[Mesto] [nvarchar](50) NULL,
	[Stat] [nvarchar](80) NULL,
	[Telefon] [nvarchar](50) NULL,
	[POBOX] [nvarchar](20) NULL,
	[mail] [nvarchar](50) NULL,
	[www] [nvarchar](30) NULL,
	[perioda] [smallint] NULL,
	[Schvaleny] [bit] NULL,
	[Platnost_certifikace] [datetime] NULL,
	[Pozn] [nvarchar](1000) NULL,
	[Mobil] [nvarchar](30) NULL,
 CONSTRAINT [idxdodkod] PRIMARY KEY CLUSTERED 
(
	[Kod_dodavatele] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 50) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[osoby]    Script Date: 23.04.2023 18:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[osoby](
	[Osobni_cislo] [nvarchar](10) NOT NULL,
	[Jmeno] [nvarchar](70) NOT NULL,
	[Ulice] [nvarchar](50) NULL,
	[PSC] [nvarchar](8) NULL,
	[Mesto] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Mail] [nvarchar](150) NULL,
	[Kod_zavodu] [nvarchar](30) NULL,
	[Neaktivni] [bit] NULL,
	[Firma] [nvarchar](10) NULL,
	[KodFunkce] [nvarchar](15) NULL,
 CONSTRAINT [idxoscis] PRIMARY KEY CLUSTERED 
(
	[Osobni_cislo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 50) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pracoviste]    Script Date: 23.04.2023 18:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pracoviste](
	[kod] [nvarchar](15) NOT NULL,
	[Nazev] [nvarchar](100) NULL,
	[Tel] [nvarchar](10) NULL,
	[Email] [nvarchar](250) NULL,
 CONSTRAINT [idxkodprac] PRIMARY KEY CLUSTERED 
(
	[kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 50) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VyrobceMer]    Script Date: 23.04.2023 18:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VyrobceMer](
	[Kod] [varchar](35) NULL,
	[Nazev] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zavody]    Script Date: 23.04.2023 18:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zavody](
	[Kod] [nvarchar](30) NOT NULL,
	[Nazev] [nvarchar](50) NULL,
	[Adresa] [nvarchar](200) NULL,
 CONSTRAINT [PK_Zavody] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 50) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[dodavatele] ([Kod_dodavatele], [Nazev], [ICO], [DIC], [Ulice], [PSC], [Mesto], [Stat], [Telefon], [POBOX], [mail], [www], [perioda], [Schvaleny], [Platnost_certifikace], [Pozn], [Mobil]) VALUES (N'00000001', N'Bosh', N'1561515515', N'1515184151541', N'Tesařova 5', N'70042', N'Praha', N'Česká republika', N'15151511515', NULL, N'bosch@google.com', N'www.bosch.com', 1, 1, CAST(N'2025-07-27T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[dodavatele] ([Kod_dodavatele], [Nazev], [ICO], [DIC], [Ulice], [PSC], [Mesto], [Stat], [Telefon], [POBOX], [mail], [www], [perioda], [Schvaleny], [Platnost_certifikace], [Pozn], [Mobil]) VALUES (N'00000002', N'Siemens', N'1551541515', N'15145163666', N'New street 14', N'S1251', N'New York', N'USA', N'2162632', N'New Street -15132', NULL, NULL, NULL, 1, CAST(N'2028-04-28T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[dodavatele] ([Kod_dodavatele], [Nazev], [ICO], [DIC], [Ulice], [PSC], [Mesto], [Stat], [Telefon], [POBOX], [mail], [www], [perioda], [Schvaleny], [Platnost_certifikace], [Pozn], [Mobil]) VALUES (N'00000003', N'Gerlich', N'11511515151', N'28779998989', N'Potoční 36', N'72535', N'Odry', N'Česká republika', N'13221662121', NULL, NULL, N'www.gerlich-dealing.cz', NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'00011', N'Vedoucí technik', NULL, NULL, NULL, N'847123452', N'patrik@google.com', N'002', NULL, NULL, NULL)
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'00356', N'ing. Karlík', N'Náhrobní 74', N'74251', N'Odry', N'125315471', N'Kar.ing@google.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'0871', N'Dohnalová Pavla', N'Útočná 5', N'21541', N'Hradec Králové', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'094', N'Julius Josef', N'Římská 77', N'11111', NULL, NULL, N'cesar@roma.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'213', N'Vít Pavel', N'Nadační 20', N'72645', N'Náchod', N'418332412', N'vittt@seznam.cz', NULL, NULL, N'HBA', N'084')
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'32', N'H.Valigurová', N'Jeremenkova 665', N'75481', N'Bohumín', N'151516626', N'val@centrum.cz', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'331', N'Tieto s.r.o.', NULL, N'70080', N'Ostrava', NULL, N'tioeto@emal.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[osoby] ([Osobni_cislo], [Jmeno], [Ulice], [PSC], [Mesto], [Telefon], [Mail], [Kod_zavodu], [Neaktivni], [Firma], [KodFunkce]) VALUES (N'332', N'MOTOR SYSTÉM', N'Na malé straně', N'70041', N'Praha', N'186326455', N'moto@seznam.cz', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[pracoviste] ([kod], [Nazev], [Tel], [Email]) VALUES (N'001', N'Pracoviště 1', N'441', N'prac@google.com')
GO
INSERT [dbo].[pracoviste] ([kod], [Nazev], [Tel], [Email]) VALUES (N'002', N'Pracoviště 2', N'440', NULL)
GO
INSERT [dbo].[pracoviste] ([kod], [Nazev], [Tel], [Email]) VALUES (N'003', N'Řezačka', NULL, NULL)
GO
INSERT [dbo].[pracoviste] ([kod], [Nazev], [Tel], [Email]) VALUES (N'004', N'Stáčení', NULL, NULL)
GO
INSERT [dbo].[pracoviste] ([kod], [Nazev], [Tel], [Email]) VALUES (N'005', N'Stanice ALFA', N'111', N'alpha@google.com')
GO
INSERT [dbo].[VyrobceMer] ([Kod], [Nazev]) VALUES (N'001', N'Bosch')
GO
INSERT [dbo].[VyrobceMer] ([Kod], [Nazev]) VALUES (N'002', N'Tieto')
GO
INSERT [dbo].[VyrobceMer] ([Kod], [Nazev]) VALUES (N'003', N'Libeherr')
GO
INSERT [dbo].[VyrobceMer] ([Kod], [Nazev]) VALUES (N'004', N'Stein a.s.')
GO
INSERT [dbo].[Zavody] ([Kod], [Nazev], [Adresa]) VALUES (N'001', N'Závod 1', N'Na rohu 12')
GO
INSERT [dbo].[Zavody] ([Kod], [Nazev], [Adresa]) VALUES (N'002', N'Závod 2', NULL)
GO
INSERT [dbo].[Zavody] ([Kod], [Nazev], [Adresa]) VALUES (N'003', N'Závod 3 ', N'Před rohem 1')
GO
INSERT [dbo].[Zavody] ([Kod], [Nazev], [Adresa]) VALUES (N'004', N'Válcovna', NULL)
GO
