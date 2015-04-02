USE [CIP_LOCAL]
GO

/****** Object:  Table [dbo].[MesAporte]    Script Date: 04/02/2015 18:28:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MesAporte](
	[IdMesAporte] [int] IDENTITY(1,1) NOT NULL,
	[IdTrimestre] [int] NOT NULL,
	[PrimerMes] [bit] NULL,
	[Mes] [int] NULL,
	[Anio] [varchar](50) NULL,
	[Vencimiento1] [datetime] NULL,
	[Vencimiento2] [datetime] NULL,
	[ImporteV1N1] [float] NULL,
	[ImporteV2N1] [float] NULL,
	[ImporteV1N2] [float] NULL,
	[ImporteV2N2] [float] NULL,
	[ImporteV1N3] [float] NULL,
	[ImporteV2N3] [float] NULL,
	[ImporteV1N4] [float] NULL,
	[ImporteV2N4] [float] NULL,
	[UserAlta] [varchar](50) NULL,
	[FechaAlta] [datetime] NULL,
	[UserModif] [varchar](50) NULL,
	[FechaModif] [datetime] NULL,
	[EmisionMasiva] [bit] NULL,
 CONSTRAINT [PK_MesAporte] PRIMARY KEY CLUSTERED 
(
	[IdMesAporte] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MesAporte]  WITH CHECK ADD  CONSTRAINT [FK_MesAporte_Trimestres] FOREIGN KEY([IdTrimestre])
REFERENCES [dbo].[Trimestre] ([IdTrimestre])
GO

ALTER TABLE [dbo].[MesAporte] CHECK CONSTRAINT [FK_MesAporte_Trimestres]
GO


