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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    tries integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (26, 17, 525);
INSERT INTO public.games VALUES (27, 17, 909);
INSERT INTO public.games VALUES (28, 18, 285);
INSERT INTO public.games VALUES (29, 18, 640);
INSERT INTO public.games VALUES (30, 17, 188);
INSERT INTO public.games VALUES (31, 17, 724);
INSERT INTO public.games VALUES (32, 17, 992);
INSERT INTO public.games VALUES (33, 19, 466);
INSERT INTO public.games VALUES (34, 19, 771);
INSERT INTO public.games VALUES (35, 20, 936);
INSERT INTO public.games VALUES (36, 20, 38);
INSERT INTO public.games VALUES (37, 19, 680);
INSERT INTO public.games VALUES (38, 19, 389);
INSERT INTO public.games VALUES (39, 19, 115);
INSERT INTO public.games VALUES (40, 21, 735);
INSERT INTO public.games VALUES (41, 21, 927);
INSERT INTO public.games VALUES (42, 22, 802);
INSERT INTO public.games VALUES (43, 22, 400);
INSERT INTO public.games VALUES (44, 21, 155);
INSERT INTO public.games VALUES (45, 21, 410);
INSERT INTO public.games VALUES (46, 21, 516);
INSERT INTO public.games VALUES (47, 23, 456);
INSERT INTO public.games VALUES (48, 23, 285);
INSERT INTO public.games VALUES (49, 24, 890);
INSERT INTO public.games VALUES (50, 24, 298);
INSERT INTO public.games VALUES (51, 23, 221);
INSERT INTO public.games VALUES (52, 23, 394);
INSERT INTO public.games VALUES (53, 23, 433);
INSERT INTO public.games VALUES (54, 25, 580);
INSERT INTO public.games VALUES (55, 25, 944);
INSERT INTO public.games VALUES (56, 26, 857);
INSERT INTO public.games VALUES (57, 26, 142);
INSERT INTO public.games VALUES (58, 25, 997);
INSERT INTO public.games VALUES (59, 25, 900);
INSERT INTO public.games VALUES (60, 25, 204);
INSERT INTO public.games VALUES (61, 27, 423);
INSERT INTO public.games VALUES (62, 27, 853);
INSERT INTO public.games VALUES (63, 28, 466);
INSERT INTO public.games VALUES (64, 28, 752);
INSERT INTO public.games VALUES (65, 27, 416);
INSERT INTO public.games VALUES (66, 27, 732);
INSERT INTO public.games VALUES (67, 27, 667);
INSERT INTO public.games VALUES (68, 29, 10);
INSERT INTO public.games VALUES (69, 30, 112);
INSERT INTO public.games VALUES (70, 30, 851);
INSERT INTO public.games VALUES (71, 31, 879);
INSERT INTO public.games VALUES (72, 31, 570);
INSERT INTO public.games VALUES (73, 30, 751);
INSERT INTO public.games VALUES (74, 30, 634);
INSERT INTO public.games VALUES (75, 30, 380);
INSERT INTO public.games VALUES (76, 32, 244);
INSERT INTO public.games VALUES (77, 32, 405);
INSERT INTO public.games VALUES (78, 33, 275);
INSERT INTO public.games VALUES (79, 33, 224);
INSERT INTO public.games VALUES (80, 32, 568);
INSERT INTO public.games VALUES (81, 32, 800);
INSERT INTO public.games VALUES (82, 32, 118);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (17, 'user_1738510844091');
INSERT INTO public.users VALUES (18, 'user_1738510844090');
INSERT INTO public.users VALUES (19, 'user_1738510855133');
INSERT INTO public.users VALUES (20, 'user_1738510855132');
INSERT INTO public.users VALUES (21, 'user_1738510958953');
INSERT INTO public.users VALUES (22, 'user_1738510958952');
INSERT INTO public.users VALUES (23, 'user_1738511331431');
INSERT INTO public.users VALUES (24, 'user_1738511331430');
INSERT INTO public.users VALUES (25, 'user_1738511345084');
INSERT INTO public.users VALUES (26, 'user_1738511345083');
INSERT INTO public.users VALUES (27, 'user_1738511411178');
INSERT INTO public.users VALUES (28, 'user_1738511411177');
INSERT INTO public.users VALUES (29, 'Sif');
INSERT INTO public.users VALUES (30, 'user_1738511622452');
INSERT INTO public.users VALUES (31, 'user_1738511622451');
INSERT INTO public.users VALUES (32, 'user_1738511663836');
INSERT INTO public.users VALUES (33, 'user_1738511663835');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 82, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 33, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

