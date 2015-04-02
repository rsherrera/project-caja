UPDATE [CIP_LOCAL].[dbo].[MesAporte]
   SET [IdTrimestre] = <IdTrimestre, int,>
      ,[PrimerMes] = <PrimerMes, bit,>
      ,[Mes] = <Mes, int,>
      ,[Anio] = <Anio, varchar(50),>
      ,[Vencimiento1] = <Vencimiento1, datetime,>
      ,[Vencimiento2] = <Vencimiento2, datetime,>
      ,[ImporteV1N1] = <ImporteV1N1, float,>
      ,[ImporteV2N1] = <ImporteV2N1, float,>
      ,[ImporteV1N2] = <ImporteV1N2, float,>
      ,[ImporteV2N2] = <ImporteV2N2, float,>
      ,[ImporteV1N3] = <ImporteV1N3, float,>
      ,[ImporteV2N3] = <ImporteV2N3, float,>
      ,[ImporteV1N4] = <ImporteV1N4, float,>
      ,[ImporteV2N4] = <ImporteV2N4, float,>
      ,[UserAlta] = <UserAlta, varchar(50),>
      ,[FechaAlta] = <FechaAlta, datetime,>
      ,[UserModif] = <UserModif, varchar(50),>
      ,[FechaModif] = <FechaModif, datetime,>
      ,[EmisionMasiva] = <EmisionMasiva, bit,>
 WHERE <Search Conditions,,>
GO


