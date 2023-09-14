## **Preguntas de Investigación a Responder**
1. ¿Cuál es la tendencia de las prevalencias de los diferentes tipos de violencia de pareja contra la mujer peruana?
2. ¿Cuáles son los factores que se asocian a los diferentes tipos de violencia de pareja contra la mujer peruana?

## **¿Cómo Responderemos las Preguntas de Investigación?**
Hay más de una forma, una de ellas es utilizando la información proporcionada por la Encuesta Demográfica y de Salud Familiar (ENDES) ([Diapositiva 1](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/Diapositiva%201.pdf "Diapositiva 1")).

[![Alt text](https://img.youtube.com/vi/iyJvTCXUrjw/0.jpg)](https://www.youtube.com/watch?v=iyJvTCXUrjw)

## **Análisis de la ENDES con el Paquete Estadístico Stata**
A fin de dar respuesta a las preguntas de investigación planteadas, analizaremos las ENDES 2012, 2017 y 2022 que están disponibles en el siguiente enlace [INEI Microdatos](https://proyectos.inei.gob.pe/microdatos/ "INEI Microdatos").

**Paso 1:** Localizamos las variables que serán analizadas, precisando el módulo y base de datos en cada una de las ENDES (ver el punto 1 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022")) ([Diapositiva 2](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/Diapositiva%202.pdf "Diapositiva 2")).

**Paso 2:** Descargamos las bases de datos

**Paso 3:** Hacemos una fusión horizontal de las bases de datos (ver el punto 2 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"))

**Paso 4:** Generamos las variables *Peso*, *Violencia psicológica y/o verbal*, *Violencia física* y *Violencia total* (ver el punto 3 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"))

**Paso 5:** Establecemos la información muestral con la instrucción *svyset* (ver el punto 4 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"))

**Paso 6:** Aplicamos los criterios de elegibilidad (ver el punto 5 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"))

**Paso 7:** Obtenemos las salidas para completar la *Tabla 1. Descripción de las variables estudiadas según ENDES* (ver el punto 6 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"))

**Paso 8:** Obtenemos las salidas para completar la *Tabla 2. Frecuencia de violencia en relación de pareja contra mujeres, situaciones y tipos* (ver el punto 7 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"))

**Paso 9:** Obtenemos las salidas para completar las tablas (ver puntos 8, 9 y 10 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"));
- *Tabla 3. Factores asociados a violencia psicológica y/o verbal según ENDES (análisis bivariado)*
- *Tabla 4. Factores asociados a violencia física según ENDES (análisis bivariado)*
- *Tabla 5. Factores asociados a violencia sexual según ENDES (análisis bivariado)*

**Paso 10:** Obtenemos las salidas para completar las tablas (ver puntos 11, 12 y 13 de los Do-file de las [ENDES 2012](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202012.do "ENDES 2012"), [ENDES 2017](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202017.do "ENDES 2017") y [ENDES 2022](https://github.com/jroquehenriquez/analisis-endes-stata/blob/main/ENDES%202022.do "ENDES 2022"))
- *Tabla 6. Factores asociados a violencia psicológica y/o verbal según ENDES (análisis múltiple)*
- *Tabla 7. Factores asociados a violencia física según ENDES (análisis múltiple)*
- *Tabla 8. Factores asociados a violencia sexual según ENDES (análisis múltiple)*

**Paso 11:** Hacemos una fusión vertical de las bases de datos a fin de calcular los p valores de la tabla 2 (ver Do-file ENDES FV)

## **Materiales**
Los materiales (diapositivas, códigos, enlaces a páginas web de interés y vídeos colgados en YouTube) están disponibles en [este repositorio](https://github.com/jroquehenriquez/analisis-endes-stata "este repositorio"). Si estas familiarizado con GitHub, puedes clonarlo localmente y tener toda la información en un solo lugar.
