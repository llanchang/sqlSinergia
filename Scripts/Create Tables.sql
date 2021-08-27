USE [SINERGIA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tcategoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tcategoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SINERGIA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tmarca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tmarca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SINERGIA]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tproveedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tproveedor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [SINERGIA]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tproductohistorico](
	[id] [int] NULL,
	[descripcion] [varchar](50) NULL,
	[medidas] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](18, 0) NULL,
	[marcaid] [int] NULL,
	[proveedorid] [int] NULL,
	[categoriaid] [int] NULL
) ON [PRIMARY]
GO



USE [SINERGIA]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tproducto](
	[id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[medidas] [varchar](50) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[marcaid] [int] NOT NULL,
	[proveedorid] [int] NOT NULL,
	[categoriaid] [int] NOT NULL,
 CONSTRAINT [PK_tproducto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tproducto]  WITH CHECK ADD  CONSTRAINT [FK_tproducto_tcategoria] FOREIGN KEY([categoriaid])
REFERENCES [dbo].[tcategoria] ([id])
GO

ALTER TABLE [dbo].[tproducto] CHECK CONSTRAINT [FK_tproducto_tcategoria]
GO

ALTER TABLE [dbo].[tproducto]  WITH CHECK ADD  CONSTRAINT [FK_tproducto_tmarca] FOREIGN KEY([marcaid])
REFERENCES [dbo].[tmarca] ([id])
GO

ALTER TABLE [dbo].[tproducto] CHECK CONSTRAINT [FK_tproducto_tmarca]
GO

ALTER TABLE [dbo].[tproducto]  WITH CHECK ADD  CONSTRAINT [FK_tproducto_tproveedor] FOREIGN KEY([proveedorid])
REFERENCES [dbo].[tproveedor] ([id])
GO

ALTER TABLE [dbo].[tproducto] CHECK CONSTRAINT [FK_tproducto_tproveedor]
GO






