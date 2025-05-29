use calificaciones;
-- ===== Datos de ejemplo =====

-- 10 estudiantes
INSERT INTO Estudiante (nombre, apellido) VALUES
('Juan','Pérez'),('María','García'),('Luis','Rodríguez'),
('Ana','López'),('Carlos','Martínez'),('Sofía','Díaz'),
('Pedro','Torres'),('Lucía','Ramírez'),('Miguel','Flores'),
('Valeria','Gómez');

-- 5 evaluaciones
INSERT INTO Evaluacion (titulo, area, fecha_inicio, fecha_fin, duracion_min) VALUES
('Matemáticas Básicas','Matemática','2025-06-01','2025-06-05',60),
('Programación I','Informática','2025-06-02','2025-06-06',90),
('Historia del Perú','Sociales','2025-06-03','2025-06-07',45),
('Inglés Básico','Idiomas','2025-06-04','2025-06-08',30),
('Física General','Ciencias','2025-06-05','2025-06-09',75);

-- Preguntas (5 por evaluación)
INSERT INTO Pregunta (evaluacion_id, texto, puntaje) VALUES
-- Evaluación 1
(1,'¿Cuánto es 2+2?',4.00),(1,'¿Cuál es el cuadrado de 3?',4.00),
(1,'¿5-2?',4.00),(1,'¿Multiplicación de 4x2?',4.00),(1,'¿División 10/2?',4.00),
-- Evaluación 2
(2,'¿Qué es una variable en programación?',4.00),(2,'¿Para qué sirve un bucle?',4.00),
(2,'¿Qué es un arreglo?',4.00),(2,'¿Diferencia entre if y switch?',4.00),(2,'¿Qué es una función?',4.00),
-- Evaluación 3
(3,'¿Quién fue el primer presidente del Perú?',4.00),(3,'¿Año de la independencia?',4.00),
(3,'¿Qué tratado ocupó territorio?',4.00),(3,'¿Ubica Chan Chan?',4.00),(3,'¿Capital inca?',4.00),
-- Evaluación 4
(4,'¿Cómo se dice "hola" en inglés?',4.00),(4,'¿Color de la bandera inglesa?',4.00),
(4,'¿Pronombre en inglés de tercera persona?',4.00),(4,'¿Verbo to be en presente?',4.00),(4,'¿Plural de "cat"?',4.00),
-- Evaluación 5
(5,'¿Unidad de fuerza en física?',4.00),(5,'¿Ley de Newton II?',4.00),
(5,'¿Qué es energía cinética?',4.00),(5,'¿Velocidad de la luz?',4.00),(5,'¿Masa en física?',4.00);

-- Alternativas (4 por pregunta, primera siempre correcta)
INSERT INTO Alternativa (pregunta_id, texto, correcta) VALUES
-- Para preguntas 1 a 5
(1,'3',FALSE),(1,'4',TRUE),(1,'5',FALSE),(1,'6',FALSE),
(2,'6',FALSE),(2,'9',TRUE),(2,'3',FALSE),(2,'12',FALSE),
(3,'2',FALSE),(3,'3',TRUE),(3,'1',FALSE),(3,'4',FALSE),
(4,'6',FALSE),(4,'7',FALSE),(4,'8',TRUE),(4,'9',FALSE),
(5,'4',FALSE),(5,'5',FALSE),(5,'2',FALSE),(5,'5',TRUE),
-- Para preguntas 6 a 10
(6,'Lugar donde se guarda dato',TRUE),(6,'Suma',FALSE),(6,'Resta',FALSE),(6,'Multiplicación',FALSE),
(7,'Repetir acción',TRUE),(7,'Condición simple',FALSE),(7,'Arreglo',FALSE),(7,'Función',FALSE),
(8,'Variable con índice',TRUE),(8,'Función',FALSE),(8,'Operador',FALSE),(8,'Bucle',FALSE),
(9,'Comparación múltiple',TRUE),(9,'Asignación',FALSE),(9,'Bucle',FALSE),(9,'Variable',FALSE),
(10,'Bloque de código',TRUE),(10,'Objeto',FALSE),(10,'Clase',FALSE),(10,'Arreglo',FALSE),
-- Para preguntas 11 a 15
(11,'José de San Martín',TRUE),(11,'Simón Bolívar',FALSE),(11,'Miguel Grau',FALSE),(11,'Túpac Amaru',FALSE),
(12,'1821',TRUE),(12,'1810',FALSE),(12,'1824',FALSE),(12,'1836',FALSE),
(13,'Tratado de Ancón',TRUE),(13,'Guayaquil',FALSE),(13,'Versalles',FALSE),(13,'Tordesillas',FALSE),
(14,'Perú',TRUE),(14,'México',FALSE),(14,'Chile',FALSE),(14,'Ecuador',FALSE),
(15,'Cuzco',TRUE),(15,'Lima',FALSE),(15,'Trujillo',FALSE),(15,'Arequipa',FALSE),
-- Para preguntas 16 a 20
(16,'Hello',TRUE),(16,'Adiós',FALSE),(16,'Gracias',FALSE),(16,'Por favor',FALSE),
(17,'Rojo y blanco',TRUE),(17,'Verde y blanco',FALSE),(17,'Azul y blanco',FALSE),(17,'Amarillo y rojo',FALSE),
(18,'He/She',TRUE),(18,'I/You',FALSE),(18,'We/They',FALSE),(18,'It/They',FALSE),
(19,'Am/Is/Are',TRUE),(19,'Do/Does',FALSE),(19,'Have/Has',FALSE),(19,'Will/Shall',FALSE),
(20,'Cats',TRUE),(20,'Catss',FALSE),(20,'Cates',FALSE),(20,'Cat',FALSE),
-- Para preguntas 21 a 25
(21,'Newton',TRUE),(21,'Joule',FALSE),(21,'Watt',FALSE),(21,'Pascal',FALSE),
(22,'F=ma',TRUE),(22,'E=mc2',FALSE),(22,'V=IR',FALSE),(22,'pV=nRT',FALSE),
(23,'Movimiento',TRUE),(23,'Reposo',FALSE),(23,'Caída libre',FALSE),(23,'Atracción',FALSE),
(24,'300000 km/s',TRUE),(24,'150000 km/s',FALSE),(24,'300000 m/s',FALSE),(24,'3x10^8 m/s',FALSE),
(25,'Cantidad de materia',TRUE),(25,'Tiempo',FALSE),(25,'Velocidad',FALSE),(25,'Fuerza',FALSE);

-- Asignaciones: 4 alumnos a 3 evaluaciones cada uno
INSERT INTO Asignacion VALUES
(1,1),(1,2),(1,3),
(2,2),(2,3),(2,4),
(3,3),(3,4),(3,5),
(4,1),(4,4),(4,5);

-- Asignaciones: 3 alumnos a 2 evaluaciones cada uno (distintas)
INSERT INTO Asignacion VALUES
(5,1),(5,5),
(6,2),(6,4),
(7,1),(7,3);

-- (Alumnos 8,9,10 sin asignaciones)

-- Intentos simulados de 7 alumnos
INSERT INTO Intento (estudiante_id, evaluacion_id, inicio, fin, puntaje, estado) VALUES
(1,1,'2025-06-01 10:00','2025-06-01 10:45',16.00,'RESUELTO'),
(2,2,'2025-06-02 11:00','2025-06-02 12:30',18.00,'RESUELTO'),
(3,3,'2025-06-03 09:00','2025-06-03 09:50',10.00,'RESUELTO'), -- desaprobado
(4,4,'2025-06-04 08:00','2025-06-04 08:25',14.00,'RESUELTO'),
(5,1,'2025-06-01 14:00','2025-06-01 14:50',11.00,'RESUELTO'), -- desaprobado
(6,2,'2025-06-02 15:00',NULL,NULL,'PENDIENTE'),
(7,3,'2025-06-03 13:00','2025-06-03 13:30',19.00,'RESUELTO');

-- Registrar respuestas correctas para cada intento resuelto
INSERT INTO Respuesta (intento_id, pregunta_id, alternativa_id)
SELECT i.id_intento, p.id_pregunta, a.id_alternativa
FROM Intento i
JOIN Pregunta p ON p.evaluacion_id = i.evaluacion_id
JOIN Alternativa a ON a.pregunta_id = p.id_pregunta AND a.correcta = TRUE
WHERE i.estado = 'RESUELTO';
