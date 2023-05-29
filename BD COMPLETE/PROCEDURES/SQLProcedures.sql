--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------PROCEDIMIENTOS DE TIPO VEHICULO------------------------------------------------------------------------------------

--PROCEDIMIENTO DE INSERT

create proc registrarTipoVehiculo
(
	@id int, @nombre varchar(255)
)
as insert into tipo_vehiculo values(@id, @nombre)

exec registrarTipoVehiculo 3, 'Avion'

select * from tipo_vehiculo

--------------------------------------------------
--PROCEDIMIENTO DE UPDATE

create proc actualizarTipoVehiculos
(
	@id int, @nombre varchar(255)
)
as update tipo_vehiculo set nombre=@nombre where id_tipo_vehiculo=@id

exec actualizarTipoVehiculos 3, 'Helicotero'

select * from tipo_vehiculo

--------------------------------------------------
--PROCEDIMIENTO DE DELETE

create proc eliminarTipoVehiculos
(
	@id int
)
as delete from tipo_vehiculo where id_tipo_vehiculo=@id

exec eliminarTipoVehiculos 3

select * from tipo_vehiculo

--------------------------------------------------
--PROCEDIMIENTO DE SELECT

create proc listarTipoVehiculos
as
select * from tipo_vehiculo order by id_tipo_vehiculo asc

exec listarTipoVehiculos

select * from tipo_vehiculo

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------PROCEDIMIENTOS DE TIPO CONDUCTOR-----------------------------------------------------------------------------------
--PROCEDIMIENTO DE INSERT

create proc registrarTipoConductor
(
	@id int, @nombre varchar(255)
)
as insert into tipo_conductor values(@id, @nombre)

exec registrarTipoConductor 1, 'Alvaro'

select * from tipo_conductor

--------------------------------------------------
--PROCEDIMIENTO DE UPDATE

create proc actualizarTipoConductor
(
	@id int, @nombre varchar(255)
)
as update tipo_conductor set nombre=@nombre where id_tipo_conductor=@id

exec actualizarTipoConductor 3, 'Rave'

select * from tipo_conductor

--------------------------------------------------
--PROCEDIMIENTO DE DELETE

create proc eliminarTipoConductor
(
	@id int
)
as delete from tipo_conductor where id_tipo_conductor=@id

exec eliminarTipoConductor 3

select * from tipo_conductor

--------------------------------------------------
--PROCEDIMIENTO DE SELECT

create proc listarTipoConductor
as
select * from tipo_conductor order by id_tipo_conductor asc

exec listarTipoConductor

select * from tipo_conductor
