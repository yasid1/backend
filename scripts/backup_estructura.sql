--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-07 11:44:07

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
-- TOC entry 211 (class 1259 OID 16455)
-- Name: confederacion; Type: TABLE; Schema: public; Owner: mundial
--

CREATE TABLE public.confederacion (
    id uuid NOT NULL,
    nombre character varying(150) NOT NULL
);


ALTER TABLE public.confederacion OWNER TO mundial;

--
-- TOC entry 210 (class 1259 OID 16450)
-- Name: equipo; Type: TABLE; Schema: public; Owner: mundial
--

CREATE TABLE public.equipo (
    id uuid NOT NULL,
    nombre character varying(150) NOT NULL,
    grupo_id uuid NOT NULL,
    confederacion_id uuid NOT NULL
);


ALTER TABLE public.equipo OWNER TO mundial;

--
-- TOC entry 209 (class 1259 OID 16445)
-- Name: grupo; Type: TABLE; Schema: public; Owner: mundial
--

CREATE TABLE public.grupo (
    id uuid NOT NULL,
    nombre character varying(200) NOT NULL
);


ALTER TABLE public.grupo OWNER TO mundial;

--
-- TOC entry 3176 (class 2606 OID 16459)
-- Name: confederacion confederacion_pkey; Type: CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.confederacion
    ADD CONSTRAINT confederacion_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 16454)
-- Name: equipo equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 16449)
-- Name: grupo grupo_pkey; Type: CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT grupo_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 16465)
-- Name: equipo fk_equipo_confederacion; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT fk_equipo_confederacion FOREIGN KEY (confederacion_id) REFERENCES public.confederacion(id) NOT VALID;


--
-- TOC entry 3177 (class 2606 OID 16460)
-- Name: equipo fk_equipo_grupo; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT fk_equipo_grupo FOREIGN KEY (grupo_id) REFERENCES public.grupo(id) NOT VALID;


-- Completed on 2022-11-07 11:44:07

--
-- PostgreSQL database dump complete
--

