USE [CIP_DESARROLLO]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 04/13/2015 21:30:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] NOT NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[DNI] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IdRol] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[UsuarioRol] ([IdRol])
GO

ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO


