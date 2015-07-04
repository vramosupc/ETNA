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
