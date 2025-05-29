use calificaciones;

-- ===== Consultas solicitadas =====

-- a) ¿Cuántos alumnos desaprobados tenemos en total? (puntaje < 12)
SELECT COUNT(DISTINCT estudiante_id) AS total_desaprobados
FROM Intento
WHERE puntaje < 12 AND estado = 'RESUELTO';

-- b) ¿Cuántos alumnos aprobados en la Evaluación 1?
SELECT COUNT(*) AS aprobados_eval1
FROM Intento
WHERE evaluacion_id = 1 AND puntaje >= 12 AND estado = 'RESUELTO';

-- c) Para un alumno, ¿a cuántos exámenes está inscrito y cuántos ha resuelto/pendientes?
-- Ejemplo para estudiante_id = 1:
SELECT
  a.estudiante_id,
  COUNT(a.evaluacion_id) AS total_inscritos,
  SUM(i.estado = 'RESUELTO') AS resueltos,
  SUM(i.estado = 'PENDIENTE') AS pendientes
FROM Asignacion a
LEFT JOIN Intento i ON a.estudiante_id = i.estudiante_id AND a.evaluacion_id = i.evaluacion_id
WHERE a.estudiante_id = 1
GROUP BY a.estudiante_id;

-- d) Mejor y peor calificación 3:
SELECT
  MAX(puntaje) AS mejor_calificacion,
  MIN(puntaje) AS peor_calificacion
FROM Intento
WHERE evaluacion_id = 3 AND estado = 'RESUELTO';

-- e) Promedio de calificaciones de un estudiante (ejm: estudiante_id = 1)
SELECT AVG(puntaje) AS promedio_estudiante
FROM Intento
WHERE estudiante_id = 1 AND estado = 'RESUELTO';
