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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star character varying(20),
    galaxy text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    num_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    classification text,
    planet text,
    galaxy text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    gas_giant boolean,
    avg_temp_celsius numeric,
    galaxy text,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(40),
    age_in_millions_of_years integer,
    galaxy text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'Betelgeuse', 'Milky Way');
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'Eta Ursae Majoris', 'Milky Way');
INSERT INTO public.constellation VALUES (3, 'Canis Major', 'Sirius', 'Milky Way');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13610, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 3, NULL, 1);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 1010, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 1331, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 1325, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 40003, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'natural satellite', 'Earth', 'Milky Way');
INSERT INTO public.moon VALUES (2, 'Phobos', 'natural satellite', 'Mars', 'Milky Way');
INSERT INTO public.moon VALUES (3, 'Deimos', 'natural satellite', 'Mars', 'Milky Way');
INSERT INTO public.moon VALUES (4, 'Europa', 'Galilean', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Galilean', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (6, 'Io', 'Galilean', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (7, 'Enceladus', 'icy ocean moon', 'Saturn', 'Milky Way');
INSERT INTO public.moon VALUES (8, 'Titan', 'rock-hard ice', 'Saturn', 'Milky Way');
INSERT INTO public.moon VALUES (9, 'Callisto', 'Galilean', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (10, 'Dione', 'planetary mass', 'Saturn', 'Milky Way');
INSERT INTO public.moon VALUES (11, 'Thebe', 'Galilean', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (12, 'Amalthea', 'asteroid', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (13, 'Himalia', 'c-type asteroid', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (14, 'Elara', 'c or d-class asteroid', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (15, 'Pasiphae', 'c-type asteroid', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (16, 'Metis', 'natural satellite', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (17, 'Carme', 'd-type asteroid', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (18, 'Sinope', 'irregular satellite', 'Jupiter', 'Milky Way');
INSERT INTO public.moon VALUES (19, 'Rhea', 'cold airless body', 'Saturn', 'Milky Way');
INSERT INTO public.moon VALUES (20, 'Iapetus', 'captured dwarf planet', 'Saturn', 'Milky Way');
INSERT INTO public.moon VALUES (21, 'Tethys', 'cold airless body', 'Saturn', 'Milky Way');
INSERT INTO public.moon VALUES (22, 'Mimas', 'mid-sized icy moon', 'Saturn', 'Milky Way');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 167, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', false, 464, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', false, 15, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', false, -65, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, -110, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', true, -140, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', true, -195, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', true, -200, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', false, -232, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (10, 'PA-99-N2', false, NULL, 'Andromeda', NULL);
INSERT INTO public.planet VALUES (11, '55 Cancri e', false, 1300, 'Milky Way', NULL);
INSERT INTO public.planet VALUES (12, 'Kepler 186f', false, -185, 'Milky Way', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 'bright', NULL, 'Milky Way');
INSERT INTO public.star VALUES (2, 'Altair', 'brightest', NULL, 'Milky Way');
INSERT INTO public.star VALUES (3, 'Sirius', 'brightest', NULL, 'Milky Way');
INSERT INTO public.star VALUES (4, 'Deneb', 'first magnitude', NULL, 'Milky Way');
INSERT INTO public.star VALUES (5, 'Vega', 'brightest', NULL, 'Milky Way');
INSERT INTO public.star VALUES (6, 'Eta Ursae Majoris', 'star', NULL, 'Milky Way');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation fk_constellation; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT fk_constellation FOREIGN KEY (name) REFERENCES public.constellation(name);


--
-- Name: galaxy fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (name) REFERENCES public.moon(name);


--
-- Name: planet fk_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_name FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (name) REFERENCES public.star(name);


--
-- PostgreSQL database dump complete
--

