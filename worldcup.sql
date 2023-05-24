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
    round character varying(50) NOT NULL,
    year integer NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (126, 'Final', 2018, 113, 114, 4, 2);
INSERT INTO public.games VALUES (127, 'Third Place', 2018, 117, 118, 2, 0);
INSERT INTO public.games VALUES (128, 'Semi-Final', 2018, 114, 118, 2, 1);
INSERT INTO public.games VALUES (129, 'Semi-Final', 2018, 113, 117, 1, 0);
INSERT INTO public.games VALUES (130, 'Quarter-Final', 2018, 114, 125, 3, 2);
INSERT INTO public.games VALUES (131, 'Quarter-Final', 2018, 118, 128, 2, 0);
INSERT INTO public.games VALUES (132, 'Quarter-Final', 2018, 117, 131, 2, 1);
INSERT INTO public.games VALUES (133, 'Quarter-Final', 2018, 113, 134, 2, 0);
INSERT INTO public.games VALUES (134, 'Eighth-Final', 2018, 118, 137, 2, 1);
INSERT INTO public.games VALUES (135, 'Eighth-Final', 2018, 128, 140, 1, 0);
INSERT INTO public.games VALUES (136, 'Eighth-Final', 2018, 117, 143, 3, 2);
INSERT INTO public.games VALUES (137, 'Eighth-Final', 2018, 131, 146, 2, 0);
INSERT INTO public.games VALUES (138, 'Eighth-Final', 2018, 114, 149, 2, 1);
INSERT INTO public.games VALUES (139, 'Eighth-Final', 2018, 125, 152, 2, 1);
INSERT INTO public.games VALUES (140, 'Eighth-Final', 2018, 134, 155, 2, 1);
INSERT INTO public.games VALUES (141, 'Eighth-Final', 2018, 113, 158, 4, 3);
INSERT INTO public.games VALUES (142, 'Final', 2014, 161, 158, 1, 0);
INSERT INTO public.games VALUES (143, 'Third Place', 2014, 164, 131, 3, 0);
INSERT INTO public.games VALUES (144, 'Semi-Final', 2014, 158, 164, 1, 0);
INSERT INTO public.games VALUES (145, 'Semi-Final', 2014, 161, 131, 7, 1);
INSERT INTO public.games VALUES (146, 'Quarter-Final', 2014, 164, 171, 1, 0);
INSERT INTO public.games VALUES (147, 'Quarter-Final', 2014, 158, 117, 1, 0);
INSERT INTO public.games VALUES (148, 'Quarter-Final', 2014, 131, 137, 2, 1);
INSERT INTO public.games VALUES (149, 'Quarter-Final', 2014, 161, 113, 1, 0);
INSERT INTO public.games VALUES (150, 'Eighth-Final', 2014, 131, 180, 2, 1);
INSERT INTO public.games VALUES (151, 'Eighth-Final', 2014, 137, 134, 2, 0);
INSERT INTO public.games VALUES (152, 'Eighth-Final', 2014, 113, 185, 2, 0);
INSERT INTO public.games VALUES (153, 'Eighth-Final', 2014, 161, 188, 2, 1);
INSERT INTO public.games VALUES (154, 'Eighth-Final', 2014, 164, 146, 2, 1);
INSERT INTO public.games VALUES (155, 'Eighth-Final', 2014, 171, 193, 2, 1);
INSERT INTO public.games VALUES (156, 'Eighth-Final', 2014, 158, 140, 1, 0);
INSERT INTO public.games VALUES (157, 'Eighth-Final', 2014, 117, 198, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (113, 'France');
INSERT INTO public.teams VALUES (114, 'Croatia');
INSERT INTO public.teams VALUES (117, 'Belgium');
INSERT INTO public.teams VALUES (118, 'England');
INSERT INTO public.teams VALUES (125, 'Russia');
INSERT INTO public.teams VALUES (128, 'Sweden');
INSERT INTO public.teams VALUES (131, 'Brazil');
INSERT INTO public.teams VALUES (134, 'Uruguay');
INSERT INTO public.teams VALUES (137, 'Colombia');
INSERT INTO public.teams VALUES (140, 'Switzerland');
INSERT INTO public.teams VALUES (143, 'Japan');
INSERT INTO public.teams VALUES (146, 'Mexico');
INSERT INTO public.teams VALUES (149, 'Denmark');
INSERT INTO public.teams VALUES (152, 'Spain');
INSERT INTO public.teams VALUES (155, 'Portugal');
INSERT INTO public.teams VALUES (158, 'Argentina');
INSERT INTO public.teams VALUES (161, 'Germany');
INSERT INTO public.teams VALUES (164, 'Netherlands');
INSERT INTO public.teams VALUES (171, 'Costa Rica');
INSERT INTO public.teams VALUES (180, 'Chile');
INSERT INTO public.teams VALUES (185, 'Nigeria');
INSERT INTO public.teams VALUES (188, 'Algeria');
INSERT INTO public.teams VALUES (193, 'Greece');
INSERT INTO public.teams VALUES (198, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 157, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 200, true);


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

