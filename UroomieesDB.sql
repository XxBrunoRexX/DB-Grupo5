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



CREATE TABLE Departamento(
    id int  NOT NULL,
    nombre varchar(255)  NOT NULL,
    CONSTRAINT Departamento_pk PRIMARY KEY  (id),    
);

CREATE TABLE Provincia(
    id int  NOT NULL,
    nombre varchar(255)  NOT NULL,
    departamento_id int NOT NULL,    
    CONSTRAINT Provincia_pk PRIMARY KEY  (id),
    CONSTRAINT departamento_id_fk FOREIGN KEY (departamento_id)
      REFERENCES Departamento(id)
);

CREATE TABLE Inmueble(
    id int  NOT NULL,
    distrito_id int  NOT NULL,
    arrendatario_id int  NOT NULL,
    precio int  NOT NULL,
    cbaños int  NOT NULL,
    area int  NOT NULL,    
    direccion varchar(255)  NOT NULL,    
    CONSTRAINT Inmueble_pk PRIMARY KEY  (id),
    CONSTRAINT Distrito_id_fk  FOREIGN KEY (distrito_id)
      REFERENCES Distrito (id),
    CONSTRAINT Arrendatario_id_fk  FOREIGN KEY (arrendatario_id)
      REFERENCES Arrendatario (id)
);

CREATE TABLE InmuebleCarac(
    id int  NOT NULL,
    inmueble_id int  NOT NULL,
    caracteristica_id varchar(255)  NOT NULL,
    CONSTRAINT InmuebleCarac_pk PRIMARY KEY  (id),    
    CONSTRAINT Inmueble_id_fk  FOREIGN KEY (inmueble_id)
      REFERENCES Inmueble (id)
);

CREATE TABLE Contrato(
    id int NOT NULL,
    descripcion varchar(255) NOT NULL,
    precio varchar(255) NOT NULL,
    nhuespedes int NOT NULL, 
    inmueble_id int NOT NULL,
    CONSTRAINT Contrato_pk PRIMARY KEY  (id),
    CONSTRAINT contrato_inmueble_id_fk FOREIGN KEY (inmueble_id)
      REFERENCES Inmueble (id)
);



CREATE TABLE Caracteristicas (
    id int NOT NULL, 
    Inmueble_id int NOT NULL,
    CONSTRAINT Caracteristicas_pk PRIMARY KEY  (id),  
    CONSTRAINT Inmueble_Carac_id_fk  FOREIGN KEY (Inmueble_id)
      REFERENCES Inmueble (id)
);

CREATE TABLE Aviso(
    id int  NOT NULL,
    descripcion varchar(255)  NOT NULL,
    precio int  NOT NULL,
    nhuespedes int  NOT NULL,
    inmueble_id int  NOT NULL,
    CONSTRAINT Aviso_pk PRIMARY KEY  (id),    
    CONSTRAINT Inmueble_aviso_id_fk  FOREIGN KEY (inmueble_id)
      REFERENCES Inmueble (id)
);



CREATE TABLE Universidad(
    id int NOT NULL, 
    nombre varchar(255) NOT NULL,
    provincia varchar(255) NOT NULL,
    distrito varchar(255) NOT NULL,
    direccion varchar(255) NOT NULL,    
    CONSTRAINT Universidad_pk PRIMARY KEY  (id) 
);

CREATE TABLE Universitario(
    id int  NOT NULL,
    universidad_id int  NOT NULL,
    nombre  varchar(255)  NOT NULL,
    apellido varchar(255)  NOT NULL,
    edad int NOT NULL,
    emal varchar(255)  NOT NULL,
    genero varchar(255)  NOT NULL,
    carrera varchar(255)  NOT NULL,
    CONSTRAINT Universitario_pk PRIMARY KEY  (id),    
    CONSTRAINT Universidad_id_fk  FOREIGN KEY (universidad_id)
      REFERENCES Universidad (id)
);

CREATE TABLE Postulacion(
    id int  NOT NULL,
    estado  varchar(255) NOT NULL,
    precio int  NOT NULL,
    aviso_id int  NOT NULL,
    universitario_id int  NOT NULL,
    CONSTRAINT Postulacion_pk PRIMARY KEY  (id),    
    CONSTRAINT Aviso_id_fk  FOREIGN KEY (aviso_id)
      REFERENCES Aviso (id),
    CONSTRAINT Universitario_postulacion_id_fk  FOREIGN KEY (universitario_id)
      REFERENCES Universidad (id)
);

CREATE TABLE PostulaciónUniversitario (
    Universitario_id int NOT NULL, 
    Postulacion_id int NOT NULL,
    CONSTRAINT Universitario_post_uni_id_fk  FOREIGN KEY (Universitario_id)
      REFERENCES Universitario (id),
    CONSTRAINT Postulacion_univ_id_fk  FOREIGN KEY (Postulacion_id)
      REFERENCES Postulacion (id)
);

CREATE TABLE Uni_universidad(
    Universitario_id int NOT NULL, 
    Universidad_id int NOT NULL,
    CONSTRAINT Universitario_uni_universidad_id_fk  FOREIGN KEY (Universitario_id)
      REFERENCES Universitario(id),
    CONSTRAINT Universidad_uni_universitario_id_fk  FOREIGN KEY (Universidad_id)
      REFERENCES Universidad (id)
);

CREATE TABLE Pago(
    id int NOT NULL, 
    id_contrato int NOT NULL,
    Monto int NOT NULL,
    Fecha_limite date,
    Fecha_pago date,
    CONSTRAINT Pago_pk PRIMARY KEY  (id), 
    CONSTRAINT id_contrato_fk FOREIGN KEY (id_contrato)
      REFERENCES Contrato (id)
);
