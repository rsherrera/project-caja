----------------------------------------------------------------------------------------------------------------
-- Mostrar el Mes-A�o inicial de un trimestre en caso de que se corresponda con el mes-a�o actual del sistema.--
----------------------------------------------------------------------------------------------------------------
USE CIP_TESTING;
GO
DECLARE @fechasistema datetime; 
SET @fechasistema = GETDATE(); --'2015-03-17 00:00:00.000'; 

SELECT Mes, Anio as A�o FROM MesAporte
WHERE Month(@fechasistema)like Mes and YEAR(@fechasistema)like Anio and PrimerMes=1

--select mes, Anio as A�o from MesAporte where PrimerMes='1'