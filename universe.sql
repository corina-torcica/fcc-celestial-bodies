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
    name character varying(100) NOT NULL,
    description text,
    galaxy_type character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2)
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
    name character varying(100) NOT NULL,
    planet_id integer,
    moon_type character varying(50) NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2)
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
    name character varying(100) NOT NULL,
    star_id integer,
    planet_type character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2)
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    satellite_type character varying(50) NOT NULL,
    is_spherical boolean NOT NULL,
    has_atmosphere boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2)
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    star_type character varying(50) NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2)
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy', 'Spiral', 13000, 100000.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral galaxy', 'Spiral', 13000, 220000.00);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical galaxy', 'Elliptical', 6000, 500000.00);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral galaxy', 'Spiral', 3000, 300000.00);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Elliptical galaxy', 'Elliptical', 12000, 400000.00);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral galaxy', 'Spiral', 10000, 400000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Terrestrial', true, false, 4500, 0.00);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Rocky', true, false, 4000, 0.30);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Rocky', true, false, 4000, 0.30);
INSERT INTO public.moon VALUES (4, 'Europa', 3, 'Ice-covered', false, false, 4000, 0.50);
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, 'Ice-covered', false, false, 4000, 0.50);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, 'Ice-covered', false, false, 4000, 0.50);
INSERT INTO public.moon VALUES (7, 'Titan', 4, 'Ice-covered', true, false, 4000, 0.50);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4, 'Rocky', true, false, 4000, 0.50);
INSERT INTO public.moon VALUES (9, 'Triton', 5, 'Ice-covered', true, false, 4000, 0.50);
INSERT INTO public.moon VALUES (10, 'Charon', 6, 'Rocky', true, false, 4000, 0.50);
INSERT INTO public.moon VALUES (11, 'Proxima Centauri b I', 8, 'Terrestrial', true, false, 1000, 4.30);
INSERT INTO public.moon VALUES (12, 'Proxima Centauri b II', 8, 'Terrestrial', true, false, 1000, 4.30);
INSERT INTO public.moon VALUES (13, 'Proxima Centauri b III', 8, 'Terrestrial', true, false, 1000, 4.30);
INSERT INTO public.moon VALUES (14, 'Proxima Centauri b IV', 8, 'Terrestrial', true, false, 1000, 4.30);
INSERT INTO public.moon VALUES (15, 'Kepler-186f I', 9, 'Terrestrial', true, false, 1000, 490.00);
INSERT INTO public.moon VALUES (16, 'Kepler-186f II', 9, 'Terrestrial', true, false, 1000, 490.00);
INSERT INTO public.moon VALUES (17, 'Kepler-186f III', 9, 'Terrestrial', true, false, 1000, 490.00);
INSERT INTO public.moon VALUES (18, 'Kepler-186f IV', 9, 'Terrestrial', true, false, 1000, 490.00);
INSERT INTO public.moon VALUES (19, 'Kepler-186f V', 9, 'Terrestrial', true, false, 1000, 490.00);
INSERT INTO public.moon VALUES (20, 'Kepler-186f VI', 9, 'Terrestrial', true, false, 1000, 490.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', true, true, 4500, 0.00);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Terrestrial', false, true, 4000, 0.50);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 'Gas giant', false, true, 4500, 0.50);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 'Gas giant', false, true, 4000, 0.50);
INSERT INTO public.planet VALUES (5, 'Uranus', 1, 'Ice giant', false, true, 4000, 0.50);
INSERT INTO public.planet VALUES (6, 'Neptune', 1, 'Ice giant', false, true, 4000, 0.50);
INSERT INTO public.planet VALUES (7, 'Alpha Centauri Bb', 3, 'Terrestrial', false, true, 2000, 4.30);
INSERT INTO public.planet VALUES (8, 'Proxima Centauri b', 3, 'Terrestrial', false, true, 1000, 4.30);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri c', 3, 'Terrestrial', false, true, 500, 4.30);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 3, 'Terrestrial', true, true, 1000, 490.00);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 5, 'Gas giant', false, true, 400, 62.00);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', 5, 'Terrestrial', true, true, 2000, 20.00);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Moon', 1, 'Natural', true, true, 4500, 0.00);
INSERT INTO public.satellite VALUES (2, 'Phobos', 2, 'Natural', true, false, 4000, 0.30);
INSERT INTO public.satellite VALUES (3, 'Deimos', 2, 'Natural', true, false, 4000, 0.30);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Yellow dwarf', true, 4600, 0.00);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'Binary star system', false, 250, 8.60);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, 'Binary star system', true, 600, 4.30);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 'Red supergiant', false, 8000, 643.00);
INSERT INTO public.star VALUES (5, 'Vega', 1, 'Main sequence', true, 450, 25.00);
INSERT INTO public.star VALUES (6, 'Antares', 1, 'Red supergiant', true, 6000, 600.00);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: satellite satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

