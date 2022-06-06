/* CREATE DATABASE InterChamp */
/*     WITH */
/*     OWNER = postgres */
/*     ENCODING = 'UTF8' */
/*     CONNECTION LIMIT = -1; */

DROP TABLE IF EXISTS Competitor CASCADE;
DROP TABLE IF EXISTS Team CASCADE;

CREATE TABLE public.Competitor(
    rut integer NOT NULL,
    first_name name NOT NULL,
    second_name name,
    last_name name NOT NULL,
    last_second_name name,
    id_role1 text NOT NULL,
    gender text NOT NULL,
    age integer NOT NULL,
    id_team integer NOT NULL,
    id_school integer NOT NULL,
    CONSTRAINT rut_pk PRIMARY KEY (rut)
    /* CONSTRAINT fk_id_team FOREIGN KEY (id_team) */
    /*     REFERENCES public.Team (id_team), */
    /* CONSTRAINT fk_id_role1 FOREIGN KEY (id_role1) */
    /*     REFERENCES public.Role1 (id_role1), */
    /* CONSTRAINT fk_id_school FOREIGN KEY (id_school) */
);

ALTER TABLE IF EXISTS public.Competitor
    OWNER to postgres;

CREATE TABLE public.Team(

);

