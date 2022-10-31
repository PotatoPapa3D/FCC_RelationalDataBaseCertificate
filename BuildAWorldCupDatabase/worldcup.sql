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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(30) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (54, 2018, 'Final', 136, 137, 4, 2);
INSERT INTO public.games VALUES (55, 2018, 'Third Place', 138, 139, 2, 0);
INSERT INTO public.games VALUES (56, 2018, 'Semi-Final', 137, 139, 2, 1);
INSERT INTO public.games VALUES (57, 2018, 'Semi-Final', 136, 138, 1, 0);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 137, 140, 3, 2);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 139, 141, 2, 0);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 138, 142, 2, 1);
INSERT INTO public.games VALUES (61, 2018, 'Quarter-Final', 136, 143, 2, 0);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 139, 144, 2, 1);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 141, 145, 1, 0);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 138, 146, 3, 2);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 142, 147, 2, 0);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 137, 148, 2, 1);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 140, 149, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 143, 150, 2, 1);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 136, 151, 4, 3);
INSERT INTO public.games VALUES (70, 2014, 'Final', 152, 151, 1, 0);
INSERT INTO public.games VALUES (71, 2014, 'Third Place', 153, 142, 3, 0);
INSERT INTO public.games VALUES (72, 2014, 'Semi-Final', 151, 153, 1, 0);
INSERT INTO public.games VALUES (73, 2014, 'Semi-Final', 152, 142, 7, 1);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 153, 154, 1, 0);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 151, 138, 1, 0);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 142, 144, 2, 1);
INSERT INTO public.games VALUES (77, 2014, 'Quarter-Final', 152, 136, 1, 0);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 142, 155, 2, 1);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 144, 143, 2, 0);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 136, 156, 2, 0);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 152, 157, 2, 1);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 153, 147, 2, 1);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 154, 158, 2, 1);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 151, 145, 1, 0);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 138, 159, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 136);
INSERT INTO public.teams VALUES ('Croatia', 137);
INSERT INTO public.teams VALUES ('Belgium', 138);
INSERT INTO public.teams VALUES ('England', 139);
INSERT INTO public.teams VALUES ('Russia', 140);
INSERT INTO public.teams VALUES ('Sweden', 141);
INSERT INTO public.teams VALUES ('Brazil', 142);
INSERT INTO public.teams VALUES ('Uruguay', 143);
INSERT INTO public.teams VALUES ('Colombia', 144);
INSERT INTO public.teams VALUES ('Switzerland', 145);
INSERT INTO public.teams VALUES ('Japan', 146);
INSERT INTO public.teams VALUES ('Mexico', 147);
INSERT INTO public.teams VALUES ('Denmark', 148);
INSERT INTO public.teams VALUES ('Spain', 149);
INSERT INTO public.teams VALUES ('Portugal', 150);
INSERT INTO public.teams VALUES ('Argentina', 151);
INSERT INTO public.teams VALUES ('Germany', 152);
INSERT INTO public.teams VALUES ('Netherlands', 153);
INSERT INTO public.teams VALUES ('Costa Rica', 154);
INSERT INTO public.teams VALUES ('Chile', 155);
INSERT INTO public.teams VALUES ('Nigeria', 156);
INSERT INTO public.teams VALUES ('Algeria', 157);
INSERT INTO public.teams VALUES ('Greece', 158);
INSERT INTO public.teams VALUES ('United States', 159);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 85, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 32, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 159, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
