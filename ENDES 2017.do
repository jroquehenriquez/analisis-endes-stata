1.**LOCALIZAMOS LAS VARIABLES QUE SERÁN ANALIZADAS, PRECISANDO EL MÓDULO Y BASE DE DATOS**
*Módulo 66 - REC0111*
   *Variable V001: Conglomerado*
   *Variable V005: Factor de ponderación*
   *Variable V012: Edad actual - entrevistada*
   *Variable V013: Edad actual por grupo de 5 años (de 12 a 14 años de edad,...,de 45 a 49 años de edad)*
   *Variable V022: Estratos*
   *Variable V024: Región (Amazonas,…, Ucayali)*
   *Variable V025: Tipo de lugar de residencia (urbano, rural)*
   *Variable V026: El lugar de residencia en el que se entrevistó - De facto (capital, gran ciudad; pequeña ciudad; pueblo; campo)*
   *Variable V044: Selección para módulos de violencia doméstica*
   *Variable V106: Nivel educativo más alto (sin educación, primario, secundario, mayor)*
   *Variable V136: Número de miembros del hogar*
   *Variable V190: Índice de riqueza*
*Módulo 66 - REC091*
   *Variable SREGION: Región natural (Lima Metropolitana, resto costa, sierra, selva)*
   *Variable S119: Idioma o lengua materna que aprendió hablar en su niñez (quechua,…,otra lengua extranjera)*
*Módulo 67 - RE223132*
   *Variable V208: Nacimientos en los últimos cinco años*
   *Variable V218: Número de niños vivos*
   *Variable V219: Número total de hijos vivos incluido el embarazo actual*
*Módulo 73 - REC84DV*
   *Violencia psicológica y/o verbal - situaciones de control"
      *Variable D101A: Su esposo/compañero se pone (ponía) celoso o molesto si usted conversa (conversaba) con otro hombre*
      *Variable D101B: Su esposo/compañero la acusa (acusaba) frecuentemente de ser infiel*
      *Variable D101C: Su esposo/compañero le impide (impedía) que visite o la visiten sus amistades*
      *Variable D101D: Su esposo/compañero trata (trataba) de limitar visitas/contactos a su familia*
      *Variable D101E: Su esposo/compañero insiste (insistía) siempre en saber todos los lugares donde usted va (iba)*
      *Variable D101F: Su esposo/compañero desconfía (desconfiaba) de Ud. con el dinero*
	  
	  *Variable D102: Número de problemas de control*
   
   *Violencia psicológica y/o verbal - situación humillante"
      *Variable D103A: Su esposo/compañero alguna vez le ha dicho o le ha hecho cosas para humillarla delante de los demás*
   
   *Violencia psicológica y/o verbal - situaciones de amenaza"
      *Variable D103B: Su esposo/compañero la ha amenazado con hacerle daño a usted o a alguien cercano a usted*
      *Variable D103D: Su esposo/compañero la ha amenazado con irse de casa, quitarle a las hijas e hijos o la ayuda económica*
      
	  *Variable D104: Hubo violencia emocional*
   
   *Violencia física*
      *Variable D105A: Su esposo/compañero alguna vez la empujó, sacudió o le tiro algo*
      *Variable D105B: Su esposo/compañero alguna vez la abofeteó o le retorció el brazo*
      *Variable D105C: Su esposo/compañero alguna vez la golpeó con el puño o con algo que pudo hacerle*
      *Variable D105D: Su esposo/compañero alguna vez la ha pateado o arrastrado*
      *Variable D105E: Su esposo/compañero alguna vez trató de estrangularla o quemarla*
      *Variable D105F: Su esposo/compañero alguna vez la amenazó con un cuchillo/pistola u otro tipo de arma*
      *Variable D105G: Su esposo/compañero alguna vez la atacó/agredió con un cuchillo/pistola u otro tipo de arma*

      *Variable D106: Experimentó cualquier violencia menos severa (D105A, B, C o D)*
      *Variable D107: Experimentó cualquier violencia severa (D105E, F o G)*
   
   *Violencia sexual*
      *Variable D105H: Su esposo/compañero alguna vez ha utilizado la fuerza física para obligarte a tener relaciones sexuales aunque usted no quería*
      *Variable D105I: Su esposo/compañero alguna vez la obligó a realizar actos sexuales que Ud. no aprueba*

	  *Variable D108: Experimentó cualquier violencia sexual (D105H o I)*
   
   *Variable D112 (página 73 – 1009): ¿Alguna vez usted pegó, abofeteó, pateó o maltrató físicamente a su esposo (compañero) en momentos que él no la estaba golpeando o maltratando físicamente? (No, Sí)*
   *Variable D113: Su esposo/compañero toma bebidas alcohólicas*
   *Variable D114: Con qué frecuencia su esposo/compañero toma bebidas alcohólicas*
   *Variable D121: Su padre alguna vez golpeó a su madre (no, sí, no sabe)*
*Módulo 71 - RE516171*
   *Variable V501: Estado civil actual (nunca casada,…, no viven juntos)*
   *Variable V525: Edad en la primera relación sexual*
   *Variable V701: Nivel de educación del esposo/compañero (sin educación, primario, secundario, superior, no sabe)*
   *Variable V704: Ocupación del esposo/compañero (vacío)*
   *Variable V705: Grupos de ocupación del esposo/compañero estandarizados (vacío)
   *Variable V714: Actualmente se encuentra trabajando (no, sí)*
   *Variable V721: Trabaja en casa o fuera (en el hogar, fuera del hogar)*
   *Variable V729: Nivel educativo del esposo/compañero (sin educación, primaria incompleta, primaria completa, secundaria incompleta, secundaria completa, superior, no sabe)*
   *Variable V730: Edad del esposo/compañero*

2.**FUSIONAMOS LAS BASES DE DATOS (FUSIÓN HORIZONTAL)**
*Determinamos el directorio de trabajo*
cd "F:\PROYECTOS DE INVESTIGACIÓN\ENDES violencia\Artículo 2023"

*Fusión: Base master REC84DV, primera base using REC0111, segunda base using REC91, tercera base using RE223132, cuarta base using RE516171*
use "F:\PROYECTOS DE INVESTIGACIÓN\ENDES violencia\Artículo 2023\REC84DV", clear
merge 1:1 CASEID using REC0111.dta
keep if _merge==3
drop _merge

merge 1:1 CASEID using REC91.dta
keep if _merge==3
drop _merge

merge 1:1 CASEID using RE223132.dta
drop _merge

merge 1:1 CASEID using RE516171.dta
drop _merge

*Asignamos un nombre a la base de datos fusionada (ENDES violencia 2017) y guardamos"
save "F:\PROYECTOS DE INVESTIGACIÓN\ENDES violencia\Artículo 2023\ENDES violencia 2017.dta"

3.**GENERAMOS LAS VARIABLES: Peso, violencia psicológica y/o verbal, violencia física, y violencia total**  
*Variable Peso*
gen Peso = V005/1000000
label variable Peso "V005/1000000"

*Variable violencia psicológica y/o verbal*
gen Viole_Ps = 1 if D101A==1 | D101B==1 | D101C==1 | D101D==1 | D101E==1 | D101F==1 | D103A==1 | D103A==2 | D103A==3 | D103B==1 | D103B==2 | D103B==3 | D103D==1 | D103D==2 | D103D==3
recode Viole_Ps (. = 0)
replace Viole_Ps = . if D108 == .
label variable Viole_Ps "Violencia psicológica y/o verbal"
label define viole_Ps 0 "No" 1 "Sí"
label values Viole_Ps viole_Ps

*Variable violencia física*
gen Viole_F = 1 if D106==1 | D107==1
recode Viole_F (. = 0)
replace Viole_F = . if D108 == .
label variable Viole_F "Violencia física"
label define viole_F 0 "No" 1 "Sí"
label values Viole_F viole_F

*Variable violencia total*
gen Viole_T = 1 if Viole_Ps==1 | Viole_F==1 | D108==1
recode Viole_T (. = 0)
replace Viole_T = . if D108 == .
label variable Viole_T "Violencia total"
label define viole_T 0 "No" 1 "Sí"
label values Viole_T viole_T

4.**ESTABLECEMOS LA INFORMACIÓN MUESTRAL CON LA INSTRUCCIÓN svyset**
svyset [pweight=Peso], strata(V022) psu(V001)
svydes // sirve para describir la información sobre la muestra almacenada en la memoria de Stata
   
5.**APLICAMOS LOS CRITERIOS DE ELEGIBILIDAD**
*Excluimos a las mujeres entre 12-14 años de edad (0 observaciones eliminadas)*
drop if V013==0
*Incluimos solo la categoría "Mujer seleccionada y entrevistada" (se excluyeron 7468 "Mujer no seleccionada" y 54 "Mujer seleccionada, pero la privacidad no es posible")*
keep if V044==1
   *comprobamos si nuestros hallazgos son coherentes con lo reportado en la ENDES 2022*
   svy: proportion Viole_Ps //(coincide)
   svy: proportion Viole_F //(coincide)
   svy: proportion D108 //(coincide)
   svy: proportion Viole_T //(coincide)
*Incluimos solo las mujeres perteneciente a las categorías "Casado" y "Viviendo juntos" (se excluyeron 4192 "Nunca casada", 67 "Viuda", 56 "Divorciada" y 2517 "No viven juntos")*
keep if V501 == 1 | V501 == 2

6.**GENERAMOS LA TABLA 1**
svy: proportion V501
svy: proportion V013
svy: proportion V106
svy: proportion v717
*Generamos la variable "Número de niños con vida" (categorizada)*
codebook V218
sum V218
gen V218_cat = .
label variable V218_cat "Número de niños con vida"
replace V218_cat = 0 if V218 == 0
replace V218_cat = 1 if V218 >=1 & V218 <=2
replace V218_cat = 2 if V218 >=3 & V218 <=4
replace V218_cat = 3 if V218 >=5 & V218 <=13
label define v218_cat 0 "0" 1 "1-2" 2 "3-4" 3 "5-13"
label values V218_cat v218_cat
svy: proportion V218_cat

svy: proportion D121
*Generamos la variable "Grupo de edades quinquenales - pareja"*
sum V730
gen Edad_p = .
label variable Edad_p "Grupo de edades quinquenales - pareja"
replace Edad_p = 1 if V730 >=15 & V730<=19
replace Edad_p = 2 if V730 >=20 & V730<=24
replace Edad_p = 3 if V730 >=25 & V730<=29
replace Edad_p = 4 if V730 >=30 & V730<=34
replace Edad_p = 5 if V730 >=35 & V730<=39
replace Edad_p = 6 if V730 >=40 & V730<=44
replace Edad_p = 7 if V730 >=45 & V730<=49
replace Edad_p = 8 if V730 >=50 & V730<=98
label define edad_p 1 "15-19" 2 "20-24" 3 "25-29" 4 "30-34" 5 "35-39" 6 "40-44" 7 "45-49" 8 "50 a más"
label values Edad_p edad_p
svy: proportion Edad_p
*Nivel educativo de compañero*
codebook V701
recode V701 (8 = .)
svy: proportion V701

svy: proportion v705
*Creamos la variable "Consumo de alcohol"*
codebook D113 D114
gen D113_D114 = .
label variable D113_D114 "Consumo de alcohol"
replace D113_D114 = 0 if D114 == .
replace D113_D114 = 1 if D114 == 0
replace D113_D114 = 2 if D114 == 2
replace D113_D114 = 3 if D114 == 1
label define d113_d114 0 "No" 1 "Sí, pero no se embriaga" 2 "Sí, se embriaga algunas veces" 3 "Sí, se embriaga frecuentemente"
label values D113_D114 d113_d114
svy: proportion D113_D114

svy: proportion V190
svy: proportion V025
svy: proportion V026
svy: proportion SREGION

7. **GENERAMOS LA TABLA 2**
svy: proportion Viole_Ps
svy: proportion D101A
svy: proportion D101B
svy: proportion D101C
svy: proportion D101D
svy: proportion D101E
svy: proportion D101F
svy: proportion D102

*Generamos la variable D103A_recat*
codebook D103A
gen D103A_recat = .
label variable D103A_recat "Situaciones humillantes"
replace D103A_recat = 0 if D103A == 0
replace D103A_recat = 1 if D103A == 1
replace D103A_recat = 1 if D103A == 2
replace D103A_recat = 1 if D103A == 3
label define d103A_recat 0 "No" 1 "Sí"
label values D103A_recat d103A_recat
svy: proportion D103A_recat
*Generamos la variable D103B_recat*
codebook D103B
gen D103B_recat = .
label variable D103B_recat "Amenazó con hacerle daño"
replace D103B_recat = 0 if D103B == 0
replace D103B_recat = 1 if D103B == 1
replace D103B_recat = 1 if D103B == 2
replace D103B_recat = 1 if D103B == 3
label define d103B_recat 0 "No" 1 "Sí"
label values D103B_recat d103B_recat
svy: proportion D103B_recat
*Generamos la variable D103D_recat*
codebook D103D
gen D103D_recat = .
label variable D103D_recat "Amenaza con irse"
replace D103D_recat = 0 if D103D == 0
replace D103D_recat = 1 if D103D == 1
replace D103D_recat = 1 if D103D == 2
replace D103D_recat = 1 if D103D == 3
label define d103D_recat 0 "No" 1 "Sí"
label values D103D_recat d103D_recat
svy: proportion D103D_recat

svy: proportion Viole_F
*Recategorizamos la variable D105A*
codebook D105A
gen D105A_recat = .
label variable D105A_recat "La empujó, sacudió o le tiró algo"
replace D105A_recat = 0 if D105A == 0
replace D105A_recat = 1 if D105A == 1
replace D105A_recat = 1 if D105A == 2
replace D105A_recat = 1 if D105A == 3
label define d105A_recat 0 "No" 1 "Sí"
label values D105A_recat d105A_recat
svy: proportion D105A_recat
*Recategorizamos la variable D105B*
codebook D105B
gen D105B_recat = .
label variable D105B_recat "La abofeteó o le retorció el brazo"
replace D105B_recat = 0 if D105B == 0
replace D105B_recat = 1 if D105B == 1
replace D105B_recat = 1 if D105B == 2
replace D105B_recat = 1 if D105B == 3
label define d105B_recat 0 "No" 1 "Sí"
label values D105B_recat d105B_recat
svy: proportion D105B_recat
*Recategorizamos la variable D105C*
codebook D105C
gen D105C_recat = .
label variable D105C_recat "La golpeó con el puño o con algo que pudo hacerle daño"
replace D105C_recat = 0 if D105C == 0
replace D105C_recat = 1 if D105C == 1
replace D105C_recat = 1 if D105C == 2
replace D105C_recat = 1 if D105C == 3
label define d105C_recat 0 "No" 1 "Sí"
label values D105C_recat d105C_recat
svy: proportion D105C_recat
*Recategorizamos la variable D105D*
codebook D105D
gen D105D_recat = .
label variable D105D_recat "La ha pateado o arrastrado"
replace D105D_recat = 0 if D105D == 0
replace D105D_recat = 1 if D105D == 1
replace D105D_recat = 1 if D105D == 2
replace D105D_recat = 1 if D105D == 3
label define d105D_recat 0 "No" 1 "Sí"
label values D105D_recat d105D_recat
svy: proportion D105D_recat
*Recategorizamos la variable D105E*
codebook D105E
gen D105E_recat = .
label variable D105E_recat "Trató de estrangularla o quemarla"
replace D105E_recat = 0 if D105E == 0
replace D105E_recat = 1 if D105E == 1
replace D105E_recat = 1 if D105E == 2
replace D105E_recat = 1 if D105E == 3
label define d105E_recat 0 "No" 1 "Sí"
label values D105E_recat d105E_recat
svy: proportion D105E_recat
*Recategorizamos la variable D105F*
codebook D105F
gen D105F_recat = .
label variable D105F_recat "La amenazó con un cuchillo, pistola u otro tipo de arma"
replace D105F_recat = 0 if D105F == 0
replace D105F_recat = 1 if D105F == 1
replace D105F_recat = 1 if D105F == 2
replace D105F_recat = 1 if D105F == 3
label define d105F_recat 0 "No" 1 "Sí"
label values D105F_recat d105F_recat
svy: proportion D105F_recat
*Recategorizamos la variable D105G*
codebook D105G
gen D105G_recat = .
label variable D105G_recat "La atacó/agredió con un cuchillo, pistola u otro tipo de arma"
replace D105G_recat = 0 if D105G == 0
replace D105G_recat = 1 if D105G == 1
replace D105G_recat = 1 if D105G == 2
replace D105G_recat = 1 if D105G == 3
label define d105G_recat 0 "No" 1 "Sí"
label values D105G_recat d105G_recat
svy: proportion D105G_recat

svy: proportion D106
svy: proportion D107

svy: proportion D108
*Recategorizamos la variable D105H*
codebook D105H
gen D105H_recat = .
label variable D105H_recat "Ha utilizado la fuerza física para obligarla a tener relaciones sexuales aunque usted no quería"
replace D105H_recat = 0 if D105H == 0
replace D105H_recat = 1 if D105H == 1
replace D105H_recat = 1 if D105H == 2
replace D105H_recat = 1 if D105H == 3
label define d105H_recat 0 "No" 1 "Sí"
label values D105H_recat d105H_recat
svy: proportion D105H_recat
*Recategorizamos la variable D105I*
codebook D105I
gen D105I_recat = .
label variable D105I_recat "La obligó a realizar actos sexuales que usted no aprueba"
replace D105I_recat = 0 if D105I == 0
replace D105I_recat = 1 if D105I == 1
replace D105I_recat = 1 if D105I == 2
replace D105I_recat = 1 if D105I == 3
label define d105I_recat 0 "No" 1 "Sí"
label values D105I_recat d105I_recat
svy: proportion D105I_recat

8. **GENERAMOS LA TABLA 3**
svy: glm Viole_Ps i.V501, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.V013, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.V106, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.v717, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.V218_cat, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.D121, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.Edad_p, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.V701, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.v705, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.D113_D114, fam(poisson) link(log) nolog eform
svy: glm Viole_Ps i.V190, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.V025, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.V026, fam(bin) link(log) nolog eform
svy: glm Viole_Ps i.SREGION, fam(bin) link(log) nolog eform

9. **GENERAMOS LA TABLA 4**
svy: glm Viole_F i.V501, fam(bin) link(log) nolog eform
svy: glm Viole_F i.V013, fam(bin) link(log) nolog eform
svy: glm Viole_F i.V106, fam(bin) link(log) nolog eform
svy: glm Viole_F i.v717, fam(bin) link(log) nolog eform
svy: glm Viole_F i.V218_cat, fam(bin) link(log) nolog eform
svy: glm Viole_F i.D121, fam(bin) link(log) nolog eform
svy: glm Viole_F i.Edad_p, fam(bin) link(log) nolog eform
svy: glm Viole_F i.V701, fam(bin) link(log) nolog eform
svy: glm Viole_F i.v705, fam(bin) link(log) nolog eform
svy: glm Viole_F i.D113_D114, fam(poisson) link(log) nolog eform
svy: glm Viole_F i.V190, fam(bin) link(log) nolog eform
svy: glm Viole_F i.V025, fam(bin) link(log) nolog eform
svy: glm Viole_F i.V026, fam(bin) link(log) nolog eform
svy: glm Viole_F i.SREGION, fam(bin) link(log) nolog eform
svy: glm Viole_F i.D102, fam(poisson) link(log) nolog eform
svy: glm Viole_F i.D103A_recat, fam(poisson) link(log) nolog eform
*Generamos la variable Situ_amen*
gen Situ_amen = .
label variable Situ_amen "Situaciones de amenaza"
codebook D103B_recat D103D_recat
replace Situ_amen = 0 if D103B_recat == 0 & D103D_recat == 0
replace Situ_amen = 2 if D103B_recat == 1 & D103D_recat == 1
codebook Situ_amen
recode Situ_amen (. = 1)
label define situ_amen 0 "Ninguna" 1 "Una" 2 "Dos"
label values Situ_amen situ_amen
codebook Situ_amen
svy: glm Viole_F i.Situ_amen, fam(poisson) link(log) nolog eform

10. **GENERAMOS LA TABLA 5**
svy: glm D108 i.V501, fam(bin) link(log) nolog eform
svy: glm D108 i.V013, fam(bin) link(log) nolog eform
svy: glm D108 i.V106, fam(bin) link(log) nolog eform
svy: glm D108 i.v717, fam(bin) link(log) nolog eform
svy: glm D108 i.V218_cat, fam(bin) link(log) nolog eform
svy: glm D108 i.D121, fam(bin) link(log) nolog eform
svy: glm D108 i.Edad_p, fam(bin) link(log) nolog eform
svy: glm D108 i.V701, fam(bin) link(log) nolog eform
svy: glm D108 i.v705, fam(bin) link(log) nolog eform
svy: glm D108 i.D113_D114, fam(poisson) link(log) nolog eform
svy: glm D108 i.V190, fam(bin) link(log) nolog eform
svy: glm D108 i.V025, fam(bin) link(log) nolog eform
svy: glm D108 i.V026, fam(bin) link(log) nolog eform
svy: glm D108 i.SREGION, fam(bin) link(log) nolog eform
svy: glm D108 i.D102, fam(poisson) link(log) nolog eform
svy: glm D108 i.D103A_recat, fam(poisson) link(log) nolog eform
svy: glm D108 i.Situ_amen, fam(poisson) link(log) nolog eform

11. **GENERAMOS LA TABLA 6**
svy: glm Viole_Ps i.V501 i.V013 i.V106 i.v717 i.V218_cat i.D121 i.Edad_p i.V701 i. v705 i.D113_D114 i.V190 i.V025 i.SREGION, fam(poisson) link(log) nolog eform

12. **GENERAMOS LA TABLA 7**
svy: glm Viole_F i.V501 i.V013 i.V106 i.v717 i.V218_cat i.D121 i.Edad_p i.V701 i.v705 i.D113_D114 i.V190 i.V025 i.SREGION i.D102 i.D103A_recat i.Situ_amen, fam(poisson) link(log) nolog eform

13. **GENERAMOS LA TABLA 8**
svy: glm D108 i.V501 i.V013 i.V106 i.v717 i.V218_cat i.D121 i.Edad_p i.V701 i.v705 i.D113_D114 i.V190 i.V025 i.SREGION i.D102 i.D103A_recat i.Situ_amen, fam(poisson) link(log) nolog eform

