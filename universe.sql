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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric NOT NULL,
    size integer NOT NULL,
    has_atmosphere boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer NOT NULL,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer NOT NULL,
    size integer,
    has_atmosphere boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer NOT NULL,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer NOT NULL,
    size integer,
    has_atmosphere boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer NOT NULL,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer NOT NULL,
    size integer,
    has_atmosphere boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(60),
    description text,
    has_life boolean,
    age_in_millions_of_years integer NOT NULL,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer NOT NULL,
    size integer,
    has_atmosphere boolean
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Andromeda is a spiral galaxy that is approximately 2.5 million light-years away from us.', true, 11111, 'type1', 'type1', 11111, 1, false);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'Messier 64 (M64) has a somewhat sinister common name: the Black Eye or Evil Eye Galaxy', true, 11111, 'type1', 'type1', 11111, 1, false);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', 'Resembling an oversize wagon wheel, the Cartwheel Galaxy is estimated to measure 150,000 light-years across.', true, 11111, 'type1', 'type1', 11111, 1, false);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'Located in the Ursa Major constellation about 13 million light-years from Earth.', true, 11111, 'type1', 'type1', 11111, 1, false);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Dorado/Mensa, Named after Ferdinand Magellan, This is the fourth largest galaxy in the Local Group.', true, 11111, 'type1', 'type1', 11111, 1, false);
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', 'A close encounter with another galaxy disrupted the spiral galaxy Arp 188, commonly known as the Tadpole Galaxy.', true, 11111, 'type1', 'type1', 11111, 1, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Moon is Earth only natural satellite.', true, 11111, 'type1', 'type1', 111111, 1, false, 3);
INSERT INTO public.moon VALUES (2, 'Thebe', 'Thebe, also known as Jupiter XIV, is the fourth of Jupiter moons by distance from the planet.', true, 11111, 'type1', 'type1', 111112, 1, false, 1);
INSERT INTO public.moon VALUES (3, 'Europa', 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter.', true, 11111, 'type1', 'type1', 111113, 1, false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter.', true, 11111, 'type1', 'type1', 111114, 1, false, 3);
INSERT INTO public.moon VALUES (5, 'Io', 'Io, or Jupiter I, is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', true, 11111, 'type1', 'type1', 111115, 1, false, 4);
INSERT INTO public.moon VALUES (6, 'Himalia', 'Himalia, or Jupiter VI, is the largest irregular satellite of Jupiter', true, 11111, 'type1', 'type1', 111116, 1, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede.', true, 11111, 'type1', 'type1', 111117, 1, false, 6);
INSERT INTO public.moon VALUES (8, 'Adrastea', 'Adrastea, also known as Jupiter XV.', true, 11111, 'type1', 'type1', 111118, 1, false, 7);
INSERT INTO public.moon VALUES (9, 'Themisto', 'Themisto, also known as Jupiter XVIII, is a small prograde irregular satellite of Jupiter.', true, 11111, 'type1', 'type1', 111119, 1, false, 8);
INSERT INTO public.moon VALUES (10, 'Amalthea', 'Amalthea is a moon of Jupiter. It has the third closest orbit around Jupiter.', true, 11111, 'type1', 'type1', 1111111, 1, false, 9);
INSERT INTO public.moon VALUES (11, 'Herse', 'Herse, or Jupiter L, previously known by its provisional designation of S/2003 J 17.', true, 11111, 'type1', 'type1', 1111112, 1, false, 10);
INSERT INTO public.moon VALUES (12, 'Cyllene', 'Cyllene, also known as Jupiter XLVIII, is a natural satellite of Jupiter.', true, 11111, 'type1', 'type1', 1111113, 1, false, 11);
INSERT INTO public.moon VALUES (13, 'Callirrhoe', 'Callirrhoe, also known as Jupiter XVII', true, 11111, 'type1', 'type1', 1111114, 1, false, 12);
INSERT INTO public.moon VALUES (14, 'Iocaste', 'Iocaste, also known as Jupiter XXIV', true, 11111, 'type1', 'type1', 1111115, 1, false, 3);
INSERT INTO public.moon VALUES (15, 'Eukelade', 'Eukelade, also known as Jupiter XLVII, is a retrograde irregular satellite of Jupiter.', true, 11111, 'type1', 'type1', 1111116, 1, false, 4);
INSERT INTO public.moon VALUES (16, 'Arche', 'Arche, also known as Jupiter XLIII, is a moon of Jupiter.', true, 11111, 'type1', 'type1', 1111117, 1, false, 5);
INSERT INTO public.moon VALUES (17, 'Aoede', 'Aoede, also known as Jupiter XLI, is a natural satellite of Jupiter.', true, 11111, 'type1', 'type1', 1111117, 1, false, 12);
INSERT INTO public.moon VALUES (18, 'Jupiter LII', 'Jupiter LII, originally known as S/2010 J 2', true, 11111, 'type1', 'type1', 1111118, 1, false, 12);
INSERT INTO public.moon VALUES (19, 'Helike', 'Helike, also known as Jupiter XLV, is a moon of Jupiter.', true, 11111, 'type1', 'type1', 1111119, 1, false, 12);
INSERT INTO public.moon VALUES (20, 'Jupiter LI', 'Jupiter LI, provisionally known as S/2010 J 1, is a natural satellite of Jupiter.', true, 11111, 'type1', 'type1', 1111120, 1, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury, the innermost planet of the solar system and the eighth in size and mass. Its closeness to the Sun and its smallness make it the most elusive of the planets visible to the unaided eye.', true, 11111, 'type1', 'type1', 11111, 1, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus, second planet from the Sun and sixth in the solar system in size and mass.', true, 11111, 'type1', 'type1', 11112, 1, false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass.', true, 11111, 'type1', 'type1', 11113, 1, false, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars, fourth planet in the solar system in order of distance from the Sun and seventh in size and mass.', true, 11111, 'type1', 'type1', 11114, 1, false, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter, the most massive planet of the solar system and the fifth in distance from the Sun.', true, 11111, 'type1', 'type1', 11115, 1, false, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn, second largest planet of the solar system in mass and size and the sixth nearest planet in distance to the Sun.', true, 11111, 'type1', 'type1', 11116, 1, false, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus, seventh planet in distance from the Sun and the least massive of the solar system’s four giant', true, 11117, 'type1', 'type1', 11111, 1, false, 6);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune, third most massive planet of the solar system and the eighth and outermost planet from the Sun.', true, 11118, 'type1', 'type1', 11111, 1, false, 6);
INSERT INTO public.planet VALUES (9, 'CoRoT-7b', 'CoRoT-7b, the first extrasolar planet that was shown to be a rocky planet like Earth.', true, 11111, 'type1', 'type1', 11115, 1, false, 5);
INSERT INTO public.planet VALUES (10, 'Gliese 581', 'Gliese 581, extrasolar planetary system containing four planets.', true, 11111, 'type1', 'type1', 111110, 1, false, 6);
INSERT INTO public.planet VALUES (11, 'HD 209458b', 'HD 209458b, the first extrasolar planet detected by its transit across its star’s face and the first extrasolar planet whose mass was directly measured.', true, 111111, 'type1', 'type1', 11111, 1, false, 6);
INSERT INTO public.planet VALUES (12, 'HIP 13044b', 'HIP 13044b, first extrasolar planet that was found orbiting a star that originated outside the Milky Way Galaxy.', true, 111112, 'type1', 'type1', 11111, 1, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Altair', 'Altair is the brightest star in the constellation of Aquila and the twelfth-brightest star in the night sky.', true, 11111, 'type1', 'type1', 11111, 1, false, 1);
INSERT INTO public.star VALUES (2, 'Aldebaran', 'Aldebaran is a star located in the zodiac constellation of Taurus.', true, 11112, 'type1', 'type1', 11111, 1, false, 2);
INSERT INTO public.star VALUES (3, 'Arcturus', 'Arcturus is the brightest star in the northern constellation of Boötes.', true, 11113, 'type1', 'type1', 11111, 1, false, 3);
INSERT INTO public.star VALUES (4, 'Antares', 'Antares is the brightest star in the constellation of Scorpius.', true, 11114, 'type1', 'type1', 11111, 1, false, 4);
INSERT INTO public.star VALUES (5, 'Algol', 'Algol, designated Beta Persei, known colloquially as the Demon Star', true, 11115, 'type1', 'type1', 11111, 1, false, 5);
INSERT INTO public.star VALUES (6, 'Alnilam', 'Alnilam is the central star of Orion Belt in the equatorial constellation of Orion.', true, 11116, 'type1', 'type1', 11111, 1, false, 6);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'Lyra', 'The Lyra constellation shines clearest in the midnight skies during June', true, 11111, 'type1', 'type1', 11111, 1, false);
INSERT INTO public.universe VALUES (2, 'Andromeda', 'This constellation is also known as the "Chained Lady" or "Chained Woman."', true, 11111, 'type1', 'type1', 111112, 1, false);
INSERT INTO public.universe VALUES (3, 'Draco', 'Draco is one of the 88 official constellations recognized by the International Astronomical Union.', true, 11111, 'type1', 'type1', 11111, 1, false);


--
-- Name: galaxy galaxy_id_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_galaxy_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_moon_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_planet_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_star_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

