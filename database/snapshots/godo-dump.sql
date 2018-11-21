--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Debian 10.3-1.pgdg90+1)
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: boards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards (
    id integer NOT NULL,
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.boards OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_id_seq OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_id_seq OWNED BY public.boards.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: todos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.todos (
    id integer NOT NULL,
    user_id integer NOT NULL,
    board_id integer NOT NULL,
    description text NOT NULL,
    completed boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.todos OWNER TO postgres;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todos_id_seq OWNER TO postgres;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.todos_id_seq OWNED BY public.todos.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards ALTER COLUMN id SET DEFAULT nextval('public.boards_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.todos ALTER COLUMN id SET DEFAULT nextval('public.todos_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards (id, user_id, name, created_at, updated_at) FROM stdin;
1	1	incidunt	2018-10-24 23:45:00	2018-10-24 23:45:00
2	2	accusantium	2018-10-24 23:45:00	2018-10-24 23:45:00
3	3	eos	2018-10-24 23:45:00	2018-10-24 23:45:00
4	4	repellendus	2018-10-24 23:45:00	2018-10-24 23:45:00
5	5	consequatur	2018-10-24 23:45:00	2018-10-24 23:45:00
6	6	enim	2018-10-24 23:45:00	2018-10-24 23:45:00
7	7	aperiam	2018-10-24 23:45:00	2018-10-24 23:45:00
8	8	rem	2018-10-24 23:45:00	2018-10-24 23:45:00
9	9	sunt	2018-10-24 23:45:00	2018-10-24 23:45:00
10	10	assumenda	2018-10-24 23:45:00	2018-10-24 23:45:00
14	111	Vim	2018-11-19 00:25:59	2018-11-19 00:25:59
15	111	Godo	2018-11-19 00:28:25	2018-11-19 00:28:25
16	111	Test	2018-11-21 02:47:40	2018-11-21 02:47:40
17	111	Other Test	2018-11-21 02:53:16	2018-11-21 02:53:16
18	111	test 3	2018-11-21 02:53:55	2018-11-21 02:53:55
19	111	test 4	2018-11-21 02:54:42	2018-11-21 02:54:42
20	111	test 4	2018-11-21 02:54:58	2018-11-21 02:54:58
21	111	test 4	2018-11-21 02:55:16	2018-11-21 02:55:16
22	111	test 4	2018-11-21 02:55:24	2018-11-21 02:55:24
23	111	test 4	2018-11-21 02:56:27	2018-11-21 02:56:27
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
12	2014_10_12_000000_create_users_table	1
13	2014_10_12_100000_create_password_resets_table	1
14	2018_10_21_030155_create_todos_table	1
15	2018_10_21_031814_create_boards_table	1
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.todos (id, user_id, board_id, description, completed, created_at, updated_at) FROM stdin;
9	19	1	Ut cumque occaecati est quidem.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
10	20	1	Voluptatibus dolorem ut totam quis id accusantium.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
11	21	2	Accusantium aut id omnis mollitia quam placeat.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
12	22	2	Aut nobis eveniet dicta.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
13	23	2	Quae veritatis nostrum commodi provident aut fuga.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
14	24	2	Voluptatibus aut nihil nesciunt deleniti.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
15	25	2	Sed nobis alias occaecati autem nihil dolor recusandae.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
16	26	2	Architecto sed et illum veniam cum asperiores dolorem.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
17	27	2	In sint nisi eos eos reiciendis aspernatur.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
18	28	2	Ex dicta repellat sint optio et excepturi ut.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
19	29	2	Qui animi occaecati molestias qui unde enim.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
20	30	2	Quo odit dignissimos eum provident praesentium.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
21	31	3	Et voluptatem quasi odit suscipit nihil adipisci.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
22	32	3	Porro blanditiis sint quis sed autem distinctio.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
23	33	3	Consequatur provident blanditiis consequatur enim doloremque optio.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
24	34	3	Perspiciatis facere tenetur sunt aut sequi dolor doloremque.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
25	35	3	Sit est ea aspernatur harum.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
26	36	3	Nostrum dolor consequatur eos porro quod.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
27	37	3	Aut expedita voluptatum suscipit ratione.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
28	38	3	Qui est blanditiis tenetur neque est in ut.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
29	39	3	Molestiae eum quia non aliquam debitis molestiae sit.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
30	40	3	A distinctio ut aut natus distinctio.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
31	41	4	Voluptatem nobis rerum illo aut laborum nesciunt.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
32	42	4	Deleniti eligendi eveniet dolorem cupiditate.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
33	43	4	Fugiat aut eos expedita harum consequatur libero blanditiis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
34	44	4	Distinctio ut explicabo enim distinctio quia aut.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
35	45	4	Aut sit autem illo qui sequi quidem natus.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
36	46	4	Nisi quibusdam sint sit recusandae omnis porro.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
37	47	4	Pariatur quis dolorem cumque molestiae mollitia ea.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
38	48	4	Sequi est est corrupti culpa adipisci architecto ipsa.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
39	49	4	Et expedita non perspiciatis qui repudiandae tenetur nobis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
40	50	4	Est animi in culpa quis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
41	51	5	Aut est cum sit omnis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
42	52	5	Dolores ducimus ipsum earum dolorem maiores.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
43	53	5	Est et ipsa ex.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
44	54	5	Minima non nihil doloribus itaque qui officiis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
45	55	5	Consectetur ea non maxime sed et ullam molestias.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
46	56	5	Vero possimus cupiditate et quas illo qui accusantium.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
47	57	5	Quaerat cum aliquam tempora numquam tempora sequi maxime quo.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
48	58	5	Animi vero distinctio repellendus quo nihil placeat.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
49	59	5	Accusamus alias natus quam qui quis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
50	60	5	Autem ad ea asperiores.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
51	61	6	Provident non neque veritatis autem sunt est omnis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
52	62	6	Ut ab unde voluptas dolores eos.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
53	63	6	Facere sint minus dolorum dicta.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
54	64	6	Fugit non rerum quia optio autem repellendus adipisci.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
55	65	6	Ex quia aut est autem tenetur et est.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
56	66	6	Debitis sed nihil quia maiores.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
57	67	6	Placeat debitis commodi eveniet in ea minima dignissimos sed.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
58	68	6	Et quas sed et impedit quisquam voluptatum voluptates.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
59	69	6	Possimus tenetur reprehenderit exercitationem nisi distinctio cupiditate est.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
60	70	6	Rerum cumque quis ipsa harum recusandae rem.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
61	71	7	Qui nesciunt omnis dolorum est.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
62	72	7	Neque quia quo laboriosam ipsam ut nulla unde.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
63	73	7	Recusandae consectetur est et iure impedit tempore qui exercitationem.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
64	74	7	In fugiat dolor voluptatibus ea odit repudiandae neque.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
65	75	7	Ipsa harum est consectetur.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
66	76	7	Accusamus sed accusamus rerum.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
67	77	7	Facilis sapiente non enim ipsam veritatis quia.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
68	78	7	Natus natus minima aliquam autem ex dolor quis nostrum.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
69	79	7	Sunt a omnis voluptatem et.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
70	80	7	Architecto omnis error possimus aut totam.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
71	81	8	Minima dolores doloribus eveniet.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
72	82	8	Aliquid voluptatem officia omnis dignissimos.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
73	83	8	Et amet quibusdam libero mollitia.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
74	84	8	Est aspernatur ratione cum quae voluptatibus ab dignissimos.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
75	85	8	Quisquam cupiditate doloremque impedit labore aliquam ut ad accusantium.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
76	86	8	Culpa corrupti sunt libero qui laborum autem dicta inventore.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
7	17	1	Aliquam minima quidem autem sit sed voluptatum.	f	2018-10-24 23:45:03	2018-11-11 02:56:15
3	13	1	Quis ut numquam ex velit.	f	2018-10-24 23:45:03	2018-11-11 02:56:11
6	16	1	Sit eos alias deserunt optio corporis.	f	2018-10-24 23:45:03	2018-11-11 02:56:10
5	15	1	Inventore nulla illo vitae voluptatem sint sint.	f	2018-10-24 23:45:03	2018-11-11 02:56:10
2	12	1	Suscipit perspiciatis consequatur ut eveniet doloremque.	f	2018-10-24 23:45:03	2018-11-11 02:56:16
8	18	1	Non repellendus illo maxime suscipit modi veritatis doloremque.	f	2018-10-24 23:45:03	2018-11-11 02:56:09
77	87	8	Id sed voluptates aut tenetur maxime.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
78	88	8	Sint nihil dolorum perferendis magni facilis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
79	89	8	Ut magnam dolore eum et odio fugiat dolores labore.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
80	90	8	Laudantium ut maiores eum nihil.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
81	91	9	Rerum cum numquam mollitia amet.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
82	92	9	Reprehenderit et blanditiis iusto perspiciatis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
83	93	9	Ex vel ut nobis amet velit quae.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
84	94	9	Aut odio et officiis rerum et assumenda.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
85	95	9	Iste necessitatibus totam quia.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
86	96	9	Aut aliquam laboriosam veniam ullam quibusdam.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
87	97	9	Expedita culpa est ea vitae tenetur.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
88	98	9	Impedit voluptatem doloribus doloribus et fuga reiciendis.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
89	99	9	Praesentium dolor sit repellendus sed.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
90	100	9	Temporibus sequi quis est libero voluptas.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
91	101	10	Quod unde sed consequatur et voluptatum.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
92	102	10	Blanditiis corporis et consequuntur quam et.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
93	103	10	Quo sunt eveniet quia sed.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
94	104	10	Excepturi eligendi quae molestiae est est eveniet quia.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
95	105	10	Et aliquam voluptas nesciunt explicabo non.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
96	106	10	Autem velit provident magni nisi nihil reprehenderit quia.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
97	107	10	Vel nemo quae accusantium pariatur a.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
98	108	10	Voluptates doloribus et esse et.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
99	109	10	Sed quas et natus asperiores nesciunt a alias.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
100	110	10	Provident ut explicabo sunt.	f	2018-10-24 23:45:03	2018-10-24 23:45:03
4	14	1	Enim id suscipit in consequatur voluptatum voluptatem excepturi.	f	2018-10-24 23:45:03	2018-11-11 02:56:18
107	111	1	make sure this works	f	2018-11-18 01:41:20	2018-11-18 01:41:20
112	111	1	test the validation once again	f	2018-11-18 12:49:10	2018-11-18 12:49:10
108	111	1	Let's try it this way now	t	2018-11-18 02:22:10	2018-11-18 12:49:53
109	111	1	Test after validation	t	2018-11-18 03:32:30	2018-11-18 12:49:59
106	111	1	add todo	t	2018-11-18 01:36:28	2018-11-18 12:50:12
1	11	1	Repellendus cum aut quisquam voluptatem ab facilis et.	t	2018-10-24 23:45:03	2018-11-18 12:50:34
111	111	1	great!	t	2018-11-18 12:48:52	2018-11-18 13:07:24
113	111	14	Dynamic console.log/echo/sout snippets by current filetype	f	2018-11-19 00:27:16	2018-11-19 00:27:16
114	111	14	:Start php artisan tinker	f	2018-11-19 00:27:35	2018-11-19 00:27:35
115	111	14	:Dispatch phpunit, but run a different test script/function/shortcut for whatever filetype	f	2018-11-19 00:28:16	2018-11-19 00:28:16
117	111	15	add todos asyncronously	f	2018-11-19 00:29:07	2018-11-19 00:29:07
119	111	15	focus the new todo input on page load?	f	2018-11-19 00:30:24	2018-11-19 00:30:24
120	111	15	Add RSI/simple vim bindings to the web inputs	f	2018-11-19 00:30:55	2018-11-19 00:30:55
121	111	15	Add a bulk submit (textarea, newline separated, toggled)	f	2018-11-19 00:31:51	2018-11-19 00:31:51
122	111	15	do something about the hero up there on every page	f	2018-11-19 00:32:20	2018-11-19 00:32:20
123	111	15	add a 'new todo' form to layouts.master that is revealed (site-wide) by a keyboard shortcut/link and behaves like the CLI (i.e. godo add [-b <board>] <todo>)	f	2018-11-19 00:34:01	2018-11-19 00:34:01
124	111	15	Long todos don't wrap. See one on this very page	f	2018-11-19 00:34:29	2018-11-19 00:34:29
125	111	15	Checked todos are archived, only deleted manually from some board settings tab. I feel like github probably has the ui I want for settings (tabs)	f	2018-11-19 00:35:23	2018-11-19 00:35:23
126	111	15	Home page should turn into a dashboard	f	2018-11-19 00:36:41	2018-11-19 00:36:41
127	111	15	Order todos better, add simple manual sorting	f	2018-11-19 00:37:03	2018-11-19 00:37:03
128	111	15	Design a fire landing page	f	2018-11-19 00:37:19	2018-11-19 00:37:19
130	111	15	a system for collaborators/adding others to boards. Might require implementing guest users	f	2018-11-19 02:13:14	2018-11-19 02:13:14
131	111	15	User's profile is under a 'dashboard link. I think I want the profile and dashboard to be separate things.	f	2018-11-19 02:33:37	2018-11-19 02:33:37
132	111	15	Profile should be for others and is representative of the user. Dashboard should be where a user 'wants' to spend most of their time on the site	f	2018-11-19 02:34:30	2018-11-19 02:34:30
129	111	15	put a clock icon button above the right sid of a board's todos to toggle timestamp, and a user icon to toggle a blame	t	2018-11-19 02:12:40	2018-11-19 02:34:47
133	111	15	clicking the todo description should also toggle complete/incomplete	f	2018-11-19 02:35:08	2018-11-19 02:35:08
116	111	15	when creating a new board, redirect to the boards/show page for that board	t	2018-11-19 00:28:48	2018-11-21 02:56:49
134	111	15	Delete boards	f	2018-11-21 02:56:59	2018-11-21 02:56:59
135	111	15	delete todos	f	2018-11-21 02:57:11	2018-11-21 02:57:11
136	111	15	toggle switch for autofocusing the 'add todo' input (stored in user settings, maybe think of how to do that first)	f	2018-11-21 03:02:51	2018-11-21 03:02:51
118	111	15	auto focus the todo form when form is submitted (may not be necessary after async posting todos)	t	2018-11-19 00:30:08	2018-11-21 03:07:49
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
1	Tate Hintz	thelma.morar@example.org	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	1NUrQGSQyw	2018-10-24 23:45:00	2018-10-24 23:45:00
2	Dr. Jace Schoen III	toy.kenneth@example.com	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	NNOxRGHIUW	2018-10-24 23:45:00	2018-10-24 23:45:00
3	Prof. Eduardo Osinski Sr.	lsipes@example.com	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	iiObUKOyPf	2018-10-24 23:45:00	2018-10-24 23:45:00
4	Mr. Forrest Treutel V	ucronin@example.org	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	DVHFqUg0dU	2018-10-24 23:45:00	2018-10-24 23:45:00
5	Jesse Murray Sr.	verla.borer@example.com	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	yomrGQ7ssl	2018-10-24 23:45:00	2018-10-24 23:45:00
6	Laurie Roob III	ezequiel.thiel@example.org	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	B32KnobZnI	2018-10-24 23:45:00	2018-10-24 23:45:00
7	Darian Cassin DDS	kelvin.kessler@example.net	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	AHfa5lEsOb	2018-10-24 23:45:00	2018-10-24 23:45:00
8	Leonardo Kessler	weber.matilda@example.net	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	RdlCPJFVsO	2018-10-24 23:45:00	2018-10-24 23:45:00
9	Skyla Connelly	joy08@example.com	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	X0JJP5G2dO	2018-10-24 23:45:00	2018-10-24 23:45:00
10	Mr. Lukas Robel	johnathon53@example.org	2018-10-24 23:45:00	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	rz58luHeUq	2018-10-24 23:45:00	2018-10-24 23:45:00
11	Eliseo Goldner PhD	howell.hillary@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	SWnahsnqIi	2018-10-24 23:45:03	2018-10-24 23:45:03
12	Coy Johnston V	christiansen.haylie@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	jl4026LQyG	2018-10-24 23:45:03	2018-10-24 23:45:03
13	Ms. Birdie Rutherford	aimee16@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	HOzP3XYEYX	2018-10-24 23:45:03	2018-10-24 23:45:03
14	Gina Schinner	skuhlman@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	SVsLwWMgCb	2018-10-24 23:45:03	2018-10-24 23:45:03
15	Karianne Howell	hayley13@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	WHzLVupFxR	2018-10-24 23:45:03	2018-10-24 23:45:03
16	Roxanne Conroy	yadira42@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	HPzpkbJ52D	2018-10-24 23:45:03	2018-10-24 23:45:03
17	Nova Rempel	bryon.runolfsdottir@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	VjI51eo09B	2018-10-24 23:45:03	2018-10-24 23:45:03
18	Mr. Emmanuel Hayes I	jazlyn08@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ZHiw0y4X45	2018-10-24 23:45:03	2018-10-24 23:45:03
19	Lulu Green	kelly.wolf@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	vj4IbgBzmg	2018-10-24 23:45:03	2018-10-24 23:45:03
20	Miss Helene Roberts II	yasmeen72@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	7OJj8HZelK	2018-10-24 23:45:03	2018-10-24 23:45:03
21	Bernadette Ratke	ttreutel@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	zpNZlC3dZw	2018-10-24 23:45:03	2018-10-24 23:45:03
22	Bert Prosacco	cassidy56@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	mDfvJBXWte	2018-10-24 23:45:03	2018-10-24 23:45:03
23	Shany Jacobi	rprice@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	LQa3A2hU8t	2018-10-24 23:45:03	2018-10-24 23:45:03
24	Katelin Olson	mkemmer@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	sVjRZhV2jM	2018-10-24 23:45:03	2018-10-24 23:45:03
25	Broderick Ritchie PhD	kdavis@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ISuODSeDjg	2018-10-24 23:45:03	2018-10-24 23:45:03
26	Prof. Terrance Beatty	sporer.mathilde@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	kSm5Gl106F	2018-10-24 23:45:03	2018-10-24 23:45:03
27	Sharon Douglas	elsa56@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	FjtVoMQ5JH	2018-10-24 23:45:03	2018-10-24 23:45:03
28	Miss Juliet Gislason V	sally.bednar@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	Kab8oSpVZ0	2018-10-24 23:45:03	2018-10-24 23:45:03
29	Dr. Garfield Harvey Sr.	mayert.patsy@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	5eGFbfZkbt	2018-10-24 23:45:03	2018-10-24 23:45:03
30	Mrs. Althea Ullrich PhD	zcrona@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	v7zOnm7aK2	2018-10-24 23:45:03	2018-10-24 23:45:03
31	Britney Lakin	yschaden@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	LmeJAZzrOw	2018-10-24 23:45:03	2018-10-24 23:45:03
32	Dr. Uriel Cartwright I	gferry@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	yePeRiQVEP	2018-10-24 23:45:03	2018-10-24 23:45:03
33	Prof. Junius Donnelly Jr.	denesik.zora@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	m5810rngAd	2018-10-24 23:45:03	2018-10-24 23:45:03
34	Kody Hettinger	earline.altenwerth@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	F8NkFbdpbG	2018-10-24 23:45:03	2018-10-24 23:45:03
35	Lonny Smith	schneider.frankie@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ENv6CVwod1	2018-10-24 23:45:03	2018-10-24 23:45:03
36	Emely Nicolas	koss.brandi@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	2WyiYNkmYq	2018-10-24 23:45:03	2018-10-24 23:45:03
37	Marjorie Gulgowski Sr.	burdette.harber@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ql9qu4cPBR	2018-10-24 23:45:03	2018-10-24 23:45:03
38	Payton Hill PhD	emard.mathias@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	rpVxUd4MPh	2018-10-24 23:45:03	2018-10-24 23:45:03
39	Dr. Benjamin Rohan	brittany54@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	lPHdN4pv2D	2018-10-24 23:45:03	2018-10-24 23:45:03
40	Hilton Terry	ignacio10@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	Jci5Zesqwz	2018-10-24 23:45:03	2018-10-24 23:45:03
41	Edwin Veum	hamill.rosalia@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	tPO6nW8H4m	2018-10-24 23:45:03	2018-10-24 23:45:03
42	Evangeline Treutel	thea.block@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	4YKRMMPcPN	2018-10-24 23:45:03	2018-10-24 23:45:03
43	Theo Schimmel	marion.mclaughlin@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	riCnkKNx4S	2018-10-24 23:45:03	2018-10-24 23:45:03
44	Nickolas Hickle MD	ybosco@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	dtxG9knk7p	2018-10-24 23:45:03	2018-10-24 23:45:03
45	Prof. Jonas Pacocha	glindgren@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ZDbjHExltz	2018-10-24 23:45:03	2018-10-24 23:45:03
46	Linnie Moen	jgutmann@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ye1UKHlCKn	2018-10-24 23:45:03	2018-10-24 23:45:03
47	Mrs. Shemar Hamill DDS	ddonnelly@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	fVXQmiHjn9	2018-10-24 23:45:03	2018-10-24 23:45:03
48	Karlee Halvorson	rollin.schiller@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	hJxvUmEsow	2018-10-24 23:45:03	2018-10-24 23:45:03
49	Ms. Jada Homenick DVM	gorczany.edyth@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	XcsVS88vuv	2018-10-24 23:45:03	2018-10-24 23:45:03
50	Gilda Mueller V	sberge@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	AINSrA6a47	2018-10-24 23:45:03	2018-10-24 23:45:03
51	Mr. Quentin Orn V	reilly.eula@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	l2Mz8UbQan	2018-10-24 23:45:03	2018-10-24 23:45:03
52	Obie Dickinson	bonita38@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	DIPPhBTIzm	2018-10-24 23:45:03	2018-10-24 23:45:03
53	Aaliyah Langworth	gconnelly@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	C2N32v79gX	2018-10-24 23:45:03	2018-10-24 23:45:03
54	Haleigh Paucek I	rosina30@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	d6hZDQ2Fdn	2018-10-24 23:45:03	2018-10-24 23:45:03
55	Amber Dickinson	art46@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	PqW3QkWuui	2018-10-24 23:45:03	2018-10-24 23:45:03
56	Bobby Cassin DDS	montana.hand@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	1xB0X9Xh0x	2018-10-24 23:45:03	2018-10-24 23:45:03
57	Kaleb Runte	renee56@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	46SZQY19vT	2018-10-24 23:45:03	2018-10-24 23:45:03
58	Destany Langworth	reinger.tremaine@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	OoixL6aQVV	2018-10-24 23:45:03	2018-10-24 23:45:03
59	Dr. Jasper Lemke II	granville14@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	me2EdoZ72V	2018-10-24 23:45:03	2018-10-24 23:45:03
60	Ava Runte	xzavier37@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	JE5MM8vdGs	2018-10-24 23:45:03	2018-10-24 23:45:03
61	Regan Fadel	clang@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ioDanrAvLn	2018-10-24 23:45:03	2018-10-24 23:45:03
62	Talon Balistreri	tony.huels@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	LIc0hprzKQ	2018-10-24 23:45:03	2018-10-24 23:45:03
63	Ms. Betsy Kohler	wolff.silas@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	s3OL1H926Z	2018-10-24 23:45:03	2018-10-24 23:45:03
64	Dr. Lyda Kub	frami.emelia@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ogcKMjZB7O	2018-10-24 23:45:03	2018-10-24 23:45:03
65	Dr. Sylvester Boyle	issac.hickle@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	gpyseq7AAW	2018-10-24 23:45:03	2018-10-24 23:45:03
66	Koby Lesch	kelvin.frami@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ipPsZUwaTD	2018-10-24 23:45:03	2018-10-24 23:45:03
67	Danial Friesen	xschinner@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	iPNCyxQA6G	2018-10-24 23:45:03	2018-10-24 23:45:03
68	Reba Sipes MD	bradtke.tiffany@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	AYGLRaAMAA	2018-10-24 23:45:03	2018-10-24 23:45:03
69	Emelia Olson	van.gottlieb@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	XXanhEeP2k	2018-10-24 23:45:03	2018-10-24 23:45:03
70	Tia Balistreri	sage.terry@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	9Ff8vN0G5R	2018-10-24 23:45:03	2018-10-24 23:45:03
71	Miss Litzy Douglas DVM	kshields@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	KDIi8zoaEl	2018-10-24 23:45:03	2018-10-24 23:45:03
72	Dr. Bryce Cronin MD	urosenbaum@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	3uu6nbVSKy	2018-10-24 23:45:03	2018-10-24 23:45:03
73	Delia Morar	bella.ledner@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ntObXGP4RC	2018-10-24 23:45:03	2018-10-24 23:45:03
74	Mr. Irving Douglas DVM	michael82@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	7XFCdWoXdG	2018-10-24 23:45:03	2018-10-24 23:45:03
75	Mrs. Emmy Rosenbaum MD	brant59@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	Shx9kT0pnI	2018-10-24 23:45:03	2018-10-24 23:45:03
76	Ms. Jennie Hoppe	faustino.hyatt@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	PXsd9LcW84	2018-10-24 23:45:03	2018-10-24 23:45:03
77	Kamryn Halvorson	lempi.lemke@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	fJuk3AnNQd	2018-10-24 23:45:03	2018-10-24 23:45:03
78	Greta Bradtke	nlueilwitz@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	OoPBA7L7he	2018-10-24 23:45:03	2018-10-24 23:45:03
79	Devin Keeling PhD	ybahringer@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	QtNYsI4Kza	2018-10-24 23:45:03	2018-10-24 23:45:03
80	Bria Heaney	javonte.jaskolski@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	gQoxrsUSsw	2018-10-24 23:45:03	2018-10-24 23:45:03
81	Rowland Wolff DDS	mueller.jalyn@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	g5zALICZoB	2018-10-24 23:45:03	2018-10-24 23:45:03
82	Mary Veum	jacey87@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	bjIObgq4jT	2018-10-24 23:45:03	2018-10-24 23:45:03
83	Dr. Kathlyn Quitzon I	bette94@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	e5uyMRszmG	2018-10-24 23:45:03	2018-10-24 23:45:03
84	Anastasia Feest	denesik.nola@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	O5jU5U9byZ	2018-10-24 23:45:03	2018-10-24 23:45:03
85	Asia Rippin	oshields@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	rc0KEAeyw8	2018-10-24 23:45:03	2018-10-24 23:45:03
86	Mr. Marcelino Spinka	blanca41@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	kmCENXr7C3	2018-10-24 23:45:03	2018-10-24 23:45:03
87	Aniya Rempel	misty.leuschke@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	FgWPyz3fmS	2018-10-24 23:45:03	2018-10-24 23:45:03
88	Willis Hoeger	iwelch@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	Jd764RFhkG	2018-10-24 23:45:03	2018-10-24 23:45:03
89	Lee Smitham	emmerich.clinton@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	EvBw5mcImW	2018-10-24 23:45:03	2018-10-24 23:45:03
90	Mrs. Lexie Langosh	aurelie09@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	58dhpbdfD1	2018-10-24 23:45:03	2018-10-24 23:45:03
91	Mr. Tremayne Becker	shaina.trantow@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	2M6XUEfBI2	2018-10-24 23:45:03	2018-10-24 23:45:03
92	Makenna Halvorson	elva24@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	8BCUtVNBZ7	2018-10-24 23:45:03	2018-10-24 23:45:03
93	Dennis Windler	reilly.eileen@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	0hf9873Frg	2018-10-24 23:45:03	2018-10-24 23:45:03
94	Abe Nader	streich.cierra@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	xj7V8gJZ19	2018-10-24 23:45:03	2018-10-24 23:45:03
95	Carmen Watsica	forrest.kozey@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	TsLF1kDxj2	2018-10-24 23:45:03	2018-10-24 23:45:03
96	Frederik Purdy	kherzog@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	FWA6mjzxup	2018-10-24 23:45:03	2018-10-24 23:45:03
97	Mr. Garret Pagac Sr.	sister34@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	5xRghNdis3	2018-10-24 23:45:03	2018-10-24 23:45:03
98	Mrs. Electa Schmeler PhD	berta49@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	LPNrNwPckm	2018-10-24 23:45:03	2018-10-24 23:45:03
99	Julia West	cummings.everardo@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	ph7GyV41qW	2018-10-24 23:45:03	2018-10-24 23:45:03
100	Miss Velma Kohler	herminio81@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	cJ4bqKcyc2	2018-10-24 23:45:03	2018-10-24 23:45:03
101	Delpha Sauer	cartwright.melissa@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	PWVFpyqKhI	2018-10-24 23:45:03	2018-10-24 23:45:03
102	Dina Schmeler	hiram.towne@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	LS2Lo7xZl5	2018-10-24 23:45:03	2018-10-24 23:45:03
103	Devan Ortiz	elroy85@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	M6aJwXZD2M	2018-10-24 23:45:03	2018-10-24 23:45:03
104	Barrett Larson	klarkin@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	QDO0sHJgBv	2018-10-24 23:45:03	2018-10-24 23:45:03
105	Nayeli Bernhard	jacobi.casper@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	HylYxCzlxR	2018-10-24 23:45:03	2018-10-24 23:45:03
106	Dr. Florencio Anderson DVM	dante.brown@example.org	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	Nm53ilynol	2018-10-24 23:45:03	2018-10-24 23:45:03
107	Axel Wehner	abdullah80@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	li5n4kJPd8	2018-10-24 23:45:03	2018-10-24 23:45:03
108	Mrs. Michaela Leffler	cassin.keshawn@example.com	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	kk8hB8OZvY	2018-10-24 23:45:03	2018-10-24 23:45:03
109	Miss Evelyn Kihn	shaina69@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	y8xN2op560	2018-10-24 23:45:03	2018-10-24 23:45:03
110	Rupert Leuschke	kavon.kirlin@example.net	2018-10-24 23:45:03	$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm	r0hkLLsVHz	2018-10-24 23:45:03	2018-10-24 23:45:03
111	vince	vince@couchjes.us	\N	$2y$10$CBcMLX5EdtGSaMvcFg8lI.SkkTmwNs06dBuKSeYmWp6qjWrFRXfKy	g0m1oNGahm1ehDf7GNvc1iyJ1UzX6OOO1eMni6jc0VwBElSdkw5xth8FpTcY	2018-10-31 00:09:33	2018-10-31 00:09:33
\.


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_id_seq', 23, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.todos_id_seq', 136, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 111, true);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- PostgreSQL database dump complete
--

