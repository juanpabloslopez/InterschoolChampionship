CREATE DATABASE "InterChamp"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

    CREATE TABLE public.Competitor(
        rut integer NOT NULL,
        first_name name NOT NULL,
        second_name name,
        last_name name NOT NULL,
        last_second_name name,
        role1 text NOT NULL,
        gender text NOT NULL,
        age integer NOT NULL,
        id_team integer NOT NULL,
        id_school integer NOT NULL,
        CONSTRAINT rut_pkey PRIMARY KEY (rut)
    );

    ALTER TABLE IF EXISTS public.Competitor
        OWNER to postgres;

