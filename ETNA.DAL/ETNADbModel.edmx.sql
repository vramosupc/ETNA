
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/03/2015 17:39:42
-- Generated from EDMX file: C:\ETNA-TP2\ETNA\ETNA.Solution\ETNA.DAL\ETNADbModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ETNA.DB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DocumentoReferenciaAlmacen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia] DROP CONSTRAINT [FK_DocumentoReferenciaAlmacen];
GO
IF OBJECT_ID(N'[dbo].[FK_webpages_UsersInRoles_webpages_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [FK_webpages_UsersInRoles_webpages_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_webpages_UsersInRoles_UserProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [FK_webpages_UsersInRoles_UserProfile];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoUserProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_EmpleadoUserProfile];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoAlmacen_Empleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoAlmacen] DROP CONSTRAINT [FK_EmpleadoAlmacen_Empleado];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoAlmacen_Almacen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoAlmacen] DROP CONSTRAINT [FK_EmpleadoAlmacen_Almacen];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoDocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia] DROP CONSTRAINT [FK_EmpleadoDocumentoReferencia];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaEntradaSolicitudEntrada]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada] DROP CONSTRAINT [FK_GuiaEntradaSolicitudEntrada];
GO
IF OBJECT_ID(N'[dbo].[FK_SolicitudEntradaSolicitudEntradaProducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudEntrada] DROP CONSTRAINT [FK_SolicitudEntradaSolicitudEntradaProducto];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductoSolicitudEntradaProducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudEntrada] DROP CONSTRAINT [FK_ProductoSolicitudEntradaProducto];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentoReferenciaKardex]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kardex] DROP CONSTRAINT [FK_DocumentoReferenciaKardex];
GO
IF OBJECT_ID(N'[dbo].[FK_AlmacenKardex]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kardex] DROP CONSTRAINT [FK_AlmacenKardex];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductoKardex]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kardex] DROP CONSTRAINT [FK_ProductoKardex];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoSolicitudEntrada]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SolicitudesEntrada] DROP CONSTRAINT [FK_EmpleadoSolicitudEntrada];
GO
IF OBJECT_ID(N'[dbo].[FK_LoteTipoLote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Lotes] DROP CONSTRAINT [FK_LoteTipoLote];
GO
IF OBJECT_ID(N'[dbo].[FK_ReclamoInformeReclamo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InformesReclamo] DROP CONSTRAINT [FK_ReclamoInformeReclamo];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoInformeReclamoElaboradoPor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InformesReclamo] DROP CONSTRAINT [FK_EmpleadoInformeReclamoElaboradoPor];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoInformeReclamoAprobadoPor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InformesReclamo] DROP CONSTRAINT [FK_EmpleadoInformeReclamoAprobadoPor];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoReclamoResgistradoPor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reclamos] DROP CONSTRAINT [FK_EmpleadoReclamoResgistradoPor];
GO
IF OBJECT_ID(N'[dbo].[FK_InformeResultadoEmpleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InformesResultado] DROP CONSTRAINT [FK_InformeResultadoEmpleado];
GO
IF OBJECT_ID(N'[dbo].[FK_PlantillaTipoPlantilla]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Plantillas] DROP CONSTRAINT [FK_PlantillaTipoPlantilla];
GO
IF OBJECT_ID(N'[dbo].[FK_PlantillaInformeResultado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InformesResultado] DROP CONSTRAINT [FK_PlantillaInformeResultado];
GO
IF OBJECT_ID(N'[dbo].[FK_PlantillaDetallePlantilla]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlantillasDetalle] DROP CONSTRAINT [FK_PlantillaDetallePlantilla];
GO
IF OBJECT_ID(N'[dbo].[FK_ProgramacionPlantilla]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Programaciones] DROP CONSTRAINT [FK_ProgramacionPlantilla];
GO
IF OBJECT_ID(N'[dbo].[FK_PlantillaDetalleEncuesta_PlantillaDetalle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlantillaDetalleEncuesta] DROP CONSTRAINT [FK_PlantillaDetalleEncuesta_PlantillaDetalle];
GO
IF OBJECT_ID(N'[dbo].[FK_PlantillaDetalleEncuesta_Encuesta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlantillaDetalleEncuesta] DROP CONSTRAINT [FK_PlantillaDetalleEncuesta_Encuesta];
GO
IF OBJECT_ID(N'[dbo].[FK_ClienteEncuesta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Encuestas] DROP CONSTRAINT [FK_ClienteEncuesta];
GO
IF OBJECT_ID(N'[dbo].[FK_EncuestaProgramacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Encuestas] DROP CONSTRAINT [FK_EncuestaProgramacion];
GO
IF OBJECT_ID(N'[dbo].[FK_ClienteFactura]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Facturas] DROP CONSTRAINT [FK_ClienteFactura];
GO
IF OBJECT_ID(N'[dbo].[FK_FacturaFacturaDetalle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FacturaDetalles] DROP CONSTRAINT [FK_FacturaFacturaDetalle];
GO
IF OBJECT_ID(N'[dbo].[FK_ReclamoFacturaDetalle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reclamos] DROP CONSTRAINT [FK_ReclamoFacturaDetalle];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductoFacturaDetalle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FacturaDetalles] DROP CONSTRAINT [FK_ProductoFacturaDetalle];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaEntrada_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada] DROP CONSTRAINT [FK_GuiaEntrada_inherits_DocumentoReferencia];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaSalida_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida] DROP CONSTRAINT [FK_GuiaSalida_inherits_DocumentoReferencia];
GO
IF OBJECT_ID(N'[dbo].[FK_AjusteInventario_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_AjusteInventario] DROP CONSTRAINT [FK_AjusteInventario_inherits_DocumentoReferencia];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[DocumentosReferencia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia];
GO
IF OBJECT_ID(N'[dbo].[Almacenes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Almacenes];
GO
IF OBJECT_ID(N'[dbo].[UserProfile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserProfile];
GO
IF OBJECT_ID(N'[dbo].[webpages_Membership]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_Membership];
GO
IF OBJECT_ID(N'[dbo].[webpages_OAuthMembership]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_OAuthMembership];
GO
IF OBJECT_ID(N'[dbo].[webpages_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_Roles];
GO
IF OBJECT_ID(N'[dbo].[Empleados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleados];
GO
IF OBJECT_ID(N'[dbo].[Productos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Productos];
GO
IF OBJECT_ID(N'[dbo].[SolicitudesEntrada]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SolicitudesEntrada];
GO
IF OBJECT_ID(N'[dbo].[DetalleSolicitudEntrada]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleSolicitudEntrada];
GO
IF OBJECT_ID(N'[dbo].[Kardex]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kardex];
GO
IF OBJECT_ID(N'[dbo].[Lotes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lotes];
GO
IF OBJECT_ID(N'[dbo].[TipoLotes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoLotes];
GO
IF OBJECT_ID(N'[dbo].[Reclamos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reclamos];
GO
IF OBJECT_ID(N'[dbo].[InformesReclamo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InformesReclamo];
GO
IF OBJECT_ID(N'[dbo].[InformesResultado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InformesResultado];
GO
IF OBJECT_ID(N'[dbo].[Plantillas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Plantillas];
GO
IF OBJECT_ID(N'[dbo].[TiposPlantilla]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TiposPlantilla];
GO
IF OBJECT_ID(N'[dbo].[PlantillasDetalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlantillasDetalle];
GO
IF OBJECT_ID(N'[dbo].[Programaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Programaciones];
GO
IF OBJECT_ID(N'[dbo].[Encuestas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Encuestas];
GO
IF OBJECT_ID(N'[dbo].[Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clientes];
GO
IF OBJECT_ID(N'[dbo].[ProgramacionesEncuesta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProgramacionesEncuesta];
GO
IF OBJECT_ID(N'[dbo].[Facturas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Facturas];
GO
IF OBJECT_ID(N'[dbo].[FacturaDetalles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FacturaDetalles];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_GuiaEntrada]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_GuiaEntrada];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_GuiaSalida]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_GuiaSalida];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_AjusteInventario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_AjusteInventario];
GO
IF OBJECT_ID(N'[dbo].[webpages_UsersInRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_UsersInRoles];
GO
IF OBJECT_ID(N'[dbo].[EmpleadoAlmacen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadoAlmacen];
GO
IF OBJECT_ID(N'[dbo].[PlantillaDetalleEncuesta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlantillaDetalleEncuesta];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DocumentosReferencia'
CREATE TABLE [dbo].[DocumentosReferencia] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdentificadorDocumento] nvarchar(max)  NOT NULL,
    [FechaElaboracion] datetime  NOT NULL,
    [Observaciones] nvarchar(max)  NULL,
    [Almacen_Id] int  NOT NULL,
    [Empleado_Id] int  NOT NULL
);
GO

-- Creating table 'Almacenes'
CREATE TABLE [dbo].[Almacenes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [Tipo] int  NOT NULL,
    [AreaEnM2] int  NOT NULL
);
GO

-- Creating table 'UserProfile'
CREATE TABLE [dbo].[UserProfile] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(56)  NOT NULL
);
GO

-- Creating table 'webpages_Membership'
CREATE TABLE [dbo].[webpages_Membership] (
    [UserId] int  NOT NULL,
    [CreateDate] datetime  NULL,
    [ConfirmationToken] nvarchar(128)  NULL,
    [IsConfirmed] bit  NULL,
    [LastPasswordFailureDate] datetime  NULL,
    [PasswordFailuresSinceLastSuccess] int  NOT NULL,
    [Password] nvarchar(128)  NOT NULL,
    [PasswordChangedDate] datetime  NULL,
    [PasswordSalt] nvarchar(128)  NOT NULL,
    [PasswordVerificationToken] nvarchar(128)  NULL,
    [PasswordVerificationTokenExpirationDate] datetime  NULL
);
GO

-- Creating table 'webpages_OAuthMembership'
CREATE TABLE [dbo].[webpages_OAuthMembership] (
    [Provider] nvarchar(30)  NOT NULL,
    [ProviderUserId] nvarchar(100)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'webpages_Roles'
CREATE TABLE [dbo].[webpages_Roles] (
    [RoleId] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'Empleados'
CREATE TABLE [dbo].[Empleados] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombres] nvarchar(max)  NOT NULL,
    [Apellidos] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL,
    [UserProfile_UserId] int  NOT NULL
);
GO

-- Creating table 'Productos'
CREATE TABLE [dbo].[Productos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [DescripcionCorta] nvarchar(max)  NOT NULL,
    [DescripcionLarga] nvarchar(max)  NOT NULL,
    [PrecioListaCompra] float  NOT NULL,
    [PrecioListaVenta] float  NOT NULL,
    [Estado] int  NOT NULL
);
GO

-- Creating table 'SolicitudesEntrada'
CREATE TABLE [dbo].[SolicitudesEntrada] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FechaElaboracion] datetime  NOT NULL,
    [TipoEntrada] int  NOT NULL,
    [Estado] int  NOT NULL,
    [Empleado_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleSolicitudEntrada'
CREATE TABLE [dbo].[DetalleSolicitudEntrada] (
    [IdProducto] int  NOT NULL,
    [IdSolicitudEntrada] int  NOT NULL,
    [Cantidad] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Kardex'
CREATE TABLE [dbo].[Kardex] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TipoMovimiento] int  NOT NULL,
    [Cantidad] nvarchar(max)  NOT NULL,
    [ValorUnitario] float  NOT NULL,
    [DocumentoReferencia_Id] int  NOT NULL,
    [Almacen_Id] int  NOT NULL,
    [Producto_Id] int  NOT NULL
);
GO

-- Creating table 'Lotes'
CREATE TABLE [dbo].[Lotes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NroLote] nvarchar(max)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [TipoLote_Id] int  NOT NULL
);
GO

-- Creating table 'TipoLotes'
CREATE TABLE [dbo].[TipoLotes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Reclamos'
CREATE TABLE [dbo].[Reclamos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoReclamo] nvarchar(max)  NOT NULL,
    [FechaHoraReclamo] date  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [Detalle] nvarchar(max)  NOT NULL,
    [Observaciones] nvarchar(max),
    [FechaRespuesta] datetime  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL,
    [RegistradoPor_Id] int  NOT NULL,
    [FacturaDetalle_Id] int  NOT NULL
);
GO

-- Creating table 'InformesReclamo'
CREATE TABLE [dbo].[InformesReclamo] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoInforme] nvarchar(max)  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [DetalleInforme] nvarchar(max)  NOT NULL,
    [FechaAprobacion] datetime  NOT NULL,
    [FechaElaboracion] datetime  NOT NULL,
    [ObservacionAprobador] nvarchar(max)  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL,
    [Reclamo_Id] int  NOT NULL,
    [ElaboradoPor_Id] int  NOT NULL,
    [AprobadoPor_Id] int  NULL
);
GO

-- Creating table 'InformesResultado'
CREATE TABLE [dbo].[InformesResultado] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [FechaElaboracion] nvarchar(max)  NOT NULL,
    [FechaTabIni] nvarchar(max)  NOT NULL,
    [FechaTabFin] nvarchar(max)  NOT NULL,
    [DetalleAnalisis] nvarchar(max)  NOT NULL,
    [ElaboradoPor_Id] int  NOT NULL,
    [Plantilla_Id] int  NOT NULL
);
GO

-- Creating table 'Plantillas'
CREATE TABLE [dbo].[Plantillas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL,
    [TipoPlantilla_Id] int  NOT NULL
);
GO

-- Creating table 'TiposPlantilla'
CREATE TABLE [dbo].[TiposPlantilla] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PlantillasDetalle'
CREATE TABLE [dbo].[PlantillasDetalle] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoPregunta] nvarchar(max)  NOT NULL,
    [DescripcionPregunta] nvarchar(max)  NOT NULL,
    [Respuesta1] nvarchar(max)  NOT NULL,
    [Respuesta2] nvarchar(max)  NOT NULL,
    [Respuesta3] nvarchar(max)  NOT NULL,
    [Respuesta4] nvarchar(max)  NOT NULL,
    [Respuesta5] nvarchar(max)  NOT NULL,
    [Plantilla_Id] int  NOT NULL
);
GO

-- Creating table 'Programaciones'
CREATE TABLE [dbo].[Programaciones] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoProgramacion] nvarchar(max)  NOT NULL,
    [Periodicidad] nvarchar(max)  NOT NULL,
    [FechaInicio] datetime  NOT NULL,
    [FechaFin] datetime  NOT NULL,
    [PorcentajeEncuestados] float  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL,
    [DiasVigencia] smallint  NOT NULL,
    [Plantilla_Id] int  NOT NULL
);
GO

-- Creating table 'Encuestas'
CREATE TABLE [dbo].[Encuestas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FechaInicio] datetime  NOT NULL,
    [FechaRespuesta] datetime  NOT NULL,
    [Titulo] nvarchar(max)  NOT NULL,
    [Cliente_Codigo] int  NOT NULL,
    [Programacion_Id] int  NOT NULL
);
GO

-- Creating table 'Clientes'
CREATE TABLE [dbo].[Clientes] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [DocIdentidad] nvarchar(max)  NOT NULL,
    [Apellidos] nvarchar(max)  NOT NULL,
    [Nombres] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProgramacionesEncuesta'
CREATE TABLE [dbo].[ProgramacionesEncuesta] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Facturas'
CREATE TABLE [dbo].[Facturas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NroFactura] nvarchar(max)  NOT NULL,
    [FechaFactura] datetime  NOT NULL,
    [ValorVenta] float  NOT NULL,
    [PrecioVenta] float  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL,
    [Cliente_Codigo] int  NOT NULL
);
GO

-- Creating table 'FacturaDetalles'
CREATE TABLE [dbo].[FacturaDetalles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Factura_Id] int  NOT NULL,
    [Producto_Id] int  NOT NULL
);
GO

-- Creating table 'DocumentosReferencia_GuiaEntrada'
CREATE TABLE [dbo].[DocumentosReferencia_GuiaEntrada] (
    [Id] int  NOT NULL,
    [SolicitudEntrada_Id] int  NOT NULL
);
GO

-- Creating table 'DocumentosReferencia_GuiaSalida'
CREATE TABLE [dbo].[DocumentosReferencia_GuiaSalida] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'DocumentosReferencia_AjusteInventario'
CREATE TABLE [dbo].[DocumentosReferencia_AjusteInventario] (
    [Estado] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'webpages_UsersInRoles'
CREATE TABLE [dbo].[webpages_UsersInRoles] (
    [webpages_Roles_RoleId] int  NOT NULL,
    [UserProfile_UserId] int  NOT NULL
);
GO

-- Creating table 'EmpleadoAlmacen'
CREATE TABLE [dbo].[EmpleadoAlmacen] (
    [Empleado_Id] int  NOT NULL,
    [Almacen_Id] int  NOT NULL
);
GO

-- Creating table 'PlantillaDetalleEncuesta'
CREATE TABLE [dbo].[PlantillaDetalleEncuesta] (
    [PlantillaDetalle_Id] int  NOT NULL,
    [Encuesta_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'DocumentosReferencia'
ALTER TABLE [dbo].[DocumentosReferencia]
ADD CONSTRAINT [PK_DocumentosReferencia]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Almacenes'
ALTER TABLE [dbo].[Almacenes]
ADD CONSTRAINT [PK_Almacenes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [UserId] in table 'UserProfile'
ALTER TABLE [dbo].[UserProfile]
ADD CONSTRAINT [PK_UserProfile]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [UserId] in table 'webpages_Membership'
ALTER TABLE [dbo].[webpages_Membership]
ADD CONSTRAINT [PK_webpages_Membership]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [Provider], [ProviderUserId] in table 'webpages_OAuthMembership'
ALTER TABLE [dbo].[webpages_OAuthMembership]
ADD CONSTRAINT [PK_webpages_OAuthMembership]
    PRIMARY KEY CLUSTERED ([Provider], [ProviderUserId] ASC);
GO

-- Creating primary key on [RoleId] in table 'webpages_Roles'
ALTER TABLE [dbo].[webpages_Roles]
ADD CONSTRAINT [PK_webpages_Roles]
    PRIMARY KEY CLUSTERED ([RoleId] ASC);
GO

-- Creating primary key on [Id] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [PK_Empleados]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Productos'
ALTER TABLE [dbo].[Productos]
ADD CONSTRAINT [PK_Productos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SolicitudesEntrada'
ALTER TABLE [dbo].[SolicitudesEntrada]
ADD CONSTRAINT [PK_SolicitudesEntrada]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdProducto], [IdSolicitudEntrada] in table 'DetalleSolicitudEntrada'
ALTER TABLE [dbo].[DetalleSolicitudEntrada]
ADD CONSTRAINT [PK_DetalleSolicitudEntrada]
    PRIMARY KEY CLUSTERED ([IdProducto], [IdSolicitudEntrada] ASC);
GO

-- Creating primary key on [Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [PK_Kardex]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Lotes'
ALTER TABLE [dbo].[Lotes]
ADD CONSTRAINT [PK_Lotes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoLotes'
ALTER TABLE [dbo].[TipoLotes]
ADD CONSTRAINT [PK_TipoLotes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reclamos'
ALTER TABLE [dbo].[Reclamos]
ADD CONSTRAINT [PK_Reclamos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InformesReclamo'
ALTER TABLE [dbo].[InformesReclamo]
ADD CONSTRAINT [PK_InformesReclamo]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InformesResultado'
ALTER TABLE [dbo].[InformesResultado]
ADD CONSTRAINT [PK_InformesResultado]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Plantillas'
ALTER TABLE [dbo].[Plantillas]
ADD CONSTRAINT [PK_Plantillas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TiposPlantilla'
ALTER TABLE [dbo].[TiposPlantilla]
ADD CONSTRAINT [PK_TiposPlantilla]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PlantillasDetalle'
ALTER TABLE [dbo].[PlantillasDetalle]
ADD CONSTRAINT [PK_PlantillasDetalle]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Programaciones'
ALTER TABLE [dbo].[Programaciones]
ADD CONSTRAINT [PK_Programaciones]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Encuestas'
ALTER TABLE [dbo].[Encuestas]
ADD CONSTRAINT [PK_Encuestas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Codigo] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [PK_Clientes]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Id] in table 'ProgramacionesEncuesta'
ALTER TABLE [dbo].[ProgramacionesEncuesta]
ADD CONSTRAINT [PK_ProgramacionesEncuesta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Facturas'
ALTER TABLE [dbo].[Facturas]
ADD CONSTRAINT [PK_Facturas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FacturaDetalles'
ALTER TABLE [dbo].[FacturaDetalles]
ADD CONSTRAINT [PK_FacturaDetalles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DocumentosReferencia_GuiaEntrada'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada]
ADD CONSTRAINT [PK_DocumentosReferencia_GuiaEntrada]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DocumentosReferencia_GuiaSalida'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida]
ADD CONSTRAINT [PK_DocumentosReferencia_GuiaSalida]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DocumentosReferencia_AjusteInventario'
ALTER TABLE [dbo].[DocumentosReferencia_AjusteInventario]
ADD CONSTRAINT [PK_DocumentosReferencia_AjusteInventario]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [webpages_Roles_RoleId], [UserProfile_UserId] in table 'webpages_UsersInRoles'
ALTER TABLE [dbo].[webpages_UsersInRoles]
ADD CONSTRAINT [PK_webpages_UsersInRoles]
    PRIMARY KEY NONCLUSTERED ([webpages_Roles_RoleId], [UserProfile_UserId] ASC);
GO

-- Creating primary key on [Empleado_Id], [Almacen_Id] in table 'EmpleadoAlmacen'
ALTER TABLE [dbo].[EmpleadoAlmacen]
ADD CONSTRAINT [PK_EmpleadoAlmacen]
    PRIMARY KEY NONCLUSTERED ([Empleado_Id], [Almacen_Id] ASC);
GO

-- Creating primary key on [PlantillaDetalle_Id], [Encuesta_Id] in table 'PlantillaDetalleEncuesta'
ALTER TABLE [dbo].[PlantillaDetalleEncuesta]
ADD CONSTRAINT [PK_PlantillaDetalleEncuesta]
    PRIMARY KEY NONCLUSTERED ([PlantillaDetalle_Id], [Encuesta_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Almacen_Id] in table 'DocumentosReferencia'
ALTER TABLE [dbo].[DocumentosReferencia]
ADD CONSTRAINT [FK_DocumentoReferenciaAlmacen]
    FOREIGN KEY ([Almacen_Id])
    REFERENCES [dbo].[Almacenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentoReferenciaAlmacen'
CREATE INDEX [IX_FK_DocumentoReferenciaAlmacen]
ON [dbo].[DocumentosReferencia]
    ([Almacen_Id]);
GO

-- Creating foreign key on [webpages_Roles_RoleId] in table 'webpages_UsersInRoles'
ALTER TABLE [dbo].[webpages_UsersInRoles]
ADD CONSTRAINT [FK_webpages_UsersInRoles_webpages_Roles]
    FOREIGN KEY ([webpages_Roles_RoleId])
    REFERENCES [dbo].[webpages_Roles]
        ([RoleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserProfile_UserId] in table 'webpages_UsersInRoles'
ALTER TABLE [dbo].[webpages_UsersInRoles]
ADD CONSTRAINT [FK_webpages_UsersInRoles_UserProfile]
    FOREIGN KEY ([UserProfile_UserId])
    REFERENCES [dbo].[UserProfile]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_webpages_UsersInRoles_UserProfile'
CREATE INDEX [IX_FK_webpages_UsersInRoles_UserProfile]
ON [dbo].[webpages_UsersInRoles]
    ([UserProfile_UserId]);
GO

-- Creating foreign key on [UserProfile_UserId] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [FK_EmpleadoUserProfile]
    FOREIGN KEY ([UserProfile_UserId])
    REFERENCES [dbo].[UserProfile]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoUserProfile'
CREATE INDEX [IX_FK_EmpleadoUserProfile]
ON [dbo].[Empleados]
    ([UserProfile_UserId]);
GO

-- Creating foreign key on [Empleado_Id] in table 'EmpleadoAlmacen'
ALTER TABLE [dbo].[EmpleadoAlmacen]
ADD CONSTRAINT [FK_EmpleadoAlmacen_Empleado]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Almacen_Id] in table 'EmpleadoAlmacen'
ALTER TABLE [dbo].[EmpleadoAlmacen]
ADD CONSTRAINT [FK_EmpleadoAlmacen_Almacen]
    FOREIGN KEY ([Almacen_Id])
    REFERENCES [dbo].[Almacenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoAlmacen_Almacen'
CREATE INDEX [IX_FK_EmpleadoAlmacen_Almacen]
ON [dbo].[EmpleadoAlmacen]
    ([Almacen_Id]);
GO

-- Creating foreign key on [Empleado_Id] in table 'DocumentosReferencia'
ALTER TABLE [dbo].[DocumentosReferencia]
ADD CONSTRAINT [FK_EmpleadoDocumentoReferencia]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoDocumentoReferencia'
CREATE INDEX [IX_FK_EmpleadoDocumentoReferencia]
ON [dbo].[DocumentosReferencia]
    ([Empleado_Id]);
GO

-- Creating foreign key on [SolicitudEntrada_Id] in table 'DocumentosReferencia_GuiaEntrada'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada]
ADD CONSTRAINT [FK_GuiaEntradaSolicitudEntrada]
    FOREIGN KEY ([SolicitudEntrada_Id])
    REFERENCES [dbo].[SolicitudesEntrada]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GuiaEntradaSolicitudEntrada'
CREATE INDEX [IX_FK_GuiaEntradaSolicitudEntrada]
ON [dbo].[DocumentosReferencia_GuiaEntrada]
    ([SolicitudEntrada_Id]);
GO

-- Creating foreign key on [IdSolicitudEntrada] in table 'DetalleSolicitudEntrada'
ALTER TABLE [dbo].[DetalleSolicitudEntrada]
ADD CONSTRAINT [FK_SolicitudEntradaSolicitudEntradaProducto]
    FOREIGN KEY ([IdSolicitudEntrada])
    REFERENCES [dbo].[SolicitudesEntrada]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SolicitudEntradaSolicitudEntradaProducto'
CREATE INDEX [IX_FK_SolicitudEntradaSolicitudEntradaProducto]
ON [dbo].[DetalleSolicitudEntrada]
    ([IdSolicitudEntrada]);
GO

-- Creating foreign key on [IdProducto] in table 'DetalleSolicitudEntrada'
ALTER TABLE [dbo].[DetalleSolicitudEntrada]
ADD CONSTRAINT [FK_ProductoSolicitudEntradaProducto]
    FOREIGN KEY ([IdProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DocumentoReferencia_Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [FK_DocumentoReferenciaKardex]
    FOREIGN KEY ([DocumentoReferencia_Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentoReferenciaKardex'
CREATE INDEX [IX_FK_DocumentoReferenciaKardex]
ON [dbo].[Kardex]
    ([DocumentoReferencia_Id]);
GO

-- Creating foreign key on [Almacen_Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [FK_AlmacenKardex]
    FOREIGN KEY ([Almacen_Id])
    REFERENCES [dbo].[Almacenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AlmacenKardex'
CREATE INDEX [IX_FK_AlmacenKardex]
ON [dbo].[Kardex]
    ([Almacen_Id]);
GO

-- Creating foreign key on [Producto_Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [FK_ProductoKardex]
    FOREIGN KEY ([Producto_Id])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductoKardex'
CREATE INDEX [IX_FK_ProductoKardex]
ON [dbo].[Kardex]
    ([Producto_Id]);
GO

-- Creating foreign key on [Empleado_Id] in table 'SolicitudesEntrada'
ALTER TABLE [dbo].[SolicitudesEntrada]
ADD CONSTRAINT [FK_EmpleadoSolicitudEntrada]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoSolicitudEntrada'
CREATE INDEX [IX_FK_EmpleadoSolicitudEntrada]
ON [dbo].[SolicitudesEntrada]
    ([Empleado_Id]);
GO

-- Creating foreign key on [TipoLote_Id] in table 'Lotes'
ALTER TABLE [dbo].[Lotes]
ADD CONSTRAINT [FK_LoteTipoLote]
    FOREIGN KEY ([TipoLote_Id])
    REFERENCES [dbo].[TipoLotes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LoteTipoLote'
CREATE INDEX [IX_FK_LoteTipoLote]
ON [dbo].[Lotes]
    ([TipoLote_Id]);
GO

-- Creating foreign key on [Reclamo_Id] in table 'InformesReclamo'
ALTER TABLE [dbo].[InformesReclamo]
ADD CONSTRAINT [FK_ReclamoInformeReclamo]
    FOREIGN KEY ([Reclamo_Id])
    REFERENCES [dbo].[Reclamos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReclamoInformeReclamo'
CREATE INDEX [IX_FK_ReclamoInformeReclamo]
ON [dbo].[InformesReclamo]
    ([Reclamo_Id]);
GO

-- Creating foreign key on [ElaboradoPor_Id] in table 'InformesReclamo'
ALTER TABLE [dbo].[InformesReclamo]
ADD CONSTRAINT [FK_EmpleadoInformeReclamoElaboradoPor]
    FOREIGN KEY ([ElaboradoPor_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoInformeReclamoElaboradoPor'
CREATE INDEX [IX_FK_EmpleadoInformeReclamoElaboradoPor]
ON [dbo].[InformesReclamo]
    ([ElaboradoPor_Id]);
GO

-- Creating foreign key on [AprobadoPor_Id] in table 'InformesReclamo'
ALTER TABLE [dbo].[InformesReclamo]
ADD CONSTRAINT [FK_EmpleadoInformeReclamoAprobadoPor]
    FOREIGN KEY ([AprobadoPor_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoInformeReclamoAprobadoPor'
CREATE INDEX [IX_FK_EmpleadoInformeReclamoAprobadoPor]
ON [dbo].[InformesReclamo]
    ([AprobadoPor_Id]);
GO

-- Creating foreign key on [RegistradoPor_Id] in table 'Reclamos'
ALTER TABLE [dbo].[Reclamos]
ADD CONSTRAINT [FK_EmpleadoReclamoResgistradoPor]
    FOREIGN KEY ([RegistradoPor_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoReclamoResgistradoPor'
CREATE INDEX [IX_FK_EmpleadoReclamoResgistradoPor]
ON [dbo].[Reclamos]
    ([RegistradoPor_Id]);
GO

-- Creating foreign key on [ElaboradoPor_Id] in table 'InformesResultado'
ALTER TABLE [dbo].[InformesResultado]
ADD CONSTRAINT [FK_InformeResultadoEmpleado]
    FOREIGN KEY ([ElaboradoPor_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InformeResultadoEmpleado'
CREATE INDEX [IX_FK_InformeResultadoEmpleado]
ON [dbo].[InformesResultado]
    ([ElaboradoPor_Id]);
GO

-- Creating foreign key on [TipoPlantilla_Id] in table 'Plantillas'
ALTER TABLE [dbo].[Plantillas]
ADD CONSTRAINT [FK_PlantillaTipoPlantilla]
    FOREIGN KEY ([TipoPlantilla_Id])
    REFERENCES [dbo].[TiposPlantilla]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlantillaTipoPlantilla'
CREATE INDEX [IX_FK_PlantillaTipoPlantilla]
ON [dbo].[Plantillas]
    ([TipoPlantilla_Id]);
GO

-- Creating foreign key on [Plantilla_Id] in table 'InformesResultado'
ALTER TABLE [dbo].[InformesResultado]
ADD CONSTRAINT [FK_PlantillaInformeResultado]
    FOREIGN KEY ([Plantilla_Id])
    REFERENCES [dbo].[Plantillas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlantillaInformeResultado'
CREATE INDEX [IX_FK_PlantillaInformeResultado]
ON [dbo].[InformesResultado]
    ([Plantilla_Id]);
GO

-- Creating foreign key on [Plantilla_Id] in table 'PlantillasDetalle'
ALTER TABLE [dbo].[PlantillasDetalle]
ADD CONSTRAINT [FK_PlantillaDetallePlantilla]
    FOREIGN KEY ([Plantilla_Id])
    REFERENCES [dbo].[Plantillas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlantillaDetallePlantilla'
CREATE INDEX [IX_FK_PlantillaDetallePlantilla]
ON [dbo].[PlantillasDetalle]
    ([Plantilla_Id]);
GO

-- Creating foreign key on [Plantilla_Id] in table 'Programaciones'
ALTER TABLE [dbo].[Programaciones]
ADD CONSTRAINT [FK_ProgramacionPlantilla]
    FOREIGN KEY ([Plantilla_Id])
    REFERENCES [dbo].[Plantillas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProgramacionPlantilla'
CREATE INDEX [IX_FK_ProgramacionPlantilla]
ON [dbo].[Programaciones]
    ([Plantilla_Id]);
GO

-- Creating foreign key on [PlantillaDetalle_Id] in table 'PlantillaDetalleEncuesta'
ALTER TABLE [dbo].[PlantillaDetalleEncuesta]
ADD CONSTRAINT [FK_PlantillaDetalleEncuesta_PlantillaDetalle]
    FOREIGN KEY ([PlantillaDetalle_Id])
    REFERENCES [dbo].[PlantillasDetalle]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Encuesta_Id] in table 'PlantillaDetalleEncuesta'
ALTER TABLE [dbo].[PlantillaDetalleEncuesta]
ADD CONSTRAINT [FK_PlantillaDetalleEncuesta_Encuesta]
    FOREIGN KEY ([Encuesta_Id])
    REFERENCES [dbo].[Encuestas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlantillaDetalleEncuesta_Encuesta'
CREATE INDEX [IX_FK_PlantillaDetalleEncuesta_Encuesta]
ON [dbo].[PlantillaDetalleEncuesta]
    ([Encuesta_Id]);
GO

-- Creating foreign key on [Cliente_Codigo] in table 'Encuestas'
ALTER TABLE [dbo].[Encuestas]
ADD CONSTRAINT [FK_ClienteEncuesta]
    FOREIGN KEY ([Cliente_Codigo])
    REFERENCES [dbo].[Clientes]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteEncuesta'
CREATE INDEX [IX_FK_ClienteEncuesta]
ON [dbo].[Encuestas]
    ([Cliente_Codigo]);
GO

-- Creating foreign key on [Programacion_Id] in table 'Encuestas'
ALTER TABLE [dbo].[Encuestas]
ADD CONSTRAINT [FK_EncuestaProgramacion]
    FOREIGN KEY ([Programacion_Id])
    REFERENCES [dbo].[Programaciones]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EncuestaProgramacion'
CREATE INDEX [IX_FK_EncuestaProgramacion]
ON [dbo].[Encuestas]
    ([Programacion_Id]);
GO

-- Creating foreign key on [Cliente_Codigo] in table 'Facturas'
ALTER TABLE [dbo].[Facturas]
ADD CONSTRAINT [FK_ClienteFactura]
    FOREIGN KEY ([Cliente_Codigo])
    REFERENCES [dbo].[Clientes]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteFactura'
CREATE INDEX [IX_FK_ClienteFactura]
ON [dbo].[Facturas]
    ([Cliente_Codigo]);
GO

-- Creating foreign key on [Factura_Id] in table 'FacturaDetalles'
ALTER TABLE [dbo].[FacturaDetalles]
ADD CONSTRAINT [FK_FacturaFacturaDetalle]
    FOREIGN KEY ([Factura_Id])
    REFERENCES [dbo].[Facturas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FacturaFacturaDetalle'
CREATE INDEX [IX_FK_FacturaFacturaDetalle]
ON [dbo].[FacturaDetalles]
    ([Factura_Id]);
GO

-- Creating foreign key on [FacturaDetalle_Id] in table 'Reclamos'
ALTER TABLE [dbo].[Reclamos]
ADD CONSTRAINT [FK_ReclamoFacturaDetalle]
    FOREIGN KEY ([FacturaDetalle_Id])
    REFERENCES [dbo].[FacturaDetalles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ReclamoFacturaDetalle'
CREATE INDEX [IX_FK_ReclamoFacturaDetalle]
ON [dbo].[Reclamos]
    ([FacturaDetalle_Id]);
GO

-- Creating foreign key on [Producto_Id] in table 'FacturaDetalles'
ALTER TABLE [dbo].[FacturaDetalles]
ADD CONSTRAINT [FK_ProductoFacturaDetalle]
    FOREIGN KEY ([Producto_Id])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductoFacturaDetalle'
CREATE INDEX [IX_FK_ProductoFacturaDetalle]
ON [dbo].[FacturaDetalles]
    ([Producto_Id]);
GO

-- Creating foreign key on [Id] in table 'DocumentosReferencia_GuiaEntrada'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada]
ADD CONSTRAINT [FK_GuiaEntrada_inherits_DocumentoReferencia]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'DocumentosReferencia_GuiaSalida'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida]
ADD CONSTRAINT [FK_GuiaSalida_inherits_DocumentoReferencia]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'DocumentosReferencia_AjusteInventario'
ALTER TABLE [dbo].[DocumentosReferencia_AjusteInventario]
ADD CONSTRAINT [FK_AjusteInventario_inherits_DocumentoReferencia]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------