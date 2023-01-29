--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text,
    light_years numeric,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text,
    light_years numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text,
    light_years numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text,
    light_years numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'A', 12, NULL);
INSERT INTO public.fifth VALUES (2, 'Ah', 12, NULL);
INSERT INTO public.fifth VALUES (3, 'Ahh', 12, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 158, 'Our galaxy', 56, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 156, 'Neighbour', 29, false);
INSERT INTO public.galaxy VALUES (3, 'MadeUp1', 24, 'Something1', 2, false);
INSERT INTO public.galaxy VALUES (4, 'MadeUp2', 100, 'Something2', 6, true);
INSERT INTO public.galaxy VALUES (5, 'MadeUp3', 20, 'Something3', 6, false);
INSERT INTO public.galaxy VALUES (6, 'MadeUp4', 45, 'Something4', 9, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 23, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Moo2', 23, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Moo22', 23, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Moon4', 23, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Moon5', 23, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Moon56', 23, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Moon7', 23, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'Moon8', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Moon9', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'Moon10', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (11, 'Moon11', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'Moon12', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (13, 'Moon13', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'Moon14', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (15, 'Moon15', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Moon16', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'Moon17', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'Moon18', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'Moon19', 23, NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'Moon20', 23, NULL, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'EARTH', 150, 'We', NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'Planet2', 150, 'Random', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'Planet3', 150, 'Random', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'Planet4', 150, 'Random', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'Planet5', 150, 'Random', NULL, false, 2);
INSERT INTO public.planet VALUES (6, 'Planet6', 150, 'Random', NULL, false, 2);
INSERT INTO public.planet VALUES (7, 'Planet7', 150, 'Random', NULL, false, 3);
INSERT INTO public.planet VALUES (8, 'Planet8', 150, 'Random', NULL, false, 3);
INSERT INTO public.planet VALUES (9, 'Planet9', 150, 'Random', NULL, false, 3);
INSERT INTO public.planet VALUES (10, 'Planet10', 150, 'Random', NULL, false, 3);
INSERT INTO public.planet VALUES (11, 'Planet11', 150, 'Random', NULL, false, 3);
INSERT INTO public.planet VALUES (12, 'Planet12', 150, 'Random', NULL, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 150, 'Ours', 1, 1);
INSERT INTO public.star VALUES (2, 'Sun1', 150, 'Ours', 1, 2);
INSERT INTO public.star VALUES (3, 'Su21', 150, 'Ours', 1, 3);
INSERT INTO public.star VALUES (4, 'Su2s1', 150, 'Ours', 1, 4);
INSERT INTO public.star VALUES (5, 'Su2sa1', 150, 'Ours', 1, 5);
INSERT INTO public.star VALUES (6, 'Su2saa1', 150, 'Ours', 1, 6);


--
-- Name: fifth fifth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_name_key UNIQUE (name);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

