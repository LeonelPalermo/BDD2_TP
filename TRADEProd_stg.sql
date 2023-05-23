USE [staging]
GO

/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ARTICULOS](
	[CODIGO_PRODUCTO] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[FAMILIA] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[COSTO_UNITARIO] [int] NULL)
GO

/****** Object:  Table [dbo].[CLIENTES]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CLIENTES](
	[NRO] [smallint] NULL,
	[ID_CLIENTE] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[ESTADO_CIVIL] [nvarchar](255) NULL,
	[RESIDENCIA] [nvarchar](255) NULL,
	[ORIGEN] [nvarchar](255) NULL)
GO

/****** Object:  Table [dbo].[ClientesSauco]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ClientesSauco](
	[ID_CLIENTE] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[LUGAR ORIGEN] [nvarchar](255) NULL,
	[PREFERENCIA COLOR] [nvarchar](255) NULL,
	[TIPO DE COMIDA] [nvarchar](255) NULL,
	[ESTADO CIVIL] [nvarchar](255) NULL,
	[CANTIDAD DE HIJOS] [smallint] NULL,
	[FIDELIDAD] [nvarchar](255) NULL,
	[COMPRASAUCO] [nvarchar](255) NULL
)
GO

/****** Object:  Table [dbo].[COMUNA]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[COMUNA](
	[COMUNA_ID] [smallint] NOT NULL,
	[COMUNA_NOMBRE] [nvarchar](255) NULL,
	[PROVINCIA_ID] [smallint] NULL)
GO

/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DETALLE_VENTA](
	[DOCUMENTO] [nvarchar](255) NULL,
	[CODIGO_PRODUCTO] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[CANTIDAD] [int] NULL,
	[TOTAL] [int] NULL
)
GO

/****** Object:  Table [dbo].[ProspectosClientesSauco]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProspectosClientesSauco](
	[NRO_CLIENTE] [smallint] NULL,
	[ID_CLIENTE] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[RESIDENCIA] [nvarchar](255) NULL,
	[ORIGEN] [nvarchar](255) NULL,
	[PREFERENCIA COLOR] [nvarchar](255) NULL,
	[TIPO DE COMIDA] [nvarchar](255) NULL,
	[ESTADO CIVIL] [nvarchar](255) NULL,
	[CANTIDAD DE HIJOS] [smallint] NULL,
	[FIDELIDAD] [nvarchar](255) NULL
)
GO

/****** Object:  Table [dbo].[PROVINCIA]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PROVINCIA](
	[PROVINCIA_ID] [smallint] NOT NULL,
	[PROVINCIA_NOMBRE] [nvarchar](255) NULL,
	[REGION_ID] [smallint] NULL)
GO

/****** Object:  Table [dbo].[REGION]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[REGION](
	[REGION_ID] [smallint] NOT NULL,
	[REGION] [nvarchar](255) NULL)
GO

/****** Object:  Table [dbo].[SUCURSAL]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SUCURSAL](
	[SUCURSAL_ID] [smallint] NOT NULL,
	[NOMBRE_SUCURSAL] [nvarchar](255) NULL,
	[COMUNA_ID] [smallint] NULL)
GO

/****** Object:  Table [dbo].[VENDEDORES]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VENDEDORES](
	[ID_VENDEDOR] [smallint] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Apellido] [nvarchar](255) NULL,
	[TIPO_ CAPACITACION] [nvarchar](255) NULL,
	[HORAS_CAPACITACION] [smallint] NULL)
GO

/****** Object:  Table [dbo].[VENTAS]    Script Date: 22/5/2023 20:10:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VENTAS](
	[DOCUMENTO] [nvarchar](255) NOT NULL,
	[FECHA] [datetime] NULL,
	[ID_CLIENTE] [nvarchar](255) NULL,
	[TIPO_DOCUMENTO] [nvarchar](255) NULL,
	[ID_VENDEDOR] [smallint] NULL,
	[TOTAL_NETO] [int] NULL,
	[IMPUESTO] [int] NULL,
	[TOTAL_DOCUMENTO] [int] NULL,
	[SUCURSAL_ID] [smallint] NULL)
GO


