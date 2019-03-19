
show tables;
describe trazabsuite;
describe resultadosseleccion
describe resultadosseleccion
describe idiomaspersonalizados 

select * from idiomaspersonalizados 


select Formulario, Objeto from idiomas where ES like '%Localidad%'

select * from procesodona where FechaHoraCreacion > '2019-01-01 00:00:00';

select * from impresionesbase where DescImpresion like '%Etiqueta%'


trazabsuite;
resultados seleccion

select N_Ordenador, Correo, Impresora, EtiqGrande, EtiqPeque  from t_unidad_ord where tipo = 'H';
select * from impresionesbase limit 100; 
select * from t_unidad_ord; 
Select * from componentes where Familia ='H';
Select * from componentes where Componentes='PCD';
select * from pacientes where Apellidos like '%DEL CAMPO%' and Nombre like '%SYLVIA%'; 
select IdTrazabSuite, Nombre, N_Ordenador, Fecha, Accion, DatoAntiguo, DatoNuevo from trazabsuite where DatoAntiguo like '%4527%' or DatoNuevo like '%12608%'  ;
select * from 12608 
Select * from  componentesisbt 
select  name_code, count(id) as tot_isbt from  componentesisbt group by name_code order by tot_isbt desc
Select * from  componentesisbt where name_code='S1129'
select IdTrazabSuite, Nombre, N_Ordenador, Fecha, Accion, DatoNuevo from trazabsuite where DatoNuevo like '%MotivoInvalidar:13%' and Accion like '%invalidarmuestra%' limit 1000
select IdTrazabSuite, Nombre, N_Ordenador, Fecha, Accion, DatoAntiguo, substring(DatoNuevo,18,21) from trazabsuite where DatoNuevo like '%755823%' and Accion regexp 'VAL|INV' 
select * from idiomas
select * from idiomas where Formulario like '%winProces%' 
delete  from t_unidad_ord where N_Ordenador='THS1LTPRESTAMO'; 
select * from reglas; 
select * from reglasperfiles; 
select * from hotsyncconfiguracion where nombreParametro like '%ETIMSS%'; 

UPDATE hotsyncconfiguracion set valorParametro=1 where nombreParametro = 'ETIMSS'; 

INSERT INTO `
INSERT INTO `diccionarioanalizadores` (`Analizador`, `Test`, `Resultados`, `ResultadosAnalizador`) VALUES ('EVOLIS', 'BMS19', 'S1901', 'POS');
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(18,'winFichaPacientes', 'lblLocalidadPaciente', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(19,'winGestionPacientes', 'lblLocalidad', 'Distrito', NULL);
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(20,'winGestionPacientes', 'Localidad', 'Distrito', NULL);
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(21,'winPacientes', 'lblLocalidad', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(22,'winPacientes', 'Localidad', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(23,'winProcesoDona', 'lblLocalidad', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(24,'winFichaDonantes', 'lblLocalidadDonante', 'Distrito', NULL);
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(25,'winCuestionarioValorizacion', 'lblLocalid', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(26,'winFichaDonantes', 'lblMunicipioDonante', 'Distrito', NULL);
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(27,'winFichaPacientes', 'lblMunicipioPaciente', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(28,'winCuestionarioValorizacion', 'lblMunicip', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(29,'winGestionPacientes', 'lblMunicipio', 'Distrito', NULL);
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(30,'winFichaDonantes', 'lblMunicipioDonante', 'Distrito', NULL);
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(31,'winFichaPacientes', 'lblMunicipioPaciente', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(32,'winCuestionarioValorizacion', 'lblMunicip', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(33,'winGestionPacientes', 'lblMunicipio', 'Distrito', NULL); 
INSERT INTO idiomaspersonalizados (ClaveId, Formulario, Objeto, Personalizado, PDA) Values(34,'winGestionColectas', 'lblLocalidad', 'Distrito', NULL); 


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
DELETE FROM `hemocod_sp`.`t_unidad_ord` WHERE  `N_Ordenador`='LABCETS2';

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

