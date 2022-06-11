DROP DATABASE IF EXISTS InterChamp;
/* CREATE DATABASE InterChamp */
/*     WITH */
/*     OWNER = postgres */
/*     ENCODING = 'UTF8' */
/*     CONNECTION LIMIT = -1; */

/* DROP TABLE IF EXISTS Match CASCADE; */
/* DROP TABLE IF EXISTS Competitor CASCADE; */
/* DROP TABLE IF EXISTS Court CASCADE; */
/* DROP TABLE IF EXISTS Team CASCADE; */
/* DROP TABLE IF EXISTS School CASCADE; */
/* DROP TABLE IF EXISTS Role1 CASCADE; */
/* DROP TABLE IF EXISTS Discipline CASCADE; */

CREATE TABLE Discipline(
    id_discipline integer NOT NULL,
    name_discipline name NOT NULL,
    PRIMARY KEY (id_discipline)
);

CREATE TABLE Role1(
    id_role1 integer NOT NULL,
    name_role1 name NOT NULL,
    PRIMARY KEY (id_role1)
);

CREATE TABLE School(
    id_school integer NOT NULL,
    name_school name NOT NULL,
    PRIMARY KEY (id_school)
);

CREATE TABLE Team(
    id_team integer NOT NULL,
    id_school integer NOT NULL,
    team_name name NOT NULL,
    PRIMARY KEY (id_team),
    FOREIGN KEY (id_school)
        REFERENCES School (id_school)
);

CREATE TABLE Court(
    id_court integer NOT NULL,
    id_school integer NOT NULL,
    name_court name NOT NULL,
    PRIMARY KEY (id_court),
    FOREIGN KEY (id_school)
        REFERENCES School (id_school)
);

CREATE TABLE Competitor(
    rut integer NOT NULL,
    first_name name NOT NULL,
    second_name name,
    last_name name NOT NULL,
    last_second_name name,
    id_role1 integer NOT NULL,
    gender text NOT NULL,
    age integer NOT NULL,
    id_team integer NOT NULL,
    id_school integer NOT NULL,
    PRIMARY KEY (rut),
    FOREIGN KEY (id_team)
        REFERENCES Team (id_team),
    FOREIGN KEY (id_role1)
        REFERENCES Role1 (id_role1),
    FOREIGN KEY (id_school)
        REFERENCES School (id_school)
);

CREATE TABLE Match(
    id_match integer NOT NULL,
    score_team1 integer NOT NULL,
    score_team2 integer NOT NULL, 
    id_team1 integer NOT NULL,
    id_team2 integer NOT NULL,
    id_discipline integer NOT NULL,
    id_court integer NOT NULL,
    date date NOT NULL,
    PRIMARY KEY (id_match),
    FOREIGN KEY (id_team1)
        REFERENCES Team (id_team),
    FOREIGN KEY (id_team2)
        REFERENCES Team (id_team),
    FOREIGN KEY (id_discipline)
        REFERENCES Discipline (id_discipline),
    FOREIGN KEY (id_court)
        REFERENCES Court (id_court)
);

/* Referencias para agregar competidores */

/* [Role1] */
/* id_role1 = 1 (Arquero) */
/* id_role1 = 9 (Goleador) */
/* id_role1 = 10 (Creador) */

/* [Team] */
/* id_team = 1 ('Coca Juniors') */
/* id_team = 2 ('Vokda Juniors') */
/* id_team = 3 ('Union Penosa') */
/* id_team = 4 ('Indio cu') */
/* id_team = 5 ('Real Alcoholicos') */

/* [School] */
/* id_school = 1 ('Liceo Lastarria') */
/* id_school = 2 ('Nacional') */
/* id_school = 3 ('Liceo 7') */

/* [Discipline */

INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(1, 'Futbol');
INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(2, 'Basketball');
INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(3, 'Volleyball');
INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(4, 'PingPong');
INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(5, 'HandBall');
INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(6, 'Rugby');
INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(7, 'Taca-Taca');
INSERT INTO Discipline(
    id_discipline, name_discipline)
    VALUES(8, 'Ajedrez');

/* Discipline] */

/* [Role1 */

INSERT INTO Role1(
    id_role1, name_role1)
    VALUES(1, 'Arquero');
INSERT INTO Role1(
    id_role1, name_role1)
    VALUES(5, 'Pivote');
INSERT INTO Role1(
    id_role1, name_role1)
    VALUES(10, 'Creador');

/* Role1] */

/* [School */

INSERT INTO School(
    id_school, name_school)
    VALUES(1, 'Liceo Lastarria');

/* School] */

/* [Team */

INSERT INTO Team(
    id_team, id_school, team_name)
    VALUES(1, 1, 'Coca Juniors');

/* Team] */

/* [Court */
/* What is court? */

INSERT INTO Court(
    id_court, id_school, name_court)
    VALUES(1, 1, 'Monumental');

/* Court] */

/* [Competitor */

INSERT INTO Competitor(
    rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school)
    VALUES(209570653, 'Jozsef', 'Jesus', 'Reyes', 'Bascones', 1, 'Male', 20, 1, 1);
/* INSERT INTO Competitor( */
/*     rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school) */
/*     VALUES(97018359, 'Juan', 'Jose', 'Duarte', 'Lange', 9, 'Male', 50, 5, 2); */
/* INSERT INTO Competitor( */
/*     rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school) */
/*     VALUES(197945591, 'Leonardo', 'Andres', 'Rojas', 'Rebolledo', 10, 'Male', 23, 4, 3); */

/* Competitor] */

/* [Match */

/* aqui */

/* Match] */


/* ARP DEBERIA ENTRAR */
/* EMPRESA PING LATENCIA */
/* PROGRAMAS QUE USO */
/* traceroute */
