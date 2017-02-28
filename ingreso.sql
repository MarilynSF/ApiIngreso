--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE ingreso;
--
-- Name: ingreso; Type: DATABASE; Schema: -; Owner: marylinsf
--

CREATE DATABASE ingreso WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_CO.UTF-8' LC_CTYPE = 'es_CO.UTF-8';


ALTER DATABASE ingreso OWNER TO marylinsf;

\connect ingreso

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: agora; Type: SCHEMA; Schema: -; Owner: marylinsf
--

CREATE SCHEMA agora;


ALTER SCHEMA agora OWNER TO marylinsf;

--
-- Name: kronos_tesoreria; Type: SCHEMA; Schema: -; Owner: marylinsf
--

CREATE SCHEMA kronos_tesoreria;


ALTER SCHEMA kronos_tesoreria OWNER TO marylinsf;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = agora, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: informacion_persona_natural; Type: TABLE; Schema: agora; Owner: marylinsf
--

CREATE TABLE informacion_persona_natural (
    id integer NOT NULL,
    num_documento_persona numeric(15,0) NOT NULL,
    tipo_documento numeric(5,0),
    primer_apellido character varying(50),
    primer_nombre character varying(50) NOT NULL,
    segundo_apellido character varying(50),
    segundo_nombre character varying(50)
);


ALTER TABLE informacion_persona_natural OWNER TO marylinsf;

--
-- Name: informacion_persona_natural_id_seq; Type: SEQUENCE; Schema: agora; Owner: marylinsf
--

CREATE SEQUENCE informacion_persona_natural_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE informacion_persona_natural_id_seq OWNER TO marylinsf;

--
-- Name: informacion_persona_natural_id_seq; Type: SEQUENCE OWNED BY; Schema: agora; Owner: marylinsf
--

ALTER SEQUENCE informacion_persona_natural_id_seq OWNED BY informacion_persona_natural.id;


SET search_path = kronos_tesoreria, pg_catalog;

--
-- Name: concepto; Type: TABLE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE TABLE concepto (
    id integer NOT NULL,
    codigo character varying(25) NOT NULL,
    nombre character varying NOT NULL,
    fecha_creacion date NOT NULL,
    cabeza boolean NOT NULL,
    fecha_expiracion date,
    descripcion character varying,
    tipo_concepto integer NOT NULL,
    rubro integer
);


ALTER TABLE concepto OWNER TO marylinsf;

--
-- Name: concepto_id_seq; Type: SEQUENCE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE SEQUENCE concepto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE concepto_id_seq OWNER TO marylinsf;

--
-- Name: concepto_id_seq; Type: SEQUENCE OWNED BY; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER SEQUENCE concepto_id_seq OWNED BY concepto.id;


--
-- Name: cuenta_bancaria; Type: TABLE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE TABLE cuenta_bancaria (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    numero_cuenta character varying(25) NOT NULL,
    estado_activo boolean NOT NULL,
    saldo numeric(15,3) NOT NULL,
    tipo_cuenta integer NOT NULL,
    tipo_recurso integer NOT NULL,
    sucursal integer NOT NULL,
    unidad_ejecutora integer NOT NULL
);


ALTER TABLE cuenta_bancaria OWNER TO marylinsf;

--
-- Name: cuenta_bancaria_id_seq; Type: SEQUENCE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE SEQUENCE cuenta_bancaria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cuenta_bancaria_id_seq OWNER TO marylinsf;

--
-- Name: cuenta_bancaria_id_seq; Type: SEQUENCE OWNED BY; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER SEQUENCE cuenta_bancaria_id_seq OWNED BY cuenta_bancaria.id;


--
-- Name: forma_ingreso; Type: TABLE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE TABLE forma_ingreso (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    descripcion character varying
);


ALTER TABLE forma_ingreso OWNER TO marylinsf;

--
-- Name: forma_ingreso_id_seq; Type: SEQUENCE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE SEQUENCE forma_ingreso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forma_ingreso_id_seq OWNER TO marylinsf;

--
-- Name: forma_ingreso_id_seq; Type: SEQUENCE OWNED BY; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER SEQUENCE forma_ingreso_id_seq OWNED BY forma_ingreso.id;


--
-- Name: ingreso; Type: TABLE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE TABLE ingreso (
    id integer NOT NULL,
    consecutivo numeric NOT NULL,
    vigencia numeric NOT NULL,
    fecha_ingreso date NOT NULL,
    estado_acta character varying,
    fecha_consignacion date NOT NULL,
    valor numeric NOT NULL,
    observaciones character varying,
    origen_ingreso character varying,
    quien_elaboro character varying,
    quien_reviso character varying,
    concepto integer,
    informacion_persona_natural numeric(15,0),
    cuenta_bancaria integer,
    forma_ingreso integer
);


ALTER TABLE ingreso OWNER TO marylinsf;

--
-- Name: ingreso_id_seq; Type: SEQUENCE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE SEQUENCE ingreso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ingreso_id_seq OWNER TO marylinsf;

--
-- Name: ingreso_id_seq; Type: SEQUENCE OWNED BY; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER SEQUENCE ingreso_id_seq OWNED BY ingreso.id;


--
-- Name: ingreso_rubro; Type: TABLE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE TABLE ingreso_rubro (
    id integer NOT NULL,
    rubro integer,
    ingreso integer
);


ALTER TABLE ingreso_rubro OWNER TO marylinsf;

--
-- Name: ingreso_rubro_id_seq; Type: SEQUENCE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE SEQUENCE ingreso_rubro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ingreso_rubro_id_seq OWNER TO marylinsf;

--
-- Name: ingreso_rubro_id_seq; Type: SEQUENCE OWNED BY; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER SEQUENCE ingreso_rubro_id_seq OWNED BY ingreso_rubro.id;


--
-- Name: rubro; Type: TABLE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE TABLE rubro (
    id integer NOT NULL,
    codigo character varying(30) NOT NULL,
    vigencia numeric(4,0) NOT NULL,
    descripcion text,
    tipo_plan smallint,
    administracion character varying(30),
    estado smallint
);


ALTER TABLE rubro OWNER TO marylinsf;

--
-- Name: rubro_id_seq; Type: SEQUENCE; Schema: kronos_tesoreria; Owner: marylinsf
--

CREATE SEQUENCE rubro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rubro_id_seq OWNER TO marylinsf;

--
-- Name: rubro_id_seq; Type: SEQUENCE OWNED BY; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER SEQUENCE rubro_id_seq OWNED BY rubro.id;


SET search_path = agora, pg_catalog;

--
-- Name: id; Type: DEFAULT; Schema: agora; Owner: marylinsf
--

ALTER TABLE ONLY informacion_persona_natural ALTER COLUMN id SET DEFAULT nextval('informacion_persona_natural_id_seq'::regclass);


SET search_path = kronos_tesoreria, pg_catalog;

--
-- Name: id; Type: DEFAULT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY concepto ALTER COLUMN id SET DEFAULT nextval('concepto_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY cuenta_bancaria ALTER COLUMN id SET DEFAULT nextval('cuenta_bancaria_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY forma_ingreso ALTER COLUMN id SET DEFAULT nextval('forma_ingreso_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso ALTER COLUMN id SET DEFAULT nextval('ingreso_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso_rubro ALTER COLUMN id SET DEFAULT nextval('ingreso_rubro_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY rubro ALTER COLUMN id SET DEFAULT nextval('rubro_id_seq'::regclass);


SET search_path = agora, pg_catalog;

--
-- Data for Name: informacion_persona_natural; Type: TABLE DATA; Schema: agora; Owner: marylinsf
--

COPY informacion_persona_natural (id, num_documento_persona, tipo_documento, primer_apellido, primer_nombre, segundo_apellido, segundo_nombre) FROM stdin;
1	123	1	primer apellido	primer nombre	segundo apellido	segundo nombre
\.


--
-- Name: informacion_persona_natural_id_seq; Type: SEQUENCE SET; Schema: agora; Owner: marylinsf
--

SELECT pg_catalog.setval('informacion_persona_natural_id_seq', 1, false);


SET search_path = kronos_tesoreria, pg_catalog;

--
-- Data for Name: concepto; Type: TABLE DATA; Schema: kronos_tesoreria; Owner: marylinsf
--

COPY concepto (id, codigo, nombre, fecha_creacion, cabeza, fecha_expiracion, descripcion, tipo_concepto, rubro) FROM stdin;
1	1	primer concepto	2017-01-01	t	2017-02-02	una descripcion	1	1
2	2	otro concepto	2017-01-01	t	2017-01-01	otra descripcion dos	1	1
3	3	tercer concepto	2017-01-01	t	2017-01-10	tercera descripcion	1	1
\.


--
-- Name: concepto_id_seq; Type: SEQUENCE SET; Schema: kronos_tesoreria; Owner: marylinsf
--

SELECT pg_catalog.setval('concepto_id_seq', 3, true);


--
-- Data for Name: cuenta_bancaria; Type: TABLE DATA; Schema: kronos_tesoreria; Owner: marylinsf
--

COPY cuenta_bancaria (id, nombre, numero_cuenta, estado_activo, saldo, tipo_cuenta, tipo_recurso, sucursal, unidad_ejecutora) FROM stdin;
1	una cuenta	123456	t	2000.000	1	1	1	1
2	segunda cuetna bancaria	45678	t	1000.000	1	1	1	1
5	tercera cuenta	567	t	99.000	1	1	1	1
\.


--
-- Name: cuenta_bancaria_id_seq; Type: SEQUENCE SET; Schema: kronos_tesoreria; Owner: marylinsf
--

SELECT pg_catalog.setval('cuenta_bancaria_id_seq', 5, true);


--
-- Data for Name: forma_ingreso; Type: TABLE DATA; Schema: kronos_tesoreria; Owner: marylinsf
--

COPY forma_ingreso (id, nombre, descripcion) FROM stdin;
1	consignacion	una consignacion
2	segunda forma de ingreso	segunda forma de ingreso
3	tercera forma	tercera forma
\.


--
-- Name: forma_ingreso_id_seq; Type: SEQUENCE SET; Schema: kronos_tesoreria; Owner: marylinsf
--

SELECT pg_catalog.setval('forma_ingreso_id_seq', 3, true);


--
-- Data for Name: ingreso; Type: TABLE DATA; Schema: kronos_tesoreria; Owner: marylinsf
--

COPY ingreso (id, consecutivo, vigencia, fecha_ingreso, estado_acta, fecha_consignacion, valor, observaciones, origen_ingreso, quien_elaboro, quien_reviso, concepto, informacion_persona_natural, cuenta_bancaria, forma_ingreso) FROM stdin;
31	9999	0	2015-02-02		2015-02-02	999	ere		ert	ert	3	123	2	3
33	77777	0	2015-02-02		2015-02-02	2222222222	sadasd		asd	asd	3	123	1	3
34	3	0	2015-02-02		2015-02-02	0	asdasd		asdas	asdasd	3	123	2	3
37	33	0	2015-02-26		2015-02-26	200	asdasd		asd	asd	3	123	2	3
50	4	2015	2017-02-07		2017-02-14	9999	sadsad		asd	asd	3	123	5	3
51	6	2015	2017-02-07		2017-02-14	555555	saddfhtyj		gh	gh	3	123	5	3
52	8	2015	2017-02-07		2017-02-07	5555	sadasd		yhrr	rth	3	123	5	3
36	23	0	2015-01-31		2015-01-31	2	dfsdf		sdf	sdf	3	123	5	3
53	111	0	2017-02-21		2017-02-14	10000	sadsad		fdf	dfdf	3	123	5	3
55	1	2015	2017-02-07		2017-02-14	2000	jf		fg	ds	3	123	5	3
56	5	2015	2017-02-17	activa	2017-02-17	55555	observación		elaborado	revisado	2	123	1	2
57	10	2015	2017-02-16	activo	2017-02-17	9999	dsfsdf		sdfsdf	sdf	2	123	5	2
58	8	0	2017-02-14	ll	2017-02-13	555	gfshre		ertet	ert	2	123	1	1
59	55	0	2017-02-07	sd	2017-02-21	555	dsfsdf		sdf	sdf	3	123	2	2
\.


--
-- Name: ingreso_id_seq; Type: SEQUENCE SET; Schema: kronos_tesoreria; Owner: marylinsf
--

SELECT pg_catalog.setval('ingreso_id_seq', 59, true);


--
-- Data for Name: ingreso_rubro; Type: TABLE DATA; Schema: kronos_tesoreria; Owner: marylinsf
--

COPY ingreso_rubro (id, rubro, ingreso) FROM stdin;
1	1	\N
2	2	\N
7	1	\N
8	2	\N
13	1	\N
\.


--
-- Name: ingreso_rubro_id_seq; Type: SEQUENCE SET; Schema: kronos_tesoreria; Owner: marylinsf
--

SELECT pg_catalog.setval('ingreso_rubro_id_seq', 13, true);


--
-- Data for Name: rubro; Type: TABLE DATA; Schema: kronos_tesoreria; Owner: marylinsf
--

COPY rubro (id, codigo, vigencia, descripcion, tipo_plan, administracion, estado) FROM stdin;
1	12	2017	una descripcion	1	1	1
2	un rubro	2017	dos descripcion	1	1	1
3	tercere rubro	2019	tercera descripcion	1	1	1
\.


--
-- Name: rubro_id_seq; Type: SEQUENCE SET; Schema: kronos_tesoreria; Owner: marylinsf
--

SELECT pg_catalog.setval('rubro_id_seq', 3, true);


SET search_path = agora, pg_catalog;

--
-- Name: num_documento_persona; Type: CONSTRAINT; Schema: agora; Owner: marylinsf
--

ALTER TABLE ONLY informacion_persona_natural
    ADD CONSTRAINT num_documento_persona PRIMARY KEY (num_documento_persona);


SET search_path = kronos_tesoreria, pg_catalog;

--
-- Name: id; Type: CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY concepto
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- Name: id_1; Type: CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso_rubro
    ADD CONSTRAINT id_1 PRIMARY KEY (id);


--
-- Name: id_2; Type: CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY rubro
    ADD CONSTRAINT id_2 PRIMARY KEY (id);


--
-- Name: id_3; Type: CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY forma_ingreso
    ADD CONSTRAINT id_3 PRIMARY KEY (id);


--
-- Name: id_4; Type: CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso
    ADD CONSTRAINT id_4 PRIMARY KEY (id);


--
-- Name: id_5; Type: CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY cuenta_bancaria
    ADD CONSTRAINT id_5 PRIMARY KEY (id);


--
-- Name: concepto_fk; Type: FK CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso
    ADD CONSTRAINT concepto_fk FOREIGN KEY (concepto) REFERENCES concepto(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cuenta_bancaria_fk; Type: FK CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso
    ADD CONSTRAINT cuenta_bancaria_fk FOREIGN KEY (cuenta_bancaria) REFERENCES cuenta_bancaria(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: forma_ingreso_fk; Type: FK CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso
    ADD CONSTRAINT forma_ingreso_fk FOREIGN KEY (forma_ingreso) REFERENCES forma_ingreso(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: informacion_persona_natural_fk; Type: FK CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso
    ADD CONSTRAINT informacion_persona_natural_fk FOREIGN KEY (informacion_persona_natural) REFERENCES agora.informacion_persona_natural(num_documento_persona) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ingreso_fk; Type: FK CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso_rubro
    ADD CONSTRAINT ingreso_fk FOREIGN KEY (ingreso) REFERENCES ingreso(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: rubro_fk; Type: FK CONSTRAINT; Schema: kronos_tesoreria; Owner: marylinsf
--

ALTER TABLE ONLY ingreso_rubro
    ADD CONSTRAINT rubro_fk FOREIGN KEY (rubro) REFERENCES rubro(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

