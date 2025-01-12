--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (193, 2018, 'Final', 4, 2, 3, 4);
INSERT INTO public.games VALUES (194, 2018, 'Third Place', 2, 0, 5, 6);
INSERT INTO public.games VALUES (195, 2018, 'Semi-Final', 2, 1, 4, 6);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 1, 0, 3, 5);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 3, 2, 4, 7);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 2, 0, 6, 8);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 2, 1, 5, 9);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 2, 0, 3, 10);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 2, 1, 6, 11);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 1, 0, 8, 12);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 3, 2, 5, 13);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 2, 0, 9, 14);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 2, 1, 4, 15);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 2, 1, 7, 16);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 2, 1, 10, 17);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 4, 3, 3, 18);
INSERT INTO public.games VALUES (209, 2014, 'Final', 1, 0, 19, 18);
INSERT INTO public.games VALUES (210, 2014, 'Third Place', 3, 0, 20, 9);
INSERT INTO public.games VALUES (211, 2014, 'Semi-Final', 1, 0, 18, 20);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 7, 1, 19, 9);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 1, 0, 20, 21);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 1, 0, 18, 5);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 2, 1, 9, 11);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 1, 0, 19, 3);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 2, 1, 9, 22);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 2, 0, 11, 10);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 2, 0, 3, 23);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 2, 1, 19, 24);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 2, 1, 20, 14);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 2, 1, 21, 25);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 1, 0, 18, 12);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 2, 1, 5, 26);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (3, 'France');
INSERT INTO public.teams VALUES (4, 'Croatia');
INSERT INTO public.teams VALUES (5, 'Belgium');
INSERT INTO public.teams VALUES (6, 'England');
INSERT INTO public.teams VALUES (7, 'Russia');
INSERT INTO public.teams VALUES (8, 'Sweden');
INSERT INTO public.teams VALUES (9, 'Brazil');
INSERT INTO public.teams VALUES (10, 'Uruguay');
INSERT INTO public.teams VALUES (11, 'Colombia');
INSERT INTO public.teams VALUES (12, 'Switzerland');
INSERT INTO public.teams VALUES (13, 'Japan');
INSERT INTO public.teams VALUES (14, 'Mexico');
INSERT INTO public.teams VALUES (15, 'Denmark');
INSERT INTO public.teams VALUES (16, 'Spain');
INSERT INTO public.teams VALUES (17, 'Portugal');
INSERT INTO public.teams VALUES (18, 'Argentina');
INSERT INTO public.teams VALUES (19, 'Germany');
INSERT INTO public.teams VALUES (20, 'Netherlands');
INSERT INTO public.teams VALUES (21, 'Costa Rica');
INSERT INTO public.teams VALUES (22, 'Chile');
INSERT INTO public.teams VALUES (23, 'Nigeria');
INSERT INTO public.teams VALUES (24, 'Algeria');
INSERT INTO public.teams VALUES (25, 'Greece');
INSERT INTO public.teams VALUES (26, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 30, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

