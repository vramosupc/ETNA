/*
===============================================================================================
AQUI ESTARAN LAS ACTUALIZACIONES A LA BD INTEGRADA
Considerar al momento de colocar lo siguiente:
Fecha, Autor, Rol-Modulo del grupo al que pertenece, Modulo Afectado.

Author: Paul Taboada
Modulo: Post-Venta
===============================================================================================
Example:
*/

/*
Fecha : 04 de Julio del 2015
Autor: Paul Taboada Casas
Rol: DBA PostVenta
Modulo: Seguridad
*/
ALTER TABLE TB_SE_Roles
ADD RoleDescription VARCHAR(300) DEFAULT NULL
GO

/*
Fecha : 04/07/2015
Autor: Paul Taboada Casas
Rol: DBA PostVenta
Modulo: PostVenta
*/

CREATE PROCEDURE GetPaginasRowNumber
   @NUM_PAGINA   INT
   ,@TAM_PAGINA   INT
   ,@NRO_FACTURA VARCHAR(30)
AS
   SET NOCOUNT ON;
   SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; 
   WITH DRV_TBL AS 
   (
      SELECT 
         ROW_NUMBER() OVER (ORDER BY fd.FacturaDetalleId DESC) AS rownum
         ,fd.*
         /*,f.NroFactura,c.Apellidos,c.Nombres,p.Id,p.Nombre,p.PrecioListaVenta,p.Estado*/
      FROM TB_VT_FacturaDetalles AS fd
      INNER JOIN TB_VT_Facturas AS f ON f.FacturaId = fd.FacturaId
      WHERE f.NumeroFact LIKE '%'+@NRO_FACTURA+'%' and f.EstadoFacturacion<>'A'
      /*INNER JOIN Clientes AS c ON c.Codigo = f.Cliente_Codigo
      INNER JOIN Productos AS p ON p.Id = fd.Producto_Id*/
   )
   SELECT * FROM DRV_TBL
   WHERE ROWNUM BETWEEN (@NUM_PAGINA*@TAM_PAGINA)-@TAM_PAGINA+1 AND (@NUM_PAGINA*@TAM_PAGINA)
GO

/*
Fecha : 04/07/2015
Autor: Paul Taboada Casas
Rol: DBA PostVenta
Modulo: Recursos Humanos
*/

ALTER TABLE TB_RH_Empleados
ALTER COLUMN GrupoVentaId INT NULL
GO

/*
Fecha : 04/07/2015
Autor: Paul Taboada Casas
Rol: DBA PostVenta
Modulo: PARA TODOS
*/


/*IMPORTANTE : HACER SIEMPRE CONCIDIR EL USERID con EMPLEADOID, de esa forma se nos simplifica esa parte de la programación*/

INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (1, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AIFI3+cfcxEdq+WHP8sIaQhFlWuXIugpzI0Ydd2kC51UyFuN1ZMyT4czvIrKcp0XgQ==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (2, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (3, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (4, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (5, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (6, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (7, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (8, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (9, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[TB_SE_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (10, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)


INSERT INTO TB_SE_UserProfile (UserName) VALUES ('DVALDIVIA');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('MDELALCAZAR');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('JMOSCOSO'); /* Usuario: JMOSCOSO, Password: password */
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('LMUNDACA');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('MFLORES');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('AAGUIRRE');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('MGUZMAN');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('LCORCIO');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('MIBERICO');
INSERT INTO TB_SE_UserProfile (UserName) VALUES ('CROJAS');

INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('DIEGO MARTIN','VALDIVIA PEREZ','PRIMAVERA 1212','ASISTENTE ALMACEN',2, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('MIGUEL EDUARDO','DEL ALCAZAR ALVAREZ','PRIMERA JUNTA 127','ASISTENTE ALMACEN',1, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('JOAN','MOSCOSO','AV. PERU 222','ASISTENTE ALMACEN',3, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('LESLIE','MUNDACA','LA VICTORIA 333','ASISTENTE ALMACEN',4, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('MIGUEL','FLOREZ','BOLIVIA 332','ASISTENTE ALMACEN',5, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('ALBERTO','AGUIRRE','LA MOLINA 456','ASISTENTE ALMACEN',6, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('MIGUEL','GUZMAN','SAN JUAN MIRAFLORES 444','ASISTENTE ALMACEN',7, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('LUIS','CORCIO','FUNESTA 2223','ASISTENTE ALMACEN',8, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('MARTIN','IBERICO','RECUAY 223','ASISTENTE ALMACEN',9, 1);
INSERT INTO TB_RH_Empleados (Nombres, Apellidos, Direccion, Cargo, UserId, Activo) 
VALUES ('CAROLINA','ROJAS','ALCANFORES 233','ASISTENTE ALMACEN',10, 1);

ALTER TABLE TB_AL_Productos
ALTER COLUMN CodigoProducto VARCHAR(10) NULL
GO

/* Productos disponibles para ETNA */
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-U1R', 'BATERIA U1R','','',10,20, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-NS40', 'BATERIA NS40','','',20,30, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-N4051', 'BATERIA N4051','','',30,40, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-NS60', 'BATERIA NS60','','',40,50, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-L18', 'BATERIA L18','','',50,60, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-L1', 'BATERIA L1','','',70,80, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-42', 'BATERIA 42','','',80,90, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-40R', 'BATERIA 40R','','',90,100, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-026', 'BATERIA 026','','',100,110, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-D26', 'BATERIA D26','','',110,120, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-D31', 'BATERIA D31','','',120,130, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-31A', 'BATERIA 31A','','',130,140, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-31T', 'BATERIA 31T','','',140,150, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-N200', 'BATERIA N200','','',150,160, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-N200 PRO', 'BATERIA N200 PRO','','',160,170, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('B-4Y', 'BATERIA 4Y','','',170,180, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('P-AH2O', 'AGUA DESTILADA','','',180,190, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('P-VOL', 'VOLTIMETRO','','',190,200, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('P-ALT', 'ALTERNADOR','','',200,250, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('P-PLO', 'PLOMO','','',10,20, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('P-MAL', 'MALLA METALICA','','',20,30, 1);
INSERT INTO TB_AL_Productos (CodigoProducto, Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('P-ANI', 'ANIONES','','',30,40, 1);

/** SCCRIPT DE INSERCION -- Modulo Encuesta POSTVENTA **/
INSERT INTO TB_PV_TiposPlantilla (Descripcion) VALUES ('Ventas');
INSERT INTO TB_PV_TiposPlantilla (Descripcion) VALUES ('Reclamos');
INSERT INTO TB_PV_TiposPlantilla (Descripcion) VALUES ('Garantias');

INSERT INTO TB_PV_Plantillas (Descripcion, Estado, TipoPlantillaId) VALUES ('Proceso de Venta', 'A', 1);
INSERT INTO TB_PV_Plantillas (Descripcion, Estado, TipoPlantillaId) VALUES ('Calidad Producto', 'A', 2);
INSERT INTO TB_PV_Plantillas (Descripcion, Estado, TipoPlantillaId) VALUES ('Atención Reclamos', 'A', 3);
INSERT INTO TB_PV_Plantillas (Descripcion, Estado, TipoPlantillaId) VALUES ('Calidad Atención Reclamo', 'A', 3);

INSERT INTO TB_PV_PlantillasDetalle (CodigoPregunta, DescripcionPregunta, Respuesta1, Respuesta2, Respuesta3, Respuesta4, Respuesta5, PlantillaId) 
VALUES ('TEMP01-PR01', '¿que mejoras darias en servicio de ventas?', 'atencion personalizada al cliente', 'mejor analisis de evaluacion de ventas mensuales', 'aumento de porcentaje en comision', '', '', 1);
INSERT INTO TB_PV_PlantillasDetalle (CodigoPregunta, DescripcionPregunta, Respuesta1, Respuesta2, Respuesta3, Respuesta4, Respuesta5, PlantillaId)
VALUES ('TEMP01-PR02', '¿que motivacion necesita para realizar mas ventas?', 'bonificaciones en vacaciones', 'aumento de sueldo por mayoria de contratos ejecutados', 'ascensos de puestos', 'reconocimientos certificados en venta con historial en la hoja de vida', 'aumento de 15 dias de vacaciones', 1);

ALTER TABLE TB_VT_Clientes
DROP COLUMN Nombre
GO

ALTER TABLE TB_VT_Clientes
DROP CONSTRAINT FK_Clientes_Direccion
GO

ALTER TABLE TB_VT_Clientes
DROP COLUMN DireccionPrincipalId
GO

INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (1, 1, 'Av. General Juan Antonio Prezet 1995', '98765432','Ponce', 'Pozo', 'Erika', 'Mellisa', 'malozaponce@gmail.com', 'DIGEMID - Ministerio de Salud', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (2, 1, 'Av. El Polo 332','67389832','Ramos', 'Huatuco', 'Victor', 'Manuel', 'pilon@gmail.com', 'MAQUINARIAS SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (3, 1, 'Av. Arequipa Crd. 7 - El gallinero','72638233','Calderon', 'De la Barca', 'Omar', 'Patuzo', 'paddi@gmail.com', 'Gamarra Shopping Center SAC', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (4, 1, 'Psj. Acari 433 Alt. Cdr. 4 Av. Morales Duarez','97389832','Taboada', 'Casas','Paul', 'Carlos','pacharly@gmail.com', 'Linkedin S.R.L', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (5, 1, 'Av. Universitaria Cdr. 45 Dpto. 566','52638233','Luna', 'Vigo', 'Ivan', 'Braulio', 'ivan@gmail.com', 'MAQUINARIAS SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (6, 1, 'Av. Parque de las Leyendas 450','52638233','Sanchez', 'Morán', 'Juan', 'Mauricio', 'Mauricio@hotmail.com', 'Indurama SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (7, 1, 'Av. Pardo 796','52638232','Gomez', 'Morales', 'Ivanna', 'Brunella', 'BruneIva@gmail.com', 'Pecsa SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (8, 1, 'Av. Gonzales Prada 1124','52638233','Aliaga', 'Llaro', 'Jorge', 'Rafael', 'Rafa@gmail.com', 'Delosi SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (9, 1, 'Av. Mexico 641','52638232','Pozo', 'León', 'Doris', 'Maris', 'doris@yahoo.com', 'Sigdelo SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (10, 1, 'Av. Canadá 154','52638232','Gomez', 'Montoya', 'Monica', 'Juana', 'moni@gmail.com', 'Cetco SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (11, 1, 'Av. Colón 1215','52638233','Santillan', 'Zelaya', 'Daniel', 'Dionisio', 'Dani@hotmail.com', 'Samsung SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (12, 1, 'Calle Morales Duarez 235','52638232','Cuadros', 'Behar', 'Martin', 'Hernan', 'martin@gmail.com', 'Cencosud SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (13, 1, 'Av. La Marina 1345','72638232','Solano', 'Rivas', 'Luis', 'Alberto', 'luisolano@gmail.com', 'Perfumerias Unidas SAC', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (14, 1, 'Pasaje Arica 1415','97389833','Solis', 'Alarcon','Carmen', 'Rosario','carmen@gmail.com', 'Bumeran sac', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (15, 1, 'Av. Faucet 145','52638232','Vega', 'Salazar', 'Rocio', 'Pilar', 'rocio@gmail.com', 'Sanson SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (16, 1, 'Av. La Mar 145','52638233','Carrion', 'Velasquez', 'Esther', 'Maria', 'esther@hotmail.com', 'Duplex SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (17, 1, 'Av. Pardo de Zela 154','52638232','Sajon', 'Gonzales', 'Pedro', 'Damian', 'Pedrito@gmail.com', 'Camaraderia SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (18, 1, 'Av. Sanchez Carrión 457','52638232','Borja', 'Carrion', 'Micaela', 'Fernanda', 'mica@gmail.com', 'Mifesa SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (19, 1, 'Av. Larco 147','52638233','Flores', 'Pardo', 'Miquela', 'Flor', 'miquela@yahoo.com', 'San Jose SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (20, 1, 'Av. Alberto del Campo 254','52638232','Solc', 'Sanguinetti', 'Sanuel', 'Arie', 'samuel@gmail.com', 'Alexandra SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (21, 1, 'Av. Paseo de la Republica 145','52638233','Mendosa', 'Flores', 'Jorge', 'Manuel', 'jorge@hotmail.com', 'Innovaciones Mar SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (22, 1, 'Av. Antonio Pezet 145','52638232','Merino', 'Salazar', 'Beatriz', 'Rosario', 'Rosario@yahoo.com', 'Espinar SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (23, 1, 'Av. Angamos Oeste 124','72638233','Zumaran', 'Velez', 'Andres', 'Esteban', 'andres@gmail.com', 'Andrea SAC', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (24, 1, 'Calle Maranga 144','97389832','Ocampo', 'Cruz','Helen', 'Silvana','silvana@gmail.com', 'Markos S.R.L', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (25, 1, 'Av. Paseo Colon 1587','52638233','Tapia', 'Aguilar', 'Cecilia', 'Juana', 'ceci@gmail.com', 'Elviva SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (26, 1, 'Av. Grau 1417','52638233','Camargo', 'Ortega', 'Pablo', 'Mauricio', 'pablito@hotmail.com', 'Inversiones Ortega SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (27, 1, 'Av. Pardo de Zela 547','52638232','Isasi', 'Alvarado', 'Rosario', 'Efigenia', 'rosario@gmail.com', 'Zamzar SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (28, 1, 'Av. San Germán 147','52638233','Ponce', 'Aliaga', 'Alexandra', 'Pilar', 'ale@gmail.com', 'Inversiones Ponce&Aliaga SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (29, 1, 'Calle Solar 478','52638232','Leon', 'Valenzuela', 'Manuela', 'Maria', 'manuela@yahoo.com', 'Velez SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');
INSERT INTO TB_VT_Clientes (ClienteId, TipoTerceroId, Direccion, DocIdentidad, ApellidoPaterno, ApellidoMaterno, PrimerNombre, SegundoNombre, Email, RazonSocial, TipoDocIdentidadId, Activo, LineaCredito, ModalidadCreditoId, DiasCredito, TipoMedioDePagoId, CreditoContado, CategoriaClienteId, LineaCreditoActiva, CodigoPais, Telefono, Observaciones) 
VALUES (30, 1, 'Calle San Geronimo 587','52638232','Ascencios', 'Martinat', 'Bruno', 'Alejandro', 'fruna@gmail.com', 'Advesco SA', 1, 1, 0, 1, 0, 1, 1, 1, 0, 'es', '985578456', '');

INSERT INTO TB_ModalidadCredito (ModalidadCreditoId, Codigo, Descripcion, DiasCredito)
VALUES (1, 'MODC-01', 'Por plazo de 10 dias', 50);
INSERT INTO TB_ModalidadCredito (ModalidadCreditoId, Codigo, Descripcion, DiasCredito)
VALUES (2, 'MODC-02', 'Por plazo mensual', 30);

ALTER TABLE TB_VT_Facturas
ALTER COLUMN NumeroFact NVARCHAR(MAX) NOT NULL
GO

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)
VALUES (1, 'FA-001-00001', 1, '2015-01-15', '2015-01-25', 1, '2015-01-30', 0, '', 1, '', 1500, 0, 'Atendido', 'Direccion de entrega', 1500, 285, 1785, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)
VALUES (2, 'FA-001-00002', 2, '2015-01-15', '2015-01-25', 1, '2015-01-30', 0, '', 2, '', 2500, 0, 'Atendido', 'Direccion de entrega', 2500, 475, 2975, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)
VALUES (3, 'FA-001-00003', 3, '2015-01-15', '2015-01-25', 1, '2015-01-30', 0, '', 3, '', 4500, 0, 'Atendido', 'Direccion de entrega', 4500, 855, 5355, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)VALUES (4, 'FA-001-00004', 4, '2015-01-15', '2015-01-26', 1, '2015-01-31', 0, '', 2, '', 3800, 0, 'Atendido', 'Direccion de entrega', 3800, 722, 4522, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)VALUES (5, 'FA-001-00005', 5, '2015-01-15', '2015-01-26', 1, '2015-01-31', 0, '', 3, '', 2100, 0, 'Atendido', 'Direccion de entrega', 2100, 399, 2499, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)
VALUES (6, 'FA-001-00006', 6, '2015-01-15', '2015-01-27', 1, '2015-01-12', 0, '', 2, '', 3500, 0, 'Atendido', 'Direccion de entrega', 3500, 665, 4165, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)
VALUES (7, 'FA-001-00007', 7, '2015-01-15', '2015-01-26', 1, '2015-01-30', 0, '', 3, '', 3400, 0, 'Atendido', 'Direccion de entrega', 3400, 646, 4046, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)
VALUES (8, 'FA-001-00008', 8, '2015-01-15', '2015-01-27', 1, '2015-01-02', 0, '', 1, '', 1500, 0, 'Atendido', 'Direccion de entrega', 1500, 285, 1785, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)
VALUES (9, 'FA-001-00009', 9, '2015-01-15', '2015-01-27', 1, '2015-02-01', 0, '', 2, '', 5500, 0, 'Atendido', 'Direccion de entrega', 5500, 1045, 6545, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );

INSERT INTO TB_VT_Facturas (FacturaId, NumeroFact, ClienteId, FechaEmision, FechaEntrega, ModalidadCreditoId, FechaPago, Credito, Direccion, EmpleadoId, Observacion, ValorVenta, PrecioIncluyeImpuesto, EstadoFacturacion, DireccionEntrega, Subtotal, MontoIGV, Total, Observaciones, FechaRegistro, FechaVencimiento, CodigoSolAtencion, CodigoReq, CodigoFormato)VALUES (10, 'FA-001-00010', 10, '2015-01-15', '2015-01-26', 1, '2015-01-31', 0, '', 1, '', 6700, 0, 'Atendido', 'Direccion de entrega', 6700, 1273, 7973, '', '2015-01-15', '2015-01-20', NULL, NULL, NULL );
GO

INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (1, 1, 1 , 7, 20, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (2, 1, 2, 6, 30, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (3, 1, 3 , 5, 40, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (4, 1, 5 , 7, 60, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (5, 1, 6 , 7, 80, '', NULL)

INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (6, 2, 7 , 8, 90, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (7, 2, 8 , 9, 100, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (8, 2, 9 , 8, 110, '', NULL)

INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (9, 3, 10 , 7, 120, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (10, 3, 11 , 9, 130, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (11, 3, 12 , 6, 140, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (12, 3, 13 , 11, 150, '', NULL)

INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (13, 4, 14 , 3, 160, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (14, 4, 15 , 5, 170, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (15, 4, 16 , 4, 180, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (16, 4, 17 , 5, 190, '', NULL)
INSERT INTO TB_VT_FacturaDetalles (FacturaDetalleId, FacturaId, ProductoId, Cantidad, Valortotal, Observacion, CodigoReq)
VALUES (17, 4, 18 , 4, 200, '', NULL)
GO


/*
Fecha : 04/07/2015
Autor: Paul Taboada Casas
Rol: DBA PostVenta
Modulo: PostVenta
Descripcion: Paginacion para la lista de Reclamos
*/

CREATE PROCEDURE GetPaginasRowNumberReclamos
   @NUM_PAGINA   INT
   ,@TAM_PAGINA   INT
   ,@COD_RECLAMO VARCHAR(30)
AS
   SET NOCOUNT ON;
   SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; 
   WITH DRV_TBL AS 
   (
      SELECT 
         ROW_NUMBER() OVER (ORDER BY r.ReclamoId DESC) AS rownum
         ,r.*
      FROM TB_PV_Reclamos AS r
      WHERE r.CodigoReclamo LIKE '%'+@COD_RECLAMO+'%' and r.Estado='P'
      /*INNER JOIN Clientes AS c ON c.Codigo = f.Cliente_Codigo
      INNER JOIN Productos AS p ON p.Id = fd.Producto_Id*/
   )
   SELECT * FROM DRV_TBL
   WHERE ROWNUM BETWEEN (@NUM_PAGINA*@TAM_PAGINA)-@TAM_PAGINA+1 AND (@NUM_PAGINA*@TAM_PAGINA)
GO