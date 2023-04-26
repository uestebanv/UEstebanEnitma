Create database UEstebanEnitma2

USE UEstebanEnitma2

CREATE TABLE Departamento(
codDepto int not null,
nombreDpto varchar(50) not null,
ciudad varchar(30) not null,
director varchar(50) not null
)
go

CREATE TABLE Empleado(
nDIEmp int IDENTITY(1,1) PRIMARY KEY,
nombEmp varchar(30) not null,
sexEmp varchar(5) not null,
fecNac date not null,
fecIncorporacion date not null,
salEmp int not null,
comis int not null,
codSuc int not null,
jefeDI int not null,
cargo varchar(50) not null,
nroDepto int not null
)
go

-------Empledos-------
insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Maria', 'M', '1990-08-04', '2019-02-10', 2500, 1200, 3214, 10, 'Secretaria', 3)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Diana', 'M', '1994-11-14', '2018-04-01', 2500, 1200, 3214, 10, 'Secretaria', 2)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Jose', 'H', '1996-08-25', '2018-11-15', 2200, 800, 3214, 3, 'Vendedor', 5)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Pedro', 'H', '1996-01-02', '2019-02-19', 2600, 1000, 3214, 3, 'Vendedor', 6)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Alexa', 'M', '1997-09-10', '2019-01-11', 1900, 1200, 3214, 3, 'Vendedor', 6)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Felipe', 'H', '1995-06-12', '2019-10-25', 2100, 3900, 3214, 3, 'Vendedor', 6)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Andres', 'H', '1990-01-05', '2019-08-27', 3000, 1900, 3214, 3, 'Gerente Ventas', 2000)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Ricardo', 'H', '2000-12-28', '2019-03-14', 3000, 1900, 3214, 3, 'Gerente Ventas', 2000)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Lupita', 'M', '1997-07-12', '2019-02-19', 1450, 700, 3214, 5, 'Contador', 3000)

insert into Empleado (nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto)
values('Brenda', 'M', '1999-08-03', '2018-12-08', 2900, 1300, 3214, 5, 'Contador', 3000)


-------Depaartamentos-----------------

insert into Departamento (codDepto, nombreDpto, ciudad, director)
values(6, 'Ventas', 'Ciudad de mexico',3214)

insert into Departamento (codDepto, nombreDpto, ciudad, director)
values(3, 'Ventas', 'Ciudad de mexico',3214)

insert into Departamento (codDepto, nombreDpto, ciudad, director)
values(5, 'Administracion', 'Queretaro',3214)

----------------------Consulta 1-------------------------
Select nDIEmp, nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto 
from Empleado
----------------------Consulta 2-------------------------
Select codDepto, nombreDpto, ciudad, director 
from Departamento
----------------------Consulta 3-------------------------
Select nDIEmp, nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto 
from Empleado
where cargo = 'Secretaria'
----------------------Consulta 4-------------------------
Select nombEmp, salEmp from Empleado
----------------------Consulta 5-------------------------
Select nDIEmp, nombEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis, codSuc, jefeDI, cargo, nroDepto 
from Empleado
where cargo = 'Vendedor'
ORDER BY nombEmp ASC
----------------------Consulta 6-------------------------
Select codDepto, nombreDpto, ciudad, director from Departamento
----------------------Consulta 7-------------------------
Select codDepto, nombreDpto, ciudad, director from Departamento
ORDER BY nombreDpto ASC
----------------------Consulta 8-------------------------
Select codDepto, nombreDpto, ciudad, director from Departamento
ORDER BY ciudad ASC
----------------------Consulta 9-------------------------
Select codDepto, nombreDpto, ciudad, director from Departamento
ORDER BY ciudad DESC
----------------------Consulta 10-------------------------
Select nombEmp, cargo
from Empleado
ORDER BY salEmp ASC 
----------------------Consulta 11-------------------------
Select nombEmp, cargo
from Empleado
ORDER BY salEmp, cargo ASC 
----------------------Consulta 12-------------------------
Select nombEmp, cargo
from Empleado
ORDER BY cargo Desc
----------------------Consulta 13-------------------------
Select salEmp, comis from Empleado
Where nroDepto = '2000'
----------------------Consulta 14-------------------------
Select salEmp, comis from Empleado
Where nroDepto = '2000'
order by comis asc
----------------------Consulta 15-------------------------
Select  comis from Empleado
----------------------Consulta 16-------------------------
----------------------Consulta 17-------------------------
----------------------Consulta 18-------------------------
Select nombEmp,salEmp,comis,codSuc,cargo, nroDepto,sum(salEmp+ 500000) as Toltal from Empleado
Where nroDepto = '3000'
group by nombEmp,salEmp,comis,codSuc,cargo, nroDepto
order by nombEmp asc
----------------------Consulta 19-------------------------
Select nDIEmp,nombEmp,sexEmp,fecNac,fecIncorporacion,salEmp,comis,codSuc,jefeDI,cargo,nroDepto from Empleado
Where comis > salEmp
----------------------Consulta 20-------------------------
Select salEmp,(.3 * salEmp) as unosal,comis from Empleado
--Select salEmp,comis from Empleado
where comis <= (salEmp*.3) 
----------------------Consulta 21-------------------------
Select nombEmp,cargo,nDIEmp,sexEmp,fecNac,fecIncorporacion,salEmp,comis,codSuc,jefeDI,nroDepto from Empleado
----------------------Consulta 22-------------------------
select *from Empleado ---pendiente
----------------------Consulta 23-------------------------
Select salEmp,comis,(comis* .4) as comspo from Empleado
---Select salEmp,comis from Empleado
where salEmp <= (comis*.4) 
----------------------Consulta 24-------------------------
select * from Empleado
where nombEmp like 'j%' or nombEmp like '%z'
---where nombEmp like 'j%' and nombEmp like '%z'
----------------------Consulta 25-------------------------
Select nDIEmp,nombEmp,sexEmp,fecNac,fecIncorporacion,salEmp
      ,comis,codSuc,jefeDI,cargo,nroDepto
from Empleado
order by cargo asc
----------------------Consulta 26-------------------------
Select nDIEmp,nombEmp,salEmp, comis, (salEmp + comis) as SalarioTotal from empleado 
Where comis > 1000 

----------------------Consulta 27-------------------------
Select nDIEmp,nombEmp,salEmp, comis, (salEmp + comis) as SalarioTotal from empleado 
Where comis = 0 
----------------------Consulta 28-------------------------

----------------------Consulta 29-------------------------
----------------------Consulta 30-------------------------
Select * from Empleado
where  nombEmp not like '%MA%'
----------------------Consulta 31-------------------------
Select*from Departamento
where nombreDpto not like '%Ventas%' and nombreDpto not like '%Investigación%' and nombreDpto not like '%Investigación%'
