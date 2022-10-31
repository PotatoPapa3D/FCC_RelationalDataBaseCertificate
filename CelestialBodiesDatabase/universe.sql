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
-- Name: contains_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.contains_life (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    contains_life boolean NOT NULL,
    moon_id integer,
    contains_life_id integer NOT NULL,
    name character varying(30),
    life_name text
);


ALTER TABLE public.contains_life OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    no_of_stars integer,
    lightyr_from_earth numeric(90,2),
    has_black_hole boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    diameter_km integer,
    lightyr_from_earth numeric(90,2),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    diameter_km integer,
    no_of_moons integer,
    lightyr_from_earth numeric(90,2),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    diameter_km integer,
    no_of_planets integer,
    lightyr_from_earth numeric(90,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: contains_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.contains_life VALUES (1, 1, 1, false, 1, 1, 'Dodge', 'No Life');
INSERT INTO public.contains_life VALUES (2, 1, 1, false, 2, 2, 'George', 'No Life');
INSERT INTO public.contains_life VALUES (2, 1, 1, false, 3, 3, 'Donna', 'No Life');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 0.00, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 100000, 2537000.00, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 400000, 2723000.00, true);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 250000, 11740000.01, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 100000, 29350000.00, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 660000, 31000000.00, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 12546, 0.01, 1);
INSERT INTO public.moon VALUES (2, 'Capi', 6584, 0.01, 2);
INSERT INTO public.moon VALUES (3, 'Naoc', 543, 0.01, 2);
INSERT INTO public.moon VALUES (4, 'Bridgeo', 6584, 0.01, 2);
INSERT INTO public.moon VALUES (5, 'Demod', 8476, 0.01, 2);
INSERT INTO public.moon VALUES (6, 'Theta', 12846, 96.87, 3);
INSERT INTO public.moon VALUES (7, 'Caproc', 9534, 96.87, 3);
INSERT INTO public.moon VALUES (8, 'Good Burger', 4584, 96.88, 4);
INSERT INTO public.moon VALUES (9, 'Rod Max', 5684, 40.39, 5);
INSERT INTO public.moon VALUES (10, 'Jan Min', 4856, 40.39, 5);
INSERT INTO public.moon VALUES (11, 'Budsworth', 1286, 29.45, 9);
INSERT INTO public.moon VALUES (12, 'Elva', 9584, 29.45, 9);
INSERT INTO public.moon VALUES (13, 'Bad Burger', 4844, 31.05, 11);
INSERT INTO public.moon VALUES (14, 'Tate', 6584, 32.08, 12);
INSERT INTO public.moon VALUES (15, 'Duke', 4556, 11.85, 7);
INSERT INTO public.moon VALUES (16, 'Doodles', 2186, 0.00, 8);
INSERT INTO public.moon VALUES (17, 'Peppa', 4584, 29.45, 9);
INSERT INTO public.moon VALUES (18, 'Burge Reese', 4444, 29.05, 10);
INSERT INTO public.moon VALUES (19, 'Lucy', 684, 0.01, 2);
INSERT INTO public.moon VALUES (20, 'Oliver', 556, 0.01, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 1, 0.00, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 139820, 79, 0.01, 1);
INSERT INTO public.planet VALUES (3, 'Maxano', 27546, 2, 96.87, 2);
INSERT INTO public.planet VALUES (4, 'Jacksona', 99999, 20, 96.88, 2);
INSERT INTO public.planet VALUES (5, 'Alita', 598462, 66, 40.39, 3);
INSERT INTO public.planet VALUES (6, 'Deppa 48', 12685, 41, 1.00, 3);
INSERT INTO public.planet VALUES (7, 'Jovi', 23658, 2, 11.85, 4);
INSERT INTO public.planet VALUES (8, 'Lolly 5', 6354, 12, 0.00, 4);
INSERT INTO public.planet VALUES (9, 'Alison Sp', 965482, 22, 29.45, 5);
INSERT INTO public.planet VALUES (10, 'John Ca', 563214, 13, 29.05, 5);
INSERT INTO public.planet VALUES (11, 'Cody Ca', 58476, 1, 31.05, 6);
INSERT INTO public.planet VALUES (12, 'Casey Ju', 847562, 3, 32.08, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 865370, 8, 0.01, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 16500000, 9, 96.87, 2);
INSERT INTO public.star VALUES (3, 'Beta Trianguli', 543851, 5, 40.38, 3);
INSERT INTO public.star VALUES (4, 'Bode Star', 994535, 4, 11.80, 4);
INSERT INTO public.star VALUES (5, 'Corvus Star', 894538, 14, 29.35, 5);
INSERT INTO public.star VALUES (6, 'BarBar', 368452, 28, 31.00, 6);


--
-- Name: contains_life contains_life_contains_life_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contains_life
    ADD CONSTRAINT contains_life_contains_life_id_key UNIQUE (contains_life_id);


--
-- Name: contains_life contains_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contains_life
    ADD CONSTRAINT contains_life_pkey PRIMARY KEY (contains_life_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: contains_life contains_life_galaxy_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contains_life
    ADD CONSTRAINT contains_life_galaxy_num_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: contains_life contains_life_moon_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contains_life
    ADD CONSTRAINT contains_life_moon_num_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: contains_life contains_life_planet_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contains_life
    ADD CONSTRAINT contains_life_planet_num_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: contains_life contains_life_star_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.contains_life
    ADD CONSTRAINT contains_life_star_num_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_num_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_num_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_num_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
