CREATE DATABASE UroomieesDB;
USE UroomieesDB;
CREATE TABLE Arrendatario(
    id int  NOT NULL,
    nombre varchar(255)  NOT NULL,
    apellido varchar(255)  NOT NULL,
    edad int  NOT NULL,
    genero varchar(255)  NOT NULL,    
    CONSTRAINT Arrendatario_pk PRIMARY KEY  (id)
);

CREATE TABLE Distrito(
    id int  NOT NULL,
    nombre varchar(255)  NOT NULL,
    provincia varchar(255)  NOT NULL,    
    CONSTRAINT Dsitrito_pk PRIMARY KEY  (id)
);

CREATE TABLE Provincia(
    id int  NOT NULL,
    nombre varchar(255)  NOT NULL,
    departamento_id varchar(255)  NOT NULL,    
    CONSTRAINT Provincia_pk PRIMARY KEY  (id),
    CONSTRAINT departamento_id_fk FOREIGN KEY (departamento_id)
);

CREATE TABLE Departamento(
    id int  NOT NULL,
    nombre varchar(255)  NOT NULL,
    CONSTRAINT Departamento_pk PRIMARY KEY  (id),    
);

CREATE TABLE Inmueble(
    id int  NOT NULL,
    Distrito_id int  NOT NULL,
    Arrendatario_id int  NOT NULL,
    precio int  NOT NULL,
    Cbaños int  NOT NULL,
    area int  NOT NULL,    
    direccion varchar(255)  NOT NULL,    
    CONSTRAINT Inmueble_pk PRIMARY KEY  (id),
    CONSTRAINT Distrito_id_fk  FOREIGN KEY (Distrito_id_),
    CONSTRAINT Arrendatario_id_fk  FOREIGN KEY (Arrendatario_id)
);

CREATE TABLE InmuebleCarac(
    id int  NOT NULL,
    Inmueble_id varchar(255)  NOT NULL,
    Caracteristica_id varchar(255)  NOT NULL,
    CONSTRAINT InmuebleCarac_pk PRIMARY KEY  (id),    
    CONSTRAINT Inmueble_id_fk  FOREIGN KEY (Inmueble_id)
);

CREATE TABLE Contrato(
    id int NOT NULL,
    descripcion varchar(255) NOT NULL,
    precio varchar(255) NOT NULL,
    Nhuespedes int NOT NULL, 
    Inmueble_id int NOT NULL,
    CONSTRAINT Contrato_pk PRIMARY KEY  (id),
);

CREATE TABLE PostulaciónUniversitario (
    Universitario_id int NOT NULL, 
    Postulacion_id int NOT NULL,
    CONSTRAINT Universitario_id_fk  FOREIGN KEY (Universitario_id),
    CONSTRAINT Postulacion_id_fk  FOREIGN KEY (Postulacion_id)
);

CREATE TABLE Postulacion(
    id int  NOT NULL,
    estado  varchar(255) NOT NULL,
    precio int  NOT NULL,
    Aviso_id int  NOT NULL,
    Universitario_id int  NOT NULL,
    CONSTRAINT Postulacion_pk PRIMARY KEY  (id),    
    CONSTRAINT Aviso_id_fk  FOREIGN KEY (Aviso_id)
    CONSTRAINT Universitario_id_fk  FOREIGN KEY (Universitario_id)
);

CREATE TABLE Uni_universidad(
    Universitario_id int NOT NULL, 
    Universidad_id int NOT NULL,
    CONSTRAINT Universitario_id_fk  FOREIGN KEY (Universitario_id),
    CONSTRAINT Universidad_id_fk  FOREIGN KEY (Universidad_id)
);

CREATE TABLE Caracteristicas (
    id int NOT NULL, 
    Inmueble_id int NOT NULL,
    CONSTRAINT Caracteristicas_pk PRIMARY KEY  (id),  
    CONSTRAINT Inmueble_id_fk  FOREIGN KEY (Inmueble_id)
);

CREATE TABLE Aviso(
    id int  NOT NULL,
    descripcion varchar(255)  NOT NULL,
    precio int  NOT NULL,
    Nhuespedes int  NOT NULL,
    Inmueble_id int  NOT NULL,
    CONSTRAINT Aviso_pk PRIMARY KEY  (id),    
    CONSTRAINT Inmueble_id_fk  FOREIGN KEY (Inmueble_id)
);

CREATE TABLE Universitario(
    id int  NOT NULL,
    Universidad_id int  NOT NULL,
    nombre  varchar(255)  NOT NULL,
    apellido varchar(255)  NOT NULL,
    edad int NOT NULL,
    emal varchar(255)  NOT NULL,
    genero varchar(255)  NOT NULL,
    carrera varchar(255)  NOT NULL,
    CONSTRAINT Universitario_pk PRIMARY KEY  (id),    
    CONSTRAINT Universidad_id_fk  FOREIGN KEY (Universidad_id)
);

CREATE TABLE Universidad(
    id int NOT NULL, 
    nombre varchar(255) NOT NULL,
    provincia varchar(255) NOT NULL,
    distrito varchar(255) NOT NULL,
    direccion varchar(255) NOT NULL,    
    CONSTRAINT Universidad_pk PRIMARY KEY  (id) 
);

CREATE TABLE Pago(
    id int NOT NULL, 
    Monto int NOT NULL,
    Fecha_limite date,
    Fecha_pago date,
    CONSTRAINT Pago_pk PRIMARY KEY  (id) 
);