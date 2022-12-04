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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    luminosity character varying,
    is_old boolean,
    mass character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    was_visited boolean,
    planet_id integer,
    mean_radius text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age_million_years integer NOT NULL,
    livable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_years integer NOT NULL,
    chemical_composition text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying NOT NULL,
    age numeric NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Koronis', '10^9ULIRGS', true, '10^50m');
INSERT INTO public.galaxy VALUES (2, 'Capa', '10^8 ULIRGS', true, '10^45m');
INSERT INTO public.galaxy VALUES (3, 'Down Way', '10^10 UL', false, '10^150 kg');
INSERT INTO public.galaxy VALUES (4, 'New Little Boy', '10^500 UL', false, '10^20 kg');
INSERT INTO public.galaxy VALUES (5, 'Destroier', '10^1000000 UL', true, '10^1000000000000 kg');
INSERT INTO public.galaxy VALUES (6, 'Illuminator', '10^10000000 Destroiers', true, '10^58 kg');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Watcher', false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'The Listener', false, 1, NULL);
INSERT INTO public.moon VALUES (3, 'The Speaker', false, 1, NULL);
INSERT INTO public.moon VALUES (4, 'The Feeler', false, 1, NULL);
INSERT INTO public.moon VALUES (5, 'Bright of Light', true, 6, NULL);
INSERT INTO public.moon VALUES (6, 'Bright of Dark', true, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Bright', false, 2, NULL);
INSERT INTO public.moon VALUES (8, 'Bright of Dark', true, 5, '15^90 u');
INSERT INTO public.moon VALUES (9, 'The Fetus', false, 5, '1 u');
INSERT INTO public.moon VALUES (10, 'The Mother', false, 5, '10^9999999999 u');
INSERT INTO public.moon VALUES (11, 'The Father', true, 4, '10^99999999 u');
INSERT INTO public.moon VALUES (12, 'The Sister', false, 4, '10^99999 u');
INSERT INTO public.moon VALUES (13, 'The Brother', false, 4, '10^99999 u');
INSERT INTO public.moon VALUES (14, 'Lower', true, 2, '10^99 u');
INSERT INTO public.moon VALUES (15, 'Dragon_s House', true, 6, '10^9999 u');
INSERT INTO public.moon VALUES (16, 'Mage_s Room', true, 6, '10^9999 u');
INSERT INTO public.moon VALUES (48, 'Lost Corrupted Comprehension of Love', true, 6, NULL);
INSERT INTO public.moon VALUES (49, 'Lost Corrupted Comprehension of hate', true, 6, NULL);
INSERT INTO public.moon VALUES (50, 'Lost Corrupted Comprehension of disgust', true, 6, NULL);
INSERT INTO public.moon VALUES (51, 'Lost Corrupted Comprehension of saddness', true, 6, NULL);
INSERT INTO public.moon VALUES (52, 'Lost Corrupted Comprehension of hunger', true, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Notorian', 500, false, 2);
INSERT INTO public.planet VALUES (2, 'Fragance', 300, true, 6);
INSERT INTO public.planet VALUES (3, 'The Tester', 5000, false, 1);
INSERT INTO public.planet VALUES (4, 'Another', 5500, false, 2);
INSERT INTO public.planet VALUES (5, 'Noto', 5550, false, 5);
INSERT INTO public.planet VALUES (6, 'Shawn', 60000, false, 6);
INSERT INTO public.planet VALUES (7, 'Cryier Child', 400, true, 4);
INSERT INTO public.planet VALUES (8, 'Broto', 20, false, 2);
INSERT INTO public.planet VALUES (9, 'Luz', 5000, false, 6);
INSERT INTO public.planet VALUES (10, 'Lost Souls Home', 500005, true, 6);
INSERT INTO public.planet VALUES (11, 'Lost Souls Grave', 999999, false, 5);
INSERT INTO public.planet VALUES (12, 'Netherland', 5, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'New Light', 3364, '71% Hydrogen, 20% Hellium, ...Else', 1);
INSERT INTO public.star VALUES (2, 'Old Light', 195112, '51% Hydrogen, 29% Hellium, ...Else', 1);
INSERT INTO public.star VALUES (3, 'Silent Child', 8000, '0.0001% black matter, 0.0001% white matter, 50% Acid, ...Unknown', 4);
INSERT INTO public.star VALUES (4, 'Destroyer Child', 8000, '33% Revenge, 12% Anger, 50% Hate, ...Unknown', 5);
INSERT INTO public.star VALUES (5, 'Lazy One', 8350, '33% todo, 12% doing fast, 50% not doing anything, ...Unknown', 6);
INSERT INTO public.star VALUES (6, 'Lazy One Clone', 8350, '33% todo, 12% doing fast, 50% not doing anything, ...Unknown', 3);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'NOVA', 8881784197001250000000000000000000000000000000000000000000000000000000000000000000000);
INSERT INTO public.universe VALUES (2, 'ANTIG', 867361737988404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
INSERT INTO public.universe VALUES (3, 'Gasoline', 867361737988404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 52, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uniq UNIQUE (galaxy_id);


--
-- Name: moon monn_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT monn_name UNIQUE (moon_id);


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
-- Name: planet planet_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uniq UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star stars_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_unique UNIQUE (star_id);


--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_primary_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_primary_key PRIMARY KEY (universe_id);


--
-- Name: universe universe_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_universe_id_key UNIQUE (universe_id);


--
-- Name: moon moon_center_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_center_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_center_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_center_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_parent_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

