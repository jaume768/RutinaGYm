-- Crear una base de datos llamada "gimnasio"
CREATE DATABASE rutinagym;

-- Usar la base de datos "gimnasio"
USE rutinagym;

-- Crear tabla de Usuarios
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    edad INT,
    genero VARCHAR(10),
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Crear tabla de Ejercicios
CREATE TABLE Ejercicios (
    id_ejercicio INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT
);

-- Crear tabla de Rutinas
CREATE TABLE Rutinas (
    id_rutina INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_ejercicio INT,
    fecha DATE,
    sets INT,
    repeticiones INT,
    peso FLOAT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_ejercicio) REFERENCES Ejercicios(id_ejercicio)
);

-- Crear tabla de HistorialEntrenamiento
CREATE TABLE HistorialEntrenamiento (
    id_registro INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    fecha DATE,
    id_ejercicio INT,
    sets INT,
    repeticiones INT,
    peso FLOAT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_ejercicio) REFERENCES Ejercicios(id_ejercicio)
);


