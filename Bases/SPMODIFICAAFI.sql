USE [CIP_TESTING]
GO
/****** Object:  StoredProcedure [dbo].[spModificaAfiliado]    Script Date: 04/06/2015 19:02:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[spModificaAfiliado]
	/*nivelopcionar*/
	--@selloO as int,
	--@selloanioO AS int,
	--@fechasoli VARCHAR(10),
	--@fechadicta VARCHAR(10),
	@aported as int,
	@aporteh as int,
	@user AS VARCHAR(50),
    /*nivel*/
	 @nivel AS int,
   /*afiliado*/
	 @Matricula as int,
	 @IdProfesion as int,
	 @Apellido AS VARCHAR(50),
	 @Nombre AS VARCHAR(50),
	 @FechaNacimiento VARCHAR(10),
	 @Sexo VARCHAR(1),
	 @TipoDoc as int,
	 @Documento VARCHAR(50),
	 @CUIT VARCHAR(50),
	 @Telefono VARCHAR(50),
	 @Email VARCHAR(50),
	 @Domicilio VARCHAR(50),
	 @Localidad VARCHAR(50),
	 @IdProvincia as int,
	 @Pais VARCHAR(50),
	 @CodigoPostal as int,
	 @Banco as VARCHAR(1),
	 @FechaMatricula as VARCHAR(10),
	 @FechaDeAlta as VARCHAR(10),
	 @FechaTitulo  as VARCHAR(10),
	
	 
	 /*afiliadodebito*/
	@Tipoaporte as  VARCHAR(20),
	@TipoDebito as  VARCHAR(20),
	@TipoaporteV as  VARCHAR(20),
	@TipoDebitoV as  VARCHAR(20),
	@TipoaporteP as  VARCHAR(20),
	@TipoDebitoP as  VARCHAR(20),
	@TipoaporteJ as  VARCHAR(20),
	@TipoDebitoJ as  VARCHAR(20),
	@TipoaporteG as  VARCHAR(20),
	@TipoDebitoG as  VARCHAR(20),
	@IDMesAporte as int,
	@VigenteDesde as VARCHAR(10),
	
	/*APORTE ACTUAL*/
	/*bancodebitoautomatico*/
	@NumeroCuenta as  VARCHAR(50),
	@Sucursal as  VARCHAR(50),
	@TipoCuenta as int,
	
	/*bancodebitocomafi*/
	@NumeroTarjeta as  VARCHAR(50),
	@FechaVigencia as VARCHAR(10),
	@TipoVisa as  VARCHAR(50),
	
	/*bancodebitodirecto*/
	@BancoNombre as  VARCHAR(50),
	@CBU as  VARCHAR(50),
		
	/*APORTE ATRASADO*/
	/*bancodebitoautomatico*/
	@NumeroCuentaA as  VARCHAR(50),
	@SucursalA as  VARCHAR(50),
	@TipoCuentaA as int,
	
	/*bancodebitocomafi*/
	@NumeroTarjetaA as  VARCHAR(50),
	@FechaVigenciaA as VARCHAR(10),
	@TipoVisaA as  VARCHAR(50),
	
	/*bancodebitodirecto*/
	@BancoNombreA as  VARCHAR(50),
	@CBUA as  VARCHAR(50),
	
	/*APORTE PRESTAMO*/
	/*bancodebitoautomatico*/
	@NumeroCuentaP as  VARCHAR(50),
	@SucursalP as  VARCHAR(50),
	@TipoCuentaP as int,
	
	/*bancodebitocomafi*/
	@NumeroTarjetaP as  VARCHAR(50),
	@FechaVigenciaP as VARCHAR(10),
	@TipoVisaP as  VARCHAR(50),
	
	/*bancodebitodirecto*/
	@BancoNombreP as  VARCHAR(50),
	@CBUP as  VARCHAR(50),
	
	/*APORTE JUDICIAL*/
	/*bancodebitoautomatico*/
	@NumeroCuentaJ as  VARCHAR(50),
	@SucursalJ as  VARCHAR(50),
	@TipoCuentaJ as int,
	
	/*bancodebitocomafi*/
	@NumeroTarjetaJ as  VARCHAR(50),
	@FechaVigenciaJ as VARCHAR(10),
	@TipoVisaJ as  VARCHAR(50),
	
	/*bancodebitodirecto*/
	@BancoNombreJ as  VARCHAR(50),
	@CBUJ as  VARCHAR(50),
	
	/*APORTE GASTOS*/
	/*bancodebitoautomatico*/
	@NumeroCuentaG as  VARCHAR(50),
	@SucursalG as  VARCHAR(50),
	@TipoCuentaG as int,
	
	/*bancodebitocomafi*/
	@NumeroTarjetaG as  VARCHAR(50),
	@FechaVigenciaG as VARCHAR(10),
	@TipoVisaG as  VARCHAR(50),
	
	/*bancodebitodirecto*/
	@BancoNombreG as  VARCHAR(50),
	@CBUG as  VARCHAR(50),
	 
	 /* modifica*/
	 @idafiliado int,
	 @modidatos varchar(2),
	 @modicate varchar(2),
	 @modidebito varchar(2),
	 @FechaDictamen as VARCHAR(10),
	 @FechaSolicitud as VARCHAR(10),
	 @Sello  as int,
	 @SelloAnio as int,
	 
	 @msg AS VARCHAR(100) OUTPUT

AS
BEGIN

    SET NOCOUNT ON;

    Begin Tran Tadd

    Begin Try 
    Declare @new_identity int,@new_identityidnivel int,
    @new_bdd int,@new_bdc int,@new_bda int,@idcausa int,
    @fs datetime,@fd datetime,@selloa int,@sanio int,@idnivel int,
	@DEBITOACTUAL varchar(50),@DEBITOAutoA int,@DEBITODirectoA int,@DEBITOcomafiA int,@idDEBITOACTUAL int
	,@DEBITOATRASADO varchar(50),@DEBITOAutoV int,@DEBITODirectoV int,@DEBITOcomafiV int,@idDEBITOATRASADO int	
	,@DEBITOPRESTAMO varchar(50),@DEBITOAutoP int,@DEBITODirectoP int,@DEBITOcomafiP int,@idDEBITOPRESTAMO int	
	,@DEBITOJUDICIAL varchar(50),@DEBITOAutoJ int,@DEBITODirectoJ int,@DEBITOcomafiJ int,@idDEBITOJUDICIAL int	
	,@DEBITOGASTOS varchar(50),@DEBITOAutoG int,@DEBITODirectoG int,@DEBITOcomafiG int,@idDEBITOGASTOS int	
	
			set @fs=(select FechaSolicitud from Afiliado where IdAfiliado=@idafiliado)
			set @fd=(select FechaDictamen from Afiliado where IdAfiliado=@idafiliado)
			set @selloa=(select Sello from Afiliado where IdAfiliado=@idafiliado)
			set @sanio=(select SelloAnio from Afiliado where IdAfiliado=@idafiliado)
			IF (@aported IS NOT NULL and @modicate='SI')
			begin
			INSERT INTO NivelOpcionar VALUES (@aported ,@aporteh,@user, GETDATE(),null,null)
			set @new_identity = SCOPE_IDENTITY()
			end
			else set @new_identity =null
			
			IF (len(ltrim(rtrim(@idafiliado)))>0 and @modidatos='SI')
			begin
			--sacar fechas y sellos antes de update, en primer momento fue asi desp se cambio
			
			update Afiliado set 
			Matricula=@Matricula,IdProfesion=@IdProfesion,Apellido=@Apellido,Nombre=@Nombre,
			FechaNacimiento=convert (datetime,@FechaNacimiento,105),Sexo=@Sexo,TipoDoc=@TipoDoc,
			Documento=@Documento,CUIT=@CUIT,Telefono=@Telefono,Email=@Email,Domicilio=@Domicilio,
			Localidad=@Localidad,IdProvincia=@IdProvincia,Pais=@Pais,CodigoPostal=@CodigoPostal,Banco=@Banco
			,FechaMatricula=convert (datetime,@FechaMatricula,105),FechaDeAlta=convert (datetime,@FechaDeAlta,105) ,
			FechaTitulo=convert (datetime,@FechaTitulo,105),
			UserModif=@User, FechaModif=GETDATE()
			where IdAfiliado=@idafiliado
			end
			
			IF ( @modicate='SI')
			BEGIN
			set @idnivel=(select idnivel from Nivel where IdAfiliado=@idafiliado and EstadoActual=1)
			if  (@idnivel>0)
			begin
			update Nivel set EstadoActual=0,UserModi=@user,FechaModif=GETDATE() where IdNivel=@idnivel
			INSERT INTO Nivel VALUES (@nivel,@new_identity,@idafiliado,1,@user,GETDATE(),null,null)
			set @idcausa= (select IdCausa from LegajoTipoCausa (nolock) c
			inner join  LegajoTipo (nolock) t on c.IdLegajoTipo=t.IdLegajoTipo
			where t.IdLegajoTipo=5)
			INSERT INTO legajo VALUES(@idafiliado,@idcausa,convert (datetime,@FechaSolicitud,105),convert (datetime,@FechaDictamen,105),@Sello,@SelloAnio ,GETDATE(),@user)
			end
			END		
			
			IF ( @modidebito='SI')
			BEGIN
			--APORTE ACTUAL
			IF (len(ltrim(rtrim(@Tipoaporte)))>0 and len(ltrim(rtrim(@TipoDebito)))>0 )
			BEGIN 	
			
			set @DEBITOACTUAL=(select TipoDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@Tipoaporte)
			if (ltrim(rtrim(@DEBITOACTUAL))=ltrim(rtrim(@TipoDebito)))
			Begin
			if (@TipoDebito='Directo' and len(ltrim(rtrim(@BancoNombre)))>0 and len(ltrim(rtrim(@CBU)))>0)
			begin
			set @DEBITODirectoA=(select IDBancoDirecto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@Tipoaporte)
			update bancodebitodirecto set BancoNombre=@BancoNombre,CBU= @CBU where  IDBancoDirecto=@DEBITODirectoA
			end
			
			else if (@TipoDebito='Comafi' and len(ltrim(rtrim(@NumeroTarjeta)))>0 and  len(ltrim(rtrim(@TipoVisa)))>0 and  len(ltrim(rtrim(@FechaVigencia)))>0)
			begin
			set @DEBITOcomafiA=(select IDBancoComafi from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@Tipoaporte)
			update bancodebitocomafi set NumeroTarjeta=@NumeroTarjeta,TipoVisa= @TipoVisa,FechaVigencia=convert (datetime,@FechaVigencia,105) where IDBancoComafi=@DEBITOcomafiA
			end
			
			else if (@TipoDebito='Automatico' and len(ltrim(rtrim(@NumeroCuenta )))>0 and len(ltrim(rtrim( @Sucursal )))>0 and len(ltrim(rtrim(@TipoCuenta )))>0  )
			begin
			set @DEBITOAutoA=(select IDBancoAuto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@Tipoaporte)
			update bancodebitoautomatico set NumeroCuenta=@NumeroCuenta,Sucursal= @Sucursal,TipoCuenta=@TipoCuenta 
			where IDBancoAuto=@DEBITOAutoA
			end
			update  AfiliadoDebito set idmesaporte=@IDMesAporte,VigenteDesde=convert (datetime,@VigenteDesde,105)
			,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@Tipoaporte
			End --if (ltrim(rtrim(@DEBITOACTUAL))=ltrim(rtrim(@TipoDebito)))
								
			else if (ltrim(rtrim(@DEBITOACTUAL))<>ltrim(rtrim(@TipoDebito)) or @DEBITOACTUAL is null)
			Begin
			IF (len(ltrim(rtrim(@NumeroCuenta )))>0 and len(ltrim(rtrim( @Sucursal )))>0 and len(ltrim(rtrim(@TipoCuenta )))>0  )
			begin
			INSERT INTO bancodebitoautomatico VALUES (@NumeroCuenta,@Sucursal,@TipoCuenta) 
			set @new_bda = SCOPE_IDENTITY()
			end
			else set @new_bda =null
			
			IF ( len(ltrim(rtrim(@NumeroTarjeta)))>0 and  len(ltrim(rtrim(@TipoVisa)))>0 and  len(ltrim(rtrim(@FechaVigencia)))>0  )
			begin
			INSERT INTO bancodebitocomafi VALUES (@NumeroTarjeta,convert (datetime,@FechaVigencia,105),@TipoVisa ) 
			set @new_bdc = SCOPE_IDENTITY()
			end
			else set @new_bdc =null
			
			IF ( len(ltrim(rtrim(@BancoNombre)))>0 and len(ltrim(rtrim(@CBU)))>0  )
			begin
			INSERT INTO bancodebitodirecto VALUES (@BancoNombre,@CBU) 
			set @new_bdd = SCOPE_IDENTITY()
			end
			else set @new_bdd =null
			if @DEBITOACTUAL is not null
			begin
			set @idDEBITOACTUAL=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@Tipoaporte)
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOACTUAL
			end
	
			INSERT INTO AfiliadoDebito VALUES 
			(@Tipoaporte,@TipoDebito ,@idafiliado,	@IDMesAporte ,
			convert (datetime,@VigenteDesde,105), 1 ,@user, GETDATE(),null,null,@new_bda,@new_bdd,@new_bdc) 
			End--else if (ltrim(rtrim(@DEBITOACTUAL))<>ltrim(rtrim(@TipoDebito)))
			
			END 
			else IF (len(ltrim(rtrim(@Tipoaporte)))=0 and len(ltrim(rtrim(@TipoDebito)))=0 )
			BEGIN
			set @idDEBITOACTUAL=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte='Actual')
			IF  (@idDEBITOACTUAL>0)
			begin
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOACTUAL
			end
			END--else IF (len(ltrim(rtrim(@Tipoaporte)))=0 and len(ltrim(rtrim(@TipoDebito)))=0 )
			
			--APORTE ATRASADO
			IF (len(ltrim(rtrim(@TipoaporteV)))>0 and len(ltrim(rtrim(@TipoDebitoV)))>0 )
			BEGIN 	
			
			set @DEBITOATRASADO=(select TipoDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteV)
			if (ltrim(rtrim(@DEBITOATRASADO))=ltrim(rtrim(@TipoDebitoV)))
			Begin
			if (@TipoDebitoV='Directo' and len(ltrim(rtrim(@BancoNombreA)))>0 and len(ltrim(rtrim(@CBUA)))>0)
			begin
			set @DEBITODirectoV=(select IDBancoDirecto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteV)
			update bancodebitodirecto set BancoNombre=@BancoNombreA,CBU= @CBUA where  IDBancoDirecto=@DEBITODirectoV
			end
			
			else if (@TipoDebitoV='Comafi' and len(ltrim(rtrim(@NumeroTarjetaA)))>0 and  len(ltrim(rtrim(@TipoVisaA)))>0 and  len(ltrim(rtrim(@FechaVigenciaA)))>0)
			begin
			set @DEBITOcomafiV=(select IDBancoComafi from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteV)
			update bancodebitocomafi set NumeroTarjeta=@NumeroTarjetaA,TipoVisa= @TipoVisaA,FechaVigencia=convert (datetime,@FechaVigenciaA,105) where IDBancoComafi=@DEBITOcomafiV
			end
			
			else if (@TipoDebitoV='Automatico' and len(ltrim(rtrim(@NumeroCuentaA )))>0 and len(ltrim(rtrim( @SucursalA )))>0 and len(ltrim(rtrim(@TipoCuentaA )))>0  )
			begin
			set @DEBITOAutoV=(select IDBancoAuto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteV)
			update bancodebitoautomatico set NumeroCuenta=@NumeroCuentaA,Sucursal= @SucursalA,TipoCuenta=@TipoCuentaA 
			where IDBancoAuto=@DEBITOAutoV
			end
			update  AfiliadoDebito set idmesaporte=@IDMesAporte,VigenteDesde=convert (datetime,@VigenteDesde,105)
			,UserModi=@User ,FechaModi= GETDATE()where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteV
			End --if (ltrim(rtrim(@DEBITOACTUAL))=ltrim(rtrim(@TipoDebito)))
							
			else if (ltrim(rtrim(@DEBITOATRASADO))<>ltrim(rtrim(@TipoDebitoV))or @DEBITOATRASADO is null)
			Begin
			IF (len(ltrim(rtrim(@NumeroCuentaA )))>0 and len(ltrim(rtrim( @SucursalA )))>0 and len(ltrim(rtrim(@TipoCuentaA )))>0  )
			begin
			INSERT INTO bancodebitoautomatico VALUES (@NumeroCuentaA,@SucursalA,@TipoCuentaA) 
			set @new_bda = SCOPE_IDENTITY()
			end
			else set @new_bda =null
			
			IF ( len(ltrim(rtrim(@NumeroTarjetaA)))>0 and  len(ltrim(rtrim(@TipoVisaA)))>0 and  len(ltrim(rtrim(@FechaVigenciaA)))>0  )
			begin
			INSERT INTO bancodebitocomafi VALUES (@NumeroTarjetaA,convert (datetime,@FechaVigenciaA,105),@TipoVisaA ) 
			set @new_bdc = SCOPE_IDENTITY()
			end
			else set @new_bdc =null
			
			IF ( len(ltrim(rtrim(@BancoNombreA)))>0 and len(ltrim(rtrim(@CBUA)))>0  )
			begin
			INSERT INTO bancodebitodirecto VALUES (@BancoNombreA,@CBUA) 
			set @new_bdd = SCOPE_IDENTITY()
			end
			else set @new_bdd =null
			if @DEBITOATRASADO is not null
			begin
			set @idDEBITOATRASADO=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteV)
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOATRASADO
			end
	
			INSERT INTO AfiliadoDebito VALUES 
			(@TipoaporteV,@TipoDebitoV ,@idafiliado,	@IDMesAporte ,
			convert (datetime,@VigenteDesde,105), 1 ,@user, GETDATE(),null,null,@new_bda,@new_bdd,@new_bdc) 
			End--else if (ltrim(rtrim(@DEBITOACTUAL))<>ltrim(rtrim(@TipoDebito)))
				
			
			END
			else IF (len(ltrim(rtrim(@TipoaporteV)))=0 and len(ltrim(rtrim(@TipoDebitoV)))=0 )
			BEGIN
			set @idDEBITOATRASADO=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte='Atrasado')
			IF  (@idDEBITOATRASADO>0)
			begin
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOATRASADO
			end
			END--else IF (len(ltrim(rtrim(@Tipoaportev)))=0 and len(ltrim(rtrim(@TipoDebitov)))=0 )
			
			--PRESTAMO
			IF (len(ltrim(rtrim(@TipoaporteP)))>0 and len(ltrim(rtrim(@TipoDebitoP)))>0 )
			BEGIN 	
			
			set @DEBITOPRESTAMO=(select TipoDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteP)
			if (ltrim(rtrim(@DEBITOPRESTAMO))=ltrim(rtrim(@TipoDebitoP)))
			Begin
			if (@TipoDebitoP='Directo' and len(ltrim(rtrim(@BancoNombreP)))>0 and len(ltrim(rtrim(@CBUP)))>0)
			begin
			set @DEBITODirectoP=(select IDBancoDirecto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteP)
			update bancodebitodirecto set BancoNombre=@BancoNombreP,CBU= @CBUP where  IDBancoDirecto=@DEBITODirectoP
			end
			
			else if (@TipoDebitoP='Comafi' and len(ltrim(rtrim(@NumeroTarjetaP)))>0 and  len(ltrim(rtrim(@TipoVisaP)))>0 and  len(ltrim(rtrim(@FechaVigenciaP)))>0)
			begin
			set @DEBITOcomafiP=(select IDBancoComafi from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteP)
			update bancodebitocomafi set NumeroTarjeta=@NumeroTarjetaP,TipoVisa= @TipoVisaP,FechaVigencia=convert (datetime,@FechaVigenciaP,105) where IDBancoComafi=@DEBITOcomafiP
			end
			
			else if (@TipoDebitoP='Automatico' and len(ltrim(rtrim(@NumeroCuentaP )))>0 and len(ltrim(rtrim( @SucursalP )))>0 and len(ltrim(rtrim(@TipoCuentaP)))>0  )
			begin
			set @DEBITOAutoP=(select IDBancoAuto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteP)
			update bancodebitoautomatico set NumeroCuenta=@NumeroCuentaP,Sucursal= @SucursalP,TipoCuenta=@TipoCuentaP 
			where IDBancoAuto=@DEBITOAutoP
			end
			update  AfiliadoDebito set idmesaporte=@IDMesAporte,VigenteDesde=convert (datetime,@VigenteDesde,105)
			,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteP
			End --if (ltrim(rtrim(@DEBITOPRESTAMO))=ltrim(rtrim(@TipoDebitoP)))
			
					
			else if (ltrim(rtrim(@DEBITOPRESTAMO))<>ltrim(rtrim(@TipoDebitoP))or @DEBITOPRESTAMO is null)
			Begin
			IF (len(ltrim(rtrim(@NumeroCuentaP)))>0 and len(ltrim(rtrim( @SucursalP )))>0 and len(ltrim(rtrim(@TipoCuentaP)))>0  )
			begin
			INSERT INTO bancodebitoautomatico VALUES (@NumeroCuentaP,@SucursalP,@TipoCuentaP) 
			set @new_bda = SCOPE_IDENTITY()
			end
			else set @new_bda =null
			
			IF ( len(ltrim(rtrim(@NumeroTarjetaP)))>0 and  len(ltrim(rtrim(@TipoVisaP)))>0 and  len(ltrim(rtrim(@FechaVigenciaP)))>0  )
			begin
			INSERT INTO bancodebitocomafi VALUES (@NumeroTarjetaP,convert (datetime,@FechaVigenciaP,105),@TipoVisaP) 
			set @new_bdc = SCOPE_IDENTITY()
			end
			else set @new_bdc =null
			
			IF ( len(ltrim(rtrim(@BancoNombreP)))>0 and len(ltrim(rtrim(@CBUP)))>0  )
			begin
			INSERT INTO bancodebitodirecto VALUES (@BancoNombreP,@CBUP) 
			set @new_bdd = SCOPE_IDENTITY()
			end
			else set @new_bdd =null
			if @DEBITOPRESTAMO is not null
			begin
			set @idDEBITOPRESTAMO=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteP)
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOPRESTAMO
			end
	
			INSERT INTO AfiliadoDebito VALUES 
			(@TipoaporteP,@TipoDebitoP ,@idafiliado,@IDMesAporte ,
			convert (datetime,@VigenteDesde,105), 1 ,@user, GETDATE(),null,null,@new_bda,@new_bdd,@new_bdc) 
			End--else if (ltrim(rtrim(@DEBITOPRESTAMO))<>ltrim(rtrim(@TipoDebitoP)))
				
			
			END--IF (len(ltrim(rtrim(@TipoaporteP)))>0 and len(ltrim(rtrim(@TipoDebitoP)))>0 )
			
			else IF (len(ltrim(rtrim(@TipoaporteP)))=0 and len(ltrim(rtrim(@TipoDebitoP)))=0 )
			BEGIN
			set @idDEBITOPRESTAMO=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte='Prestamo')
			IF  (@idDEBITOPRESTAMO>0)
			begin
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOPRESTAMO
			end
			END--else IF (len(ltrim(rtrim(@TipoaporteP)))=0 and len(ltrim(rtrim(@TipoDebitoP)))=0 )
		
			--JUDICIAL
			IF (len(ltrim(rtrim(@TipoaporteJ)))>0 and len(ltrim(rtrim(@TipoDebitoJ)))>0 )
			BEGIN 	
			
			set @DEBITOJUDICIAL=(select TipoDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteJ)
			if (ltrim(rtrim(@DEBITOJUDICIAL))=ltrim(rtrim(@TipoDebitoJ)))
			Begin
			if (@TipoDebitoJ='Directo' and len(ltrim(rtrim(@BancoNombreJ)))>0 and len(ltrim(rtrim(@CBUJ)))>0)
			begin
			set @DEBITODirectoJ=(select IDBancoDirecto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteJ)
			update bancodebitodirecto set BancoNombre=@BancoNombreJ,CBU= @CBUJ where  IDBancoDirecto=@DEBITODirectoJ
			end
			
			else if (@TipoDebitoJ='Comafi' and len(ltrim(rtrim(@NumeroTarjetaJ)))>0 and  len(ltrim(rtrim(@TipoVisaJ)))>0 and  len(ltrim(rtrim(@FechaVigenciaJ)))>0)
			begin
			set @DEBITOcomafiJ=(select IDBancoComafi from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteJ)
			update bancodebitocomafi set NumeroTarjeta=@NumeroTarjetaJ,TipoVisa= @TipoVisaJ,FechaVigencia=convert (datetime,@FechaVigenciaJ,105) where IDBancoComafi=@DEBITOcomafiJ
			end
			
			else if (@TipoDebitoJ='Automatico' and len(ltrim(rtrim(@NumeroCuentaJ)))>0 and len(ltrim(rtrim( @SucursalJ)))>0 and len(ltrim(rtrim(@TipoCuentaJ)))>0  )
			begin
			set @DEBITOAutoJ=(select IDBancoAuto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteJ)
			update bancodebitoautomatico set NumeroCuenta=@NumeroCuentaJ,Sucursal= @SucursalJ,TipoCuenta=@TipoCuentaJ 
			where IDBancoAuto=@DEBITOAutoJ
			end
			update  AfiliadoDebito set idmesaporte=@IDMesAporte,VigenteDesde=convert (datetime,@VigenteDesde,105)
			,UserModi=@User,FechaModi= GETDATE() where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteJ
			End --if (ltrim(rtrim(@DEBITOJUDICIAL))=ltrim(rtrim(@TipoDebitoJ)))
			
					
			else if (ltrim(rtrim(@DEBITOJUDICIAL))<>ltrim(rtrim(@TipoDebitoJ))or @DEBITOJUDICIAL is null)
			Begin
			IF (len(ltrim(rtrim(@NumeroCuentaJ)))>0 and len(ltrim(rtrim(@SucursalJ)))>0 and len(ltrim(rtrim(@TipoCuentaJ)))>0  )
			begin
			INSERT INTO bancodebitoautomatico VALUES (@NumeroCuentaJ,@SucursalJ,@TipoCuentaJ) 
			set @new_bda = SCOPE_IDENTITY()
			end
			else set @new_bda =null
			
			IF ( len(ltrim(rtrim(@NumeroTarjetaJ)))>0 and  len(ltrim(rtrim(@TipoVisaJ)))>0 and  len(ltrim(rtrim(@FechaVigenciaJ)))>0  )
			begin
			INSERT INTO bancodebitocomafi VALUES (@NumeroTarjetaJ,convert (datetime,@FechaVigenciaJ,105),@TipoVisaJ) 
			set @new_bdc = SCOPE_IDENTITY()
			end
			else set @new_bdc =null
			
			IF ( len(ltrim(rtrim(@BancoNombreJ)))>0 and len(ltrim(rtrim(@CBUJ)))>0  )
			begin
			INSERT INTO bancodebitodirecto VALUES (@BancoNombreJ,@CBUJ) 
			set @new_bdd = SCOPE_IDENTITY()
			end
			else set @new_bdd =null
			if @DEBITOJUDICIAL is not null
			begin
			set @idDEBITOJUDICIAL=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteJ)
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOJUDICIAL
			end
	
			INSERT INTO AfiliadoDebito VALUES 
			(@TipoaporteJ,@TipoDebitoJ ,@idafiliado,@IDMesAporte ,
			convert (datetime,@VigenteDesde,105), 1 ,@user, GETDATE(),null,null,@new_bda,@new_bdd,@new_bdc) 
			End--else if (ltrim(rtrim(@DEBITOJUDICIAL))<>ltrim(rtrim(@TipoDebitoJ)))
				
			
			END--IF (len(ltrim(rtrim(@TipoaporteJ)))>0 and len(ltrim(rtrim(@TipoDebitoJ)))>0 )
			
			else IF (len(ltrim(rtrim(@TipoaporteJ)))=0 and len(ltrim(rtrim(@TipoDebitoJ)))=0 )
			BEGIN
			set @idDEBITOJUDICIAL=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte='Judicial')
			IF  (@idDEBITOJUDICIAL>0)
			begin
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOJUDICIAL
			end
			END--else IF (len(ltrim(rtrim(@Tipoaportej)))=0 and len(ltrim(rtrim(@TipoDebitoj)))=0 )
				
			
			--GASTOS
			IF (len(ltrim(rtrim(@TipoaporteG)))>0 and len(ltrim(rtrim(@TipoDebitoG)))>0 )
			BEGIN 	
			
			set @DEBITOGASTOS=(select TipoDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteG)
			if (ltrim(rtrim(@DEBITOGASTOS))=ltrim(rtrim(@TipoDebitoG)))
			Begin
			if (@TipoDebitoG='Directo' and len(ltrim(rtrim(@BancoNombreG)))>0 and len(ltrim(rtrim(@CBUG)))>0)
			begin
			set @DEBITODirectoG=(select IDBancoDirecto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteG)
			update bancodebitodirecto set BancoNombre=@BancoNombreG,CBU= @CBUG where  IDBancoDirecto=@DEBITODirectoG
			end
			
			else if (@TipoDebitoG='Comafi' and len(ltrim(rtrim(@NumeroTarjetaG)))>0 and  len(ltrim(rtrim(@TipoVisaG)))>0 and  len(ltrim(rtrim(@FechaVigenciaG)))>0)
			begin
			set @DEBITOcomafiG=(select IDBancoComafi from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteG)
			update bancodebitocomafi set NumeroTarjeta=@NumeroTarjetaG,TipoVisa= @TipoVisaG,FechaVigencia=convert (datetime,@FechaVigenciaG,105) where IDBancoComafi=@DEBITOcomafiG
			end
			
			else if (@TipoDebitoG='Automatico' and len(ltrim(rtrim(@NumeroCuentaG)))>0 and len(ltrim(rtrim(@SucursalG)))>0 and len(ltrim(rtrim(@TipoCuentaG)))>0  )
			begin
			set @DEBITOAutoG=(select IDBancoAuto from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteG)
			update bancodebitoautomatico set NumeroCuenta=@NumeroCuentaG,Sucursal= @SucursalG,TipoCuenta=@TipoCuentaG
			where IDBancoAuto=@DEBITOAutoG
			end
			update  AfiliadoDebito set idmesaporte=@IDMesAporte,VigenteDesde=convert (datetime,@VigenteDesde,105)
			,UserModi=@User,FechaModi= GETDATE() where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteG
			End --if (ltrim(rtrim(@DEBITOGASTOS))=ltrim(rtrim(@TipoDebitoG)))
			
					
			else if (ltrim(rtrim(@DEBITOGASTOS))<>ltrim(rtrim(@TipoDebitoG))or @DEBITOGASTOS is null)
			Begin
			IF (len(ltrim(rtrim(@NumeroCuentaG)))>0 and len(ltrim(rtrim( @SucursalG)))>0 and len(ltrim(rtrim(@TipoCuentaG)))>0  )
			begin
			INSERT INTO bancodebitoautomatico VALUES (@NumeroCuentaG,@SucursalG,@TipoCuentaG) 
			set @new_bda = SCOPE_IDENTITY()
			end
			else set @new_bda =null
			
			IF ( len(ltrim(rtrim(@NumeroTarjetaG)))>0 and  len(ltrim(rtrim(@TipoVisaG)))>0 and  len(ltrim(rtrim(@FechaVigenciaG)))>0  )
			begin
			INSERT INTO bancodebitocomafi VALUES (@NumeroTarjetaG,convert (datetime,@FechaVigenciaG,105),@TipoVisaG) 
			set @new_bdc = SCOPE_IDENTITY()
			end
			else set @new_bdc =null
			
			IF ( len(ltrim(rtrim(@BancoNombreG)))>0 and len(ltrim(rtrim(@CBUG)))>0  )
			begin
			INSERT INTO bancodebitodirecto VALUES (@BancoNombreG,@CBUG) 
			set @new_bdd = SCOPE_IDENTITY()
			end
			else set @new_bdd =null
			if @DEBITOGASTOS is not null
			begin
			set @idDEBITOGASTOS=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte=@TipoaporteG)
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOGASTOS
			end
	
			INSERT INTO AfiliadoDebito VALUES 
			(@TipoaporteG,@TipoDebitoG ,@idafiliado,@IDMesAporte ,
			convert (datetime,@VigenteDesde,105), 1 ,@user, GETDATE(),null,null,@new_bda,@new_bdd,@new_bdc) 
			End--else if (ltrim(rtrim(@DEBITOJUDICIAL))<>ltrim(rtrim(@TipoDebitoJ)))
				
			
			END--IF (len(ltrim(rtrim(@TipoaporteG)))>0 and len(ltrim(rtrim(@TipoDebitoG)))>0 )
			
			else IF (len(ltrim(rtrim(@TipoaporteG)))=0 and len(ltrim(rtrim(@TipoDebitoG)))=0 )
			BEGIN
			set @idDEBITOGASTOS=(select IDDebito from AfiliadoDebito where IdAfiliado=@idafiliado and Estado=1 AND TipoAporte='Gastos')
			IF  (@idDEBITOGASTOS>0)
			begin
			update  AfiliadoDebito set Estado=0,UserModi=@User,FechaModi= GETDATE()
			where IdAfiliado=@idafiliado and IDDebito=@idDEBITOGASTOS
			end
			END--else IF (len(ltrim(rtrim(@TipoaporteG)))=0 and len(ltrim(rtrim(@TipoDebitoG)))=0 )
		
			
			
			END--IF ( @modidebito='SI')
			
			if ( @modidebito='SI' or @modidatos='SI')
			begin
			set @idcausa= (select IdCausa from LegajoTipoCausa (nolock) c
			inner join  LegajoTipo (nolock) t on c.IdLegajoTipo=t.IdLegajoTipo
			where t.IdLegajoTipo=4)
			INSERT INTO Legajo VALUES 
			(@idafiliado,@idcausa,convert (datetime,@FechaSolicitud,105),convert (datetime,@FechaDictamen,105),@Sello,@SelloAnio,GETDATE() ,@user) 
			end
				
			
			
			
			/* antes se actualizaba por	que mantenia en afiliado la ultimas fechas de solicitud, dictamen 
			y sellos			
			
			if ( @modidebito='SI' or @modidatos='SI' or @modicate='SI')
			begin
			update Afiliado set 
			FechaSolicitud=convert (datetime,@FechaSolicitud,105),FechaDictamen=convert (datetime,@FechaDictamen,105),
			Sello=@Sello,SelloAnio=@SelloAnio,UserModif=@User, FechaModif=GETDATE()
			where IdAfiliado=@idafiliado
			end
			
			
			*/
			SET @msg = 'El Afiliado se modifico correctamente.'

        COMMIT TRAN Tadd

    End try
    Begin Catch

        SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd

    End Catch

END
