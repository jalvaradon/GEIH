/*
                   ALCALDÍA DISTRITAL DE BARRANQUILLA
	** Prueba **			   
Tema: indicadores laborales
Objetivo: organizar bases GEIH para realizar análisis sobre los principales
indicadores del mercado laboral de Barranquilla AM y Distrito Barranquilla
Archivos utilizados: Microdatos GEIH por Área
				
Autor: Equipo investigaciones Alcaldía Barranquilla
Fecha: Mayo 1 de 2017

*/

/****************************** Pasos***************************************

1. Descargar las bases de la GEIH en la página del DANE (ANDA)
   http://formularios.dane.gov.co/Anda_4_1/index.php/catalog/MICRODATOS
   Para ejericicio descargar GEIH 2016: Octubre.txt Noviembre.txt Diciembre.txt
2. Crear una carpeta. Se sugiere guardar los archivos en el directorio 
   C:\...\GEIH\2016\ y guardar los archivos descargados (mes).txt
3.   Pasar archivos de .txt a .dta (formato Stata)
4.   Pegar bases (append) de una misma categoria pero de diferentes meses
5.   Combinar bases de datos para crear una única base
6.   Factores de expansión (trimestre)
7.   Calcular indicadores mercado laboral

****************************************************************************/

* Para comenzar se debe establecer la ruta en donde estan los documentos 
cd C:\Users\jalva\Desktop\GEIH

* importar archivos .txt y pasarlos a formato .dta

/* Convenciones para cambio de nombres, se toma var y el mes
   Área - Características generales (Personas) = cg_(mes)
   Área - Desocupados = des_(mes)
   Área - Fuerza de trabajo = ft_(mes)
   Área - Inactivos = ina_(mes)
   Área - Ocupados = ocu_(mes)
   Área - Otras actividades y ayudas en la semana = sem_(mes)
   Área - Otros ingresos = oi_(mes)
   Área - Vivienda y Hogares = vh_(mes)
*/

*** LOOP para importar los archivos *** 
*** Se crea un local de todos los meses
*** OJO el TIP cambiar \ por / para que la ruta corra. http://www.stata-journal.com/sjpdf.html?articlenum=pr0042 
local mes Marzo Julio Octubre Noviembre Diciembre
foreach x of local mes {
import delimited "C:\Users\jalva\Desktop\GEIH2\2016/`x'.txt\Área - Características generales (Personas).txt", clear
save "C:\Users\jalva\Desktop\GEIH2\2016/cg_`x'.dta", replace
}
*****
*Diciembre 2016 (carpeta diciembre.txt)

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Características generales (Personas).txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\cg_Diciembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Desocupados.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\des_Diciembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Fuerza de trabajo.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ft_Diciembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Inactivos.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ina_Diciembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Ocupados.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ocu_Diciembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Otras actividades y ayudas en la semana.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\sem_Diciembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Otros ingresos.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\oi_Diciembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Diciembre.txt\Área - Vivienda y Hogares.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\vh_Diciembre.dta"

*Noviembre 2016

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Características generales (Personas).txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\cg_Noviembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Desocupados.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\des_Noviembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Fuerza de trabajo.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ft_Noviembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Inactivos.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ina_Noviembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Ocupados.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ocu_Noviembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Otras actividades y ayudas en la semana.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\sem_Noviembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Otros ingresos.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\oi_Noviembre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Noviembre.txt\Área - Vivienda y Hogares.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\vh_Noviembre.dta"

*Octubre 2016

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Características generales (Personas).txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\cg_Octubre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Desocupados.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\des_Octubre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Fuerza de trabajo.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ft_Octubre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Inactivos.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ina_Octubre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Ocupados.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\ocu_Octubre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Otras actividades y ayudas en la semana.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\sem_Octubre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Otros ingresos.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\oi_Octubre.dta"

import delimited "C:\Users\jalva\Desktop\GEIH\2016\Octubre.txt\Área - Vivienda y Hogares.txt", clear
save "C:\Users\jalva\Desktop\GEIH\2016\vh_Octubre.dta"

display "{hline}"

*Unir las bases(APPEND)

clear
cd C:\Users\jalva\Desktop\GEIH\2016

*Área - Características generales (Personas) = cg_

local fnames: dir "." files "cg_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save cg_t4, replace

clear

*Área - Desocupados = des_

local fnames: dir "." files "des_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save des_t4, replace

clear

*Área - Fuerza de trabajo = ft_

local fnames: dir "." files "ft_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save ft_t4, replace

clear

*Área - Inactivos = ina_

local fnames: dir "." files "ina_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save ina_t4, replace

clear

*Área - Ocupados = ocu_

local fnames: dir "." files "ocu_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save ocu_t4, replace

clear

*Área - Otras actividades y ayudas en la semana = sem_

local fnames: dir "." files "sem_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save sem_t4, replace

clear

*Área - Otros ingresos = oi_

local fnames: dir "." files "oi_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save oi_t4, replace

clear

*Área - Vivienda y Hogares = vh_

local fnames: dir "." files "vh_*.dta"
foreach f of local fnames {
    append using `"`f'"', force
}   
save vh_t4, replace

clear

display "{hline}"

*Otra forma de hacer el append cuando se tienen pocos archivos. 
*La forma anterior es más eficiente.
 foreach file in des_Diciembre.dta des_Noviembre.dta des_Octubre.dta {
                append using "`file'", force
}

display "{hline}"
		
		* Unir las tablas (MERGE)

*Primero se identifica el tamaño de los archivos en número de observaciones

*Área - Características generales (Personas) = cg_(mes)   89,088
use cg_t4
count
clear
*Área - Desocupados = des_(mes) 4,639
use des_t4
count
clear
*Área - Fuerza de trabajo = ft_(mes) 74,259
use ft_t4
count
clear
*Área - Inactivos = ina_(mes) 26.126 
use ina_t4
count
clear
*Área - Ocupados = ocu_(mes) 43,494
use ocu_t4
count
clear
*Área - Otras actividades y ayudas en la semana = sem_(mes) 74,259
use sem_t4
count
clear
*Área - Otros ingresos = oi_(mes) 74,259
use oi_t4
count
clear
*Área - Vivienda y Hogares = vh_(mes) 26,980
use vh_t4
count
clear

*Área - Características generales (Personas) = cg_(mes)   89,088
*Área - Fuerza de trabajo = ft_(mes) 74,259
*Área - Otras actividades y ayudas en la semana = sem_(mes) 74,259
*Área - Otros ingresos = oi_(mes) 74,259
*Área - Inactivos = ina_(mes) 26,126 
*Área - Ocupados = ocu_(mes) 43,494
*Área - Vivienda y Hogares = vh_(mes) 26,980
*Área - Desocupados = des_(mes) 4,639

*Merge cg + ft
use cg_t4
merge 1:1 directorio secuencia_p orden using ft_t4
drop _merge
save cgft_t4
clear

*Merge cg + ft + ocu
use cgft_t4
merge 1:1 directorio secuencia_p orden using ocu_t4
drop _merge
save cgftocu_t4
clear

*merge cg + ft + ocu + vh
***** Preguntar si así es correcto hacer el cruce de variables
use cgftocu_t4
merge m:m directorio secuencia_p using vh_t4
drop _merge
save cgftocuvh_t4
clear

*merge cg + ft + ocu + vh + sem
use cgftocuvh_t4
merge 1:1 directorio secuencia_p orden using sem_t4
drop _merge
save cgftocuvhsem_t4
clear

*merge cg + ft + ocu + vh + sem + oi
use cgftocuvhsem_t4
merge 1:1 directorio secuencia_p orden using oi_t4
drop _merge
save cgftocuvhsemoi_t4
clear

*** ¿cómo pegar la base de inactivos?¿cuál es la llave?
*merge cg + ft + ocu + vh + sem + oi + ina
use cgftocuvhsemoi_t4
*** No funciona
merge 1:1 directorio secuencia_p orden using ina_t4
drop _merge
save cgftocuvhsemoiina_t4
clear

*merge cg + ft + ocu + vh + sem + oi + ina + des : Base Completa
use cgftocuvhsemoiina_t4
merge 1:1 directorio secuencia_p orden using des_t4
drop _merge
save basecompleta_t4
clear

display "{hline}"

* Calculo Indicadores Mercado Laboral

local fecha `c(current_date)'
local hora `c(current_time)'
local vers `c(stata_version)'
local flav = cond(`c(MP)', "MP", cond(`c(SE)', "SE", "IC"))
local cwd `c(pwd)'

display _newline "Calculos realizados el `fecha' a las `hora' en Stata/`flav' version `vers'"
display _newline "Los resultados estan alojados en: `cwd'"

display "{hline}"

use cgftocu_t4

*Factores de expansión: 
*Es la capacidad que tiene un individuo para representar el universo de estudio
*fex_c_2011
*Dividir el Factor de expansión entre el número de meses
gen FEX= fex_c_2011/3

* Calculo PET (Población en edad de trabajar)
*utilizar la variable p6040 correspondiente a la edad 
gen pet=0
replace pet=1 if p6040>=12
*Para sacar estadisticas descriptivas (% PET)
tab pet

** TRUCO PARA VARIABLES 1 o 0 ** Colocar la condición en parentesis
* En este caso, cuando se cumple la condición = 1 , cero en otro caso.
gen pet2 = (p6040 >= 12)
* Se puede identificar que pet = pet2

* Revisar si corresponde a las preguntas
gen ocupado=1 if (p6240==1 | p6250==1 | p6260==1 | p6270==1)
tab ocupado
tab oci
*Debe ser lo mismo oci = ocupado

* CALCULO DE INDICADORES LABORALES

/* area / ciudad
   Medellín = 05
   Barranquilla = 08
   Bogotá = 11
   Cartagena = 13
   Manizales 17
   Monteria = 23
   Villavicencio = 50
   Pasto = 52
   Cúcuta = 54
   Pereira = 66
   Bucaramanga = 68
   Ibagué = 73
   Cali = 76
   */

* Verificar que el resultado debe ser igual al que publica el DANE

*Calculo Población en edad de trabajar para Bogotá
tabstat FEX if area==11, by (pet) sta (sum) format (%9.0f)

*Cálculo Población en edad de trabajar para Barranquilla
tabstat FEX if area==08, by (pet) sta (sum) format (%9.0f)

*Calculo número de ocupados para Bogotá
tabstat FEX if area==11, by (ocupado) sta (sum) format (%9.0f)

*Calculo número de ocupados para Barranquilla
tabstat FEX if area==08, by (oci) sta (sum) format (%9.0f)

* Calculo tasa de desempleo
gen desempleo=.
replace desempleo=1 if p6351==1
tab desempleo

* Calculo desempleo Bogotá
tabstat FEX if area==11, by (desempleo) sta (sum) format (%15.0f)

* Calculo desempleo Barranquilla
tabstat FEX if area==08, by (desempleo) sta (sum) format (%15.0f)

*Calculo Población económicamente activa (PEA)
gen pea=.
replace pea=1 if ocupado==1 | desempleo==1
tab pea

*Calculo Población económicamente activa (PEA) Bogotá
tabstat FEX if area==11, by (pea) sta (sum) format (%15.0f)

*Calculo Población económicamente activa (PEA) Barranquilla
tabstat FEX if area==08, by (pea) sta (sum) format (%15.0f)

*¿Cuantos ocupados hay en el hogar?
bysort directorio secuencia_p : egen ocupados_h=total(oci)

*Porcentaje de ocupados por hogar por ciudad
tab ocupados_h area, column nofreq

*PET Hombres
gen pet = (p6040 >= 12)
*Cálculo Población en edad de trabajar para Barranquilla (hombres)
gen pet_hombre = (pet==1&p6020==1)
tabstat FEX if area==08 , by (pet_hombre) sta (sum) format (%9.0f)

*Ocupados Hombres Barranquilla
gen oci_hombre= (oci==1&p6020==1)
tabstat FEX if area==08 , by (oci_hombre) sta (sum) format (%9.0f)

*Cálculo Población en edad de trabajar para Barranquilla (mujeres)
gen pet_mujer = (pet==1&p6020==2)
tabstat FEX if area==08 , by (pet_mujer) sta (sum) format (%9.0f)

*Ocupados Mujeres Barranquilla
gen oci_mujer= (oci==1&p6020==2)
tabstat FEX if area==08 , by (oci_mujer) sta (sum) format (%9.0f)

display "{hline}"

* Dudas: Calculo de los errores: ¿cómo saber si lo que calculé es correcto?
* Es decir, estadisticamente significativo.

/* variables imporantes

p6020 / sexo / hombre =1 / mujer = 2
*/
label define p6020 1 hombre 2 mujer

/*
p6040 / edad

p6220 / mayor nivel educativo / 
   Ninguno = 1 
   Bachiller = 2 
   Técnico o tecnológico = 3
   Universitario = 4
   Postgrado = 5
   No sabe, no informa = 9

*** REFERENCIA ***
* ver video 1 https://www.youtube.com/watch?v=eK8mn10R5kc
* ver video 2 https://www.youtube.com/watch?v=lXP0L1q45M8 
* ver video 3 https://www.youtube.com/watch?v=7RRxZXAnhvw&t=82s
WEB http://www.redormet.org/aprende-en-linea/ 
*/
**************************** OTROS ********************************************

*En el caso de trabajar cabecera y resto
*replace pet=1 if p6040>=12 & clase=="1"
*replace pet=1 if p6040>=10 & clase=="2"

*Calculo de desempleo por rango de edad

*generar dummy edad

gen edad_2030= 0
replace edad_2030 = 1 if (p6040>=20 & p6040<= 30)

*verificar sea de al menos el 10% del PET para que sea valido
sum edad_2030 if edad_2030==1
sum pet if pet==1

* Calculo desempleo Barranquilla (72)
tabstat FEX if (area==08 & edad_2030==1), by (desempleo) sta (sum) format (%15.0f)

*pea AMB entre 20 y 30 años
sum pea if (edad_2030==1 & area==08)

*variable de rango edad
gen r_edad=0
replace r_edad=1 if (p6040== 12/19)
replace r_edad=2 if (p6040>=20 & p6040<= 30)
replace r_edad=3 if (p6040>=40 & p6040<= 50)
replace r_edad=4 if (p6040>=50 & p6040<= 60)
replace r_edad=5 if (p6040>60)

* Calculo desempleo Bogotá (408)
tabstat FEX if area==11, by (desempleo) sta (sum) format (%15.0f)
*sin nivel educativo
tabstat FEX if (area==11 & p6220==1), by (desempleo) sta (sum) format (%15.0f)
*bachiller
tabstat FEX if (area==11 & p6220==2), by (desempleo) sta (sum) format (%15.0f)
*técnico
tabstat FEX if (area==11 & p6220==3), by (desempleo) sta (sum) format (%15.0f)
*universitario
tabstat FEX if (area==11 & p6220==4), by (desempleo) sta (sum) format (%15.0f)
*postgrado
tabstat FEX if (area==11 & p6220==5), by (desempleo) sta (sum) format (%15.0f)

* Calculo desempleo Barranquilla (72)
tabstat FEX if area==08, by (desempleo) sta (sum) format (%15.0f)
*sin nivel educativo
tabstat FEX if (area==08 & p6220==1), by (desempleo) sta (sum) format (%15.0f)
*bachiller
tabstat FEX if (area==08 & p6220==2), by (desempleo) sta (sum) format (%15.0f)
*técnico
tabstat FEX if (area==08 & p6220==3), by (desempleo) sta (sum) format (%15.0f)
*universitario
tabstat FEX if (area==08 & p6220==4), by (desempleo) sta (sum) format (%15.0f)
*postgrado
tabstat FEX if (area==08 & p6220==5), by (desempleo) sta (sum) format (%15.0f)

************** Probando un loop ***********

*Factores de expansión: 
*Es la capacidad que tiene un individuo para representar el universo de estudio
*fex_c_2011
*Dividir el Factor de expansión entre el número de meses
gen FEX= fex_c_2011/3

* Calculo variable desempleo
gen desempleo=.
replace desempleo=1 if p6351==1

*** Calculo número de desempleados por nivel educativo *** 
local ciudad 5 8 11 13 17

forvalues i=1 (1) 5{
foreach x of local ciudad { 
display "ciudad " `x' " nivel educativo " `i'
tabstat FEX if (area==`x' & p6220==`i'), by (desempleo) sta (sum) format (%15.0f)
}
}
*
***

