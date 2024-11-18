--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1
-- Dumped by pg_dump version 17.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: game_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_data (
    user_id integer NOT NULL,
    game_id integer,
    body jsonb
);


ALTER TABLE public.game_data OWNER TO postgres;

--
-- Data for Name: game_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game_data (user_id, game_id, body) FROM stdin;
1	1	{"chips": 50, "money": 150, "gender": "male", "volume": 75, "rewards": "none"}
2	1	{"chips": 50, "money": 10090, "gender": "male", "volume": 75, "rewards": "none"}
\.


--
-- Name: game_data game_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_data
    ADD CONSTRAINT game_data_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

