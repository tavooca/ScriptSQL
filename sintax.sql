
show tables;
describe trazabsuite;


select N_Ordenador, Correo, Impresora, EtiqGrande, EtiqPeque  from t_unidad_ord where tipo = 'H';
select * from impresionesbase limit 100; 
select * from t_unidad_ord; 
Select * from componentes where Familia ='H';
Select * from componentes where Componentes='PCD';
select * from pacientes where Apellidos like '%DEL CAMPO%' and Nombre like '%SYLVIA%'; 
select IdTrazabSuite, Nombre, N_Ordenador, Fecha, Accion, DatoAntiguo, DatoNuevo from trazabsuite where DatoAntiguo like '%12608%' or DatoNuevo like '%12608%'  ;
select * from 12608 
Select * from  componentesisbt 
select  name_code, count(id) as tot_isbt from  componentesisbt group by name_code order by tot_isbt desc
Select * from  componentesisbt where name_code='S1129'
select IdTrazabSuite, Nombre, N_Ordenador, Fecha, Accion, DatoNuevo from trazabsuite where DatoNuevo like '%MotivoInvalidar:13%' and Accion like '%invalidarmuestra%' limit 1000
select IdTrazabSuite, Nombre, N_Ordenador, Fecha, Accion, DatoAntiguo, substring(DatoNuevo,18,21) from trazabsuite where DatoNuevo like '%755823%' and Accion regexp 'VAL|INV' 
select * from idiomas
select * from idiomas where Formulario like '%winProces%' 
delete  from t_unidad_ord where N_Ordenador='hp'; 




-- select unidad, producto, anticoagulante from stockbolsas;

-- select distinct anticoagulante from stockbolsas;
-- select * from stockbolsas;
-- select componentes, descripcioncomponente, idisbtauto, idisbtalo, idisbtvol, idisbtrep from componentes where descripcioncomponente like "%CPH%";
-- select * from componentesisbt where id IN (4,10,250,251,460,461,462,463);
-- select * from stockbolsas where unidad = "=M400516002095";
-- select * from obtsangre where unidad = "=M400516002095";
-- select * from obtencion where unidad = "=M400516002095";
-- select idpaciente, nombre, apellidos, fechaalta from pacientes where apellidos like '%montalvo%' 
-- select unidad, producto, anticoagulante from stockbolsas
-- select distinct anticoagulante from stockbolsas;
-- delete from trazabilidad where clave_id > 126 and clave_id < 167
-----Movimientos unidades-------
-- select a.Unidad, a.Producto, a.DescripArticulo, d.Descripcion, m.Descripcion, a.FechaMovimiento, a.Responsable from albaranesl a, movimientos m, documentos d where unidad like '%2667%' and m.Movimiento=a.Movimiento and d.Documento=a.Documento;
-- select * from obtencion where IdObtencion like '%1366%';
-- select * from stockbolsas where unidad like '%3345%';
-- select * from hotsyncconfiguracion where nombreParametro like '%ISBT%';
-- select * from componentes where componentes like '%PLO%';
-- select * from hotsyncconfiguracion where nombreParametro like '%PIND%';
-- select * from hotsyncconfiguracion where nombreParametro like '%Pulsera%';
-- select * from trazabilidad where transfusiones_unidad like '%3212%';
-- pretransfusion Post
-- manifestaciones_clinicas
-- select a.Unidad, a.Producto, a.DescripArticulo, d.Descripcion, m.Descripcion, a.FechaMovimiento from albaranesl a left join documentos d on a.Documento=d.Documento left join movimientos m on a.Movimiento=m.Movimiento where unidad like '%=M400516003489%';
-- select * from pruebas where tipoprueba = 'BMSER';
select * from pruebasdnacion where prueba='BMS02' and idofrecimientounidad = 1559;
select * from hotsyncconfiguracion where explicacion like '%componentes%'
'CompoEtiST', 'CHF;PL;PQC;TBLOOD', 'Componentes para etiquetas preliminares en Donación Sang. Tot.'
select * from lugares where codlugar in ('OBTSANGRE_PRINTETIQNOPROCESADA','OBTSANGRE_PRINTETIQBOLSAAFERESIS'
,'OBTSANGRE_PRINTETIQBOLSAADICIONALES','OBTSANGRE_PRINTETIQBOLSASEROLOGIA','OBTSANGRE_PRINTETIQBOLSABITACORA',
'OBTSANGRE_PRINTETIQBOLSAHC')
select * from pruebas where tipopruebe = 'BMSER';
select * from pruebasdonacion where prueba = 'BMS02' and idofrecimiento
INSERT INTO `test_blood`.`albaranesl` (`Documento`, `Codigo`, `Articulo`, `DescripArticulo`, `Movimiento`, `Almacen`, `Unidades`, `FechaMovimiento`, `AlmacenDestino`, `Unidad`, `Producto`, `Ubicacion`, `Cumplimentacion`, `LineaOrigen`, `Responsable`, `Procedencia`, `PoolIdHijo`) VALUES ('N2', 1999, '01010001', 'Concentrado eritrocitario 0+', '22', 1, 1, '2016-11-19 00:49:07', 0, 'M400516003632', 'E0195CB0', '5', '2016-11-19 00:54:53', 20503, 'miz', 1, 0);
INSERT INTO `test_blood`.`stockbolsas` (`Articulo`, `Unidad`, `Producto`, `ProductoBlood`, `Volumen`, `Donante`, `FechaDonacion`, `FechaCaducidad`, `Estado`, `IdObtencion`, `IdSeleccionSerologia`, `DosisCelular`, `ControlMicroB`, `EAI`, `AC`, `ConfirmacionGrupo`, `BolsaMadre`, `Anticoagulante`, `IdAnticoagulante`) VALUES ('01010001', 'M400516003632', 'E0195CB0', 'CHF', 50.00, '6751', '2016-11-15 11:51:23', '2016-12-20 11:51:23', 'S', 1653, 57143, 0.00, '', 'NEG', '', '3', 0, '', 4);
select * from procesodona where unidad = 1731 and centro=1
select a.Perfil, r.Descripcion, p.Valor  from reglasperfiles p left join perfiles a on p.CodigoPerfil=a.IdPerfil left join reglas r on p.CodigoRegla=r.Codigo where p.CodigoPerfil <> 1 and p.CodigoPerfil<>3 and p.CodigoPerfil<>15;
select * from reglasperfiles;
select * from reglas;
select a.Perfil, m.Descripcion, p.Acceso, p.Escritura from permisos p left join perfiles a on p.IdPerfil=a.IdPerfil left join menus m on p.IdMenu=m.IdMenu where a.IdPerfil <> 1 and a.IdPerfil<>3 and a.IdPerfil<>15 and p.Acceso<>0;
select * from perfiles;
select * from permisos;
Anti-HIV 1+2 y Ag-p24/(VIH/SIDA) ELISA
AgsHB/(Hepatitis  B) ELISA
HCV Ag-Ac/(Hepatitis C) ELISA
Anti-T.pallidum/(Sífilis) ELISA
Anti-T.cruzi/(Chagas) ELISA
Guia de Validación de sistemas informaticos.
select * from pruebasdonacion p where p.NumDonacion like'%M400516003572%' and p.Prueba like '%BM%';
select p.NumDonacion, t.Descripcion, r.Descripcion, p.FechaPrueba, p.Responsable from pruebasdonacion p left join pruebas t on p.Prueba=t.Prueba left join resultados r on p.Resultado=r.Codigo where p.NumDonacion like'%M400516003572%' and p.Prueba like '%BM%';
select * from trazabsuite where DatoAntiguo like '%003572%' ;

from albaranesl where Id = 22967;

-- delete from albaranesl where Id = 24221;
-- select * from albaranesl where unidad like '%2869%';
-- select * from stockbolsas where unidad like '%2869%';
select * from transfusiones where IdStockBolsas=3980;

select * from comservicio c;
select * from peticiones s where s.IdPeticion=879;
select *  from transfusiones t where t.IdStockBolsas=5225;
select * from pacientes p where p.Num_Paci=262124;
select s.Unidad, s.Producto from stockbolsas s where s.IdStockBolsas=5225;
select  t.FechaTransfusion as fecha_env, s.Unidad as unidad, s.Producto as subproducto, c.CodDepartment as servides, p.Num_Paci as expediente, p.Nombre as nombre, p.Apellidos as apedillos, case t.Reaccion when 1 then 'SI' when 0 then 'NO' end as reaccion, t.FechaHoraLlamada as fechahorallamada, t.FechaTransfusion as fechahoraenvio, r.FechaRegistro as fechahorallegadaservicio, t.FechaHoraInicio as fechahorainiciotransf, t.FechaHoraFin as fechahorafintransf, t.EntregadaPor as usuario from stockbolsas s left join transfusiones t on s.IdStockBolsas=t.IdStockBolsas left join pacientes p on t.IdPaciente=p.IdPaciente left join comservicio c on t.IdServicioEnvio=c.IdDepartment left join registrosbolsas r  on t.IdTransfusion=r.CLAVE_ID where s.IdStockBolsas=5225;

SELECT
CASE cv.AptitudDonacion WHEN 1 THEN 'Apto' WHEN -1 THEN 'Diferido' WHEN 0 THEN 'Excluido' ELSE '' END AS CVAptitudDonacion, pd.IdDonante, pd.IdProcesoDona, pd.FechaHoraCreacion AS PDFechaHoraCreacion, ROUND(pd.TiempoProceso/60,2) AS PDTiempoProceso, pd.UsuarioModificacion AS PDUsuarioModificacion, tm.FechaHoraModificacion AS TMFechaHoraModificacion, ROUND(tm.TiempoProceso/60,2) AS TMTiempoProceso, tm.UsuarioModificacion AS TMUsuarioModificacion, cv.FechaHoraModificacion AS CVFechaHoraModificacion, ROUND(cv.TiempoProceso/60,2) AS CVTiempoProceso, cv.UsuarioModificacion AS CVUsuarioModificacion, os.FechaHoraModificacion AS OSFechaHoraModificacion, ROUND(os.TiempoProceso/60,2) AS OSTiempoProceso, os.UsuarioModificacion AS OSUsuarioModificacion
FROM procesodona pd
LEFT JOIN tomamuestra tm ON pd.IdProcesoDona = tm.IdProcesoDona
LEFT JOIN cuestionariovalora cv ON tm.IdTomaMuestra = cv.IdTomaMuestra
LEFT JOIN obtsangre os ON cv.IdCuestionarioValora = os.IdCuestionarioValora
JOIN pacientes p ON pd.IdDonante = p.IdPaciente 
WHERE 
pd.FechaHoraCreacion >= SELECT
pd.IdProcesoDona, pd.FechaHoraCreacion AS PDFechaHoraCreacion, ob.Unidad, p.Apellidos, p.Nombre,
CASE cv.AptitudDonacion WHEN 1 THEN 'Apto' WHEN -1 THEN 'Diferido' WHEN 0 THEN 'Excluido' ELSE '' END AS CVAptitudDonacion, ob.ABO, ob.EAI, TraducirResultadosAnalizador('PR09',ob.Fenotipo,false), cv.Componente
FROM procesodona pd
LEFT JOIN tomamuestra tm ON pd.IdProcesoDona = tm.IdProcesoDona
LEFT JOIN cuestionariovalora cv ON tm.IdTomaMuestra = cv.IdTomaMuestra
LEFT JOIN obtsangre os ON cv.IdCuestionarioValora = os.IdCuestionarioValora
LEFT JOIN obtencion ob ON os.IdObtencion = ob.IdObtencion
JOIN pacientes p ON pd.IdDonante = p.IdPaciente
WHERE
pd.FechaHoraCreacion >= '2017-03-05' AND pd.FechaHoraCreacion < DATE_ADD('2017-03-05', INTERVAL 1 DAY) and cv.AptitudDonacion = 1 AND pd.FechaHoraCreacion < DATE_ADD({?FechaHasta}, INTERVAL 1 DAY)
;
774010


select  t.FechaTransfusion as fecha_env, s.Unidad as unidad, s.Producto as subproducto, c.CodDepartment as servides, p.Num_Paci as expediente, p.Nombre as nombre, p.Apellidos as apedillos, case t.Reaccion when 1 then 'SI' when 0 then 'NO' end as reaccion, t.FechaHoraLlamada as fechahorallamada, t.FechaTransfusion as fechahoraenvio, r.FechaRegistro as fechahorallegadaservicio, t.FechaHoraInicio as fechahorainiciotransf, t.FechaHoraFin as fechahorafintransf, t.EntregadaPor as usuario from stockbolsas s left join transfusiones t on s.IdStockBolsas=t.IdStockBolsas left join pacientes p on t.IdPaciente=p.IdPaciente left join comservicio c on t.IdServicioEnvio=c.IdDepartment left join registrosbolsas r  on t.IdTransfusion=r.CLAVE_ID where t.FechaTransfusion >= {?FechaDesde} AND t.FechaTransfusion < DATE_ADD({?FechaHasta}, INTERVAL 1 DAY);
select  t.FechaTransfusion as fecha_env, s.Unidad as unidad, s.Producto as subproducto, c.CodDepartment as servides, p.Num_Paci as expediente, p.Nombre as nombre, p.Apellidos as apedillos, case t.Reaccion when 1 then 'SI' when 0 then 'NO' end as reaccion, t.FechaHoraLlamada as fechahorallamada, t.FechaTransfusion as fechahoraenvio, r.FechaRegistro as fechahorallegadaservicio, t.FechaHoraInicio as fechahorainiciotransf, t.FechaHoraFin as fechahorafintransf, t.EntregadaPor as usuario 
from stockbolsas s 
left join transfusiones t on s.IdStockBolsas=t.IdStockBolsas 
left join pacientes p on t.IdPaciente=p.IdPaciente 
left join comservicio c on t.IdServicioEnvio=c.IdDepartment 
left join registrosbolsas r  on t.IdTransfusion=r.CLAVE_ID 
where 
t.FechaTransfusion >= {?FechaDesde} AND t.FechaTransfusion < DATE_ADD({?FechaHasta}, INTERVAL 1 DAY);
update albaranesc as t inner join (select Documento, Codigo, max(Id) mage from albaranesc where Documento = 'N2' and Codigo > 1912 group by Codigo) t1 on t.Codigo=t1.Codigo  and t.Id=t1.mage set FechaCreacion ='1900-01-01 00:00:00';
select a.Unidad, a.Producto, a.DescripArticulo, d.Descripcion, m.Descripcion, a.FechaMovimiento from albaranesl a left join documentos d on a.Documento=d.Documento left join movimientos m on a.Movimiento=m.Movimiento where a.FechaMovimiento between '2016-09-01 00:00:00' and '2016-09-30 23:59:59';
select * from comunicacion c where c.Host='3830303000-3030333131333130303030353400'


select
os.Unidad as UnidadDonacion, os.Producto as ProductoDonacion, os.UsuarioModificacion as UsuarioRec, os.FechaHoraCreacion, TipoDonacion,
al2.Unidad as UnidadGenerada, al2.Producto as ProductoGenerado, al2.DescripArticulo as desart, al2.FechaMovimiento, st.Estado
from obtsangre os
left join cuestionariovalora cv on os.IdCuestionarioValora = cv.IdCuestionarioValora 
 left join albaranesl al1 on (al1.Documento='N1' or al1.Documento = 'N2') and al1.Movimiento=23 and os.Unidad=al1.Unidad and os.Producto=al1.Producto and al1.PoolIdHijo=0 
 left join albaranesl al2 on al2.LineaOrigen=al1.LineaOrigen and al2.Movimiento=22
 left join stockbolsas st on st.Unidad=al2.Unidad and st.Producto=al2.Producto
where os.FechaHoraCreacion >= '2017-01-01' and os.FechaHoraCreacion <= '2017-01-31';

select al.Unidad, al.Producto, al.DescripArticulo, doc.Descripcion, max(al.FechaMovimiento) as FechaMovimiento, mo.Descripcion, al.Responsable from albaranesl al left join movimientos mo on al.Movimiento=mo.Movimiento left join documentos doc on al.Documento=doc.Documento where al.FechaMovimiento >= '2017-01-01' and al.FechaMovimiento <= '2017-01-31' group by al.Unidad, al.Producto order by al.Unidad asc, al.FechaMovimiento asc;

select ob.IdDonante, ob.Producto, count(ob.Unidad) as unidades  from obtencion ob group by ob.IdDonante;

SELECT
pd.IdProcesoDona, pd.FechaHoraCreacion, p.IdPaciente, p.Nombre, p.Apellidos, os.Unidad, cv.Componente, Case cv.TipoDonacion when 1 then 'Autologo' when 4 then 'Diferido' when 'C' then 'Reposición' when 'V' then 'Voluntaria' else ' ' end as CVTipoDonacion , CASE cv.AptitudDonacion WHEN 1 THEN 'Apto' WHEN -1 THEN 'Diferido' WHEN 0 THEN 'Excluido' ELSE '' END AS CVAptitudDonacion
FROM procesodona pd
LEFT JOIN tomamuestra tm ON pd.IdProcesoDona = tm.IdProcesoDona
LEFT JOIN cuestionariovalora cv ON tm.IdTomaMuestra = cv.IdTomaMuestra
LEFT JOIN obtsangre os ON cv.IdCuestionarioValora = os.IdCuestionarioValora
JOIN pacientes p ON pd.IdDonante = p.IdPaciente 
WHERE
pd.FechaHoraCreacion >= '2016-06-15' AND pd.FechaHoraCreacion < DATE_ADD('2017-03-05', INTERVAL 1 DAY) and os.IdDonante in ( select os.IdDonante from obtsangre os group by os.IdDonante having count(os.IdDonante)>1)
order by p.IdPaciente

SELECT
pd.IdProcesoDona, pd.FechaHoraCreacion, p.IdPaciente, p.Nombre, p.Apellidos, os.Unidad, cv.Componente, Case cv.TipoDonacion when 1 then 'Autóloga' when 4 then 'Dirigida' when 'C' then 'Reposición' when 'V' then 'Voluntaria' else ' ' end as CVTipoDonacion , CASE cv.AptitudDonacion WHEN 1 THEN 'Apto' WHEN -1 THEN 'Diferido' WHEN 0 THEN 'Excluido' ELSE '' END AS CVAptitudDonacion
FROM procesodona pd
LEFT JOIN tomamuestra tm ON pd.IdProcesoDona = tm.IdProcesoDona
LEFT JOIN cuestionariovalora cv ON tm.IdTomaMuestra = cv.IdTomaMuestra
LEFT JOIN obtsangre os ON cv.IdCuestionarioValora = os.IdCuestionarioValora
JOIN pacientes p ON pd.IdDonante = p.IdPaciente 
WHERE
pd.FechaHoraCreacion >={?FechaDesde} AND pd.FechaHoraCreacion < DATE_ADD({?FechaHasta}, INTERVAL 1 DAY) and os.IdDonante in ( select os.IdDonante from obtsangre os group by os.IdDonante having count(os.IdDonante)>1)
order by p.IdPaciente

--Donantes aceptados---
SELECT
pd.IdProcesoDona, pd.FechaHoraCreacion AS PDFechaHoraCreacion, ob.Unidad, p.Apellidos, p.Nombre, ob.Subgrupo,
CASE cv.AptitudDonacion WHEN 1 THEN 'Apto' WHEN -1 THEN 'Diferido' WHEN 0 THEN 'Excluido' ELSE '' END AS CVAptitudDonacion, ob.ABO, ob.RH, ob.EAI, TraducirResultadosAnalizador('PR09',ob.Fenotipo,false), cv.Componente
FROM procesodona pd
LEFT JOIN tomamuestra tm ON pd.IdProcesoDona = tm.IdProcesoDona
LEFT JOIN cuestionariovalora cv ON tm.IdTomaMuestra = cv.IdTomaMuestra
LEFT JOIN obtsangre os ON cv.IdCuestionarioValora = os.IdCuestionarioValora
LEFT JOIN obtencion ob ON os.IdObtencion = ob.IdObtencion
JOIN pacientes p ON pd.IdDonante = p.IdPaciente
WHERE
pd.FechaHoraCreacion >= '2017-03-01' AND pd.FechaHoraCreacion < DATE_ADD('2017-03-01', INTERVAL 1 DAY) and cv.AptitudDonacion = 1

----Modificasion datos informe transfusional----
UPDATE `hemocod`.`transfusiones` SET `FechaHoraInicio`='2017-08-31 14:05:00', `FechaHoraFin`='2017-08-31 14:50:00', `ResponsableInicio`='6750', `ResponsableCierra`='6750', `PreTemperatura`=36, `PrePresionArterialBaja`=52, `PrePresionArterialAlta`=102, `PrePulso`=55, `PreComprobacionGrupo`='SI', `PostTemperatura`=36, `PostPresionArterialBaja`=71, `PostPresionArterialAlta`=127, `PostPulso`=63 WHERE  `IdTransfusion`=7156;
UPDATE `hemocod`.`trazabilidad` SET `COD_USU_PALM`='5699' WHERE  `CLAVE_ID`=7156 AND `Automatico`=1;
UPDATE `hemocod`.`trazabilidad` SET `H_Accion_Inicio`='14:05', `H_Accion_Final`='14:50', `responsableAbre`='6570', `responsableCierra`='6570' WHERE  `CLAVE_ID`=7156 AND `Automatico`=1;
UPDATE `hemocod`.`trazabilidad` SET `Cantidad_Sangre_Trans`=-1.00 WHERE  `CLAVE_ID`=7156 AND `Automatico`=1;
UPDATE `hemocod`.`pretransfusion` SET `preTemperatura`=36, `prePresionArterial`=52, `prePulso`=55, `prePresionArterialAlta`=102, `preComprobacionGrupo`='SI', `preFrecuenciaRespiratoria`=16 WHERE  `Clave_ID`=7156 AND `Automatico`=0;
UPDATE `hemocod`.`posttransfusion` SET `postTemperatura`=36, `postPresionArterial`=71, `postPulso`=63, `postPresionArterialAlta`=127, `postFrecuenciaRespiratoria`=16 WHERE  `Clave_ID`=7156 AND `Automatico`=0;


---Solicitud transfusion----
select pe.Num_Paci as Expediente, pa.Nombre, pa.Apellidos, pe.Diagnostico, pe.ServicioDestino, pe.Habitacion, pe.Cama, pe.NombreFacultativo, pp.NProducto, pp.CantidadProducto, pp.Irradiado, pp.Muestra, pa.TipoPersona, st.Unidad, st.Producto, st.Volumen, tr.CantidadSangreTransfundida, tr.Reaccion  from peticiones pe left join pacientes pa on pe.Num_Paci=pa.Num_Paci left join peticionproductos pp on pe.NPeticion=pp.NPeticion left join transfusiones tr on pe.IdPeticion=tr.IdPeticion left join stockbolsas st on tr.IdStockBolsas=st.IdStockBolsas  where pe.FechaHoraPeticion like '%2017-08%';



select pe.FechaHoraPeticion, pe.Num_Paci as Expediente, pa.Nombre as Nom_Paciente, pa.Apellidos as Ape_Paciente, pe.NPeticion as No_Solicitud,pe.ServicioDestino, pe.Habitacion, pe.NombreFacultativo as Medico_Tratante, comt.DescReason as Motivo_transfusion, pe.ObservacionesProductos as Diagnostico, co.DescripcionFamilia as Producto_solicitado, pp.CantidadProducto, case pp.Irradiado when 1 then 'Si' when 0 then 'No' else ' ' end as Irradiado, pp.Muestra, st.Unidad, st.Producto, al.DescripArticulo, st.Volumen, tr.CantidadSangreTransfundida, case tr.Reaccion when 0 then 'No' when 1 then 'Si' else '' end as Reaccion 
from peticiones pe 
left join pacientes pa on pe.Num_Paci=pa.Num_Paci 
left join peticionproductos pp on pe.NPeticion=pp.NPeticion 
left join transfusiones tr on pe.IdPeticion=tr.IdPeticion 
left join stockbolsas st on tr.IdStockBolsas=st.IdStockBolsas
left join componentes co on pp.NProducto=co.Familia
left join albaranesl al on tr.IdAlbaranesL=al.Id 
left join commotivo comt on pe.MotivoTransfusion=comt.IdReason 
where pe.FechaHoraPeticion >='2017-08-01' AND pe.FechaHoraPeticion < DATE_ADD('2017-10-31', INTERVAL 1 DAY)
group by st.Unidad order by pe.FechaHoraPeticion, pe.NPeticion;


----Paciente Prueba Prueba----
update pacientes set nombre = concat('Demo ', idpaciente);
update pacientes set apellidos = concat('Prueba ', idpaciente);


----Eliminar Foto Pacientes----
update pacientesfoto set Foto = NULL 

-----Update datos trnasfusiones---
select * from stockbolsas s where s.Unidad like '%18000187%';
select * from transfusiones t where t.IdStockBolsas=21943;
select * from trazabilidad tr where tr.TRANSFUSIONES_UNIDAD like '%18000187%';
select * from pretransfusion pr where pr.Clave_ID=8596;
select * from posttransfusion ps where ps.Clave_ID=8535;


---delete PDA---
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=18980;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17613;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17607;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17606;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17605;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17604;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17603;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17602;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17601;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17600;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17599;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17595;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17594;
DELETE FROM `hemocod`.`comunicacion` WHERE  `IdComunicacion`=17593;
DELETE FROM `hemocod`.`t_unidad_ord` WHERE  `N_Ordenador`='3830303000-3030333131353337303030373600';

----Bitácora de Donantes
SELECT DISTINCT
procesodona.FechaCumplimentacion,
procesodona.IdProcesoDona,
pacientes.Nombre,
pacientes.Apellidos,
pacientes.Sexo,
TIMESTAMPDIFF(YEAR,pacientes.F_Nacimiento,CURDATE()) AS EDAD,
CASE cuestionariovalora.AptitudDonacion WHEN 1 THEN 'Apto' WHEN -1 THEN 'Diferido' WHEN 0 THEN 'Excluido' ELSE '' END AS CVAptitudDonacion,
CASE cuestionariovalora.TipoDonacion WHEN 'C' THEN 'Reposición' WHEN 'V' THEN 'Voluntaria' WHEN 1 THEN 'Autólogo' ELSE '' END AS CVTipoDonacion,
Componentes.DescripcionFamilia
FROM
procesodona
LEFT JOIN tomamuestra ON tomamuestra.IdProcesoDona = procesodona.IdProcesoDona
LEFT JOIN cuestionariovalora ON tomamuestra.IdTomaMuestra = cuestionariovalora.IdTomaMuestra
LEFT JOIN pacientes ON pacientes.IdPaciente = cuestionariovalora.IdDonante
LEFT JOIN componentes ON Componentes.Componentes = cuestionariovalora.Componente
WHERE
procesodona.FechaCumplimentacion BETWEEN '2018-01-01 05:46:20' AND '2018-01-31 22:46:20'


------Devolver unidad
UPDATE `hemocod`.`stockbolsas` SET `Estado`='E' WHERE  `IdStockBolsas`=23538;
UPDATE `hemocod`.`trazabilidad` SET `FECHA_P_CRU`=NULL, `HORA_P_CRU`='', `CRUZADA`='0', `COD_USU_PALM`=NULL, `F_Accion`=NULL, `H_Accion_Inicio`='0', `H_Accion_Final`='0', `Cantidad_Sangre_Trans`=-1.00, `Reaccion`='-', `responsableAbre`='_', `responsableCierra`='_', `FechaExportacion`=NULL, `ServicioInicio`=NULL, `ServicioCierre`=NULL WHERE  `CLAVE_ID`=9239 AND `Automatico`=1;
UPDATE `hemocod`.`transfusiones` SET `FechaHoraInicio`='1900-01-01 00:00:00', `FechaHoraFin`='1900-01-01 00:00:00', `ResponsableInicio`=NULL, `ResponsableCierra`=NULL, `IdServicioInicio`=0, `IdServicioCierre`=0, `Diagnostico`=NULL, `MomentoReaccion`=NULL, `PreTemperatura`=0.00, `PrePresionArterialBaja`=0.00, `PrePresionArterialAlta`=0.00, `PrePulso`=0.00, `PreComprobacionGrupo`=NULL, `CAntiA`=NULL, `CAntiB`=NULL, `CAntiD`=NULL, `CControl`=NULL WHERE  `IdTransfusion`=9239;




----- Reacccion -------
select * from stockbolsas s where s.Unidad='M400518000457';
select * from transfusiones t where t.IdStockBolsas=22639;
select * from trazabilidad tr where tr.TRANSFUSIONES_UNIDAD='M400518000457';
select * from manifestacionescllinicas m where m.Clave_ID=8741;
select * from posttransfusion ps where ps.Clave_ID=8535;


----NUEVA SEROLOGIA-----
INSERT INTO `pruebasanalizadorestipo` (`Prueba`, `TipoAnalizadorHCBM`, `PruebaAnalizador`) VALUES ('BMS19', 'EVOLIS', 'Chagas Recombinante');
INSERT INTO `diccionarioanalizadores` (`Analizador`, `Test`, `Resultados`, `ResultadosAnalizador`) VALUES ('EVOLIS', 'BMS19', 'S1901', 'POS');
INSERT INTO `diccionarioanalizadores` (`Analizador`, `Test`, `Resultados`, `ResultadosAnalizador`) VALUES ('EVOLIS', 'BMS19', 'S1901', 'REACTIVE');
INSERT INTO `diccionarioanalizadores` (`Analizador`, `Test`, `Resultados`, `ResultadosAnalizador`) VALUES ('EVOLIS', 'BMS19', 'S1901', 'REACTIVO');
INSERT INTO `diccionarioanalizadores` (`Analizador`, `Test`, `Resultados`, `ResultadosAnalizador`) VALUES ('EVOLIS', 'BMS19', 'S1902', 'NEG');
UPDATE `pruebasanalizadorestipo` SET `PruebaAnalizador`='Chagas ETP' WHERE (`Id`='42');


----impota ibb-------
Update pacientes p set p.CodigoDonanteExterno = 'IMPORTADO DE IBB' where p.Direccion3='IMPORTADO DE IBB' 


----update componentes caducidad fecha transformacion------
UPDATE `hotsyncconfiguracion` SET `valorParametro`='CHI;CHIL;CAI;CEXALI;CD;MCRGAH;CPXADLI;CPXAd;CPXAdL;PAIRP;PFD;CELIDPSA;PFCDCPD' WHERE (`nombreParametro`='ProdCaducNow')

------Modificar Muestra Paciente----
Select * from extracciones where Num_Muestra = 10008975;

---Usuarios perfiles-----
SELECT
users.Usuario,
users.Nombre,
users.Apellido1,
users.Apellido2,
users.Activo,
perfiles.Perfil,
users.FechaAlta,
users.FechaInicio
FROM
users
INNER JOIN perfiles ON perfiles.IdPerfil = users.IdPerfil
WHERE
users.Activo = 1 AND
users.IdPerfil in (24,25,26,37,28,29,30,31,32,33,34,35,36)
ORDER BY
users.FechaInicio ASC

mds
lre
