
 CREATE DATABASE annika;
USE annika;

CREATE TABLE filialer(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR (50),
adress VARCHAR(50),
ort VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE utb(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE utb_x_filial(
id INT NOT NULL AUTO_INCREMENT,
filial_id INT NOT NULL, 
utb_id INT NOT NULL,
datum_start DATE NOT NULL,
datum_slut DATE NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(filial_id) REFERENCES filialer(id),
FOREIGN KEY(utb_id) REFERENCES utb(id)
);

CREATE TABLE kurser(
id INT NOT NULL AUTO_INCREMENT ,
utb_id INT NOT NULL,
namn VARCHAR(50),
antal_poang INT,
PRIMARY KEY(id),
FOREIGN KEY(utb_id) REFERENCES utb(id)
);

#denna ska inte finnas ?????? jag vill ha den ändå, för att specificera när just den instansen av en kurs på just den utbildningen börjar och slutar
CREATE TABLE utb_x_kurs(
id INT NOT NULL AUTO_INCREMENT,
kurs_id INT NOT NULL, 
utb_id INT NOT NULL,
datum_start DATE NOT NULL,
datum_slut DATE NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(kurs_id) REFERENCES kurser(id),
FOREIGN KEY(utb_id) REFERENCES utb(id)
);

CREATE TABLE elever(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE elev_x_kurs(
id INT NOT NULL AUTO_INCREMENT,
elev_id INT NOT NULL,
kurs_id INT NOT NULL,
datum_gradering DATE,
gradering VARCHAR(10),
PRIMARY KEY (id),
FOREIGN KEY(kurs_id) REFERENCES kurser(id),
FOREIGN KEY(elev_id) REFERENCES elever(id)
);

CREATE TABLE yrkestitlar(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE anstallda(
id INT NOT NULL AUTO_INCREMENT,
titel_id INT,
namn VARCHAR(50),
PRIMARY KEY(id),
FOREIGN KEY (titel_id) REFERENCES yrkestitlar(id)
);

CREATE TABLE kurs_x_anstalld(
kurs_id INT NOT NULL,
anst_id INT NOT NULL,
ansvarig BIT(1),
PRIMARY KEY (anst_id,kurs_id),
FOREIGN KEY (anst_id) REFERENCES anstallda(id),
FOREIGN KEY (kurs_id) REFERENCES kurser(id)
);






