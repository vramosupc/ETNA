SET QUOTED_IDENTIFIER OFF;
GO
USE [ETNA.DB];
GO

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
         ROW_NUMBER() OVER (ORDER BY fd.id DESC) AS rownum
         ,fd.*
         /*,f.NroFactura,c.Apellidos,c.Nombres,p.Id,p.Nombre,p.PrecioListaVenta,p.Estado*/
      FROM FacturaDetalles AS fd
      INNER JOIN Facturas AS f ON f.Id = fd.Factura_Id
      WHERE f.NroFactura LIKE '%'+@NRO_FACTURA+'%' and f.estado<>'A'
      /*INNER JOIN Clientes AS c ON c.Codigo = f.Cliente_Codigo
      INNER JOIN Productos AS p ON p.Id = fd.Producto_Id*/
   )
   SELECT * FROM DRV_TBL
   WHERE ROWNUM BETWEEN (@NUM_PAGINA*@TAM_PAGINA)-@TAM_PAGINA+1 AND (@NUM_PAGINA*@TAM_PAGINA)
GO
/*IMPORTANTE : HACER SIEMPRE CONCIDIR EL USERID con EMPLEADOID, de esa forma se nos simplifica esa parte de la programación*/


/****** Object:  Table [dbo].[webpages_Membership]  */  
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (1, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AIFI3+cfcxEdq+WHP8sIaQhFlWuXIugpzI0Ydd2kC51UyFuN1ZMyT4czvIrKcp0XgQ==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (2, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (3, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (4, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (5, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (6, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (7, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (8, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (9, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) 
VALUES (10, CAST(0x0000A4620119316B AS DateTime), NULL, 1, NULL, 0, N'AKGufSA/XPH8iKxL3Wc2VLSBkCh1/M7tPEiftGE9hUtUXSQx2xy5xPJ9Y+FwTBhDVA==', CAST(0x0000A4620119316B AS DateTime), N'', NULL, NULL)


INSERT INTO USERPROFILE (USERNAME) VALUES ('DVALDIVIA');
INSERT INTO USERPROFILE (USERNAME) VALUES ('MDELALCAZAR');
INSERT INTO USERPROFILE (USERNAME) VALUES ('JMOSCOSO');
INSERT INTO USERPROFILE (USERNAME) VALUES ('LMUNDACA');
INSERT INTO USERPROFILE (USERNAME) VALUES ('MFLORES');
INSERT INTO USERPROFILE (USERNAME) VALUES ('AAGUIRRE');
INSERT INTO USERPROFILE (USERNAME) VALUES ('MGUZMAN');
INSERT INTO USERPROFILE (USERNAME) VALUES ('LCORCIO');
INSERT INTO USERPROFILE (USERNAME) VALUES ('MIBERICO');
INSERT INTO USERPROFILE (USERNAME) VALUES ('CROJAS');

INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('DIEGO MARTIN','VALDIVIA PEREZ','PRIMAVERA 1212','ASISTENTE ALMACEN',2);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('MIGUEL EDUARDO','DEL ALCAZAR ALVAREZ','PRIMERA JUNTA 127','ASISTENTE ALMACEN',1);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('JOAN','MOSCOSO','AV. PERU 222','ASISTENTE ALMACEN',3);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('LESLIE','MUNDACA','LA VICTORIA 333','ASISTENTE ALMACEN',4);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('MIGUEL','FLOREZ','BOLIVIA 332','ASISTENTE ALMACEN',5);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('ALBERTO','AGUIRRE','LA MOLINA 456','ASISTENTE ALMACEN',6);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('MIGUEL','GUZMAN','SAN JUAN MIRAFLORES 444','ASISTENTE ALMACEN',7);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('LUIS','CORCIO','FUNESTA 2223','ASISTENTE ALMACEN',8);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('MARTIN','IBERICO','RECUAY 223','ASISTENTE ALMACEN',9);
INSERT INTO EMPLEADOS (NOMBRES, APELLIDOS, DIRECCION, CARGO, USERPROFILE_USERID) 
VALUES ('CAROLINA','ROJAS','ALCANFORES 233','ASISTENTE ALMACEN',10);

INSERT INTO Almacenes (Nombre, Direccion, Tipo, AreaEnM2)
VALUES ('ALMACEN PRINCIPAL','AV. EL PACÍFICO 501 – 561 INDEPENDENCIA',1,1500);
INSERT INTO Almacenes (Nombre, Direccion, Tipo, AreaEnM2)
VALUES ('ALMACEN INSUMOS','AV. EL PACÍFICO 501 – 561 INDEPENDENCIA',1,1000);
INSERT INTO Almacenes (Nombre, Direccion, Tipo, AreaEnM2)
VALUES ('ALMACEN SECUNDARIO','AV. EL PACÍFICO 501 – 561 INDEPENDENCIA',1,500);

INSERT INTO EmpleadoAlmacen (Empleado_Id, Almacen_Id) VALUES (1,1);
INSERT INTO EmpleadoAlmacen (Empleado_Id, Almacen_Id) VALUES (1,2);
INSERT INTO EmpleadoAlmacen (Empleado_Id, Almacen_Id) VALUES (1,3);
INSERT INTO EmpleadoAlmacen (Empleado_Id, Almacen_Id) VALUES (2,1);
INSERT INTO EmpleadoAlmacen (Empleado_Id, Almacen_Id) VALUES (3,2);

INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA U1R','','',10,20, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA NS40','','',20,30, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA N4051','','',30,40, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA NS60','','',40,50, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA L18','','',50,60, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA L1','','',70,80, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA 42','','',80,90, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA 40R','','',90,100, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA 026','','',100,110, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA D26','','',110,120, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA D31','','',120,130, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA 31A','','',130,140, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA 31T','','',140,150, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA N200','','',150,160, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA N200 PRO','','',160,170, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('BATERIA 4Y','','',170,180, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('AGUA DESTILADA','','',180,190, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('VOLTIMETRO','','',190,200, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('ALTERNADOR','','',200,250, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('PLOMO','','',10,20, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('MALLA METALICA','','',20,30, 0);
INSERT INTO Productos (Nombre, DescripcionCorta,DescripcionLarga, PrecioListaCompra, PrecioListaVenta, Estado)
VALUES ('ANIONES','','',30,40, 0);

INSERT INTO SOLICITUDESENTRADA (FECHAELABORACION, TIPOENTRADA, ESTADO, EMPLEADO_ID)
VALUES ('01/01/2015',1,2,1)
INSERT INTO SOLICITUDESENTRADA (FECHAELABORACION, TIPOENTRADA, ESTADO, EMPLEADO_ID)
VALUES ('02/01/2015',2,2,1)
INSERT INTO SOLICITUDESENTRADA (FECHAELABORACION, TIPOENTRADA, ESTADO, EMPLEADO_ID)
VALUES ('03/01/2015',3,2,2)
INSERT INTO SOLICITUDESENTRADA (FECHAELABORACION, TIPOENTRADA, ESTADO, EMPLEADO_ID)
VALUES ('04/01/2015',1,2,2)

INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (1,1,10);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (2,1,5);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (3,1,3);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (4,1,1);

INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (5,2,2);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (6,2,12);

INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (7,3,4);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (8,3,7);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (1,3,12);

INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (10,4,4);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (11,4,7);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (12,4,12);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (13,4,4);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (14,4,7);
INSERT INTO DETALLESOLICITUDENTRADA (IDPRODUCTO, IDSOLICITUDENTRADA, CANTIDAD)
VALUES (15,4,12);

INSERT INTO TIPOLOTES(descripcion)
values('Lote tipo 1')

INSERT INTO TIPOLOTES(descripcion)
values('Lote tipo 2')

INSERT INTO TIPOLOTES(descripcion)
values('Lote tipo 3')

/** SCCRIPT DE INSERCION -- Modulo Encuesta POSTVENTA **/
INSERT INTO TIPOSPLANTILLA (DESCRIPCION) VALUES ('Ventas');
INSERT INTO TIPOSPLANTILLA (DESCRIPCION) VALUES ('Reclamos');
INSERT INTO TIPOSPLANTILLA (DESCRIPCION) VALUES ('Garantias');

INSERT INTO Plantillas (descripcion, estado, tipoplantilla_id) VALUES ('Proceso de Venta', 'A', 1);
INSERT INTO Plantillas (descripcion, estado, tipoplantilla_id) VALUES ('Calidad Producto', 'A', 2);
INSERT INTO Plantillas (descripcion, estado, tipoplantilla_id) VALUES ('Atención Reclamos', 'A', 3);
INSERT INTO Plantillas (descripcion, estado, tipoplantilla_id) VALUES ('Calidad Atención Reclamo', 'A', 3);

INSERT INTO PlantillasDetalle (codigopregunta, descripcionpregunta, respuesta1, respuesta2, respuesta3, respuesta4, respuesta5, plantilla_id) VALUES ('TEMP01-PR01', '¿que mejoras darias en servicio de ventas?', 'atencion personalizada al cliente', 'mejor analisis de evaluacion de ventas mensuales', 'aumento de porcentaje en comision', '', '', 1);
INSERT INTO PlantillasDetalle (codigopregunta, descripcionpregunta, respuesta1, respuesta2, respuesta3, respuesta4, respuesta5, plantilla_id) VALUES ('TEMP01-PR02', '¿que motivacion necesita para realizar mas ventas?', 'bonificaciones en vacaciones', 'aumento de sueldo por mayoria de contratos ejecutados', 'ascensos de puestos', 'reconocimientos certificados en venta con historial en la hoja de vida', 'aumento de 15 dias de vacaciones', 1);

INSERT INTO [ETNA.DB].dbo.clientes (direccion, DocIdentidad, Apellidos, Nombres, Email) VALUES ('','98765432','Ponce Pozo', 'Mellisa', 'malozaponce@gmail.com');
INSERT INTO [ETNA.DB].dbo.clientes (direccion, DocIdentidad, Apellidos, Nombres, Email) VALUES ('','67389832','Ramos Huatuco', 'Victor', 'pilon@gmail.com');
INSERT INTO [ETNA.DB].dbo.clientes (direccion, DocIdentidad, Apellidos, Nombres, Email) VALUES ('','72638233','Calderon', 'Omar', 'paddi@gmail.com');
INSERT INTO [ETNA.DB].dbo.clientes (direccion, DocIdentidad, Apellidos, Nombres, Email) VALUES ('','97389832','Taboada', 'Paul Carlos', 'pacharly@gmail.com');
INSERT INTO [ETNA.DB].dbo.clientes (direccion, DocIdentidad, Apellidos, Nombres, Email) VALUES ('','52638233','Luna', 'Ivan', 'ivan@gmail.com');


/* SCRIPT INSERCION FACTURAS*/
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00001','2015-03-08',300.50,350.55,'E',2);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00002','2015-03-09',1000,1350.55,'A',3);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00003','2015-03-09',900.50,950.55,'E',1);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00004','2015-03-10',334,350,'E',4);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00005','2015-03-11',1300,1350,'E',5);

INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00006','2015-03-08',300.50,350.55,'E',2);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00007','2015-03-09',1000,1350.55,'E',3);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00008','2015-03-09',900.50,950.55,'E',1);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00009','2015-03-10',334,350,'E',4);
INSERT INTO [ETNA.DB].dbo.Facturas(NroFactura, FechaFactura,ValorVenta,PrecioVenta,Estado,Cliente_Codigo)
VALUES ('FA-001-00010','2015-03-11',1300,1350,'E',5);

/* SCRIPT INSERCION DETALLES FACTURAS verificar que el Factura_ID generado anteriormente 
coincida con lo que sale en el script sino cambiar en el primer valor*/ 
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (1,2);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (1,4);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (2,3);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (3,5);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (4,10);
/* SCRIPT INSERCION DETALLES FACTURAS verificar que el Factura_ID generado anteriormente 
coincida con lo que sale en el script sino cambiar en el primer valor*/ 
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (5,2);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (6,4);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (7,3);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (8,5);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (9,10);
INSERT INTO [ETNA.DB].[dbo].[FacturaDetalles](Factura_Id,Producto_Id)
VALUES (10,2);

