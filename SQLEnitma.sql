Create database UEstebanEnitma

Use UEstebanEnitma

Create table Exa_CatalogoProducto
(
IdProducto int identity(1,1) primary key,
Descripcion Varchar(256),
IdUsuario int,
FechaCreacion datetime
)
go

CREATE PROCEDURE sp_InsCatalogoProd
@Descripcion Varchar(256)
as
INSERT INTO Exa_CatalogoProducto
			(Descripcion,IdUsuario,FechaCreacion)
	VALUES	(@Descripcion,1,GETDATE())
go


CREATE PROCEDURE sp_GetAllCatalogoProd
AS
Select	IdProducto,
		Descripcion,
		IdUsuario, 
		FechaCreacion 
	from Exa_CatalogoProducto

go

exec sp_InsCatalogoProd 'Celular'
exec sp_InsCatalogoProd 'Lavadora'
exec sp_InsCatalogoProd 'Cocina'
exec sp_InsCatalogoProd 'Televiso'
exec sp_InsCatalogoProd 'Refrigerador'