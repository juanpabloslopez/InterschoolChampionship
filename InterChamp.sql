/* DROP DATABASE IF EXISTS interchamp; */
/* CREATE DATABASE interchamp */
/*     WITH */
/*     OWNER = postgres */
/*     ENCODING = 'UTF8' */
/*     CONNECTION LIMIT = -1; */

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
    VALUES(9, 'Delantero');

INSERT INTO Role1(
    id_role1, name_role1)
    VALUES(10, 'Creador');

/* Role1] */

/* [School */

INSERT INTO School(
    id_school, name_school)
    VALUES(1, 'Liceo Lastarria');

INSERT INTO School(
    id_school, name_school)
    VALUES(2, 'Liceo 7');

INSERT INTO School(
    id_school, name_school)
    VALUES(3, 'Nacional');

INSERT INTO School(
    id_school, name_school)
    VALUES(4, 'Republica de Siria');

/* School] */

/* [Team */

INSERT INTO Team(
    id_team, id_school, team_name)
    VALUES(1, 1, 'Coca Juniors');

INSERT INTO Team(
    id_team, id_school, team_name)
    VALUES(2, 1, 'Union Penosa');

INSERT INTO Team(
    id_team, id_school, team_name)
    VALUES(3, 2, 'Real Alcoholicos');

INSERT INTO Team(
    id_team, id_school, team_name)
    VALUES(4, 2, 'Indio-Cu');

INSERT INTO Team(
    id_team, id_school, team_name)
    VALUES(5, 3, 'Vokda Juniors');

/* Team] */

/* [Court */

INSERT INTO Court(
    id_court, id_school, name_court)
    VALUES(1, 1, 'Monumental');

INSERT INTO Court(
    id_court, id_school, name_court)
    VALUES(2, 2, 'San Carlos de Apoquindo');

INSERT INTO Court(
    id_court, id_school, name_court)
    VALUES(3, 3, 'FakeEstadiodelaU');

/* Court] */

/* [Competitor */

INSERT INTO Competitor(
    rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school)
    VALUES(209570653, 'Jozsef', 'Jesus', 'Reyes', 'Bascones', 1, 'Male', 20, 1, 1);

INSERT INTO Competitor(
    rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school)
    VALUES(97018359, 'Juan', 'Jose', 'Duarte', 'Lange', 9, 'Male', 50, 2, 2);

INSERT INTO Competitor(
    rut, first_name, second_name, last_name, last_second_name, id_role1, gender, age, id_team, id_school)
    VALUES(197945591, 'Leonardo', 'Andres', 'Rojas', 'Rebolledo', 10, 'Male', 23, 3, 4);

/* Competitor] */

/* [Match */

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(1, 3, 2, 1, 2, 1, 1, '25/06/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(2, 1, 0, 3, 4, 1, 2, '26/06/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(3, 3, 0, 5, 1, 1, 3, '27/06/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(4, 0, 2, 4, 2, 1, 1, '28/06/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(5, 4, 2, 3, 5, 1, 2, '29/06/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(6, 6, 0, 4, 1, 1, 2, '30/06/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(7, 0, 1, 2, 4, 1, 3, '01/07/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(8, 2, 1, 1, 5, 1, 3, '02/07/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(9, 3, 5, 2, 3, 1, 2, '03/07/2022');

INSERT INTO Match(
    id_match, score_team1, score_team2, id_team1, id_team2, id_discipline, id_court, date)
    VALUES(10, 4, 0, 4, 3, 1, 1, '04/07/2022');

/* Match] */
