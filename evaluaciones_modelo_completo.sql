
-- Crear base de datos
CREATE DATABASE IF NOT EXISTS evaluaciones;
USE evaluaciones;

-- Tabla de áreas
CREATE TABLE Area (
  id_area INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE
);

-- Tabla de evaluaciones
CREATE TABLE Evaluacion (
  id_eval INT AUTO_INCREMENT PRIMARY KEY,
  id_area INT NOT NULL,
  titulo VARCHAR(200) NOT NULL,
  fecha_inicio DATETIME NOT NULL,
  fecha_fin DATETIME NOT NULL,
  tiempo_minutos INT NOT NULL,
  FOREIGN KEY (id_area) REFERENCES Area(id_area)
);

-- Tabla de preguntas
CREATE TABLE Pregunta (
  id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
  id_eval INT NOT NULL,
  enunciado TEXT NOT NULL,
  puntaje DECIMAL(5,2) NOT NULL,
  FOREIGN KEY (id_eval) REFERENCES Evaluacion(id_eval)
);

-- Tabla de alternativas
CREATE TABLE Alternativa (
  id_alt INT AUTO_INCREMENT PRIMARY KEY,
  id_pregunta INT NOT NULL,
  texto TEXT NOT NULL,
  es_correcta BOOLEAN NOT NULL DEFAULT FALSE,
  FOREIGN KEY (id_pregunta) REFERENCES Pregunta(id_pregunta)
);

-- Tabla de alumnos
CREATE TABLE Alumno (
  id_alumno INT AUTO_INCREMENT PRIMARY KEY,
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  dni CHAR(8) NOT NULL UNIQUE
);

-- Relación alumno-evaluación
CREATE TABLE Alumno_Eval (
  id_al_eval INT AUTO_INCREMENT PRIMARY KEY,
  id_alumno INT NOT NULL,
  id_eval INT NOT NULL,
  UNIQUE (id_alumno, id_eval),
  FOREIGN KEY (id_alumno) REFERENCES Alumno(id_alumno),
  FOREIGN KEY (id_eval) REFERENCES Evaluacion(id_eval)
);

-- Tabla de intentos de los alumnos
CREATE TABLE Intento (
  id_intento INT AUTO_INCREMENT PRIMARY KEY,
  id_alumno INT NOT NULL,
  id_eval INT NOT NULL,
  fecha_inicio DATETIME NOT NULL,
  fecha_fin DATETIME NOT NULL,
  estado ENUM('iniciado','aprobado','desaprobado') NOT NULL,
  UNIQUE (id_alumno, id_eval),
  FOREIGN KEY (id_alumno) REFERENCES Alumno(id_alumno),
  FOREIGN KEY (id_eval) REFERENCES Evaluacion(id_eval)
);

-- Tabla de respuestas
CREATE TABLE Respuesta (
  id_respuesta INT AUTO_INCREMENT PRIMARY KEY,
  id_intento INT NOT NULL,
  id_pregunta INT NOT NULL,
  id_alt INT NOT NULL,
  puntaje_obtenido DECIMAL(5,2) NOT NULL,
  FOREIGN KEY (id_intento) REFERENCES Intento(id_intento),
  FOREIGN KEY (id_pregunta) REFERENCES Pregunta(id_pregunta),
  FOREIGN KEY (id_alt) REFERENCES Alternativa(id_alt)
);
