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
-- Name: guessing_game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guessing_game (
    game_id integer NOT NULL,
    username character varying(25),
    score integer
);


ALTER TABLE public.guessing_game OWNER TO freecodecamp;

--
-- Name: guessing_game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guessing_game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guessing_game_game_id_seq OWNER TO freecodecamp;

--
-- Name: guessing_game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guessing_game_game_id_seq OWNED BY public.guessing_game.game_id;


--
-- Name: guessing_game game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing_game ALTER COLUMN game_id SET DEFAULT nextval('public.guessing_game_game_id_seq'::regclass);


--
-- Data for Name: guessing_game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guessing_game VALUES (167, 'user_1662254740837', 820);
INSERT INTO public.guessing_game VALUES (168, 'user_1662254740837', 193);
INSERT INTO public.guessing_game VALUES (169, 'user_1662254740836', 684);
INSERT INTO public.guessing_game VALUES (170, 'user_1662254740836', 536);
INSERT INTO public.guessing_game VALUES (171, 'user_1662254740837', 907);
INSERT INTO public.guessing_game VALUES (172, 'user_1662254740837', 596);
INSERT INTO public.guessing_game VALUES (173, 'user_1662254740837', 44);
INSERT INTO public.guessing_game VALUES (174, 'user_1662254744881', 866);
INSERT INTO public.guessing_game VALUES (175, 'user_1662254744881', 852);
INSERT INTO public.guessing_game VALUES (176, 'user_1662254744880', 868);
INSERT INTO public.guessing_game VALUES (177, 'user_1662254744880', 49);
INSERT INTO public.guessing_game VALUES (178, 'user_1662254744881', 766);
INSERT INTO public.guessing_game VALUES (179, 'user_1662254744881', 634);
INSERT INTO public.guessing_game VALUES (180, 'user_1662254744881', 384);
INSERT INTO public.guessing_game VALUES (181, 'user_1662254748986', 124);
INSERT INTO public.guessing_game VALUES (182, 'user_1662254748986', 41);
INSERT INTO public.guessing_game VALUES (183, 'user_1662254748985', 314);
INSERT INTO public.guessing_game VALUES (184, 'user_1662254748985', 310);
INSERT INTO public.guessing_game VALUES (185, 'user_1662254748986', 120);
INSERT INTO public.guessing_game VALUES (186, 'user_1662254748986', 137);
INSERT INTO public.guessing_game VALUES (187, 'user_1662254748986', 302);
INSERT INTO public.guessing_game VALUES (188, 'user_1662254752428', 609);
INSERT INTO public.guessing_game VALUES (189, 'user_1662254752428', 603);
INSERT INTO public.guessing_game VALUES (190, 'user_1662254752427', 317);
INSERT INTO public.guessing_game VALUES (191, 'user_1662254752427', 711);
INSERT INTO public.guessing_game VALUES (192, 'user_1662254752428', 345);
INSERT INTO public.guessing_game VALUES (193, 'user_1662254752428', 250);
INSERT INTO public.guessing_game VALUES (194, 'user_1662254752428', 250);
INSERT INTO public.guessing_game VALUES (153, 'user_1662254729715', 992);
INSERT INTO public.guessing_game VALUES (154, 'user_1662254729715', 841);
INSERT INTO public.guessing_game VALUES (155, 'user_1662254729714', 880);
INSERT INTO public.guessing_game VALUES (156, 'user_1662254729714', 38);
INSERT INTO public.guessing_game VALUES (157, 'user_1662254729715', 969);
INSERT INTO public.guessing_game VALUES (158, 'user_1662254729715', 326);
INSERT INTO public.guessing_game VALUES (159, 'user_1662254729715', 165);
INSERT INTO public.guessing_game VALUES (160, 'user_1662254734544', 549);
INSERT INTO public.guessing_game VALUES (161, 'user_1662254734544', 795);
INSERT INTO public.guessing_game VALUES (162, 'user_1662254734543', 210);
INSERT INTO public.guessing_game VALUES (163, 'user_1662254734543', 871);
INSERT INTO public.guessing_game VALUES (164, 'user_1662254734544', 51);
INSERT INTO public.guessing_game VALUES (165, 'user_1662254734544', 12);
INSERT INTO public.guessing_game VALUES (166, 'user_1662254734544', 802);


--
-- Name: guessing_game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guessing_game_game_id_seq', 194, true);


--
-- Name: guessing_game guessing_game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing_game
    ADD CONSTRAINT guessing_game_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

