USE [CIP_DESARROLLO]
GO

/****** Object:  Table [dbo].[UsuarioRol]    Script Date: 04/13/2015 21:30:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UsuarioRol](
	[IdRol] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[RolEscritura] [bit] NULL,
	[RolLectura] [bit] NULL,
	[RolConsulta] [bit] NULL,
 CONSTRAINT [PK_UsuarioRol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


