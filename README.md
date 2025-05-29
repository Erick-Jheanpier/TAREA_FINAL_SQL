este es una base de datos relacionado a cursos con la finalidad de practicar, recuerda que se te comparte 
- modelo relacional
- bd.sql
- data.sql
- query.sql

el proposito de este trabajo es evitar las concurrencias, vamos a empezar

enunciado 

***************************************************************************

DESARROLLAR UN MODELO RELACIONAL 
El centro de capacitación “Aprende Perú” desea contar con sus servicios como analista 
desarrollador para la construcción de una aplicación Web que permita evaluar a sus 
estudiantes a través de una aplicación Web. Para ello tiene los siguientes requerimientos 
1. Se deberá poder construir evaluaciones clasificándolas según su tipo/área 
2. Las evaluaciones son del tipo cerrada, es decir, solo alternativas (no se puede 
identificar cuántas alternativas se tienen por pregunta) 
3. Cada pregunta tiene un puntaje asignado. Solo existe una respuesta válida de la lista 
de alternativas. 
4. Las evaluaciones deben ser vigesimales 
5. Una evaluación debe tener fecha de inicio y fecha de fin, además de un tiempo de 
desarrollo 
6. Un estudiante solo podrá desarrollar la evaluación una vez 
7. El administrador del software, podrá crear nuevas evaluaciones, así como 
reiniciar/eliminar los intentos fallidos desarrollados por los alumnos 
8. Se debe registrar la fecha y hora de inicio y fin del desarrollo de los exámenes 
9. Los alumnos podrán rendir solo las evaluaciones a las que fueron asignados. Es decir, 
el software puede tener N número de evaluaciones, pero el alumno solo podrá 
desarrollar a la que le fue asignado (y una sola vez) 
10. Se debe guardar el registro de los exámenes desarrollador, el estudiante que los 
realizó, el puntaje obtenido y las respuestas que marcó. 
ACTIVIDAD: 
a. Construir el modelo relacional 
b. Construir la BD, tablas, relaciones 
c. Agregar como 10 alumnos, 5 evaluaciones, cada evaluación debe tener 5 preguntas y 
cada pregunta 4 alternativas, defina cuál es la alternativa correcta. 
d. De los 10 alumnos, 4 debe estar asignados a 3 exámenes cada uno 
e. De los 10 alumnos, 3 debe estar asignados a 2 exámenes cada uno (que no sean los 
mismos del bloque anterior) 
f. 
Los 3 alumnos restantes no han sido asignados a ningún examen 
g. De los 7 alumnos, agregar los registros de tal forma que simulen su desarrollo. Al 
menos desaprobar a 2. 
CONSULTAS 
a. ¿Cuántos alumnos desaprobados tenemos en total? 
b. ¿Cuántos alumnos aprobados en un determinado curso tenemos? 
c. ¿A cuántos exámenes está inscrito un alumno y cuántos de ellos están resueltos y 
pendientes? 
d. ¿Cuál es la mejor y peor calificación de una determinada evaluación? 
e. ¿Cómo calcularíamos el promedio de calificaciones de un estudiante?
