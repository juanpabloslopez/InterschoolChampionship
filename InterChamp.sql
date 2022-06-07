DROP DATABASE IF EXISTS InterChamp;
CREATE DATABASE InterChamp
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

/* DROP TABLE IF EXISTS Competitor CASCADE; */
/* DROP TABLE IF EXISTS Team CASCADE; */
/* DROP TABLE IF EXISTS Role1 CASCADE; */
/* DROP TABLE IF EXISTS Court CASCADE; */
/* DROP TABLE IF EXISTS Discipline CASCADE; */
/* DROP TABLE IF EXISTS School CASCADE; */
/* DROP TABLE IF EXISTS Match CASCADE; */

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

/* ARP DEBERIA ENTRAR */
/* EMPRESA PING LATENCIA */
/* PROGRAMAS QUE USO */
/* traceroute */
