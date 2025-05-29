create database calificaciones;
use calificaciones;

-- 1. Tabla de estudiantes
CREATE TABLE Estudiante (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 2. Tabla de evaluaciones
CREATE TABLE Evaluacion (
    id_evaluacion INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    area VARCHAR(50) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    duracion_min INT NOT NULL,
    vigesimal BOOLEAN NOT NULL DEFAULT TRUE
) ENGINE=InnoDB;

-- 3. Tabla de preguntas
CREATE TABLE Pregunta (
    id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
    evaluacion_id INT NOT NULL,
    texto TEXT NOT NULL,
    puntaje DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (evaluacion_id) REFERENCES Evaluacion(id_evaluacion)
) ENGINE=InnoDB;

-- 4. Tabla de alternativas
CREATE TABLE Alternativa (
    id_alternativa INT AUTO_INCREMENT PRIMARY KEY,
    pregunta_id INT NOT NULL,
    texto TEXT NOT NULL,
    correcta BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (pregunta_id) REFERENCES Pregunta(id_pregunta)
) ENGINE=InnoDB;

-- 5. Tabla de asignaciones evaluaciones-estudiantes
CREATE TABLE Asignacion (
    estudiante_id INT NOT NULL,
    evaluacion_id INT NOT NULL,
    PRIMARY KEY(estudiante_id, evaluacion_id),
    FOREIGN KEY (estudiante_id) REFERENCES Estudiante(id_estudiante),
    FOREIGN KEY (evaluacion_id) REFERENCES Evaluacion(id_evaluacion)
) ENGINE=InnoDB;

-- 6. Tabla de intentos de evaluación
CREATE TABLE Intento (
    id_intento INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT NOT NULL,
    evaluacion_id INT NOT NULL,
    inicio DATETIME NOT NULL,
    fin DATETIME,
    puntaje DECIMAL(5,2),
    estado ENUM('RESUELTO','PENDIENTE','ELIMINADO') DEFAULT 'PENDIENTE',
    UNIQUE KEY unico(estudiante_id, evaluacion_id),
    FOREIGN KEY (estudiante_id) REFERENCES Estudiante(id_estudiante),
    FOREIGN KEY (evaluacion_id) REFERENCES Evaluacion(id_evaluacion)
) ENGINE=InnoDB;

-- 7. Tabla de respuestas marcadas
CREATE TABLE Respuesta (
    intento_id INT NOT NULL,
    pregunta_id INT NOT NULL,
    alternativa_id INT NOT NULL,
    PRIMARY KEY(intento_id, pregunta_id),
    FOREIGN KEY (intento_id) REFERENCES Intento(id_intento) ON DELETE CASCADE,
    FOREIGN KEY (pregunta_id) REFERENCES Pregunta(id_pregunta),
    FOREIGN KEY (alternativa_id) REFERENCES Alternativa(id_alternativa)
) ENGINE=InnoDB;
