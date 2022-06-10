DROP DATABASE IF EXISTS InterChamp;
CREATE DATABASE InterChamp
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE TABLE Discipline(
    id_discipline integer NOT NULL,
    name_discipline name NOT NULL,
    CONSTRAINT id_discipline_pk PRIMARY KEY (id_discipline)
);

CREATE TABLE Role1(
    id_role1 integer NOT NULL,
    name_role1 name NOT NULL,
    CONSTRAINT id_role1_pk PRIMARY KEY (id_role1)
);

CREATE TABLE School(
    id_school integer NOT NULL,
    name_school name NOT NULL,
    CONSTRAINT id_school_pk PRIMARY KEY (id_school)
);

CREATE TABLE Team(
    id_team integer NOT NULL,
    id_school integer NOT NULL,
    team_name name NOT NULL,
    CONSTRAINT id_team_pk PRIMARY KEY (id_team),
    CONSTRAINT fk_id_school FOREIGN KEY (id_school)
        REFERENCES School (id_school)
);

CREATE TABLE Court(
    id_court integer NOT NULL,
    id_school integer NOT NULL,
    name_court name NOT NULL,
    CONSTRAINT id_court_pk PRIMARY KEY (id_court),
    CONSTRAINT fk_id_school FOREIGN KEY (id_school)
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
    CONSTRAINT rut_pk PRIMARY KEY (rut),
    CONSTRAINT fk_id_team FOREIGN KEY (id_team)
        REFERENCES Team (id_team),
    CONSTRAINT fk_id_role1 FOREIGN KEY (id_role1)
        REFERENCES Role1 (id_role1),
    CONSTRAINT fk_id_school FOREIGN KEY (id_school)
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
    CONSTRAINT id_match_pk PRIMARY KEY (id_match),
    CONSTRAINT fk_id_team1 FOREIGN KEY (id_team1)
        REFERENCES Team (id_team),
    CONSTRAINT fk_id_team2 FOREIGN KEY (id_team2)
        REFERENCES Team (id_team),
    CONSTRAINT fk_id_discipline FOREIGN KEY (id_discipline)
        REFERENCES Discipline (id_discipline),
    CONSTRAINT fk_id_court FOREIGN KEY (id_court)
        REFERENCES Court (id_court)
);

/* INSERT INTO public.Comuna( */
/*     nombre_com, id_com) */
/*     VALUES ('Providencia', 7500000); */

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

/* [Competitor */

INSERT INTO Competitor(
    rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school)
    VALUES(209570653, 'Jozsef', 'Jesus', 'Reyes', 'Bascones', 3, 'Male', 20, 1, 1);

/* INSERT INTO Competitor( */
/*     rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school) */
/*     VALUES(97018359, 'Juan', 'Jose', 'Duarte', 'Lange', 9, 'Male', 50, 5, 2); */

/* INSERT INTO Competitor( */
/*     rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school) */
/*     VALUES(197945591, 'Leonardo', 'Andres', 'Rojas', 'Rebolledo', 10, 'Male', 23, 4, 3); */

/* Competitor] */

/* [Team */

INSERT INTO Team(
    id_team, id_school, team_name)
    VALUES(1, 1, 'Coca Juniors');

/* Team] */












/* ARP DEBERIA ENTRAR */
/* EMPRESA PING LATENCIA */
/* PROGRAMAS QUE USO */
/* traceroute */
