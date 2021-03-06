USE [CIP_TESTING]
GO
/****** Object:  StoredProcedure [dbo].[spAgregaAportes]    Script Date: 04/08/2015 20:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[spAgregaAportes]
    @idtrimestre as int,
    @mes1 AS int,
    @anio1 AS VARCHAR(50),
    @mes2 AS int,
    @anio2 AS VARCHAR(50),
    @mes3 AS int,
    @anio3 AS VARCHAR(50),
    @useralta AS VARCHAR(50),
    @usermodi AS VARCHAR(50),
    @vencim11 VARCHAR(10),
    @vencim12 VARCHAR(10),
    @vencim21 VARCHAR(10),
    @vencim22 VARCHAR(10),
    @vencim31 VARCHAR(10),
    @vencim32 VARCHAR(10),
    @importeV11 decimal(16,2),
    @importeV12 decimal(16,2),
    @importeV13 decimal(16,2),
    @importeV14 decimal(16,2),
    @msg AS VARCHAR(100) OUTPUT

AS
BEGIN
declare  @importeV21 decimal(16,2),
    @importeV22 decimal(16,2),
    @importeV23 decimal(16,2),
    @importeV24 decimal(16,2)
    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try
    if (@importeV11<>-1)
    set @importeV21=((@importeV11*1)/100)+@importeV11
	else set @importeV21=-1;
	
	if (@importeV12<>-1)
    set @importeV22=((@importeV12*1)/100)+@importeV12
	else set @importeV22=-1;
	
	if (@importeV13<>-1)
    set @importeV23=((@importeV13*1)/100)+@importeV13
	else set @importeV23=-1;
	
	if (@importeV14<>-1)
    set @importeV24=((@importeV14*1)/100)+@importeV14
	else set @importeV24=-1;
	
        INSERT INTO MesAporte VALUES (@idtrimestre,1, @mes1, @anio1,convert (datetime,@vencim11,105),convert (datetime,@vencim12,105) ,
        @importeV11,@importeV21,@importeV12,@importeV22,@importeV13,@importeV23,
		@importeV14,@importeV24,@useralta,GETDATE(),null,null,0)
		
		
		INSERT INTO MesAporte VALUES (@idtrimestre,0,@mes2, @anio2,convert (datetime,@vencim21,105) ,convert (datetime,@vencim22,105) ,
			@importeV11,@importeV21,@importeV12,@importeV22,@importeV13,@importeV23,
			@importeV14,@importeV24,@useralta,GETDATE(),null,null,0)
		
			
		INSERT INTO MesAporte VALUES (@idtrimestre,0,@mes3, @anio3,convert (datetime,@vencim31,105)	,convert (datetime,@vencim32,105) ,
			@importeV11,@importeV21,@importeV12,@importeV22,@importeV13,@importeV23,@importeV14,
			@importeV24,@useralta,GETDATE(),null,null,0)
			
        SET @msg = 'El Aporte se registro correctamente.'

        COMMIT TRAN Tadd

    End try
    Begin Catch

        SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd

    End Catch

END
