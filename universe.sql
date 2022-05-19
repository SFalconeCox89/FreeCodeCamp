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
    name character varying(30),
    is_spherical boolean NOT NULL,
    galaxy_type text,
    apparent_magnitude real,
    size_in_kpc integer,
    consellation text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    year_discovered integer,
    radius real,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    planet_type text,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30),
    satellite_typ text,
    in_operation boolean,
    orbiting_planet text,
    planet_id integer NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    distance_in_lightyears numeric(5,2),
    constellation text,
    year_discovered integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Adromeda', false, 'barred spiral', 3.44, 67, 'adromeda');
INSERT INTO public.galaxy VALUES (2, 'Small Magellanic Cloud', false, 'Irregular', 2.7, 62, 'Tucana');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'Spiral', 5.7, 18, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Centaurus', false, 'Hubble', 6.84, 18, 'Centaurus');
INSERT INTO public.galaxy VALUES (5, 'Bode', false, 'Spiral', 6.94, 28, 'Ursa Major');
INSERT INTO public.galaxy VALUES (6, 'Sculptor', false, 'Spiral', 7.2, 4, 'Sculptor');
INSERT INTO public.galaxy VALUES (7, 'Milky Way', false, 'Spiral', 0, 8, 'Sagittarius');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Acteae', 2006, 142, 11);
INSERT INTO public.moon VALUES (2, 'Hiiaka', 2005, 160, 12);
INSERT INTO public.moon VALUES (3, 'Namaka', 2005, 85, 12);
INSERT INTO public.moon VALUES (4, 'Hydra', 2005, 27.5, 9);
INSERT INTO public.moon VALUES (5, 'Nix', 2005, 22.5, 9);
INSERT INTO public.moon VALUES (6, 'Hippocamp', 2013, 17.4, 8);
INSERT INTO public.moon VALUES (7, 'Sao', 2002, 22, 8);
INSERT INTO public.moon VALUES (8, 'Mab', 2003, 12, 7);
INSERT INTO public.moon VALUES (9, 'Perdita', 1999, 15, 7);
INSERT INTO public.moon VALUES (10, 'Puck', 1985, 81, 7);
INSERT INTO public.moon VALUES (11, 'Fenrir', 2004, 2, 6);
INSERT INTO public.moon VALUES (12, 'Bestia', 2004, 3.5, 6);
INSERT INTO public.moon VALUES (13, 'Carpo', 2003, 1.5, 5);
INSERT INTO public.moon VALUES (14, 'Arche', 2002, 1.5, 5);
INSERT INTO public.moon VALUES (15, 'Moon', NULL, 1738, 3);
INSERT INTO public.moon VALUES (16, 'Phobos', 1877, 11.267, 4);
INSERT INTO public.moon VALUES (17, 'Io', 1610, 1821.6, 5);
INSERT INTO public.moon VALUES (18, 'Vanth', 2005, 221, 10);
INSERT INTO public.moon VALUES (19, 'Neso', 2002, 30, 8);
INSERT INTO public.moon VALUES (20, 'Europa', 1610, 1560.8, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terra', false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terra', false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terra', true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terra', false, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas', false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas', false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice', false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice', false, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf', false, 7);
INSERT INTO public.planet VALUES (10, 'Orcus', 'Dwarf', false, 7);
INSERT INTO public.planet VALUES (11, 'Salacia', 'Planetoid', false, 7);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Dwarf', false, 7);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Galileo', 'Nav', true, 'Earth', 3);
INSERT INTO public.satellite VALUES (2, 'Glory', 'Obs', false, 'Earth', 3);
INSERT INTO public.satellite VALUES (3, 'Terra', 'Obs', true, 'Earth', 3);
INSERT INTO public.satellite VALUES (4, 'Messenger', 'Obs', false, 'Mercury', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '18 And', 413.00, 'Andromeda', 1912, 1);
INSERT INTO public.star VALUES (2, 'Alpha Tuc', 199.00, 'Tucana', 1897, 2);
INSERT INTO public.star VALUES (3, '13 Tri', 103.00, 'Triangulum', 1953, 3);
INSERT INTO public.star VALUES (4, 'Mizar', 83.00, 'Ursa Major', 1901, 5);
INSERT INTO public.star VALUES (5, '4 Sgr', 390.00, 'Sagittarius', 1939, 7);
INSERT INTO public.star VALUES (6, 'Alcor', 83.00, 'Ursa Major', 1922, 5);
INSERT INTO public.star VALUES (7, 'Sol', 0.00, NULL, NULL, 7);


--
-- Name: galaxy galaxy_consellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_consellation_key UNIQUE (consellation);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: satellite satellite_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key1 UNIQUE (name);


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

