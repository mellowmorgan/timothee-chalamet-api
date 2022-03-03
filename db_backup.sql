--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9
-- Dumped by pg_dump version 14.1

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: morganwaites
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO morganwaites;

--
-- Name: photos; Type: TABLE; Schema: public; Owner: morganwaites
--

CREATE TABLE public.photos (
    id bigint NOT NULL,
    file_path character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.photos OWNER TO morganwaites;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: morganwaites
--

CREATE SEQUENCE public.photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photos_id_seq OWNER TO morganwaites;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morganwaites
--

ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;


--
-- Name: quotes; Type: TABLE; Schema: public; Owner: morganwaites
--

CREATE TABLE public.quotes (
    id bigint NOT NULL,
    content character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.quotes OWNER TO morganwaites;

--
-- Name: quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: morganwaites
--

CREATE SEQUENCE public.quotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotes_id_seq OWNER TO morganwaites;

--
-- Name: quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: morganwaites
--

ALTER SEQUENCE public.quotes_id_seq OWNED BY public.quotes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: morganwaites
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO morganwaites;

--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: morganwaites
--

ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);


--
-- Name: quotes id; Type: DEFAULT; Schema: public; Owner: morganwaites
--

ALTER TABLE ONLY public.quotes ALTER COLUMN id SET DEFAULT nextval('public.quotes_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: morganwaites
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-03-01 16:52:37.008841	2022-03-01 16:52:37.008841
\.


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: morganwaites
--

COPY public.photos (id, file_path, created_at) FROM stdin;
43	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0090.jpg	2022-03-02 20:05:01.379688
44	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0089.jpg	2022-03-01 20:05:01.379688
45	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0087.jpg	2022-03-01 20:05:01.379688
46	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0083.jpg	2022-03-01 20:05:01.379688
47	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0078.jpg	2022-03-01 20:05:01.379688
48	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0074.jpg	2022-03-01 20:05:01.379688
49	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0071.jpg	2022-03-01 20:05:01.379688
50	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0065.jpg	2022-03-01 20:05:01.379688
51	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0063.jpg	2022-03-01 20:05:01.379688
52	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0059.jpg	2022-03-01 20:05:01.379688
53	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0053.jpg	2022-03-01 20:05:01.379688
54	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0052.jpg	2022-03-01 20:05:01.379688
55	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0047.jpg	2022-03-01 20:05:01.379688
56	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0045.jpg	2022-03-01 20:05:01.379688
57	https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0044.jpg	2022-03-01 20:05:01.379688
58	https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2020/007/TCF-010.jpg	2022-03-01 20:05:01.379688
59	https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2020/007/TCF-009.jpg	2022-03-01 20:05:01.379688
60	https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2020/007/TCF-007.jpg	2022-03-01 20:05:01.379688
61	https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2019/013/004.jpg	2022-03-01 20:05:01.379688
62	https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2019/013/006.jpg	2022-03-01 20:05:01.379688
64	https://media.gq.com/photos/5f85de1ed6eb98763214beb6/master/w_1600,c_limit/timothee-chalamet-gq-november-cover-2020-01.jpg	2022-03-01 20:05:01.379688
65	https://media.gq.com/photos/5f85de2241ee64286573788b/master/w_1600,c_limit/timothee-chalamet-gq-november-cover-2020-09.jpg	2022-03-01 20:05:01.379688
67	https://media.gq.com/photos/5f85ddf2ece9eb827214a70c/master/w_1600,c_limit/timothee-chalamet-gq-november-cover-2020-08.jpg	2022-03-01 20:05:01.379688
68	https://numeralpaint.com/wp-content/uploads/2020/07/timothee-chalamet-photoshoot-paint-by-numbers.jpg	2022-03-01 20:05:01.379688
71	https://www.indiewire.com/wp-content/uploads/2021/10/AP18024576885097.jpg	2022-03-01 20:05:01.379688
72	https://media.vanityfair.com/photos/5a25ae7b623f3f4927e2e492/9:16/w_422,h_751,c_limit/t-timothee-chalamet-award-season (1).jpg	2022-03-01 20:05:01.379688
73	https://i.pinimg.com/474x/bb/cd/d4/bbcdd4602083ab09cac05260a82eed7a.jpg	2022-03-02 20:29:16.666995
\.


--
-- Data for Name: quotes; Type: TABLE DATA; Schema: public; Owner: morganwaites
--

COPY public.quotes (id, content, created_at) FROM stdin;
1	I'm not someone who frequents the gym, pretty much ever.	2022-03-01 20:05:01.379688
2	I naturally have a me-against-the-world mentality, and I've been fighting it since I was 13. It's felt like it's only gotten me in lonely, angry places.	2022-03-01 20:05:01.379688
3	Ninety-eight per cent of all human communication is non-verbal.	2022-03-01 20:05:01.379688
4	My sister was in ballet growing up. I spent almost the entirety of 7 through 12 backstage at Lincoln Center, just running around, waiting for 'The Nutcracker' to end.	2022-03-01 20:05:01.379688
5	I love the East Village.	2022-03-01 20:05:01.379688
6	Learning the Italian was tough. I tried to really come at from a purist perspective, really learn the grammar, syntax and conjugations.	2022-03-01 20:05:01.379688
7	I'm sure no one really wants to think of themselves as a child actor.	2022-03-01 20:05:01.379688
8	My dad's French, and I spent my summers in France growing up. So I speak French fluently, and obviously, I speak English because I was raised in New York, and I grew up here.	2022-03-01 20:05:01.379688
9	Somebody said to me, 'You should keep a journal of this period in your life and really write down this stuff.' But that makes me a little uneasy.	2022-03-01 20:05:01.379688
10	I played the piano growing up and then stopped for 10 or 12 years.	2022-03-01 20:05:01.379688
11	There's the truth to every moment that you have to bring to every scene, but you have to understand the tonality of the film before you begin, which isn't something that's instinctual to me.	2022-03-01 20:05:01.379688
12	I want to attack and to lead my life with vigor, but I'm in the watching stage at the moment. Younger actors feel pressure to bring a pop to every scene; as the roles get bigger, I'm finding you can add layers and do less scene-to-scene.	2022-03-01 20:05:01.379688
13	I don't like to know exactly what I'm going to do in a scene, because the most interesting moments as an audience member are moments of truthful spontaneity.	2022-03-01 20:05:01.379688
14	I've been very encouraged by the nature of the conversations that I've had and by the lack of questions that are tunnel-visioned in their understanding of sexuality and life and love.	2022-03-01 20:05:01.379688
15	Sometimes, when you act with someone in an intimate capacity, you have to ask vulnerable questions to speed up intimacy - but that's artificial.	2022-03-01 20:05:01.379688
16	I wouldn't be the actor I am without New York.	2022-03-01 20:05:01.379688
17	We're only here for so long. Be happy, man. You could get hit by a truck tomorrow.	2022-03-01 20:05:01.379688
18	We're only here for so long. Be happy, man. You could get hit by a truck tomorrow.	2022-03-01 20:05:01.379688
19	I have this sense of independent heartbreak, of annulling romances before they get their feet off the ground.	2022-03-01 20:05:01.379688
20	I miss the sense of belonging on a film as much as I did on 'Call Me By Your Name.'	2022-03-01 20:05:01.379688
22	My whole life I was Timmy and then as I got older, it seemed like Timmy was youthing me out, so it’s been Timothée since. I tried Timo and Tim, too. The real pronunciation is Timo-tay, but I can’t ask people to call me that	2022-03-01 20:05:01.379688
29	so what’re y’all up to tmrw?? (yeah I’m sorry there’s a right answer to this question)	2022-03-01 20:05:01.379688
34	You could be the captain of your soul. But you have to realize that life is coming from you and not at you, and that takes time.	2022-03-02 20:27:03.927317
35	I got to make a best friend shooting ‘Dune.’ Zendaya is a friend for life. We got along great on set, and I’m counting my lucky stars that I’ve got a friend in this crazy industry that I can count on, and she’s got the same here.	2022-03-02 20:28:26.330973
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: morganwaites
--

COPY public.schema_migrations (version) FROM stdin;
20220121032813
20220121032805
20220302195025
20220302195325
20220302200012
20220302200133
\.


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morganwaites
--

SELECT pg_catalog.setval('public.photos_id_seq', 73, true);


--
-- Name: quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: morganwaites
--

SELECT pg_catalog.setval('public.quotes_id_seq', 36, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: morganwaites
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: morganwaites
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: quotes quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: morganwaites
--

ALTER TABLE ONLY public.quotes
    ADD CONSTRAINT quotes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: morganwaites
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

