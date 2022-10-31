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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(24),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1664922660249', 1, 17);
INSERT INTO public.users VALUES ('user_1664924990990', 1, 77);
INSERT INTO public.users VALUES ('user_1664922660250', 1, 247);
INSERT INTO public.users VALUES ('user_1664922722797', 1, 136);
INSERT INTO public.users VALUES ('user_1664924990991', 1, 57);
INSERT INTO public.users VALUES ('user_1664922722798', 1, 207);
INSERT INTO public.users VALUES ('user_1664924998921', 1, 459);
INSERT INTO public.users VALUES ('user_1664924571211', 1, 172);
INSERT INTO public.users VALUES ('user_1664924571212', 1, 300);
INSERT INTO public.users VALUES ('user_1664924998922', 1, 44);
INSERT INTO public.users VALUES ('user_1664924575604', 1, 184);
INSERT INTO public.users VALUES ('user_1664924575605', 1, 189);
INSERT INTO public.users VALUES ('user_1664925109524', 1, 15);
INSERT INTO public.users VALUES ('user_1664924713054', 1, 377);
INSERT INTO public.users VALUES ('user_1664924713055', 1, 180);
INSERT INTO public.users VALUES ('user_1664924826056', 1, 170);
INSERT INTO public.users VALUES ('user_1664925109525', 1, 65);
INSERT INTO public.users VALUES ('user_1664924826057', 1, 161);
INSERT INTO public.users VALUES ('user_1664924903406', 1, 497);
INSERT INTO public.users VALUES ('user_1664925115827', 1, 180);
INSERT INTO public.users VALUES ('user_1664924903407', 1, 86);
INSERT INTO public.users VALUES ('user_1664925115828', 1, 359);
INSERT INTO public.users VALUES ('user_1664924944198', 1, 278);
INSERT INTO public.users VALUES ('user_1664924944199', 1, 166);
INSERT INTO public.users VALUES ('user_1664925124052', 1, 785);
INSERT INTO public.users VALUES ('user_1664925124053', 1, 137);
INSERT INTO public.users VALUES ('user_1664925133689', 1, 425);
INSERT INTO public.users VALUES ('user_1664925133690', 1, 60);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--
