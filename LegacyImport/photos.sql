--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: photos; Type: TABLE; Schema: public; Owner: photo; Tablespace: 
--

CREATE TABLE photos (
    id integer NOT NULL,
    basename character varying(255) NOT NULL,
    gallery_id integer NOT NULL,
    description character varying(375),
    people character varying(465),
    datetime timestamp without time zone,
    photographer character varying(32),
    location character varying(96)
);


ALTER TABLE public.photos OWNER TO photo;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: photo
--

CREATE SEQUENCE photos_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.photos_id_seq OWNER TO photo;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: photo
--

ALTER SEQUENCE photos_id_seq OWNED BY photos.id;


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: photo
--

SELECT pg_catalog.setval('photos_id_seq', 4822, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: photo
--

ALTER TABLE photos ALTER COLUMN id SET DEFAULT nextval('photos_id_seq'::regclass);


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: photo
--

COPY photos (id, basename, gallery_id, description, people, datetime, photographer, location) FROM stdin;
1	p2190002.jpg	1	\N	\N	2004-02-19 11:19:00	Dylan Cheasty	\N
2	p2190003.jpg	1	\N	\N	2004-02-19 11:20:00	Dylan Cheasty	\N
3	p3310058.jpg	2	\N	\N	2004-03-31 16:03:00	Dylan Cheasty	\N
4	p3310059.jpg	2	\N	\N	2004-03-31 16:04:00	Dylan Cheasty	\N
5	p3310061.jpg	2	\N	\N	2004-03-31 16:04:00	Dylan Cheasty	\N
6	p3310062.jpg	2	\N	\N	2004-03-31 16:05:00	Dylan Cheasty	\N
7	p3310063.jpg	2	\N	\N	2004-03-31 16:05:00	Dylan Cheasty	\N
8	p3310064.jpg	2	\N	\N	2004-03-31 16:07:00	Dylan Cheasty	\N
9	p3310065.jpg	2	\N	\N	2004-03-31 16:42:00	Dylan Cheasty	\N
10	p3310066.jpg	2	\N	\N	2004-03-31 16:42:00	Dylan Cheasty	\N
11	p3310068.jpg	2	\N	\N	2004-03-31 16:43:00	Dylan Cheasty	\N
12	p2140011.jpg	3	Plastic Wrap, compliments of Eric & Dylan	\N	2004-02-14 20:38:00	Dylan Cheasty	Lounge doors, post movie-night
13	p2140012.jpg	3	\N	\N	2004-02-14 20:38:00	Dylan Cheasty	Lounge doors, post movie-night
14	p2140013.jpg	3	\N	\N	2004-02-14 20:39:00	Dylan Cheasty	Lounge doors, post movie-night
15	p2140014.jpg	3	\N	\N	2004-02-14 20:39:00	Dylan Cheasty	Lounge doors, post movie-night
16	p2140015.jpg	3	\N	\N	2004-02-14 20:39:00	Dylan Cheasty	Lounge doors, post movie-night
17	p2140016.jpg	3	\N	\N	2004-02-14 20:39:00	Dylan Cheasty	Lounge doors, post movie-night
18	p2140017.jpg	3	\N	\N	2004-02-14 20:39:00	Dylan Cheasty	Lounge doors, post movie-night
19	p2140018.jpg	3	\N	\N	2004-02-14 20:39:00	Dylan Cheasty	Lounge doors, post movie-night
54	p4120002.jpg	8	\N	\N	2004-04-12 18:08:00	Dylan Cheasty	\N
55	p4120003.jpg	8	\N	\N	2004-04-12 18:09:00	Dylan Cheasty	\N
56	p4120004.jpg	8	\N	\N	2004-04-12 18:09:00	Dylan Cheasty	\N
57	p4120005.jpg	8	\N	\N	2004-04-12 18:10:00	Dylan Cheasty	\N
58	p4120007.jpg	8	\N	\N	2004-04-12 18:10:00	Dylan Cheasty	\N
59	p4120008.jpg	8	\N	\N	2004-04-12 18:15:00	Dylan Cheasty	\N
60	p4120009.jpg	8	\N	\N	2004-04-12 18:20:00	Dylan Cheasty	\N
61	p4120011.jpg	8	\N	\N	2004-04-12 18:20:00	Dylan Cheasty	\N
62	p4120012.jpg	8	\N	\N	2004-04-12 18:22:00	Dylan Cheasty	\N
63	p4120013.jpg	8	\N	\N	2004-04-12 18:23:00	Dylan Cheasty	\N
64	p4120014.jpg	8	\N	\N	2004-04-12 18:23:00	Dylan Cheasty	\N
107	p4100129.jpg	13	Computer hacking of another sort	deigen	2004-04-10 22:20:00	Dylan Cheasty	\N
108	p4100130.jpg	13	Hackers	deigen, Evan	2004-04-10 22:20:00	Dylan Cheasty	\N
123	IMG_7633.jpg	15	\N	\N	2008-05-02 22:57:00	Mat Coughlin	Lounge
124	IMG_7634.jpg	15	\N	\N	2008-05-02 22:57:00	Mat Coughlin	Lounge
125	IMG_7636.jpg	15	\N	\N	2008-05-02 22:58:00	Mat Coughlin	Lounge
126	IMG_7641.jpg	15	\N	\N	2008-05-02 22:59:00	Mat Coughlin	Lounge
127	IMG_7645.jpg	15	\N	\N	2008-05-02 22:59:00	Mat Coughlin	Lounge
128	IMG_7648.jpg	15	\N	\N	2008-05-02 23:01:00	Mat Coughlin	Lounge
129	IMG_7649.jpg	15	\N	\N	2008-05-02 23:02:00	Mat Coughlin	Lounge
130	IMG_7653.jpg	15	\N	\N	2008-05-02 23:02:00	Mat Coughlin	Lounge
131	IMG_7654.jpg	15	\N	\N	2008-05-02 23:03:00	Mat Coughlin	Lounge
132	IMG_7657.jpg	15	\N	\N	2008-05-02 23:05:00	Mat Coughlin	Lounge
133	IMG_7661.jpg	15	\N	\N	2008-05-02 23:06:00	Mat Coughlin	Lounge
134	IMG_7662.jpg	15	\N	\N	2008-05-02 23:06:00	Mat Coughlin	Lounge
135	IMG_7666.jpg	15	\N	\N	2008-05-02 23:07:00	Mat Coughlin	Lounge
136	IMG_7668.jpg	15	\N	\N	2008-05-02 23:08:00	Mat Coughlin	Lounge
137	IMG_7669.jpg	15	\N	\N	2008-05-02 23:08:00	Mat Coughlin	Lounge
138	IMG_7670.jpg	15	\N	\N	2008-05-02 23:08:00	Mat Coughlin	Lounge
139	IMG_7674.jpg	15	\N	\N	2008-05-02 23:10:00	Mat Coughlin	Lounge
140	IMG_7676.jpg	15	\N	\N	2008-05-02 23:12:00	Mat Coughlin	Lounge
141	IMG_7678.jpg	15	\N	\N	2008-05-02 23:13:00	Mat Coughlin	Lounge
142	IMG_7682.jpg	15	\N	\N	2008-05-02 23:13:00	Mat Coughlin	Lounge
143	IMG_7684.jpg	15	\N	\N	2008-05-02 23:13:00	Mat Coughlin	Lounge
144	IMG_7685.jpg	15	\N	\N	2008-05-02 23:14:00	Mat Coughlin	Lounge
145	IMG_7687.jpg	15	\N	\N	2008-05-02 23:14:00	Mat Coughlin	Lounge
146	IMG_7690.jpg	15	\N	\N	2008-05-02 23:15:00	Mat Coughlin	Lounge
147	IMG_7707.jpg	15	\N	\N	2008-05-02 23:26:00	Mat Coughlin	Lounge
148	IMG_7709.jpg	15	\N	\N	2008-05-02 23:27:00	Mat Coughlin	Lounge
149	IMG_7710.jpg	15	\N	\N	2008-05-02 23:27:00	Mat Coughlin	Lounge
150	IMG_7712.jpg	15	\N	\N	2008-05-02 23:27:00	Mat Coughlin	Lounge
151	IMG_7713.jpg	15	\N	\N	2008-05-02 23:27:00	Mat Coughlin	Lounge
152	IMG_7714.jpg	15	\N	\N	2008-05-02 23:28:00	Mat Coughlin	Lounge
153	IMG_7718.jpg	15	\N	\N	2008-05-02 23:29:00	Mat Coughlin	Lounge
154	IMG_7720.jpg	15	\N	\N	2008-05-02 23:32:00	Mat Coughlin	Lounge
155	IMG_7722.jpg	15	\N	\N	2008-05-02 23:32:00	Mat Coughlin	Lounge
156	IMG_7723.jpg	15	\N	\N	2008-05-02 23:32:00	Mat Coughlin	Lounge
157	IMG_7729.jpg	15	\N	\N	2008-05-02 23:38:00	Mat Coughlin	Lounge
158	IMG_7731.jpg	15	\N	\N	2008-05-02 23:39:00	Mat Coughlin	Lounge
159	IMG_7740.jpg	15	\N	\N	2008-05-02 23:44:00	Mat Coughlin	Lounge
160	IMG_7741.jpg	15	\N	\N	2008-05-02 23:44:00	Mat Coughlin	Lounge
161	IMG_7742.jpg	15	\N	\N	2008-05-02 23:44:00	Mat Coughlin	Lounge
162	IMG_7743.jpg	15	\N	\N	2008-05-02 23:47:00	Mat Coughlin	Lounge
163	IMG_7747.jpg	15	\N	\N	2008-05-02 23:48:00	Mat Coughlin	Lounge
164	IMG_7752.jpg	15	\N	\N	2008-05-02 23:49:00	Mat Coughlin	Lounge
165	IMG_7753.jpg	15	\N	\N	2008-05-02 23:50:00	Mat Coughlin	Lounge
166	IMG_7759.jpg	15	\N	\N	2008-05-02 23:52:00	Ben Hutchison	Lounge
167	IMG_7762.jpg	15	\N	\N	2008-05-02 23:55:00	Ben Hutchison	Lounge
168	IMG_7763.jpg	15	\N	\N	2008-05-02 23:56:00	Ben Hutchison	Lounge
169	IMG_7765.jpg	15	\N	\N	2008-05-02 23:57:00	Ben Hutchison	Lounge
170	IMG_7768.jpg	15	\N	\N	2008-05-02 23:59:00	Ben Hutchison	Lounge
171	IMG_7771.jpg	15	\N	\N	2008-05-03 00:00:00	Ben Hutchison	Lounge
172	IMG_7772.jpg	15	\N	\N	2008-05-03 00:01:00	Ben Hutchison	Lounge
173	IMG_7773.jpg	15	\N	\N	2008-05-03 00:01:00	Ben Hutchison	Lounge
174	IMG_7777.jpg	15	\N	\N	2008-05-03 00:05:00	Ben Hutchison	Lounge
175	IMG_7778.jpg	15	\N	\N	2008-05-03 00:06:00	Ben Hutchison	Lounge
176	IMG_7780.jpg	15	\N	\N	2008-05-03 00:08:00	Ben Hutchison	Lounge
177	IMG_7782.jpg	15	\N	\N	2008-05-03 00:09:00	Ben Hutchison	Lounge
178	IMG_7784.jpg	15	\N	\N	2008-05-03 00:10:00	Ben Hutchison	Lounge
179	IMG_7785.jpg	15	\N	\N	2008-05-03 00:11:00	Ben Hutchison	Lounge
180	IMG_7786.jpg	15	\N	\N	2008-05-03 00:11:00	Ben Hutchison	Lounge
181	IMG_7789.jpg	15	\N	\N	2008-05-03 00:13:00	Ben Hutchison	Lounge
182	IMG_7791.jpg	15	\N	\N	2008-05-03 00:14:00	Ben Hutchison	Lounge
183	IMG_7793.jpg	15	\N	\N	2008-05-03 00:14:00	Ben Hutchison	Lounge
184	IMG_7794.jpg	15	\N	\N	2008-05-03 00:14:00	Ben Hutchison	Lounge
185	IMG_7795.jpg	15	\N	\N	2008-05-03 00:19:00	Ben Hutchison	Lounge
186	IMG_7802.jpg	15	\N	\N	2008-05-03 00:21:00	Ben Hutchison	Lounge
187	IMG_7804.jpg	15	\N	\N	2008-05-03 00:21:00	Ben Hutchison	Lounge
188	IMG_7807.jpg	15	\N	\N	2008-05-03 00:22:00	Ben Hutchison	Lounge
189	IMG_7811.jpg	15	\N	\N	2008-05-03 00:23:00	Ben Hutchison	Lounge
190	IMG_7815.jpg	15	\N	\N	2008-05-03 00:24:00	Ben Hutchison	Lounge
191	IMG_7816.jpg	15	\N	\N	2008-05-03 00:24:00	Ben Hutchison	Lounge
192	IMG_7820.jpg	15	\N	\N	2008-05-03 00:26:00	Ben Hutchison	Lounge
193	IMG_7833.jpg	15	\N	\N	2008-05-03 00:33:00	Ben Hutchison	Lounge
194	IMG_7845.jpg	15	\N	\N	2008-05-03 00:00:00	Ben Hutchison	Lounge
195	IMG_7846.jpg	15	\N	\N	2008-05-03 00:37:00	Ben Hutchison	Lounge
196	IMG_7847.jpg	15	\N	\N	2008-05-03 00:37:00	Ben Hutchison	Lounge
197	IMG_7848.jpg	15	\N	\N	2008-05-03 00:37:00	Ben Hutchison	Lounge
198	IMG_7849.jpg	15	\N	\N	2008-05-03 00:38:00	Ben Hutchison	Lounge
199	IMG_7850.jpg	15	\N	\N	2008-05-03 00:40:00	Ben Hutchison	Lounge
200	IMG_7852.jpg	15	\N	\N	2008-05-03 00:41:00	Ben Hutchison	Lounge
201	IMG_7860.jpg	15	\N	\N	2008-05-03 00:49:00	Ben Hutchison	Lounge
202	IMG_7863.jpg	15	\N	\N	2008-05-03 00:52:00	Ben Hutchison	Lounge
203	IMG_7865.jpg	15	\N	\N	2008-05-03 00:52:00	Ben Hutchison	Lounge
204	IMG_7867.jpg	15	\N	\N	2008-05-03 00:54:00	Ben Hutchison	Lounge
205	IMG_7870.jpg	15	\N	\N	2008-05-03 00:59:00	Ben Hutchison	Lounge
206	IMG_7871.jpg	15	\N	\N	2008-05-03 00:59:00	Ben Hutchison	Lounge
207	IMG_7873.jpg	15	\N	\N	2008-05-03 01:01:00	Ben Hutchison	Lounge
208	IMG_7874.jpg	15	\N	\N	2008-05-03 01:02:00	Ben Hutchison	Lounge
209	IMG_7875.jpg	15	\N	\N	2008-05-03 01:03:00	Ben Hutchison	Lounge
210	IMG_7876.jpg	15	\N	\N	2008-05-03 01:03:00	Ben Hutchison	Lounge
211	IMG_7877.jpg	15	\N	\N	2008-05-03 01:03:00	Ben Hutchison	Lounge
212	IMG_7879.jpg	15	\N	\N	2008-05-03 01:03:00	Ben Hutchison	Lounge
213	IMG_7882.jpg	15	\N	\N	2008-05-03 01:04:00	Ben Hutchison	Lounge
214	IMG_7887.jpg	15	\N	\N	2008-05-03 01:06:00	Ben Hutchison	Lounge
215	IMG_7892.jpg	15	\N	\N	2008-05-03 01:07:00	Ben Hutchison	Lounge
216	IMG_7896.jpg	15	\N	\N	2008-05-03 01:09:00	Ben Hutchison	Lounge
217	IMG_7897.jpg	15	\N	\N	2008-05-03 01:09:00	Ben Hutchison	Lounge
220	IMG_7901.jpg	15	\N	\N	2008-05-03 01:09:00	Ben Hutchison	Lounge
221	IMG_7902.jpg	15	\N	\N	2008-05-03 01:10:00	Ben Hutchison	Lounge
222	IMG_7905.jpg	15	\N	\N	2008-05-03 01:11:00	Ben Hutchison	Lounge
223	IMG_7906.jpg	15	\N	\N	2008-05-03 01:11:00	Ben Hutchison	Lounge
224	IMG_7907.jpg	15	\N	\N	2008-05-03 01:12:00	Ben Hutchison	Lounge
226	IMG_7910.jpg	15	\N	\N	2008-05-03 01:14:00	Ben Hutchison	Lounge
227	IMG_7911.jpg	15	\N	\N	2008-05-03 01:14:00	Ben Hutchison	Lounge
228	IMG_7913.jpg	15	\N	\N	2008-05-03 01:17:00	Ben Hutchison	Lounge
229	IMG_7914.jpg	15	\N	\N	2008-05-03 01:18:00	Ben Hutchison	Lounge
230	IMG_7915.jpg	15	\N	\N	2008-05-03 01:18:00	Ben Hutchison	Lounge
231	IMG_7916.jpg	15	\N	\N	2008-05-03 01:20:00	Ben Hutchison	Lounge
232	IMG_7917.jpg	15	\N	\N	2008-05-03 00:00:00	Ben Hutchison	Lounge
233	IMG_7921.jpg	15	\N	\N	2008-05-03 01:21:00	Ben Hutchison	Lounge
234	IMG_7924.jpg	15	\N	\N	2008-05-03 01:22:00	Ben Hutchison	Lounge
235	IMG_7925.jpg	15	\N	\N	2008-05-03 01:22:00	Ben Hutchison	Lounge
236	IMG_7926.jpg	15	\N	\N	2008-05-03 01:22:00	Ben Hutchison	Lounge
237	IMG_7927.jpg	15	\N	\N	2008-05-03 01:22:00	Ben Hutchison	Lounge
238	IMG_7928.jpg	15	\N	\N	2008-05-03 01:22:00	Ben Hutchison	Lounge
239	IMG_7929.jpg	15	\N	\N	2008-05-03 01:23:00	Ben Hutchison	Lounge
240	IMG_7930.jpg	15	\N	\N	2008-05-03 01:23:00	Ben Hutchison	Lounge
241	IMG_7931.jpg	15	\N	\N	2008-05-03 01:24:00	Ben Hutchison	Lounge
242	IMG_7933.jpg	15	\N	\N	2008-05-03 01:25:00	Ben Hutchison	Lounge
243	IMG_7934.jpg	15	\N	\N	2008-05-03 01:25:00	Ben Hutchison	Lounge
244	IMG_7936.jpg	15	\N	\N	2008-05-03 01:26:00	Ben Hutchison	Lounge
245	IMG_7937.jpg	15	\N	\N	2008-05-03 01:26:00	Ben Hutchison	Lounge
246	IMG_7939.jpg	15	\N	\N	2008-05-03 01:28:00	Ben Hutchison	Lounge
247	IMG_7940.jpg	15	\N	\N	2008-05-03 01:30:00	Ben Hutchison	Lounge
248	IMG_7941.jpg	15	\N	\N	2008-05-03 01:32:00	Ben Hutchison	Lounge
249	IMG_7942.jpg	15	\N	\N	2008-05-03 01:32:00	Ben Hutchison	Lounge
250	IMG_7943.jpg	15	\N	\N	2008-05-03 01:34:00	Ben Hutchison	Lounge
251	IMG_7946.jpg	15	\N	\N	2008-05-03 01:43:00	Ben Hutchison	Lounge
252	IMG_7947.jpg	15	\N	\N	2008-05-03 01:43:00	Ben Hutchison	Lounge
253	IMG_7956.jpg	15	\N	\N	2008-05-03 01:44:00	Ben Hutchison	Lounge
254	IMG_7957.jpg	15	\N	\N	2008-05-03 00:00:00	Ben Hutchison	Lounge
255	IMG_7962.jpg	15	\N	\N	2008-05-03 01:47:00	Ben Hutchison	Lounge
256	IMG_7964.jpg	15	\N	\N	2008-05-03 01:49:00	Ben Hutchison	Lounge
257	IMG_7965.jpg	15	\N	\N	2008-05-03 01:49:00	Ben Hutchison	Lounge
258	IMG_7966.jpg	15	\N	\N	2008-05-03 01:50:00	Ben Hutchison	Lounge
259	IMG_7967.jpg	15	\N	\N	2008-05-03 01:52:00	Ben Hutchison	Lounge
260	IMG_7968.jpg	15	\N	\N	2008-05-03 01:52:00	Ben Hutchison	Lounge
261	IMG_7971.jpg	15	\N	\N	2008-05-03 01:54:00	Ben Hutchison	Lounge
262	IMG_7973.jpg	15	\N	\N	2008-05-03 01:55:00	Ben Hutchison	Lounge
263	IMG_7974.jpg	15	\N	\N	2008-05-03 01:55:00	Ben Hutchison	Lounge
264	IMG_7976.jpg	15	\N	\N	2008-05-03 02:08:00	Ben Hutchison	Lounge
265	IMG_7978.jpg	15	\N	\N	2008-05-03 02:10:00	Ben Hutchison	Lounge
266	IMG_7980.jpg	15	\N	\N	2008-05-03 02:13:00	Ben Hutchison	Lounge
267	IMG_7982.jpg	15	\N	\N	2008-05-03 02:14:00	Ben Hutchison	Lounge
268	IMG_7983.jpg	15	\N	\N	2008-05-03 02:15:00	Ben Hutchison	Lounge
272	IMG_0930.jpg	17	The Last Thing You Ever See	Tom Lawler	2008-09-13 22:30:00	Jeffrey Pfau	War Room
275	IMG_0933.jpg	17	Speaker Inspection	Tom Lawler	2008-09-13 22:37:00	Jeffrey Pfau	War Room
276	IMG_0934.jpg	17	Photography photography	Emily	2008-09-13 22:38:00	Jeffrey Pfau	War Room
277	IMG_0935.jpg	17	That hat	Aleks Bromfield	2008-09-13 22:39:00	Jeffrey Pfau	War Room
67	p3210051.jpg	9	\N	\N	2004-03-21 19:52:00	\N	\N
278	img_4797.jpg	18	\N	\N	2008-10-11 21:01:00	Andrew Ayer	War Room
219	IMG_7900.jpg	15		Dylan	2008-05-03 01:09:00	Ben Hutchison	Lounge
218	IMG_7898.jpg	15	Zombie Nation	Kernkraft 400	2008-05-03 01:13:00	Ben Hutchison	Lounge
225	IMG_7909.jpg	15	The best photo of Josh on record	Josh Fuhrmann	2008-05-03 01:13:00	Ben Hutchison	Lounge
279	img_4798.jpg	18	\N	\N	2008-10-11 21:01:00	Andrew Ayer	War Room
280	img_4802.jpg	18	\N	\N	2008-10-11 21:02:00	Andrew Ayer	War Room
273	IMG_0931.jpg	17	Getting ready to DJ	Ben Hutchison, Will Vinci (MC Da Vinci)	2008-09-13 22:34:00	Jeffrey Pfau	War Room
281	img_4809.jpg	18	\N	\N	2008-10-11 21:03:00	Andrew Ayer	War Room
282	img_4810r.jpg	18	\N	\N	2008-10-11 21:03:00	Andrew Ayer	War Room
283	img_4814.jpg	18	\N	\N	2008-10-11 21:05:00	Andrew Ayer	War Room
284	img_4817.jpg	18	\N	\N	2008-10-11 21:07:00	Andrew Ayer	War Room
285	img_4827.jpg	18	\N	\N	2008-10-11 21:15:00	Andrew Ayer	War Room
286	img_4828.jpg	18	\N	\N	2008-10-11 21:15:00	Andrew Ayer	War Room
287	img_4829.jpg	18	\N	\N	2008-10-11 21:15:00	Andrew Ayer	War Room
288	img_4841.jpg	18	\N	\N	2008-10-11 21:18:00	Andrew Ayer	War Room
68	p3210052.jpg	9	\N	\N	2004-03-21 19:53:00	\N	\N
300	img_5500.jpg	19	Wheee!	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
301	img_5501.jpg	19	Victoly	\N	2008-11-17 20:27:00	Brendan Hickey	Lounge
302	img_5502.jpg	19	Y.A.G.P.	\N	2008-11-17 20:27:00	Brendan Hickey	Lounge
303	img_5503.jpg	19	Y.A.Y.A.G.P.	\N	2008-11-17 20:27:00	Brendan Hickey	Lounge
305	img_5505.jpg	19	Hickey's Panorama Attempt I	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
306	img_5506.jpg	19	Hickey's Panorama Attempt II	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
307	img_5507.jpg	19	Hickey's Panorama Attempt III	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
308	img_5509.jpg	19	Hickey's Panorama Attempt IV	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
309	img_5510.jpg	19	Rock Band vs. Despair	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
311	img_5512.jpg	19	The Hoisting	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
312	img_5513.jpg	19	The Hoisting Beta	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
313	img_5514.jpg	19	The Hoisting Gold	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
314	img_5515.jpg	19	The Hoisting 1.0	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
315	img_5516.jpg	19	Let My President Go	\N	2008-11-17 20:28:00	Brendan Hickey	Lounge
316	img_5517.jpg	19	The Rassiratzi	\N	2008-11-17 20:30:00	Brendan Hickey	Lounge
317	img_5518.jpg	19	The Rassiratzi	\N	2008-11-17 20:30:00	Brendan Hickey	Lounge
372	img_6142.jpg	22	\N	Dylan	2009-05-09 03:00:00	Andrew Ayer	First Floor Hallway
373	img_6143.jpg	22	\N	Dylan	2009-05-09 03:00:00	Andrew Ayer	First Floor Hallway
374	img_6144.jpg	22	\N	Dylan	2009-05-09 03:00:00	Andrew Ayer	First Floor Hallway
375	img_6145.jpg	22	Ring Bell for Service: One Long Ring	Sid	2009-05-09 03:00:00	Andrew Ayer	First Floor Hallway
376	img_6146.jpg	22	Laying Down the Law	Dylan, Sid	2009-05-09 03:00:00	Andrew Ayer	First Floor Hallway
377	img_6147.jpg	22	\N	Paul, Paul McCann	2009-05-09 03:00:00	Andrew Ayer	First Floor Hallway
378	img_6148.jpg	22	\N	Nathan, Dylan	2009-05-09 03:01:00	Andrew Ayer	First Floor Hallway
379	img_6149.jpg	22	\N	Sid	2009-05-09 03:05:00	Andrew Ayer	First Floor Hallway
380	img_6150.jpg	22	Junk: Not in My Room	Box containing some Pentiums, VoIP Phone, Wildcard	2009-05-09 03:05:00	Andrew Ayer	First Floor Hallway
381	img_6151.jpg	22	More Junk: Not in My Room	Old X Terminals	2009-05-09 03:05:00	Andrew Ayer	First Floor Hallway
356	imgp1852.jpg	21	\N	Abbie	2009-05-08 16:57:00	Brendan Hickey	Porch
357	imgp1854.jpg	21	\N	Jimmy	2009-05-08 16:57:00	Brendan Hickey	Porch
358	imgp1856.jpg	21	Grilling	Robert	2009-05-08 16:57:00	Brendan Hickey	Porch
359	imgp1863.jpg	21	\N	Jinaabah	2009-05-08 17:05:00	Brendan Hickey	Porch
360	imgp1868.jpg	21	\N	Sid	2009-05-08 17:17:00	Brendan Hickey	Porch
362	imgp1874.jpg	21	\N	Haynes	2009-05-08 17:32:00	Brendan Hickey	Porch
363	imgp1880.jpg	21	\N	Emily	2009-05-08 17:33:00	Brendan Hickey	Porch
364	imgp1887.jpg	21	\N	Jason	2009-05-08 17:43:00	Brendan Hickey	Porch
365	imgp1899.jpg	21	\N	Jon Silverman	2009-05-08 17:51:00	Brendan Hickey	Porch
366	imgp1902.jpg	21	\N	Dan & Jane	2009-05-08 17:51:00	Brendan Hickey	Porch
367	imgp1906.jpg	21	Scary face	Mia	2009-05-08 17:53:00	Brendan Hickey	Porch
368	imgp1919.jpg	21	\N	Ethan	2009-05-08 18:04:00	Brendan Hickey	Porch
369	imgp1922.jpg	21	\N	Aaron Silverman	2009-05-08 18:05:00	Brendan Hickey	Porch
370	imgp1925.jpg	21	\N	Jake	2009-05-08 18:06:00	Brendan Hickey	Porch
371	imgp1930.jpg	21	\N	Mike Kossey, Ethan, Aaron	2009-05-08 18:13:00	Brendan Hickey	Porch
458	100_2234.JPG	24	Floors 2 & 3	\N	2009-12-13 00:01:00	Ben Hutchison	Harkness 001
459	100_2235.JPG	24	Floors 0 & 1	\N	2009-12-13 00:02:00	Ben Hutchison	Harkness 001
460	100_2236.JPG	24	Floor 4 & Roof	\N	2009-12-13 00:02:00	Ben Hutchison	Harkness 001
461	100_2237.JPG	24	Fire System	\N	2009-12-13 00:03:00	Ben Hutchison	Harkness 001
462	100_2238.JPG	24	Floor 4	Jon Sailor's hands	2009-12-13 00:05:00	Ben Hutchison	Harkness 001
463	100_2239.JPG	24	Floors 2 & 3	\N	2009-12-13 00:06:00	Ben Hutchison	Harkness 001
464	100_2240.JPG	24	Floors 0 & 1	\N	2009-12-13 00:06:00	Ben Hutchison	Harkness 001
465	100_2241.JPG	24	Telephone switching	\N	2009-12-13 00:07:00	Ben Hutchison	Harkness 001
466	100_2242.JPG	24	Main breaker	\N	2009-12-13 00:09:00	Ben Hutchison	Harkness 001
467	100_2244.JPG	24	Fire control	\N	2009-12-13 00:09:00	Ben Hutchison	Harkness 001
468	100_2245.JPG	24	Exterior lights	\N	2009-12-13 00:10:00	Ben Hutchison	Harkness 001
395	img_7029.jpg	23	\N	\N	2009-11-01 00:09:00	Robert Mustacchi	Tech House Lounge
396	img_7030.jpg	23	\N	\N	2009-11-01 00:09:00	Robert Mustacchi	Tech House Lounge
397	img_7031.jpg	23	\N	\N	2009-11-01 00:09:00	Robert Mustacchi	Tech House Lounge
304	img_5504.jpg	19	Innocenct Bystander	Lauren Kenney	2008-11-17 20:27:00	Brendan Hickey	Lounge
388	img_7022.jpg	23		People	2009-11-01 00:02:00	Robert Mustacchi	Tech House Lounge
361	imgp1872.jpg	21	Wire all the money, immediately!	Will	2009-05-08 17:43:00	Brendan Hickey	Porch
384	img_7018.jpg	23	\N	Katie, Benedict	2009-10-31 23:59:00	Robert Mustacchi	Tech House Lounge
385	img_7019.jpg	23	\N	Abbie Popa, Ben Hutchison	2009-10-31 23:59:00	Robert Mustacchi	Tech House Lounge
386	img_7020.jpg	23	\N	Jim Liu, Diana Huang, Abbie Popa	2009-11-01 00:00:00	Robert Mustacchi	Tech House Lounge
387	img_7021.jpg	23	SIDEWAYS HEAD	John Hawley, Jeff-master P.	2009-11-01 00:01:00	Robert Mustacchi	Tech House Lounge
389	img_7023.jpg	23	\N	Tom Lawler	2009-11-01 00:03:00	Robert Mustacchi	Tech House Lounge
398	img_7032.jpg	23	\N	Mike Kossey	2009-11-01 00:15:00	Robert Mustacchi	Tech House Lounge
399	img_7033.jpg	23	Yarmalkazi	\N	2009-11-01 00:15:00	Robert Mustacchi	Tech House Lounge
400	img_7034.jpg	23	\N	Jon Silverman, Sid Jain	2009-11-01 00:16:00	Robert Mustacchi	Tech House Lounge
402	img_7036.jpg	23	\N	\N	2009-11-01 00:17:00	Robert Mustacchi	Tech House Lounge
403	img_7037.jpg	23	\N	\N	2009-11-01 00:17:00	Robert Mustacchi	Tech House Lounge
470	DCAM0153.jpg	25	Mat	\N	2008-04-27 15:26:00	Bo Chen	Lounge
471	DCAM0155.jpg	25	Bread	\N	2008-04-27 15:36:00	Bo Chen	Lounge
472	DCAM0156.jpg	25	\N	\N	2008-04-27 15:36:00	Bo Chen	Lounge
475	DCAM0159.jpg	25	Mind Control	Adam Pantel, Kenny Coane, Mat Coughlin	2008-04-27 15:37:00	Bo Chen	Lounge
476	DCAM0160.jpg	25	\N	\N	2008-04-27 15:38:00	Bo Chen	Lounge
477	DCAM0166.jpg	25	Horseplay	\N	2008-04-27 15:52:00	Bo Chen	Lounge
478	DCAM0167.jpg	25	Benedict	\N	2008-04-27 15:53:00	Bo Chen	Lounge
479	DCAM0169.jpg	26	This gun actually works	Tom Lawler, Kenny Coane	2008-05-11 20:52:00	Bo Chen	Work Room
480	DCAM0170.jpg	26	Stand back, I'm not afraid to use it.	\N	2008-05-11 20:52:00	Bo Chen	Work Room
481	DCAM0171.jpg	26	Tom blows Jon away	Jon Silverman, Steven Cole, Tom Lawler, Kenny Coane	2008-05-11 20:52:00	Bo Chen	Work Room
482	DCAM0172.jpg	26	Casualty	\N	2008-05-11 20:52:00	Bo Chen	Work Room
483	P1000469.jpg	27	\N	\N	2007-09-03 14:53:00	Kenny Coane	TH Porch
484	P1000471.jpg	27	\N	\N	2007-09-03 14:54:00	Kenny Coane	TH Porch
485	P1000472.jpg	27	\N	\N	2007-09-03 14:54:00	Kenny Coane	TH Porch
486	P1000473.jpg	27	\N	\N	2007-09-03 14:55:00	Kenny Coane	TH Porch
487	P1000475.jpg	27	\N	\N	2007-09-03 14:55:00	Kenny Coane	TH Porch
488	P1000478.jpg	27	\N	\N	2007-09-03 14:57:00	Kenny Coane	TH Porch
489	P1000479.jpg	27	\N	\N	2007-09-03 14:57:00	Kenny Coane	TH Porch
490	P1000480.jpg	27	\N	\N	2007-09-03 14:57:00	Kenny Coane	TH Porch
491	P1000483.jpg	27	\N	\N	2007-09-03 14:58:00	Kenny Coane	TH Porch
492	P1000485.jpg	27	\N	\N	2007-09-03 14:59:00	Kenny Coane	TH Porch
493	P1000487.jpg	27	\N	\N	2007-09-03 15:00:00	Kenny Coane	TH Porch
494	P1000488.jpg	27	\N	\N	2007-09-03 15:00:00	Kenny Coane	TH Porch
495	P1000489.jpg	27	\N	\N	2007-09-03 15:01:00	Kenny Coane	TH Porch
496	P1000490.jpg	27	\N	\N	2007-09-03 15:01:00	Kenny Coane	TH Porch
497	P1000491.jpg	27	\N	\N	2007-09-03 15:01:00	Kenny Coane	TH Porch
498	P1000492.jpg	27	\N	\N	2007-09-03 15:02:00	Kenny Coane	TH Porch
499	P1000493.jpg	27	\N	\N	2007-09-03 15:02:00	Kenny Coane	TH Porch
500	P1000494.jpg	27	\N	\N	2007-09-03 15:03:00	Kenny Coane	TH Porch
501	P1000495.jpg	27	\N	\N	2007-09-03 15:03:00	Kenny Coane	TH Porch
502	P1000500.jpg	27	\N	\N	2007-09-03 15:07:00	Kenny Coane	TH Porch
503	P1000503.jpg	27	\N	\N	2007-09-03 15:09:00	Kenny Coane	TH Porch
504	P1000504.jpg	27	\N	\N	2007-09-03 15:09:00	Kenny Coane	TH Porch
505	P1000506.jpg	27	\N	\N	2007-09-03 15:10:00	Kenny Coane	TH Porch
506	P1000508.jpg	27	\N	\N	2007-09-03 15:11:00	Kenny Coane	TH Porch
507	P1000509.jpg	27	\N	\N	2007-09-03 15:12:00	Kenny Coane	TH Porch
508	P1000510.jpg	27	\N	\N	2007-09-03 15:13:00	Kenny Coane	TH Porch
509	100_0373.jpg	28	\N	\N	2007-02-27 20:12:00	Ben Hutchison	Stairwell
510	100_0374.jpg	28	Kenny	\N	2007-02-27 20:13:00	Ben Hutchison	Stairwell
511	100_0375.jpg	28	\N	\N	2007-02-27 20:13:00	Ben Hutchison	Stairwell
512	100_0376.jpg	28	\N	\N	2007-02-27 20:13:00	Ben Hutchison	Stairwell
513	100_0378.jpg	28	\N	\N	2007-02-27 20:14:00	Ben Hutchison	Stairwell
514	100_0379.jpg	28	\N	\N	2007-02-27 20:14:00	Ben Hutchison	Stairwell
515	100_0380.jpg	28	\N	\N	2007-02-27 20:14:00	Ben Hutchison	Stairwell
516	100_0381.jpg	28	\N	\N	2007-02-27 20:15:00	Ben Hutchison	Stairwell
517	100_0382.jpg	28	\N	\N	2007-02-27 20:15:00	Ben Hutchison	Stairwell
518	100_0383.jpg	28	\N	\N	2007-02-27 20:15:00	Ben Hutchison	Stairwell
519	100_0384.jpg	28	\N	\N	2007-02-27 20:16:00	Ben Hutchison	Stairwell
520	100_0385.jpg	28	\N	\N	2007-02-27 20:16:00	Ben Hutchison	Stairwell
521	100_0386.jpg	28	\N	\N	2007-02-27 20:16:00	Ben Hutchison	Stairwell
522	100_0387.jpg	28	\N	\N	2007-02-27 20:16:00	Ben Hutchison	Stairwell
523	100_0388.jpg	28	\N	\N	2007-02-27 20:17:00	Ben Hutchison	Stairwell
524	100_0389.jpg	28	\N	\N	2007-02-27 20:17:00	Ben Hutchison	Stairwell
525	DSC02045.jpg	28	\N	\N	2007-02-27 21:13:00	Kenny Coane	Stairwell
526	DSC02046.jpg	28	\N	\N	2007-02-27 21:14:00	Kenny Coane	Stairwell
527	DSC02047.jpg	28	\N	\N	2007-02-27 21:14:00	Kenny Coane	Stairwell
528	DSC02048.jpg	28	\N	\N	2007-02-27 21:14:00	Kenny Coane	Stairwell
529	DSC02049.jpg	28	\N	\N	2007-02-27 21:45:00	Kenny Coane	Stairwell
530	DSC02050.jpg	28	\N	\N	2007-02-27 21:45:00	Kenny Coane	Stairwell
531	DSC02535.jpg	29	\N	\N	2007-10-27 23:30:00	Kenny Coane	Lounge
532	DSC02536.jpg	29	\N	\N	2007-10-27 23:30:00	Kenny Coane	Lounge
533	DSC02537.jpg	29	Max	\N	2007-10-27 23:31:00	Kenny Coane	Lounge
534	DSC02538.jpg	29	\N	\N	2007-10-27 23:31:00	Kenny Coane	Lounge
535	DSC02540.jpg	29	\N	\N	2007-10-27 23:31:00	Kenny Coane	Lounge
536	DSC02543.jpg	29	\N	\N	2007-10-27 23:32:00	Kenny Coane	Lounge
537	DSC02544.jpg	29	\N	\N	2007-10-27 23:32:00	Kenny Coane	Lounge
538	DSC02546.jpg	29	\N	\N	2007-10-27 23:34:00	Kenny Coane	Lounge
540	DSC02548.jpg	29	Max	\N	2007-10-27 23:45:00	Kenny Coane	Lounge
541	DSC02550.jpg	29	\N	\N	2007-10-27 23:47:00	Kenny Coane	Lounge
542	DSC02552.jpg	29	Jason Lee	\N	2007-10-27 23:48:00	Kenny Coane	Lounge
543	DSC02553.jpg	29	Bo	\N	2007-10-27 23:49:00	Kenny Coane	Lounge
544	DSC02554.jpg	29	K. Adam White	\N	2007-10-27 23:49:00	Kenny Coane	Lounge
545	DSC02556.jpg	29	Steve	\N	2007-10-27 23:50:00	Kenny Coane	Lounge
474	DCAM0158.jpg	25		Kenny, Mat	2008-04-27 15:37:00	Bo Chen	Lounge
473	DCAM0157.jpg	25		Kenny, Mat	2008-04-27 15:37:00	Bo Chen	Lounge
469	DCAM0151.jpg	25	Photography	Mat Coughlin	2008-04-27 15:24:00	Bo Chen	Lounge
392	img_7026.jpg	23	Queen of the Night	Abbie Popa	2009-11-01 00:08:00	Robert Mustacchi	Tech House Lounge
394	img_7028.jpg	23	That Heavy's a Spy!	Spy sappin' my baked goods. (Jon Silverman)	2009-11-01 00:08:00	Robert Mustacchi	Tech House Lounge
404	img_7038.jpg	23	\N	??, Roan LaPlante, Josh Brown	2009-11-01 00:19:00	Robert Mustacchi	Tech House Lounge
393	img_7027.jpg	23	\N	Samantha Scudder, Abbie Popa	2009-11-01 00:08:00	Robert Mustacchi	Tech House Lounge
401	img_7035.jpg	23	\N	Kenny Coane	2009-11-01 00:16:00	Robert Mustacchi	Tech House Lounge
405	img_7040.jpg	23	\N	Kenny Coane	2009-11-01 00:22:00	Robert Mustacchi	Tech House Lounge
406	img_7041.jpg	23	\N	Will Vinci, Blanche Case	2009-11-01 00:24:00	Robert Mustacchi	Tech House Lounge
407	img_7042.jpg	23	\N	\N	2009-11-01 00:24:00	Robert Mustacchi	Tech House Lounge
546	DSC02557.jpg	29	\N	\N	2007-10-27 23:50:00	Kenny Coane	Lounge
547	DSC02558.jpg	29	\N	Robert	2007-10-27 23:55:00	Kenny Coane	Lounge
548	DSC02559.jpg	29	The Godhobbit	Robert	2007-10-27 23:56:00	Kenny Coane	Lounge
549	DSC02560.jpg	29	Bo	\N	2007-10-27 23:56:00	Kenny Coane	Lounge
550	DSC02561.jpg	29	\N	\N	2007-10-27 23:58:00	Kenny Coane	Lounge
552	DSC02563.jpg	29	The Hobbit Mafia	Robert	2007-10-27 23:59:00	Kenny Coane	Lounge
553	DSC02564.jpg	29	\N	\N	2007-10-27 23:59:00	Kenny Coane	Lounge
554	DSC02566.jpg	29	Bright	\N	2007-10-28 00:11:00	Kenny Coane	Lounge
555	DSC02567.jpg	29	\N	\N	2007-10-28 00:12:00	Kenny Coane	Lounge
556	DSC02568.jpg	29	\N	\N	2007-10-28 00:13:00	Kenny Coane	Lounge
557	DSC02569.jpg	29	\N	\N	2007-10-28 00:13:00	Kenny Coane	Lounge
558	DSC02570.jpg	29	\N	\N	2007-10-28 00:13:00	Kenny Coane	Lounge
559	DSC02573.jpg	29	\N	\N	2007-10-28 00:23:00	Kenny Coane	Lounge
560	DSC02575.jpg	29	Portal pumpkin	\N	2007-10-28 00:47:00	Kenny Coane	Lounge
561	DSC02576.jpg	29	\N	\N	2007-10-28 00:47:00	Kenny Coane	Lounge
562	DSC02577.jpg	29	\N	\N	2007-10-28 00:47:00	Kenny Coane	Lounge
563	DSC02578.jpg	29	\N	\N	2007-10-28 00:48:00	Kenny Coane	Lounge
564	DSC02579.jpg	29	Max	\N	2007-10-28 01:08:00	Kenny Coane	Lounge
565	DSC02580.jpg	29	Max	\N	2007-10-28 01:08:00	Kenny Coane	Lounge
566	group9798.jpg	30	Techhouse Year 3 (1997~1998) Group Photo. taken with a VERY primtive digital camera. this should be with the yearly photos, ne?	Front Row: Natalie Senter?, Erica Warp?,?,Chloe Mata?,Sophie?,?   Second Row: Dan Shin, Amy Law?, Su's roommate?, Edgar Padilla, Jill's roommate?, Su-Wen Ho, Moran Banai?,Natasha Burger?,?,Stephen?   Third Row: ?, Chris Browne, ?,Eric Neutuch?,?, Ryan Evans, Scott Frazier, Jill Katona?,Brendan?, Mike Coglinese, Greg Getchell, Vivek Kulkarni, ?, Keith Dreibelbis   Fourth Row: ?, Hannah Cohen, ?, Aram Berlandi, Rob Letzler, Bobby?,?, Mahesh	\N	\N	Fall 1997, Lounge
567	pinball.jpg	30	Firepower2, 4:10am, Restoration Finished. a round of beers to celebrate!	Aram Berlandi, Chris Browne, Bobby Smith, Scott Frazier	\N	Keith Dreibelbis	Fall of 1997, workroom, 4:10am
568	dandrinks.jpg	30	Dan with a cocktail. like throwing gasoline on a fire	Dan Shin	\N	\N	\N
569	surprisefringe.jpg	30	First TH Spoofed Photo. a classic in the making...	Jack, Aram, Dan	\N	Leo	\N
570	aramheaven.jpg	30	Aram with some crack. Kai's Power goo turns Aram into Ash	Bruce Campbell	\N	Chris Browne	Aram's House, Summer 1997
571	05_01a.jpg	31	JavaSpook IV people having fun. Niq has had too much coffee?	Rich Niq Beaudrot Keith D	\N	\N	javaspook IV
574	08_04a.jpg	31	Matt, Zach, and Mitch mellow out. our second in-house band	Mitch, Matt Romaine, Zach	\N	\N	javaspook IV
575	09_05a.jpg	31	We only had one pumpkin to carve. so we made it truly Techhouse	Rob Letzler, Nicholas "Nik" Lochmatow, Soren Spies, Dan Morris, Sae Wi, Neel Joshi, Sara P Grady	\N	\N	halloween pumpkin-carving party
576	10_06a.jpg	31	Front porch at a BBQ. those two are pretty smiley	Su-Wen Ho, Kali Wallace, Liz Thompson, Mike Fried, Sara P Grady	\N	\N	BBQ
577	11_07a.jpg	31	BBQ standing up. Lou flashing Portuguese gang signs?	Scott, Nik, Aram, Neel, Lou, Mike, Kenji	\N	\N	BBQ
578	12_08a.jpg	31	Neel and Christy. 	Christy Pacheco, Neel Joshi	\N	\N	BBQ
579	13_09a.jpg	31	Smokey times. hi Sam (and Rob)	Sara P Grady, Rob, Sam Gorstein	\N	\N	BBQ
580	14_10a.jpg	31	look over here! look at me! why is it so late at night?	\N	\N	\N	BBQ
581	15_11a.jpg	31	Smokey Scott. Dan, what are you looking at?	Dan, Nik, Scott	\N	\N	BBQ
582	19_15a.jpg	31	Clear picture of empty cave. 	\N	\N	\N	cave
583	20_16a.jpg	31	Clear picture from the other direction. 	\N	\N	\N	cave
584	21_17a.jpg	31	Techhouse Year 4 group photo. Soren & Bobby think they are special	Ryan, Alyssa, Sara, Su, Kali, Veronica, Liz, Mike, Neel, Rich, Lucas, Bobby, Soren, Nico, Sae, Nik, Sam, Aram, Hesh, Donald, Woody, Rob, Lou, Keith, Edgar, Paul	\N	Christine Waggoner	lounge
585	22_18a.jpg	31	Another of the same. 	\N	\N	\N	\N
586	23_19a.jpg	31	Yet another group photo. 	\N	\N	\N	\N
587	24_20a.jpg	31	Fish?? Where did these fish come from. Hesh??	\N	\N	\N	\N
588	25_21a.jpg	31	pretty orange fish. 	\N	\N	\N	\N
589	26_22a.jpg	31	Is that a fish or a log? 	\N	\N	\N	\N
590	27_23a.jpg	31	Big iMac. 	Christine Waggoner	\N	\N	\N
591	28_24a.jpg	31	Big iMac. 	Mahesh Madhav	\N	\N	\N
593	bobsue.jpg	32	Enter Bobby Sue. Members bring in Bobby Sue, official white trash mobile of the house.	\N	\N	\N	Patriots' Court
594	sf3.jpg	32	Setting Up. Social chair and 104oz master Ryan Evans puts down his bottle to help set up.	\N	\N	\N	\N
595	sf6.jpg	32	Mommy and Daddy. Soren and Kali, "official mommy and daddy" of the house, share a romantic moment. Oh, how sweet!	\N	\N	\N	\N
596	sf8.jpg	32	A Philosophical Moment. House janitor Aram Belandi and alumnus Eric Neutuch ponder the meaning of life.	\N	\N	\N	\N
597	sf4.jpg	32	Anonymous. Boy, this anonymous guest sure is BibekCamera®-shy.	???, Keith Schmidt	\N	Vivek (I'm guessing...)	Winter Semi-Formal
599	sf2.jpg	32	Inflation. House stud Scott has fun blowing things.	\N	\N	\N	\N
600	sf5.jpg	32	Su, Aram and Vivek. 	\N	\N	\N	\N
601	kenji.jpg	33	Kenji Takeuchi. Enjoying brunch at the Ratty	Kenji Takeuchi	\N	Christopher Chin	brunch ratty
602	liz.jpg	33	Liz Thompson. Enjoying a photo-op at the Ratty	elizabeth Thompson	\N	Christopher Chin	ratty
603	dave.jpg	33	David Heller. arriving at the Techhouse BBQ	David Heller	\N	Christopher Chin	porch
604	john.jpg	33	John Leen. The Super Senior	John Leen	\N	Christopher Chin	\N
605	keiths.jpg	33	Keith Schmidt. Non-techhouse member waiting for food	Keith Schmidt	\N	Christopher Chin	barbeque bbq
606	neel.jpg	33	Neel Joshi. Anxious to start up the grill	Neel Joshi	\N	Christopher Chin	barbeque bbq porch
607	brett.jpg	33	Brett Heath-Wlaz. a.k.a 'height-weight' , 'hyphen'	Brett Heath-Wlaz	\N	Christopher Chin	porch
608	john2.jpg	33	John Leen. Holding Senor Kabong	John Leen	\N	Christopher Chin	porch
609	rob.jpg	33	Rob Letzler. pondering the meaning of life	Rob Letzler	\N	Christopher Chin	porch
610	don.jpg	33	Donald Engel. Happy as usual	Donald Engel	\N	Christopher Chin	porch
611	fire.jpg	33	The Tech House Grill. Fire! Fire!	\N	\N	Christopher Chin	grill barbeque bbq
612	liz2.jpg	33	Liz. Still Smilin'	Elizabeth Thompson	\N	Christopher Chin	barbeque bbq
613	kali.jpg	33	Kali Wallace. Madame Presidente	Kali Wallace	\N	Christopher Chin	porch
614	john3.jpg	33	It's John! 	John Leen	\N	Christopher Chin	\N
615	lenny.jpg	33	Lenny. from ADPhi	\N	\N	Christopher Chin	\N
616	sorenlou.jpg	33	Lou, Soren. and some EN164 project	\N	\N	Christopher Chin	\N
617	suzanne.jpg	33	Suzanne Karr. 	\N	\N	Christopher Chin	\N
618	mitfactory.jpg	33	Some MIT Factory. at Swapfest	\N	\N	Christopher Chin	\N
619	james.jpg	33	James Truman. An almost-recruit	\N	\N	Christopher Chin	\N
620	sarafinger.jpg	33	Sara P. Grady. 'Hello thumb! How are you?'	\N	\N	Christopher Chin	\N
621	rachel.jpg	33	Rachel Pepper. Zzzzz...	\N	\N	Christopher Chin	\N
622	kalieat.jpg	33	Kali. Yumm...	\N	\N	Christopher Chin	\N
623	brian2.jpg	33	Brian Chin. No relation, though we live 15 minutes apart	\N	\N	Christopher Chin	\N
572	06_02a.jpg	31	\N	\N	\N	\N	\N
573	07_03a.jpg	31	\N	\N	\N	\N	\N
598	sf7.jpg	32	Zzzzzzzzz... House member Sam, exhausted from partying, stops to take a quiet nap on the dance floor.	\N	\N	\N	\N
624	sukeith.jpg	33	Su and Keith. 	\N	\N	Christopher Chin	\N
625	sam.jpg	33	Sam Gornstein. Future dictator of the universe	\N	\N	Christopher Chin	\N
626	anne.jpg	33	Anne Elizabeth Trafton. 	\N	\N	Christopher Chin	\N
627	sorenkali.jpg	33	Kali and Soren. a.k.a. Mommy and Daddy	\N	\N	Christopher Chin	\N
628	vivek.jpg	33	Vivek Kulkarni. 	\N	\N	Christopher Chin	\N
629	mgb.jpg	33	Michael Boilen. 	\N	\N	Christopher Chin	\N
630	lou.jpg	33	Luis Arruda. Leader of the Tech House Militant Wing	\N	\N	Christopher Chin	\N
631	vivkalneel.jpg	33	Vivek, Kali, and Neel. Enjoying Spring Weekend	\N	\N	Christopher Chin	\N
632	nick.jpg	33	Nick Beaudrot. 'Look Ma, no hands!'	\N	\N	Christopher Chin	\N
633	thflag.jpg	33	The Technology House Flag. Hmm... we should have an anthem	\N	\N	Christopher Chin	\N
634	sarakali.jpg	33	Sara and Kali. 	\N	\N	Christopher Chin	\N
635	rebecca.jpg	33	Rebecca Sadun. 'If you really must...'	\N	\N	Christopher Chin	\N
636	clara.jpg	33	Clara Kim. 	\N	\N	Christopher Chin	\N
637	rachelmike.jpg	33	Rachel and Mike. Don't ask	\N	\N	Christopher Chin	\N
638	mahesh.jpg	33	Mahesh Madhav. 	\N	\N	Christopher Chin	\N
639	robots.jpg	34	Under Construction. Members Soren, Dan, and Neel attempt to give birth to robotic life.	\N	\N	\N	\N
640	elk.jpg	34	Kabong!!! An artist's rendition of El Kabong, Tech House's spiritual leader.	\N	\N	\N	\N
641	gcoop.jpg	34	Tech Time. Tech Girls Extraordinaire Liz and Sara help put together a Chicken Coop for a house community service project.	\N	\N	\N	\N
642	thnew1.jpg	34	Sparks Fly. as member Scoot Frazier saws some bars for the chicken coop.	\N	\N	\N	\N
643	morecoop.jpg	34	Lou and Mahesh try some manly work. but fail miserably until Sara helps out.	\N	\N	\N	\N
644	kabob.jpg	34	A Scrumptous meal at Kabob N' Curry. Don't hide, Jack, 30 Barnes isn't watching...	\N	\N	\N	\N
645	bobbysu.JPG	34	Soren and Su lounge out on 1/2 truck Bobby Su. while Lou gratuitously waves a 68K powered Mac + motherboard in honor of the EN 164 pimpz. Soren has rigged the laptop as a VT so he can be productive in the sun.	\N	\N	\N	\N
646	forest.JPG	34	Soren's friend Forest visits Brown. and enjoys breakfast at the Ratty with Vivian Tang '01 of Harkness.	\N	\N	\N	\N
647	forest_posed.JPG	34	Soren, Forest, and Rob smile for the camera. 	\N	\N	\N	\N
648	niks_room_commencement_week.JPG	34	Soren and Dan have died and gone to Geek Heaven. Here they are during Commencement Week in Nik's room, with four computers.	\N	\N	\N	\N
649	group.jpg	35	Tunnel Explorers. 	\N	\N	Christopher Chin	\N
650	flies.jpg	35	Swarm of Flies. Outside the tunnel	\N	\N	Christopher Chin	\N
651	bump.jpg	35	Cave Bump. Solidified water drip	\N	\N	Christopher Chin	\N
652	shroom.jpg	35	It's a Shroom! Natural Tunnel Lifeform	\N	\N	Christopher Chin	\N
653	bump2.jpg	35	Big Cave Bump. Ewwww!!	\N	\N	Christopher Chin	\N
654	graf.jpg	35	Tunnel Graffiti. 	\N	\N	Christopher Chin	\N
655	hole.jpg	35	Staring at a Hole. 'I'm not goin' up there'	\N	\N	Christopher Chin	\N
656	cavetronics.jpg	35	Cave-tronics. This tunnel is our destiny	\N	\N	Christopher Chin	\N
657	nik.jpg	35	Nik Lochmatow. Russian Royalty	\N	\N	Christopher Chin	\N
658	groupwoods.jpg	35	Post Tunnel Exploration. 	\N	\N	Christopher Chin	\N
659	sae.jpg	35	Sae Wi. Say what?	\N	\N	Christopher Chin	\N
660	kenji2.jpg	35	Kenji. Post exploration march	\N	\N	Christopher Chin	\N
661	scott2.jpg	35	Scott. That tunnel was fun	\N	\N	Christopher Chin	\N
662	rebeccahydrant.jpg	35	Mr. Fire Hydrant and Rebecca. 	\N	\N	Christopher Chin	\N
663	heshbrett.jpg	35	Mahesh and Brett. 	\N	\N	Christopher Chin	\N
664	scott.jpg	36	Scott Frazier. Servin' 'em up at the Spring Semiformal	\N	\N	Christopher Chin	\N
665	keithsuz.jpg	36	Keith and Suzanne. at the Spring Semiformal	\N	\N	Christopher Chin	\N
666	rachelmit.jpg	36	Rachel and Eric. from MIT and the state of Maryland	\N	\N	Christopher Chin	\N
667	vivian.jpg	36	Vivian and Junghan. at the Spring Semiformal	\N	\N	Christopher Chin	\N
668	semiformal.jpg	36	Prelude to the Can-can. at the Spring Semiformal	\N	\N	Christopher Chin	\N
669	dan.jpg	36	Dan Morris. The Piano Man	\N	\N	Christopher Chin	\N
670	mikepiano.jpg	36	Mike Fried. The Piano Man	\N	\N	Christopher Chin	\N
671	rachelmike2.jpg	36	Rachel and Mike. Camera shy	\N	\N	Christopher Chin	\N
672	flag2.jpg	37	The Flag-Raising. Preparations	Kali Wallace, Soren Spies, and Brett Heath-Wlaz	\N	John Leen	Soren's room
673	flag1.jpg	37	The Flag-Raisers Smile for the Camera. 	Kali Wallace, Soren Spies, and Brett Heath-Wlaz	\N	John Leen	Soren's room
674	flag4.jpg	37	Hoisting the Flag. 	Kali Wallace and Soren Spies	\N	John Leen	\N
675	flag5.jpg	37	Tying the Flag. concludes our flag-raising ceremony	Soren Spies	\N	John Leen	\N
676	ether.jpg	37	Making Ethernet Cable. to raise project funds	Kali Wallace, David Heller, and Stephen Chen	\N	John Leen	lounge
677	fountain3.jpg	37	The Official Tech House Fountain. built during Orientation week	\N	\N	John Leen	\N
678	fountain1.jpg	37	The Fountain. sits on our porch next to Bobby-Sue	\N	\N	John Leen	\N
679	hover5.jpg	37	Flight of the Hovercraft. (yes, it's a real hovercraft)	Don Engel, Soren Spies, David Heller, Kali Wallace (in background)	\N	John Leen	\N
680	hover1.jpg	37	David Boards the Hovercraft. 	David Heller, Soren Spies	\N	John Leen	\N
681	hover2.jpg	37	Flight of the Hovercraft II. David rides the craft home	David Heller, Soren Spies, Don Engel	\N	John Leen	\N
682	fountain2.jpg	37	Working on the Fountain. 	Keith Dreibelbis, Mike Boilen, Chris Mastrangelo, Soren Spies, and Lou Arruda	\N	John Leen	\N
683	library.jpg	37	Chaos Reigns Supreme. in the Tech House Library	Nick Beaudrot	\N	John Leen	\N
684	blimp1.jpg	37	The Official Tech House Blimp. courtesy of Jeff Alexander	\N	\N	John Leen	lounge
685	blimp2.jpg	37	Chris and the Blimp. 	Chris Mastrangelo	\N	John Leen	lounge
686	chess8.jpg	38	Ratty Chess. Yes, it's a chess board made out of cafeteria stuff.	\N	\N	John Leen	\N
687	chess2.jpg	38	In One Corner... contestant Mike Plotz	\N	\N	John Leen	\N
688	chess5.jpg	38	In the Other Corner... contestant Don Engel	\N	\N	John Leen	\N
689	chess1.jpg	38	Don Makes a Move. 	Don Engel	\N	John Leen	\N
690	chess3.jpg	38	Opening Moves. 	\N	\N	John Leen	\N
691	chess6.jpg	38	The Ratty Supervisor Looks On. as the game progresses	\N	\N	John Leen	\N
692	PA280001.JPG	39	Don working. looks like EN163	Don Engel	\N	\N	\N
778	PB070071.JPG	42	Wire Balance in Pairs. Brett and Kali	\N	\N	\N	\N
693	PA280002.JPG	39	Sam is an alien. looming down on the second floor	Sam Gorstein	\N	\N	second floor
694	PA280003.JPG	39	Sam looking for Nik. scratching neck	Sam Gorstein	\N	\N	second floor
695	PA280004.JPG	39	Nik opens his door. he's talking on the phone	Nik Lochmatow	\N	\N	his 2nd floor room junior year
696	PA280005.JPG	39	Kenji outside his room. tucking in his shirt	Kenji	\N	\N	2nd floor SII 1999
697	PA280007.JPG	39	Don w/colorized pine. and a nifty flatscreen!	Don Engel	\N	\N	\N
700	PA310001.JPG	40	Suzanne, Brett, Curran. Brett is Neo	Suzanne Karr, Brett Heath-Wlaz, Curran Nachbar	\N	\N	\N
701	PA310002.JPG	40	Suzanne, Brett, Curran again. 	Suzanne Karr, Brett Heath-Wlaz, Curran Nachbar	\N	\N	\N
702	PA310003.JPG	40	Goodbye, Mr. Height Weight. My Name... is Heath-Wlaz!	Brett Heath-Wlaz	\N	\N	\N
703	PA310004.JPG	40	Dan's room. stinter flyers aplenty	Dan Morris, Ryan Evans	\N	\N	\N
704	PA310005.JPG	40	Dan's room. 	Ryan Evans, Neel Joshi	\N	\N	\N
705	PA310006.JPG	40	Brett & Curran. 	Brett Heath-Wlaz, Curran Nachbar	\N	\N	\N
706	PA310008.JPG	40	Suzanne. 	Suzanne Karr	\N	\N	\N
707	PA310009.JPG	40	Fluble groupies. Chris draws his comic	Chris Mastrangelo, Sam Gorstein, John Leen	\N	\N	\N
708	PA310010.JPG	40	Liz. 	Elizabeth Thompson	\N	\N	\N
709	PA310011.JPG	40	Steve Chen. he shoots, he scores	Steven Chen	\N	\N	\N
710	PA310012.JPG	40	Heshwalla. the hardware badass	Mahesh Madhav	\N	\N	\N
711	PA310013.JPG	40	Pumpkin. No, not Catherine Yang	Bobby Su	\N	\N	\N
712	Don_eating.JPG	41	Don Eating. yum	Sae Wi, Don Engel	\N	\N	\N
713	Chairman.JPG	41	The chairman dances. 	A mysterious gatecrasher	\N	\N	\N
714	Klezmer.JPG	41	Yamukazi. A fun klezmer band	\N	\N	\N	\N
715	Mike_Plotz.JPG	41	Mike Plotz. 	Mike Plotz	\N	\N	\N
716	PA290003.JPG	41	Chris. 	Chris Mastrangelo	\N	\N	\N
717	PB070001.JPG	42	Signing waivers before leaving. 	\N	\N	\N	\N
718	PB070004.JPG	42	Soren. 	\N	\N	\N	\N
719	PB070005.JPG	42	Niq hasn't had coffee yet... 	\N	\N	\N	\N
720	PB070006.JPG	42	mbf. 	\N	\N	\N	\N
721	PB070007.JPG	42	Chris M. 	\N	\N	\N	\N
722	PB070008.JPG	42	Brett. 	\N	\N	\N	\N
723	PB070009.JPG	42	Creek. 	\N	\N	\N	\N
724	PB070010.JPG	42	Creek. 	\N	\N	\N	\N
725	PB070012.JPG	42	Arrival. Soren threatens to tackle the human knot	\N	\N	\N	\N
726	PB070013.JPG	42	Human Knot. 	\N	\N	\N	\N
727	PB070014.JPG	42	View from inside the human knot. a cool photo, bravo!	Nick Beaudrot, Kali Wallace (to his right), Lou Arruda (above Nick)	\N	\N	\N
728	PB070015.JPG	42	thbbbt. 	Soren Spies	\N	\N	\N
729	PB070016.JPG	42	Out on the grass. 	\N	\N	\N	\N
730	PB070017.JPG	42	Out on the grass. 	\N	\N	\N	\N
731	PB070018.JPG	42	Out on the grass. 	\N	\N	\N	\N
732	PB070019.JPG	42	Out on the grass. 	\N	\N	\N	\N
733	PB070020.JPG	42	Out on the grass. 	\N	\N	\N	\N
734	PB070021.JPG	42	Out on the grass. 	\N	\N	\N	\N
735	PB070022.JPG	42	Out on the grass. 	\N	\N	\N	\N
736	PB070023.JPG	42	Out on the grass. 	\N	\N	\N	\N
737	PB070024.JPG	42	Walking to the course. 	\N	\N	\N	\N
738	PB070025.JPG	42	Walking to the course. 	\N	\N	\N	\N
739	PB070027.JPG	42	Silhouettes. brett, and someone else?	\N	\N	\N	\N
740	PB070028.JPG	42	Lou. 	\N	\N	\N	\N
741	PB070030.JPG	42	Nik and Chris? can't really tell	\N	\N	\N	\N
742	PB070031.JPG	42	mbf. 	Mike Fried	\N	\N	\N
743	PB070032.JPG	42	They had some really old VT-looking things. Soren was tempted to steal one	Soren Spies	\N	\N	\N
744	PB070033.JPG	42	kd. 	Keith Dreibelbis	\N	\N	\N
745	PB070034.JPG	42	mike is weird. During spotting training	\N	\N	\N	\N
746	PB070035.JPG	42	mike's weirdness is contagious. 	\N	\N	\N	\N
747	PB070036.JPG	42	Balance walking on a hanging log. Lou	\N	\N	\N	\N
748	PB070037.JPG	42	Balance walking on a hanging log. Brett	\N	\N	\N	\N
749	PB070038.JPG	42	Balance walking on a hanging log. Kali	\N	\N	\N	\N
750	PB070039.JPG	42	Balance walking on a hanging log. Mike	\N	\N	\N	\N
751	PB070040.JPG	42	Balance walking on a hanging log. Keith	\N	\N	\N	\N
752	PB070041.JPG	42	Balance walking on a hanging log. Keith	\N	\N	\N	\N
753	PB070042.JPG	42	Balance walking on a hanging log. Nik	\N	\N	\N	\N
754	PB070043.JPG	42	Balance walking on a hanging log. Rachel	\N	\N	\N	\N
755	PB070044.JPG	42	Balance walking on a hanging log. Niq	\N	\N	\N	\N
756	PB070045.JPG	42	Balance walking on a hanging log. Chris	\N	\N	\N	\N
757	PB070047.JPG	42	Balance on a log long enough to sing row row row your boat. singing very, very quickly	\N	\N	\N	\N
758	PB070048.JPG	42	Balance on a log long enough to sing row row row your boat. 	\N	\N	\N	\N
759	PB070049.JPG	42	Balance on a log long enough to sing row row row your boat. 	\N	\N	\N	\N
760	PB070050.JPG	42	Balance on a log long enough to sing row row row your boat. Solar Flare!	\N	\N	\N	\N
761	PB070052.JPG	42	Group of guys. 	Chris Mastrangelo, Mike Fried, Don Engel, Lou Arruda	\N	\N	\N
762	PB070053.JPG	42	Talking about the experience. 	\N	\N	\N	\N
763	PB070054.JPG	42	Kali and Rachel. 	Kali Wallace, Rachel Pepper	\N	\N	\N
764	PB070055.JPG	42	Group of guys. 	Lou Arruda, Brett Heath-Wlaz, Nick Beaudrot, Soren Spies	\N	\N	\N
765	PB070056.JPG	42	Carving. 	\N	\N	\N	\N
766	PB070057.JPG	42	Keith & Kali. 	Keith Dreibelbis, Kali Wallace	\N	\N	\N
767	PB070060.JPG	42	Chris M. 	Chris Mastrangelo	\N	\N	\N
768	PB070061.JPG	42	Wire Balance in Pairs. Lou and Keith	\N	\N	\N	\N
769	PB070062.JPG	42	Wire Balance in Pairs. Lou and Keith	\N	\N	\N	\N
770	PB070063.JPG	42	Wire Balance in Pairs. Niq and Don	\N	\N	\N	\N
771	PB070064.JPG	42	Wire Balance in Pairs. Niq and Don	\N	\N	\N	\N
772	PB070065.JPG	42	Wire Balance in Pairs. Niq and Don	\N	\N	\N	\N
773	PB070066.JPG	42	Wire Balance in Pairs. Niq and Don	\N	\N	\N	\N
774	PB070067.JPG	42	Wire Balance in Pairs. Brett and Kali	\N	\N	\N	\N
775	PB070068.JPG	42	Wire Balance in Pairs. Brett and Kali	\N	\N	\N	\N
776	PB070069.JPG	42	Wire Balance in Pairs. Brett and Kali	\N	\N	\N	\N
777	PB070070.JPG	42	Wire Balance in Pairs. Brett and Kali	\N	\N	\N	\N
69	p3210053.jpg	9	\N	\N	2004-03-21 19:53:00	\N	\N
698	PA280010.JPG	39	Don's Smiley Mug, on top of his speaker	\N	\N	\N	\N
779	PB070072.JPG	42	Portrait of a Dragonmaster. 	Lou Arruda	\N	\N	\N
780	PB070073.JPG	42	Wire Balance in Pairs. Chris and Mike	\N	\N	\N	\N
781	PB070074.JPG	42	Wire Balance in Pairs. Chris and Mike	\N	\N	\N	\N
782	PB070077.JPG	42	Wire Balance in Pairs. Soren and Nik	\N	\N	\N	\N
783	PB070078.JPG	42	Our guides/leaders. 	\N	\N	\N	\N
784	PB070079.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
785	PB070080.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
786	PB070081.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
787	PB070082.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
788	PB070083.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
789	PB070084.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
790	PB070085.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
791	PB070086.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
792	PB070087.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
793	PB070088.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
794	PB070089.JPG	42	Our guides/leaders. Aren't they cute?  ;)	\N	\N	\N	\N
795	PB070090.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
796	PB070091.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
797	PB070092.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
798	PB070093.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
799	PB070094.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
800	PB070095.JPG	42	Nik Carves. 	Nik Lochmatow	\N	\N	\N
801	PB070096.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
802	PB070097.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
803	PB070098.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
804	PB070099.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
805	PB070100.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
806	PB070101.JPG	42	Team Wire Balancing. 	\N	\N	\N	\N
807	PB070102.JPG	42	Walking to the Trust Fall. 	\N	\N	\N	\N
808	PB070103.JPG	42	Walking to the Trust Fall. 	\N	\N	\N	\N
809	PB070104.JPG	42	Walking to the Trust Fall. 	\N	\N	\N	\N
810	PB070105.JPG	42	Trust Fall. 	\N	\N	\N	\N
811	PB070106.JPG	42	Trust Fall. 	\N	\N	\N	\N
812	PB070107.JPG	42	Trust Fall. 	\N	\N	\N	\N
813	PB070108.JPG	42	Trust Fall. 	\N	\N	\N	\N
814	PB070109.JPG	42	Keith climbs a tree. 	Keith Dreibelbis	\N	\N	\N
815	PB070110.JPG	42	Keith climbs a tree. 	Keith Dreibelbis	\N	\N	\N
816	PB070111.JPG	42	Keith climbs a tree. 	Keith Dreibelbis	\N	\N	\N
817	PB070112.JPG	42	Keith climbs a tree. 	Keith Dreibelbis	\N	\N	\N
818	PB070113.JPG	42	Mike clings to a tree. 	Mike Fried	\N	\N	\N
819	PB070114.JPG	42	Blurry Brett. 	\N	\N	\N	\N
820	PB070115.JPG	42	Chris M. 	Chris Mastrangelo	\N	\N	\N
821	PB070116.JPG	42	Walking back. 	\N	\N	\N	\N
822	PB070117.JPG	42	Walking back. 	\N	\N	\N	\N
823	PB070118.JPG	42	Walking back. 	\N	\N	\N	\N
824	PB070119.JPG	42	Walking back. 	\N	\N	\N	\N
825	PB070120.JPG	42	Walking back. 	\N	\N	\N	\N
826	PB070121.JPG	42	Walking back. 	\N	\N	\N	\N
827	PB070123.JPG	42	Niq. cold?	\N	\N	\N	\N
828	PB070124.JPG	42	Cart. Harley Davidson	Nik Lochmatow, Mike Fried, Lou Arruda, Soren Spies	\N	\N	\N
829	PB070125.JPG	42	Exodus. 	\N	\N	\N	\N
831	PB160067.JPG	43	John's birthday cake. from a safe distance	\N	\N	\N	\N
832	PB160068.JPG	43	Blowing out the candles. 21 of them... gee, our webmaster feels old.	John Leen	\N	\N	\N
833	PB210001.JPG	44	People outside. 	\N	\N	\N	\N
834	PB210002.JPG	44	Sam. 	John Leen, Chris Chin, Sam Gorstein, Vadim Slavin	\N	\N	\N
835	PB210003.JPG	44	Dragonmaster and Dribbs. Techhouse geezers	Lou Arruda, Keith Dreibelbis	\N	\N	\N
836	PB210004.JPG	44	Becula and Resident Skeptic. 	Beca Erickson, Brett Cohen	\N	\N	\N
837	PB210005.JPG	44	Manly men doing manly BBQ. with manly blue hair...	Neel Joshi, Mike Boilen	\N	\N	\N
838	PB210006.JPG	44	People outside. 	\N	\N	\N	\N
839	PB210007.JPG	44	Alyssa. c'mere with that camera, you, you...	Alyssa Letourneau, Ryan Evans	\N	\N	\N
840	PB210008.JPG	44	kas and skarr are both tired? 	\N	\N	\N	\N
841	PB210009.JPG	44	Miriam & Niq. before her buzzcut	\N	\N	\N	\N
842	PB210010.JPG	44	People outside. 	Lou Arruda, Mike Boilen, Jordan Feil, Chris Mastrangelo, Sarah Hill, Miriam Goldberg, Nick Beaudrot	\N	\N	\N
843	PB210011.JPG	44	More BBQ manliness. soren w/food of course	Keith Dreibelbis, Neel Joshi, Soren Spies	\N	\N	\N
844	PB210012.JPG	44	Niq. 	Nick Beaudrot	\N	\N	\N
845	PB210013.JPG	44	Niq. 	Nick Beaudrot	\N	\N	\N
846	PB210014.JPG	44	Niq. 	Nick Beaudrot	\N	\N	\N
847	PB210015.JPG	44	John & Chris. 	John Leen, Chris Mastrangelo	\N	\N	\N
848	PB210016.JPG	44	Mike smiles evilly. if you could juggle fire, you would too	Mike Plotz	\N	\N	\N
849	PB220009.JPG	45	Chris M. 	Chris Mastrangelo	\N	\N	\N
850	PB220010.JPG	45	Cake of Dessstiny. 	\N	\N	\N	\N
851	PB220011.JPG	45	Cake of Dessstiny. 	\N	\N	\N	\N
852	PB220012.JPG	45	Guests. 	\N	\N	\N	\N
853	PB220013.JPG	45	Sam. The Cat	Sam Gorstein	\N	\N	\N
854	PB220014.JPG	45	Lots of people. 	\N	\N	\N	\N
855	PB220015.JPG	45	Mmm, cake. 	Chris Mastrangelo, John Leen	\N	\N	\N
856	PB220016.JPG	45	More cake. 	John Leen, Chris Mastrangelo	\N	\N	\N
857	PB220017.JPG	45	Party Guests. 	Mike Plotz	\N	\N	\N
858	PB220018.JPG	45	"It's a Cookbook!!!". Chris reacts to being given fluble.com	\N	\N	\N	\N
859	PC090017.JPG	46	Woz at Techhouse's electronics bench. 	\N	\N	Soren	\N
860	PC090018.JPG	46	Woz poses with TH people in the workroom (which of 2 better). 	\N	\N	Soren	\N
862	PC090020.JPG	46	Woz signs the rumpus room's Mac Plus VT. Jeff A, who donated said Mac Plus, was ecstatic	\N	\N	Soren	\N
863	PC090021.JPG	46	Woz + TH members head to Au Bon Pain. 	\N	\N	Soren	\N
864	PC090022.JPG	46	Woz hangs out in the TH lobby. 	\N	\N	Soren	\N
865	PC110001.JPG	47	Hallway. 	Curran Nachbar, Chris Mastrangelo	\N	\N	\N
866	PC110002.JPG	47	Hallway. 	Curran Nachbar, Brett Heath-Wlaz, Chris Mastrangelo	\N	\N	\N
867	PC110003.JPG	47	Lots of people eating in the lounge. 	\N	\N	\N	\N
868	PC110004.JPG	47	again. 	\N	\N	\N	\N
869	PC110005.JPG	47	lots of food. 	Jordan Feil, Mahesh Madhav, Keith Dreibelbis	\N	\N	\N
830	PB160065.JPG	43	Words of Wisdom from www.timecube.com adorn John's birthday cake	\N	\N	\N	\N
870	PC110006.JPG	47	Kenji and Sae. 	Kenji Takeuchi, Sae Wi	\N	\N	\N
871	PC110007.JPG	47	Blue hair. and kali	\N	\N	\N	\N
872	PC110008.JPG	47	with live a capella performance by stinter. ...not	\N	\N	\N	\N
873	PC110009.JPG	47	Rachel. purple sock	Rachel Pepper	\N	\N	\N
874	PC110011.JPG	47	i'm not captioning in all of these people :P. 	\N	\N	\N	\N
875	PC110012.JPG	47	Cake. or pie	\N	\N	\N	\N
876	PC110013.JPG	47	more people. 	\N	\N	\N	\N
877	PC110014.JPG	47	Soren. show me the food	Soren Spies	\N	\N	\N
878	PC110015.JPG	47	Sign. says "steve friggin' wozniak will not be at the end of year dinner, but you should come anyways..."(paraphrase)	\N	\N	\N	\N
879	PC110016.JPG	47	neel's door. 	\N	\N	\N	\N
880	PC110017.JPG	47	dan's door. 	\N	\N	\N	\N
881	PC110020.JPG	47	lounge full of people. 	\N	\N	\N	\N
882	PC110021.JPG	47	blue hair is non-flammable? safe distance anyway	Kali Wallace, Neel Joshi	\N	\N	\N
883	PC110022.JPG	47	people. 	\N	\N	\N	\N
884	PC110023.JPG	47	lou, jleen and mbf. 	\N	\N	\N	\N
885	PC110024.JPG	47	mike plotz. 	\N	\N	\N	\N
886	PC110025.JPG	47	soren. 	\N	\N	\N	\N
887	PC110026.JPG	47	curran and brett. 	\N	\N	\N	\N
888	arcade.corner.jpg	48	Video game and pinball. The Jamma machine has Street Fighter 2	\N	\N	\N	\N
889	balsafoam.mess1.jpg	48	The workroom is a mess! 	\N	\N	\N	\N
890	balsafoam.mess2.jpg	48	Messy workroom. 	\N	\N	\N	\N
891	fire.juggle2.jpg	48	View outside the flag room. Uh oh, Mike is juggling fire again	\N	\N	\N	\N
892	libwhiteboard.jpg	48	Neel and Sam in the TH library. Hehe, I saw the filename, and thought "libwhiteboard.so"	\N	\N	\N	\N
893	loungeVT.jpg	48	Mac Plus VT in the lounge. For certain users, logging in would activate the train via X-10	\N	\N	\N	\N
894	magpoboard.jpg	48	Magnetic poetry board! Successful project led by the amazing Sara P Grady!	\N	\N	\N	\N
895	mikep.juggles.fire.jpg	48	More fire juggling. Careful, Mike!	\N	\N	\N	\N
896	nik.grin.basehallway.jpg	48	Nik. is very happy about something..	\N	\N	\N	\N
897	nik.painting.jpg	48	Nik Painting. a model vehicle he built	\N	\N	\N	\N
898	niq.jsf.jamma.jpg	48	Niq and Jordan at the Jamma. Shoryu-ken!	\N	\N	\N	\N
899	not.trapeze.jpg	48	Bastille frame guide. writing says "This is not a trapeze"	\N	\N	\N	\N
900	recruit.upclose.jpg	48	Travis. needs more sleep	\N	\N	\N	\N
901	rumpusVT.jpg	48	Mac Plus VT in the rumpus room. signed by Woz!	\N	\N	\N	\N
902	fish.jpg	48	Fish Tank. 	\N	\N	\N	\N
903	workroom_hall.jpg	48	Hall outside the workroom. That device on the right is the water fountain project, in progress	\N	\N	\N	\N
904	wozVT.jpg	48	Closeup of the Woz VT. It's inspiring	\N	\N	\N	\N
905	P2040028.JPG	49	pickle. 	\N	\N	\N	\N
906	P2040029.JPG	49	pickle. 	\N	\N	\N	\N
907	P2040030.JPG	49	The Fun Begins. Pickle Executioner Soren prepares to carry out his duty.	\N	\N	\N	\N
908	pickle.soren.jpg	49	UL Approved. Don't try this at home -- we're professionals.	\N	\N	\N	\N
909	post.pickle.jpg	49	A Happy Moment. We laugh as the pickle fries	Travis Crump, Liz Thompson, Kali Wallace, John Leen, Mike Plotz, Chris Mastrangelo	\N	\N	Picklemania
910	P2050040.JPG	50	Niq. breaks wood	\N	\N	\N	\N
911	P2050041.JPG	50	Niq. really likes breaking wood	\N	\N	\N	\N
912	P2050042.JPG	50	Soren. saws some wood	\N	\N	\N	\N
913	P2050043.JPG	50	Soren. camera is dirty	\N	\N	\N	\N
914	P2050044.JPG	50	The saw is handy. though it makes a mess	\N	\N	\N	\N
915	P2050045.JPG	50	Sawdust mess. The front part looks like an image of fishman.. a miracle?	\N	\N	\N	\N
916	chrism.clara.god.jpg	50	Frame guide for bastille. the words say something to the effect of "these measurements are god"	\N	\N	\N	\N
917	curran.sae.break.pallet.jpg	50	More pallet breaking. 	\N	\N	\N	\N
918	P2110001.JPG	51	Long Way Down. House members and recruits admire the carnage	Nick Beaudrot, Clara Kim, ?, David Eigen	\N	\N	Drop Night
919	P2110002.JPG	51	Technology is a Beautiful Thing. Nick prepares to send a PC to meet its maker	\N	\N	\N	\N
920	P2110006.JPG	51	What a Dump! The little keys that have broken off the keyboard are particularly cute.	\N	\N	\N	Drop Night
921	P2110005.JPG	51	Paying Respects. Admiring the wreckage below	John Leen, David Eigen	\N	\N	\N
922	P2110007.JPG	51	More Dump. The 486 has just about had it.	\N	\N	\N	Drop Night
923	P2110009.JPG	51	Take That, MCM! Launching a symbol of the times on its final journey	Jordan Feil, a television, and Nick Beaudrot	\N	\N	Drop Night
924	P2110010.JPG	51	Going, going... 	Jordan Feil, Nick Beaudrot	\N	\N	\N
925	P2110016.JPG	51	Gone! The TV has passed on to that big family room in the sky.	\N	\N	\N	Drop Night
926	P2110012.JPG	51	Uh, I thought I heard a bump. Sam investigates the commotion.	Sam Gorstein	\N	\N	Drop Night
927	P2110015.JPG	51	Yes, the television is really dead. 	\N	\N	\N	Drop Night
928	P2110017.JPG	51	Getting Medieval. Clara prepares to finish off the poor computer	Clara Kim	\N	\N	Drop Night
929	P2110018.JPG	51	Wreckage. 	\N	\N	\N	Drop Night
930	P2110019.JPG	51	Laying Down the Law. A very demonic Soren tells the laptop who's boss	Soren Spies	\N	\N	\N
931	P2110020.JPG	51	A Thoughtful Moment. Soren inspects the laptop's corpse	\N	\N	\N	Drop Night
932	breadboard-and-keyboard.jpg	52	A Prototype Circuit. Crude but effective	\N	\N	\N	\N
933	brett-soldering.jpg	52	Brett Solders. One of our first production-quality controllers	Brett Heath-Wlaz	\N	\N	\N
934	brett-vise.jpg	52	Brett and the Vise. He seems to enjoy it a little too much.	Brett Heath-Wlaz	\N	\N	\N
935	cchin-snes.jpg	52	The Wireless Controller. Now being modelled by Chris Chin	Chris Chin (hands), Kali Wallace and Soren Spies (decapitated)	\N	\N	\N
936	celebrate.jpg	52	Cause for Celebration. A completed controller board!	\N	\N	\N	\N
937	circuits-and-keyboard.jpg	52	Mass Production. of the per-floor controller boards	\N	\N	\N	\N
938	clara-stringing.jpg	52	Along the Radiator... Clara Kim strings cable	\N	\N	\N	\N
939	clara-whiteboard.jpg	52	La Resistance HQ. Clara stands in front of our master plan	Clara Kim	\N	\N	Tech House lobby
940	controller-board.jpg	52	Perfection. The final version of our floor controllers.	\N	\N	\N	\N
941	controller-shrine.jpg	52	The Shrine. houses our finished controllers.	\N	\N	\N	\N
942	crimped-cables.jpg	52	Lots of Cables. ready to be attached to lights	\N	\N	\N	\N
943	critter-and-code.jpg	52	A Circuit-Board Critter. The screen displays our bus protocol.	\N	\N	\N	\N
944	curran-stringing.jpg	52	Along the Wall... Curran strings cable	Curran Nachbar	\N	\N	\N
945	down-the-corridor.jpg	52	Down the Corridors... Our data wires snake down the library halls.	\N	\N	\N	\N
946	finished-bundle.jpg	52	One down, sixty to go... A pair of frames with relays attached	\N	\N	\N	\N
947	finished-frames.jpg	52	Ten Thousand Christmas Lights. Ready to be transported to the Sci Li	\N	\N	\N	\N
948	finished-relay.jpg	52	A Soldered Relay. controls each strand of lights	\N	\N	\N	\N
949	gratuitous-oscilloscope.jpg	52	Gratuitous Oscilloscope. Never do an electronics project without one!	\N	\N	\N	\N
950	group.jpg	52	Happy Workers. who have been up way too late	\N	\N	\N	\N
951	mikef-critter.jpg	52	Mike and Friend. 	Mike Fried	\N	\N	\N
952	mikef-stringing.jpg	52	Up to the Ceiling... Mike Fried strings cables	\N	\N	\N	\N
953	mikef-zombie.jpg	52	Mike looks dazed. from overwork and sleeplessness	\N	\N	\N	\N
954	mikep-stringing.jpg	52	Through some tight spaces... Mike Plotz strings cable	\N	\N	\N	\N
955	neel-circuit.jpg	52	Neel Shows Off. his breadboard	Neel Joshi	\N	\N	\N
956	nik-crimping.jpg	52	Nik at Work. on a circuit	Nicholas Lochmatow	\N	\N	\N
957	people-crimping.jpg	52	Crimping Party! 	Mike Plotz, Mike Boilen, Rachel Pepper, ?, Niq Beaudrot, Chris Mastrangelo, Dan Morris, Curran Nachbar	\N	\N	\N
958	rachel-crimping.jpg	52	Rachel crimps. 	Rachel Pepper	\N	\N	\N
959	ryan-haxor.jpg	52	The Mad Hax0r. Ryan writes code and designs circuits simultaneously	Ryan Evans	\N	\N	\N
960	sealing.jpg	52	Heavy Industry. Producing a finished relay switch	\N	\N	\N	\N
961	shaft.jpg	52	A Shaft! Can you dig it?	\N	\N	\N	\N
962	snes-controller.jpg	52	Long-Distance SNES Controller. Courtesy of Rob Netzer, our advisor emeritus	\N	\N	\N	\N
963	soldering-equipment.jpg	52	Preparing to Solder. What a mess.	\N	\N	\N	\N
964	soldering1.jpg	52	Excitement! Everyone looks eager to solder.	Rachel Pepper, Brett Heath-Wlaz, Soren Spies, Nik Lochmatow. In back: Curran Nachbar and Dan Morris	\N	\N	\N
965	soren-dirty.jpg	52	Keep Your Hands Away From Me! Soren has been very busy.	\N	\N	\N	\N
966	soren-sealing.jpg	52	Soren seals a relay. 	\N	\N	\N	\N
967	test-dark.jpg	52	Still Testing. It looks impressive in the dark.	\N	\N	\N	\N
968	test.jpg	52	Testing. The relays are flashing rapidly under computer control.	\N	\N	\N	\N
969	wires.jpg	52	Supplies. Wires, Chips, and Resistors, oh my!	\N	\N	\N	\N
970	workshop.jpg	52	The Basement Workshop. Home of most of our production	\N	\N	\N	\N
971	beca_ryan.jpg	53	Beca and Ryan at Tetris. 	Beca, Ryan	\N	Rob Letzler	Tetris, outside MacMillan hall
972	jeff_peter_matt.jpg	53	Alumni at Tetris. Peter Shah '98, Matt Woods '98, and Jeff Alexander '99 admire Tetris	Peter Shah, Matt Woods, Jeff Alexander	\N	Rob Letzler	Tetris, Commencement 2000
973	keith_clara.jpg	53	Keith and Clara at Waterfire. 	Keith Dreibelbis, Clara Kim	\N	Rob Letzler	Waterfire, Commencement 2000
974	rob_tetris.jpg	53	Rob in front of Tetris. Rob stands in front of La Bastille	Rob Letzler	\N	Jeff Alexander	Commencement 2000
975	john_kali_clara.jpg	53	Ready for Campus Dance. John, Kali, Clara, Mike Boilen, and Nik have transformed and are ready to roll out.	John Leen, Kali Wallace, Clara Kim, Mike Boilen, Nik Lochmatow	\N	\N	Commencement 2000, TH Lounge
976	water_fire.jpg	53	Waterfire. fire, water, streetlights, and slow film make for a psychadelic image	\N	\N	\N	\N
977	dan_kali_rob.jpg	53	Just one more picture before we hit the green for Campus Dance. we're still in the lounge having our picture taken	Dan Morris, Kali Wallace, Clara Kim, Mike Boilen, Rob Letzler	\N	\N	TH Lounge before Campus Dance 2000
978	P5130001.JPG	54	Lots of people. 	\N	\N	\N	\N
979	P5130002.JPG	54	Lots of people. 	\N	\N	\N	\N
980	P5130003.JPG	54	Mike and Liz. Clara too	\N	\N	\N	\N
981	P5130004.JPG	54	Keith. knows something you don't	\N	\N	\N	\N
982	P5130005.JPG	54	Amused Lou. 	\N	\N	\N	\N
983	P5130007.JPG	54	Bow before double-entendre man's power. 	\N	\N	\N	\N
984	P5130008.JPG	54	Purple Clara. 	\N	\N	\N	\N
985	P5130009.JPG	54	Recruits. Enjoying a drink	\N	\N	\N	\N
986	P5130011.JPG	54	Lots of people. Curran and Miriam look annoyed	\N	\N	\N	\N
987	P5130012.JPG	54	Lots of people. 	\N	\N	\N	\N
988	P5130013.JPG	54	More recruits. 	\N	\N	\N	\N
989	P5130014.JPG	54	2/3 pimp. 100% techhouse	\N	\N	\N	\N
990	P5130015.JPG	54	Soren & Mike. Talking with our advisor	\N	\N	\N	\N
991	P5130017.JPG	54	I had a slide rule *this* big! Hmph.. mathematicians	\N	\N	\N	\N
992	P5130018.JPG	54	Liz and Marsha. 	\N	\N	\N	\N
993	P5130019.JPG	54	Lots of people. 	\N	\N	\N	\N
994	P5130021.JPG	54	Lots of people. 	\N	\N	\N	\N
995	P5130023.JPG	54	Talking with our advisor. 	\N	\N	\N	\N
996	P5130025.JPG	54	REAL WOMEN DRIVE TRUCKS. Gotta love that T-shirt	Kali Wallace	\N	\N	\N
997	P5130026.JPG	54	Donald and Brett. That Maze is Nik's artwork	Donald Engel, Brett Heath-Wlaz	\N	\N	\N
998	P5130027.JPG	54	Donald. 	Donald Engel	\N	\N	\N
999	P5130028.JPG	54	Liz - no, the other Liz. In a non-klezmer context	\N	\N	\N	\N
1000	P5130029.JPG	54	Get in mah belly! Keith edges away slowly	Mike Plotz, Keith Dreibelbis	\N	\N	\N
1001	P5130032.JPG	54	Beca and Kali. Real women drive trucks	\N	\N	\N	\N
1002	P5130033.JPG	54	Jordan and Yotam. 	\N	\N	\N	\N
1003	P5130034.JPG	54	Aram ponders with our advisor. 	\N	\N	\N	\N
1004	P5130039.JPG	54	Lots of people. 	\N	\N	\N	\N
1005	P5130041.JPG	54	Liz and Chris. bunny	\N	\N	\N	\N
1006	P5130042.JPG	54	Keith and Suzanne. also Soren & Lou	\N	\N	\N	\N
1007	P5130043.JPG	54	Keith & Lou. 	\N	\N	\N	\N
1008	P5130047.JPG	54	Liz & Liz. 	\N	\N	\N	\N
1009	P5130048.JPG	54	Liz serenades. 	\N	\N	\N	\N
1010	P5130051.JPG	54	Mike & Liz. 	\N	\N	\N	\N
1011	P5130052.JPG	54	Whiteboard. 	\N	\N	\N	\N
1012	P5130053.JPG	54	Lots of people. 	\N	\N	\N	\N
1013	P5130054.JPG	54	John & Lou. Sonbal Boantjies cannot exist in a Timecube	\N	\N	\N	\N
1014	P5130056.JPG	54	Lots of people. 	\N	\N	\N	\N
1015	P5130057.JPG	54	Bastille posters. flowers	\N	\N	\N	\N
1016	P5130059.JPG	54	Group of guys. 	\N	\N	\N	\N
1017	P5130060.JPG	54	The techgrrl mural. This is not the best picture of it..	\N	\N	\N	\N
1018	P5130064.JPG	54	Group of girls. 	\N	\N	\N	\N
1019	P5130065.JPG	54	Lou relaxes on the couch. Pimpin' ain't easy	\N	\N	\N	\N
1020	P5130066.JPG	54	Terry and Liz again. Soren also	\N	\N	\N	\N
70	p3210054.jpg	9	\N	\N	2004-03-21 19:53:00	\N	\N
1021	P5130069.JPG	54	Soren and Alex. 	\N	\N	\N	\N
1022	P5130070.JPG	54	Exterior shot. 	\N	\N	\N	\N
1023	P5130071.JPG	54	John in the video archive. 	\N	\N	\N	\N
1024	122-2226_IMG_small.JPG	55	Get the Door. House Manager Beca prepares the door.	\N	\N	Michael Fried	\N
1025	122-2227_IMG_small.JPG	55	Oh No! Beca has gone cross-eyed.	\N	\N	Michael Fried	\N
1026	122-2231_IMG_small.JPG	55	Setting Up. Don and Sara setting up the lounge.	\N	\N	Michael Fried	\N
1027	122-2232_IMG_small.JPG	55	Setting up. Yay, Sara!	\N	\N	Michael Fried	\N
1028	122-2234_IMG_small.JPG	55	Bouncer. Part James Dean, part Terminator, all Nik.	\N	\N	Michael Fried	\N
1029	122-2235_IMG_small.JPG	55	Guests. An Elf!	\N	\N	Michael Fried	\N
1030	122-2236_IMG_small.JPG	55	Moscardi. A great way to start the evening.	\N	\N	Michael Fried	\N
1031	122-2237_IMG_small.JPG	55	Moscardi. Singing	\N	\N	Michael Fried	\N
1032	122-2238_IMG_small.JPG	55	On the Porch. 	Terry, Dave, Beca, and Nik.	\N	Michael Fried	\N
1033	122-2239_IMG_small.JPG	55	On the Porch. 	Suzanne and Snoop Dog (Travis).	\N	Michael Fried	\N
1034	122-2240_IMG_small.JPG	55	On the Porch. 	Beca, Nik and Don.	\N	Michael Fried	\N
1035	122-2241_IMG_small.JPG	55	On the Porch. 	Terry and Dave	\N	Michael Fried	\N
1036	122-2242_IMG_small.JPG	55	Fire! Walk with me...	\N	\N	Michael Fried	\N
1037	122-2243_IMG_small.JPG	55	Fire! With the Flash.	The shadow from the picture-taker's finger, Mike Plotz	\N	Michael Fried	\N
1038	122-2244_IMG_small.JPG	55	Fire! Oh, yeah? Well, OUR president juggles fire...	\N	\N	Michael Fried	\N
1039	122-2245_IMG_small.JPG	55	Fire! His secret is the 6 arms you can see in this picture.	\N	\N	Michael Fried	\N
1040	122-2246_IMG_small.JPG	55	Fire! So fast, you can't see him.	\N	\N	Michael Fried	\N
1041	122-2247_IMG_small.JPG	55	Fire! Oooooooooooo....	\N	\N	Michael Fried	\N
1042	122-2248_IMG_small.JPG	55	Fire! Aaaaaaaaaaah....	\N	\N	Michael Fried	\N
1043	122-2249_IMG_small.JPG	55	Fire! Oooooooooooh....	\N	\N	Michael Fried	\N
1044	122-2250_IMG_small.JPG	55	Fire! Eeeeeeeeeeee....	\N	\N	Michael Fried	\N
1045	122-2251_IMG_small.JPG	55	The Pick-up Band. Cool.	\N	\N	Michael Fried	Mike tries to take a picture without a flash.
1046	122-2252_IMG_small.JPG	55	The Pick-up Band. 	\N	\N	Michael Fried	\N
1047	122-2253_IMG_small.JPG	55	Yarmulkazi. Gettin' down.	\N	\N	Michael Fried	\N
1048	122-2254_IMG_small.JPG	55	Yarmulkazi. 	\N	\N	Michael Fried	\N
1049	122-2255_IMG_small.JPG	55	Yarmulkazi. 	\N	\N	Michael Fried	\N
1050	122-2256_IMG_small.JPG	55	Yarmulkazi. Funny dance.	\N	\N	Michael Fried	\N
1051	122-2257_IMG_small.JPG	55	Yarmulkazi. 	\N	\N	Michael Fried	\N
1052	122-2258_IMG_small.JPG	55	Yarmulkazi. 	\N	\N	Michael Fried	\N
1053	122-2259_IMG_small.JPG	55	Yarmulkazi. What is she pondering?	\N	\N	Michael Fried	\N
1054	122-2260_IMG_small.JPG	55	Yarmulkazi. 	\N	\N	Michael Fried	\N
1055	122-2261_IMG_small.JPG	55	Yarmulkazi. 	\N	\N	Michael Fried	\N
1056	122-2262_IMG_small.JPG	55	Yarmulkazi. Peter showing off his mad skills.	\N	\N	Michael Fried	\N
1057	122-2263_IMG_small.JPG	55	Yarmulkazi. 	\N	\N	Michael Fried	\N
1061	122-2267_IMG_small.JPG	55	Juggling fire. 	\N	\N	Michael Fried	\N
1062	122-2268_IMG_small.JPG	55	Juggling fire. 	\N	\N	Michael Fried	\N
1063	122-2269_IMG_small.JPG	55	More Fire! With Clara!	\N	\N	Michael Fried	\N
1064	122-2270_IMG_small.JPG	55	More Fire! With Clara!	\N	\N	Michael Fried	\N
1065	122-2271_IMG_small.JPG	55	More Fire! With Clara!	\N	\N	Michael Fried	\N
1066	122-2272_IMG_small.JPG	55	More Fire! With Clara!	\N	\N	Michael Fried	\N
1067	122-2273_IMG_small.JPG	55	More Fire! With Clara!	\N	\N	Michael Fried	\N
1068	122-2274_IMG_small.JPG	55	Outside. Guests with David and Terry	\N	\N	Michael Fried	\N
1069	122-2275_IMG_small.JPG	55	The kittens. 	\N	\N	Michael Fried	\N
1070	122-2276_IMG_small.JPG	55	The kittens. 	\N	\N	Michael Fried	\N
1071	122-2277_IMG_small.JPG	55	The kittens. 	\N	\N	Michael Fried	\N
1072	122-2278_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1073	122-2279_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1074	122-2280_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1075	122-2281_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1076	122-2282_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1077	122-2283_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1078	122-2284_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1079	122-2285_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1080	122-2286_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1081	122-2287_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1082	122-2288_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1083	122-2289_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1084	122-2290_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1085	122-2291_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1086	122-2294_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1087	122-2295_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1088	122-2296_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1089	122-2297_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1090	122-2298_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1091	122-2299_IMG_small.JPG	55	Title. Description	\N	\N	Michael Fried	\N
1092	122-2300_IMG_small.JPG	55	It's all over. Chris M. and beverage	\N	\N	Michael Fried	\N
1059	122-2265_IMG_small.JPG	55	The Crowd. Still a lot of people.	a lot of people	\N	Michael Fried	\N
1060	122-2266_IMG_small.JPG	55	The Crowd. Where's Waldo?	a lot of people	\N	Michael Fried	\N
1058	122-2264_IMG_small.JPG	55	The Crowd. That's a lot of people.	a lot of people	\N	Michael Fried	\N
1168	021804puzzleteam.JPG	57	The Puzzle Team. They stayed up <i>really</i> late!	David Erickson, David Feuer, Jordan Parker, An Le	2001-02-18 00:00:00	Clara Kim	the lobby
1169	032302trebucket.JPG	57	The Trebucket! 	\N	2001-03-23 00:00:00	Clara Kim	the workroom
1170	032304mike.JPG	57	Our President... ...is more acrobatic than your president!	Mike Plotz	2001-03-23 00:00:00	Clara Kim	the workroom
1171	032306bendyJPG	57	Power Drill Attachment. We got to use the neat bendy thing...	David Eigen's hands	2001-03-23 00:00:00	Clara Kim	the workroom
1172	041402joe.JPG	57	Joe Hasbani. ...doesn't live here - yet.	\N	2001-04-14 00:00:00	Beca Erickson	the library
1173	041404newhd.JPG	57	Feeding Frenzy. Serge Garcia and sysadmin Niq Beaudrot work on the server.	\N	2001-04-14 00:00:00	Beca Erickson	the library
1174	041406newhd.JPG	57	New Hard Drive. 	Serge Garcia, Joe Hasbani, and Niq Beaudrot	2001-04-14 00:00:00	Beca Erickson	the library
1175	041408travis.JPG	57	Travis Crump. 	\N	2001-04-14 00:00:00	Beca Erickson	the library
1176	041410wall.JPG	57	Juggling. Thrown correctly, the ball returns to your hand.	Mike Plotz, David Eigen, and Mike Fried	2001-04-14 00:00:00	Clara Kim	second floor hallway
1177	041412wall.JPG	57	Juggling. Okay, so it's *almost* real juggling.	Mike Plotz, David Eigen, and Mike Fried	2001-04-14 00:00:00	Clara Kim	second floor hallway
1178	041702before.JPG	57	Real Jugglers. Getting ready for an ADOCH performance	Eric Cohen, Liz Thompson, Mike Plotz, Mike P.'s mom, Mike Fried, David Feuer, Clara Kim	\N	Beca Erickson	Auditorium
1179	041704all.JPG	57	The Juggling Club. 	\N	\N	Beca Erickson	Auditorium
1180	041706train.JPG	57	A Juggling Train. 	\N	\N	Beca Erickson	Auditorium
1181	041708clubs.JPG	57	Juggling Clubs. 	\N	\N	Beca Erickson	Auditorium
1182	041710switching.JPG	57	Switching Off. 	\N	\N	Beca Erickson	Auditorium
1183	041712theband.JPG	57	The Brown Band. You can't see them, but there are members and recruits in the band.	\N	\N	Beca Erickson	Auditorium
1184	042104chrisn.JPG	58	Chris Nemcosky. 	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1185	042106curran.JPG	58	Ticos, Anyone? Curran Nachbar	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1188	042114danm.JPG	58	Dan Mortenson. All that and a bag of chips!	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1189	042116dj.JPG	58	Setting Up. Someone set us up the music.	Chris Chin, Joe Hasbani, Lou Arruda, David Eigen, and Chris Nemcosky	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1190	042118dj.JPG	58	Chris Nemcosky. ...treating us to music.	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1191	042120lou.JPG	58	The Dragonmaster. Alum Lou Arruda.	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1192	042122eric.JPG	58	Eric Cohen. 	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1193	042124joe.JPG	58	Joe Hasbani. 	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1196	042130lou.JPG	58	Luis Arruda. Militant Wing Leader Emeritus	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1198	042134mike.JPG	58	Mike Plotz. Don't fall, Mike!	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1199	042136mikeclara.JPG	58	Silly Faces. Clara and Mike clown around.	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1200	042138mikemuppet.JPG	58	Oh No! Mike has turned into a muppet, much to Clara's chagrin.	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1201	042140sarashawn.JPG	58	Face-Off. Shawn and Sara attempt to be mad at each other.	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1203	042144shawnnmike.JPG	58	Hmmmmm.... What do you think, old chap?	Mike Plotz and Shawn Bachan	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1204	042146tom.JPG	58	Tom Wooldridge. ...giving you a sketchy look.	\N	2001-04-21 00:00:00	Beca Erickson	The Barbecue
1206	042204curran.JPG	58	Tango, Anyone? Curran strikes a pose	\N	2001-04-21 00:00:00	Clara Kim	The Mini-Barbecue
1207	042206mike.JPG	58	Mike Plotz. ...attends his nails.	\N	2001-04-21 00:00:00	Clara Kim	The Mini-Barbecue
1208	042208beca.JPG	58	Beca Erickson. ...takes a break from taking pictures.	\N	2001-04-21 00:00:00	Clara Kim	The Mini-Barbecue
1209	042210brett.JPG	58	Brett Heath-Wlaz. 	\N	2001-04-21 00:00:00	Beca Erickson	The Mini-Barbecue
1210	042212clara.JPG	58	Clara Kim. I just felt like wearing a dress today...	\N	2001-04-21 00:00:00	Beca Erickson	The Mini-Barbecue
1211	042214curran.JPG	58	Curran Nachbar. 	\N	2001-04-21 00:00:00	Beca Erickson	The Mini-Barbecue
1212	042216fountain.JPG	58	The Fountain. We're gonna need a new pool...	\N	2001-04-21 00:00:00	Beca Erickson	The Mini-Barbecue
1213	042218mike.JPG	58	Mike Fried. 	\N	2001-04-21 00:00:00	Beca Erickson	The Mini-Barbecue
1214	042402flowers.JPG	58	The Techhouse Garden. ...thanks to Liz Thompson	\N	2001-04-24 00:00:00	Beca Erickson	the garden
1215	042404fpurple.JPG	58	The Techhouse Garden. ...thanks to Liz Thompson	\N	2001-04-24 00:00:00	Beca Erickson	the garden
1216	042406fynwclose.JPG	58	The Techhouse Garden. ...thanks to Liz Thompson	\N	2001-04-24 00:00:00	Beca Erickson	the garden
1217	050402dawn.JPG	59	Dawn. 	\N	2001-05-04 00:00:00	Beca Erickson	from the window of room 303
1228	050802technocult.JPG	59	Come...Join Us. Those weird technology cult people.	Alex Hooker and Demetrious Harrington	2001-05-08 00:00:00	Beca Erickson	room 303
1229	051102dnrchris.JPG	59	Beca's Bed. We seem to have misplaced our glasses...	David Reiss and Chris Chin	2001-05-11 00:00:00	Beca Erickson	room 303
1230	051104innocent.JPG	59	It's an Orgy! We don't know what you're talking about, Beca.	David Reiss, Chris Chin, Curran Nachbar, An Le, Tom Wooldridge, and Joe Hasbani	2001-05-11 00:00:00	Beca Erickson	room 303
1231	051106innocentmcfn.JPG	59	More Sketchiness! Beca, this doesn't even rate a Soren.	David Reiss, Chris Chin, Curran Nachbar, An Le, Tom Wooldridge, and Joe Hasbani	2001-05-11 00:00:00	Beca Erickson	room 303
1232	051108tom.JPG	59	Tom Wooldridge. Okay, maybe Tom rates a Soren or two...	\N	2001-05-11 00:00:00	Beca Erickson	room 303
1233	051110toman.JPG	59	Look Out! Menacing An looms over Tom.	\N	2001-05-11 00:00:00	Beca Erickson	room 303
1234	051202mike.JPG	59	Mike Plotz. Always Well Dressed	\N	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1235	051204chrisn.JPG	59	Chris Nemcosky. 	\N	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1236	051206razvanjon.JPG	59	Men In Black. Razvan inspects Jon's laptop.	\N	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1237	051208andy.JPG	59	Andy Lambe. 	\N	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1238	051212mariana.JPG	59	Mariana Mihalusova. 	\N	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1239	051214razvanwatching.JPG	59	Rapt Attention. The fighting stick-people are so cool!	Jon, Dave and Razvan	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1241	051218meechdave.JPG	59	Dave: Fuzzy!  Meech:  Not Fuzzy! 	\N	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1240	051216becadave.JPG	59	Dave and Beca Erickson. He only got in because I'm his sister.  (j/k)	\N	2001-05-12 00:00:00	Meech	The End Of Year Dinner
1242	051220group.JPG	59	Group Picture. 	Curran Nachbar, Dave Erickson, Meech Harrington, Dan Mortenson, Chris Nemcosky - front: Eric Cohen and Mikka Pineda	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1243	051222badass.JPG	59	We're Too Sexy. ..for this photo.	Dan Mortenson, Dave Erickson, Chris Nemcosky, Meech Harrington, and Eric Cohen	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1245	051226mikkaeric.JPG	59	Help! We've been attacked by a chewing gum bubble!	Mikka Pineda and Eric Cohen	2001-05-12 00:00:00	Beca Erickson	The End Of Year Dinner
1246	051302chrisc.JPG	59	Chris Chin. I'm making a pipe organ...	\N	2001-05-13 00:00:00	Clara Kim	second floor hallway
1247	051304razvan.JPG	59	Razvan Mirica. Takes a break from finals to hang out.	\N	2001-05-13 00:00:00	Clara Kim	second floor hallway
1248	051602alison.JPG	59	Zzzzzzz...... Alison takes a nap on Jon's bed.	\N	2001-05-16 00:00:00	Clara Kim	second floor hallway
1249	051604alitrav.JPG	59	Disturbing. Yes, yes it is disturbing.	Travis Crump, Alison Hale....or is it the other way around?	2001-05-16 00:00:00	Clara Kim	second floor hallway
1250	051902allbase.JPG	60	Joe's Sign Says:. Please Bring all your base Outside To The Dumpster	\N	2001-05-19 00:00:00	Beca Erickson	the porch
1251	051904clarajoe.JPG	60	Clara and Joe. ...preparing to fire the trebuchet.	\N	2001-05-19 00:00:00	Beca Erickson	the porch
1252	051906curran.JPG	60	Curran Nachbar. 	\N	2001-05-19 00:00:00	Beca Erickson	the porch
1253	051908treb1.JPG	60	Last-Minute Teamwork. David and Nik set up the trebuchet.	\N	2001-05-19 00:00:00	Beca Erickson	the porch
1254	051910treb2.JPG	60	Almost Ready. David and Nik set up the trebuchet	\N	2001-05-19 00:00:00	Beca Erickson	the porch
1255	052002cinder.JPG	60	CinderHenge. David, Beca and Alex got a little carried away coming back from the mini mart.	\N	2001-05-20 00:00:00	Beca Erickson	Patriots' Court
1256	052004cinder.JPG	60	CinderHenge. A view from above	\N	2001-05-20 00:00:00	Beca Erickson	Patriots' Court
1257	052006contemplation.JPG	60	Contemplation. Alex contemplates the meaning of cinderblocks.	\N	2001-05-20 00:00:00	Beca Erickson	Patriots' Court
1258	052202johnchris.JPG	60	Chris and John with optional rabbits. 	\N	2001-05-22 00:00:00	Beca Erickson	first floor hallway
1259	052204mike.JPG	60	My Hat Pops Open. Mike demonstrates the coolness that is his hat.	Clara Kim, Mike Plotz, Lou Arruda	2001-05-22 00:00:00	Beca Erickson	first floor hallway
1260	052206alex.JPG	60	Alex and Bunnies. 	\N	2001-05-22 00:00:00	Beca Erickson	first floor hallway
1261	052208keith.JPG	60	Setting Up A Surprise. Keith Schmidt takes the surprise out of a box.	\N	2001-05-22 00:00:00	Beca Erickson	the lounge
1262	052210discovery.JPG	60	Moment Of Silence. It's eerie...	\N	2001-05-22 00:00:00	Beca Erickson	the lounge
1263	052212omigod.JPG	60	Oh My God! Chris is floored by a five-foot bunny.	\N	2001-05-22 00:00:00	Beca Erickson	the lounge
1264	052214chris.JPG	60	Big rabbit, small rabbit. A strange but fascinating life cycle.	\N	2001-05-22 00:00:00	Beca Erickson	the lounge
1265	052216chris.JPG	60	My Bunny. 	Bahamut and Chris Mastrangelo	2001-05-22 00:00:00	Beca Erickson	the lounge
1266	052218sam.JPG	60	Sam Gorstein. Even Sam can't resist Bahamut.	\N	2001-05-22 00:00:00	Beca Erickson	the lounge
1267	052220alex.JPG	60	Alex Hooker. I want to be in the box!	\N	2001-05-22 00:00:00	Beca Erickson	the lounge
1268	052222bandits.JPG	60	The Time (Cube) Bandits. Together Again	Lou Arruda, Bahamut, John Leen, and Chris Mastrangelo	2001-05-22 00:00:00	Beca Erickson	the lounge
1269	052302ladkes.JPG	60	Making Ladkes. ...is fun -- you get to use cheesecloth!	\N	2001-05-23 00:00:00	Beca Erickson	the kitchen
1270	052304clara.JPG	60	Clara makes vegetable pancakes. 	\N	2001-05-23 00:00:00	Beca Erickson	the kitchen
1271	052306claramike.JPG	60	Clara and Mike. Preparing food during Senior Week.	\N	2001-05-23 00:00:00	Beca Erickson	the kitchen
1272	052308cabinet.JPG	60	Su's Cabinet. ...well-stocked for Senior Week	\N	2001-05-23 00:00:00	Beca Erickson	the kitchen
1273	052310anmike.JPG	60	An and Mike. ...waiting to eat ladkes.	\N	2001-05-23 00:00:00	Beca Erickson	the kitchen
1274	052312curran.JPG	60	It's Neverending. Curran packs up her room.	\N	2001-05-23 00:00:00	Beca Erickson	third floor hallway
1275	052314samcurran.JPG	60	Please Can I Have A Back Rub? If you let me take a picture of you begging for one...	\N	2001-05-23 00:00:00	Beca Erickson	Beca's room
1276	052316john.JPG	60	Proud To Be A Member. John Leen shows off his Techhouse Shirt	\N	2001-05-23 00:00:00	Beca Erickson	Beca's room
1277	052504mirror.JPG	61	Soren Helps Out. ...with Mike's bowtie.	Sam Gorstein, Clara Kim, Mike Plotz, and Soren Spies	2001-05-25 00:00:00	Beca Erickson	second floor bathroom
1278	052506sorenmike.JPG	61	How It's Done. Soren (president 1998-1999) and Mike (president 2000-2001)	\N	2001-05-25 00:00:00	Clara Kim	second floor bathroom
1279	052508sam.JPG	61	Sam Gorstein. ...looks good in a suit.	\N	2001-05-25 00:00:00	Beca Erickson	second floor bathroom
1280	052510alex.JPG	61	Alex Hooker. I want my picture taken...	\N	2001-05-25 00:00:00	Beca Erickson	first floor laundry room
1281	052512alexhair.JPG	61	Alex Hooker. Actually, I want you to take a picture of my hair.	\N	2001-05-25 00:00:00	Beca Erickson	first floor laundry room
1282	052514mike.JPG	61	Mike at Spike's. 	\N	2001-05-25 00:00:00	Clara Kim	Spike's
1283	052516becatrav.JPG	61	Mmmmm...Donuts. Beca Erickson and Travis Crump	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1284	052518joechris.JPG	61	Joe Hasbani and Chris Chin. 	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1285	052520mikeliz.JPG	61	Mike Fried and Liz Thompson. 	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1286	052522soren.JPG	61	Trademark Smile. Why the Soren is the SI unit of sketchiness.	TH Alum Soren Spies	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1287	052524becadave.JPG	61	Siblings. Dave got into the dance masquerading as someone else...	Dave and Beca Erickson	2001-05-25 00:00:00	Sophie	The Campus Dance
1288	052530davesophie.JPG	61	Dave and Sophie. ...taking a break from dancing.	\N	2001-05-25 00:00:00	Beca Erickson	The Campus Dance
1289	052534lou.JPG	61	Lou Arruda. 	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1290	052538mike.JPG	61	Mike Plotz. 	Mike Plotz, Clara Kim, Mariana Mihalusova, Neel Joshi, Meech Harrington	2001-05-25 00:00:00	Beca Erickson	The Campus Dance
1291	052540hesh.JPG	61	Mahesh Madhav. 	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1292	052542meechalex.JPG	61	Alex and Meech. ...with Mike and Clara looking at photos in the foreground.	\N	2001-05-25 00:00:00	Beca Erickson	The Campus Dance
1293	052544meechpete.JPG	61	Techhouse Men. ...have such cool hair!	Meech Harrington and Pete Hopkins	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1294	052546clarabeca.JPG	61	Clara and Beca. 	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1295	052550robbeca.JPG	61	Beca and Rob. ...and this time he didn't get lost.	Beca Erickson and TH Alum Rob Letzler	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1296	052552john.JPG	61	Cheers. John can't decide which is worse - beer or vodka.<br></font><i>[Webmaster's note: Definitely vodka.  Beer's all right.  Vodka is an antiseptic.   -- jl]</i>	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1297	052554mikehand.JPG	61	Mike does a handstand! And gets a round of applause.	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1298	052556mikeclara.JPG	61	Mike and Clara. ...pose for the camera.	\N	2001-05-25 00:00:00	Beca Erickson	The Campus Dance
1299	052558alexmeech.JPG	61	Alex and Meech. 	\N	2001-05-25 00:00:00	Clara Kim	The Campus Dance
1300	052560loumeech.JPG	61	So You're From Dartmouth, Mass., Too? They are from the same hometown!	TH Alum Lou Arruda and Recruit Meech Harrington	2001-05-25 00:00:00	Beca Erickson	The Campus Dance
1301	cd001.JPG	61	Mike Boilen and Neel Joshi. 	\N	\N	Curran Nachbar	Campus Dance 2001
1302	cd002.JPG	61	Dan Morris and Merrie Ringel. 	\N	\N	Curran Nachbar	Campus Dance 2001
1303	cd003.JPG	61	Nachbars and Heath-Wlaz. Robert Nachbar, Elly Nachbar, Curran Nachbar, and Brett Heath-Wlaz	\N	\N	\N	Campus Dance 2001
1304	DSC00001.jpg	61	Campus Dance 2001. Don Engel, Keith Schmidt, Suzanne Karr, and Alex Hooker	\N	\N	Lou Arruda	\N
1305	DSC00002.jpg	61	Campus Dance 2001. Sam Gorstein, Beca Erickson, David Eigen, Clara Kim (holding the new titanium iBook), Soren Spies, Keith Dreibelbis [sp?], and John Leen, in the 2nd floor TH bathroom.	\N	\N	Lou Arruda	\N
1306	DSC00003.jpg	61	Campus Dance 2001. Sam Gorstein, Alex Hooker, Keith Schmidt, Mike Boilen, Suzanne Karr, John Leen, and Chris Mastrangelo around the Tech House table.	\N	\N	Lou Arruda	\N
1307	DSC00004.jpg	61	Campus Dance 2001. Chris Chin with his two "dates," Alex Hooker and Frances (sorry, I don't know your last name, I'm a half-blonde ditz).	\N	\N	Lou Arruda	\N
1308	DSC00005.jpg	61	Campus Dance 2001. It's Tuxedo Mask and Sailor Moon!  No, wait, it's actually Mike Plotz and Clara Kim.  My mistake.	\N	\N	Lou Arruda	\N
1309	DSC00007.jpg	61	Campus Dance 2001. Curran Nachbar, with Soren Spies and Mike Fried in the background.	\N	\N	Lou Arruda	\N
1310	DSC00009.jpg	61	Campus Dance 2001. Brett Heath-Wlaz and Curran Nachbar.	\N	\N	Lou Arruda	\N
1311	DSC00010.jpg	61	Campus Dance 2001. Suzanne Karr and Keith Schmidt	\N	\N	Lou Arruda	\N
1312	DSC00011.jpg	61	Campus Dance 2001. Clara Kim, Meech Harrington, Brett Heath-Wlaz, and Chris Chin.	\N	\N	Lou Arruda	\N
1313	DSC00012.jpg	61	Campus Dance 2001. Mahesh Madhav, Soren Spies, and Tuxedo Ma--, er, Mike Plotz.	\N	\N	Lou Arruda	\N
1314	052502brettdavid.JPG	62	Trebuchet Assembly. ...is hard work.	Clara Kim, Brett Heath-Wlaz, and David Eigen	2001-05-25 00:00:00	Beca Erickson	the porch
1315	0525062mikejohn.JPG	62	Waiting For The Launch. 	Mike lotz, Mike Boilen, and John Leen	2001-05-25 00:00:00	Beca Erickson	the porch
1316	052511kidxplain.JPG	62	So the weight drops and the arm goes up... Clara explains seige engine technology to a kid.	Frances Choi, some kid, Clara Kim, and David Eigen	2001-05-25 00:00:00	Beca Erickson	the porch
1317	052513trebwatch.JPG	62	Watching The Trebuchet. 	I'm not even going to try...	2001-05-25 00:00:00	Beca Erickson	the porch
1318	052520dave.JPG	62	Caterers. They got in trouble for letting us into our own lounge...	Christopher Kolenaty and David Erickson	2001-05-25 00:00:00	Beca Erickson	the lounge
1319	052591invite.JPG	62	4:45 AM. Would you like to go to Louis's?	Clara, the iBook, and Mike	2001-05-26 00:00:00	Beca Erickson	Scott's room
1320	052597tolouiss.JPG	62	To Louis's! 	David Eigen, Scott McKenzie, Travis Crump, Clara Kim, and Mike Plotz	2001-05-26 00:00:00	Beca Erickson	Charlesfield
1321	052598mikeclara.JPG	62	5:15 AM. Clara and Mike are glad they stayed up for breakfast.	Mike, Clara, Travis, and Scott	2001-05-26 00:00:00	Beca Erickson	Louis's
1322	052599travscott.JPG	62	5:16 AM. Scott would have prefered to stay in bed.	Clara, Travis, and Scott	2001-05-26 00:00:00	Beca Erickson	Louis's
1323	052604curranfam.JPG	62	Family comes to visit. 	Donald Engel, Curran Nachbar, Curran's Dad, Curran's Grandmother, and Daniel Erickson	2001-05-26 00:00:00	Rob Letzler	Alumni BBQ
1324	052609lizbro.JPG	62	Siblings. 	Liz Thompson and her brother	2001-05-26 00:00:00	Clara Kim	Alumni BBQ
1325	052610people.JPG	62	The Barbecue. That's a lot of food!	Rachel, Kali, Rebecca, Dan, Donald, Evan, Curran, Joe	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1326	052611pika.JPG	62	Pikachu Meets Trebuchet. 	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1327	052612anpika.JPG	62	An prepares to sacrifice Pikachu. 	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1328	052613pikadoom.JPG	62	Pikachu confronts the Trebuchet. 	\N	2001-05-26 00:00:00	Clara Kim	Alumni BBQ
1329	052614pikalaunch.JPG	62	Loading the Trebuchet. 	David Eigen, Clara Kim, and Donald Engel	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1330	052615pikaready.JPG	62	Ready.... 	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1331	052616pika1.JPG	62	Fire! 	\N	2001-05-26 00:00:00	Clara Kim	Alumni BBQ
1332	052617pika2.JPG	62	Fire! 	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1333	052618pika3.JPG	62	Fire! 	\N	2001-05-26 00:00:00	Clara Kim	Alumni BBQ
1334	052619tp.JPG	62	Technology-assisted TP. 	\N	2001-05-26 00:00:00	Clara Kim	Alumni BBQ
1335	052620mikef.JPG	62	Mike Fried. Now with MY camera...	Mike Fried and Clara Kim	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1336	052621don.JPG	62	Donald Engel. Walk this way!	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1337	052622donmariana.JPG	62	Mariana and Donald sit on the wall. 	Donald Engel and Mariana Mihalusova	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1338	052625joean.JPG	62	Joe, Pikachu, and An. We're sharing an apartment with David this summer.	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1339	052626loutreb.JPG	62	Militant. The trebuchet has something for everyone...	Lou Arruda	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1340	052632becasoren.JPG	62	*HUG*. Beca returns Soren's sketchy e-mail hugs.	Beca Erickson and Soren Spies	2001-05-26 00:00:00	Clara Kim	Alumni BBQ
1341	052633pimpz.JPG	62	Behold! Out of the shadows of time...	Jon, Lou, Soren, and Jeff	2001-05-26 00:00:00	Clara Kim	Alumni BBQ
1342	052634pimpz.JPG	62	EN164 PIMPZ. ...with an archaeological artifact.	Soren Spies, Jeff Alexander, Lou Arruda	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1343	052635joeguitar.JPG	62	Joe and Alex. 	Joe Hasbani and Alex Hooker	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1344	052636soren.JPG	62	Hey!  There isn't any food left! Soren is disappointed.	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
71	p3210055.jpg	9	\N	\N	2004-03-21 19:53:00	\N	\N
1345	052638joealex.JPG	62	Joe and Alex singing on the porch. 	\N	2001-05-26 00:00:00	Beca Erickson	Alumni BBQ
1346	052688neel.JPG	62	Neel Joshi. ...with manly red hair.	\N	2001-05-26 00:00:00	Beca Erickson	second floor hallway
1347	052689hesh.JPG	62	Mahesh Madhav. I told him to look suggestive...	\N	2001-05-26 00:00:00	Beca Erickson	second floor hallway
1348	052690mgbdave.JPG	62	Mike Boilen is possessed. 	Mike Boilen and David Erickson	2001-05-26 00:00:00	Beca Erickson	second floor hallway
1349	052691taboo.JPG	62	Taboo! Sam has trouble verbalizing...	David Erickson, Sam Gorstein, and Lou Arruda	2001-05-26 00:00:00	Beca Erickson	the lounge
1350	052692joecouch.JPG	62	Joe made one of Mike's lists... 	Joe Hasbani and Mike Boilen	2001-05-26 00:00:00	Beca Erickson	the lounge
1351	052694boilen.JPG	62	On Beca's Bed. Soren uses Beca's ancient Mac.	Mike Boilen and Soren Spies.  Feet: Beca Erickson and David Eigen	2001-05-26 00:00:00	Beca Erickson	Beca's room
1352	052695soren.JPG	62	Oh, Beca, I'm so tired... Soren has spread himself too thinly this weekend.	\N	2001-05-26 00:00:00	Beca Erickson	Beca's room
1353	052707menbed.JPG	62	Quite A Crowd. Let's see how many men I can get in my bed before I graduate...	(Well, clockwise) Rob, Vivian (doesn't count 'cuz she's not a man) Soren, Hesh, Neel, Mike Boilen, Dave, Lou, John, and Keith	2001-05-27 00:00:00	Beca Erickson	Beca's room
1354	052709getsketchy.JPG	62	Get Sketchy! Only Soren follows my instructions...	same as before, plus Scott	2001-05-27 00:00:00	Beca Erickson	Beca's room
1355	052712boilen.JPG	62	River of Fire. 	Mike Boilen	2001-05-27 00:00:00	Beca Erickson	Waterfire
1356	052713ansky.JPG	62	Sunset An. 	An Le	2001-05-27 00:00:00	Beca Erickson	Waterfire
1357	052714kd.JPG	62	Keith Dreibelbis. 	\N	2001-05-27 00:00:00	Beca Erickson	Waterfire
1358	052715people.JPG	62	Take me to the river... Beca is the only senior in this picture...	\N	2001-05-27 00:00:00	Glenn Erickson (Beca's dad)	Waterfire
1359	052722mikepop.JPG	62	World's Best Popcorn. Mike is going to eat the whole bag.	\N	2001-05-27 00:00:00	Clara Kim	Waterfire
1360	052723boilen.JPG	62	Fun with lights... 	Mike Boilen	2001-05-27 00:00:00	Beca Erickson	Waterfire
1361	052726firefog.JPG	62	Foggy Buildings. 	\N	2001-05-27 00:00:00	Beca Erickson	Waterfire
1362	052728waterfire.JPG	62	Water and Fire. 	\N	2001-05-27 00:00:00	Beca Erickson	Waterfire
1363	052729oldmen.JPG	62	Old Men. 	Rob, John, Soren, and Mike Boilen	2001-05-27 00:00:00	Clara Kim	Waterfire
1364	052831hallgrp.JPG	63	Before... 	\N	2001-05-28 00:00:00	\N	first floor hallway
1365	052833chrisnik.JPG	63	Chris and Nik. 	\N	2001-05-28 00:00:00	Beca Erickson	The Main Green
1366	052834curranbrett.JPG	63	Curran and Brett. 	\N	2001-05-28 00:00:00	Beca Erickson	The Main Green
1367	052835chrismgb.JPG	63	Chris. 	\N	2001-05-28 00:00:00	Beca Erickson	The Main Green
1368	052836sara.JPG	63	Sara Grady. 	Curran, Liz, Sara, Suzanne	2001-05-28 00:00:00	Beca Erickson	The Main Green
1369	052837liz.JPG	63	Liz Thompson. 	\N	2001-05-28 00:00:00	Beca Erickson	The Main Green
1370	052839techhouse.JPG	63	Techhouse Seniors. 	Sam, Travis, Nico, Beca, Curran, Brett, Chris, Sara, Sae, Nik	2001-05-28 00:00:00	from Nico Talian	The Main Green
1371	ceremony1.JPG	63	Another Group Picture. 	Sam, John, Rob, Curran, Brett, Mike Boilen	2001-05-28 00:00:00	\N	Commencement
1372	ceremony002.JPG	63	Keith Schmidt. 	\N	2001-05-28 00:00:00	Curran Nachbar	Commencement
1373	DSC00001.jpg	63	Commencement 2001. Beca Erickson and her parents.	\N	\N	Lou Arruda	\N
1374	DSC00002.jpg	63	Commencement 2001. Neel Joshi and Mike Boilen.	\N	\N	Lou Arruda	\N
1375	DSC00003.jpg	63	Commencement 2001. Chris Mastrangelo	\N	\N	Lou Arruda	\N
1376	DSC00004.jpg	63	Commencement 2001. CS Reception from the "sky cam."	\N	\N	Lou Arruda	\N
1377	DSC00005.jpg	63	Commencement 2001. Curran Nachbar at the CS reception from the "sky cam."	\N	\N	Lou Arruda	\N
1378	DSC00006.jpg	63	Commencement 2001. Curran Nachbar making goofy eyes on Brett Heath-Wlaz's lap.	\N	\N	Lou Arruda	\N
1379	DSC00007.jpg	63	Commencement 2001. Curran Nachbar not making goofy eyes on Brett Heath-Wlaz's lap.	\N	\N	Lou Arruda	\N
1380	DSC00008.jpg	63	Donald Engel. 	\N	\N	Lou Arruda	\N
1381	DSC00009.jpg	63	Josh Tasman. Not a Tech House member, but an old friend of mine from my freshman year.	\N	\N	Lou Arruda	\N
1382	DSC00010.jpg	63	Sam Gorstein. on his way home.	\N	\N	Lou Arruda	\N
1383	DSC00011.jpg	63	Liz Thompson. 	\N	\N	Lou Arruda	\N
1384	DSC00012.jpg	63	Mike Fried. 	\N	\N	Lou Arruda	\N
1385	DSC00013.jpg	63	Beca Erickson. 	\N	\N	Lou Arruda	\N
1386	DSC00015.jpg	63	Keith Schmidt and Suzanne Karr. 	\N	\N	Lou Arruda	\N
1387	DSC00016.jpg	63	Nik Lochmatow. 	\N	\N	Lou Arruda	\N
1388	DSC00018.jpg	63	Sara P. Grady. 	\N	\N	Lou Arruda	\N
1389	arnold_dan.jpg	63	Arnold and Dan. 	\N	\N	\N	\N
1390	clara_chris_curran1.jpg	63	Good barbeque, good conversation. Clara, Chris Chin and Curran hammer out an important point at the TH barbeque	Mike Boilen, Clara, Chris Chin, Curan Nachbar, Rory Nachbar, An Le	\N	\N	commencement weekend 2001
1391	clara_chris_curran2.jpg	63	Another view of the conversation adds Rachel Pepper. 	\N	\N	\N	Commencement weekend 2001
1392	mdp_soren_tie.jpg	63	Mike gets bowtie help. from the bow-tie and unix expert	Soren Spies, Mike Plotz, Clara Kim	\N	\N	before campus dance 2001
1393	mgb_kd_clara_wall.jpg	63	Mike Boilen yo-yos while Keith D and Clara sit on the porch wall and chat. has gotten really good with ayoyo	Clara Kim, Keith D, Mike Boilen	\N	\N	commencement 2001 barbeque
1394	soren_campus_dance.jpg	63	Campus Dance preparation. there's a crowd in the second floor bathroom getting ready to dance and checking out Clara's new ibook	Clara, David, Soren,Michelle, Sam, Keith, Lou	\N	\N	Campus Dance 2001
1395	beca_mdp_clara_an_waterfire.jpg	63	\N	\N	\N	\N	\N
1396	lou_launch.jpg	63	\N	\N	\N	\N	\N
1397	trebuchet_keith_neel_lou.jpg	63	\N	\N	\N	\N	\N
1398	P1010021.JPG	64	Water Spiders! Someone has set mechanical water spiders loose in the river....	\N	\N	Beca Erickson	\N
1399	P1010023.JPG	64	We Need A Table. Techhouse members do homework in the library.	Evan Chan, An Le, Melissa Chun, Scott McKenzie, Meech Harrington	\N	Beca Erickson	\N
1400	P1010024.JPG	64	We Also Need A Bigger TV. 	Chris Nemcosky, Justin Natale, ... Mike Plotz	\N	Beca Erickson	\N
1401	P8190052.JPG	64	Curran's Futon. Experienced testers test Curran's futon	Joe Hasbani, Curran Nachbar, and An Le	\N	Beca Erickson	\N
1402	P8250054.JPG	64	Housewarming. Further testing Curran's futon	Dan Mortenson, Dave Erickson, Brett Heath-Wlaz	\N	Beca Erickson	\N
1403	P8250056.JPG	64	An and Meech. Meech knows something An doesn't know...	An Le, Meech Harrington	\N	Beca Erickson	\N
72	p3210056.jpg	9	\N	\N	2004-03-21 19:53:00	\N	\N
1404	P8300057.JPG	64	Grungy and Blue... Getting ready to raise the Techhouse Flag	2001-2002 President Sergio Garcia, 2000-2001 President Mike Plotz	\N	Beca Erickson	\N
1405	P8300059.JPG	64	The Techhouse Flag. ...in all its glory.	Sergio Garcia	\N	Beca Erickson	\N
1406	P8300061.JPG	64	Ethernet Production. Crimpin' Ain't Easy But It Sho' Is Fun	Evan Chan and Melissa Chun	\N	Beca Erickson	\N
1407	P9210002.JPG	64	David Reiss. 	\N	2001-09-21 00:00:00	Beca Erickson	Clara's room
1408	P9230014.JPG	64	Fun With Power Tools. Breaking out the Dremmel	Clara Kim and Kate Ho	2001-09-23 00:00:00	Beca Erickson	The Work Room
1409	P9230017.JPG	64	Fixing Up. Members fixing up the workroom during TechTime	Joe Hasbani, Mike Plotz	2001-09-23 00:00:00	Beca Erickson	Work Room
1410	P9240023.JPG	64	Dramatic... ...lighting at a Techhouse meeting	Mike Plotz, Justin Natale	2001-09-24 00:00:00	Beca Erickson	Lounge
1411	P9260003.JPG	64	Lounging. 	Chris Browne and Sergio Garcia	2001-09-26 00:00:00	Beca Erickson	Lounge
1412	P9260005.JPG	64	Rob Allen. Reminds me a little of Keith Schmidt	Rob Allen	2001-09-26 00:00:00	Beca Erickson	Lounge
1413	P9260017.JPG	64	Carrying The Torch. ...until the police kicked him off the Main Green	Mike Plotz	2001-09-26 00:00:00	Beca Erickson	Main Green
1414	P9260018.JPG	64	More Fire. 	Mike Plotz	2001-09-26 00:00:00	Beca Erickson	Main Green
1415	P9280020.JPG	64	Power Tools. CORDLESS DRILL!	Eric Cohen	2001-09-28 00:00:00	Beca Erickson	Work Room
1416	P9280021.JPG	64	Brett Heath-Wlaz. ...checks out his old stomping grounds.	Brett Heath-Wlaz	2001-09-28 00:00:00	Beca Erickson	Work Room
1417	P9280026.JPG	64	Smiles. Apparently, something was funny...	Joe Hasbani, David Eigen	2001-09-28 00:00:00	Beca Erickson	Work Room
1418	P9280029.JPG	64	WooHoo! Alex (unwittingly) rocks out to Pearl Jam.	Alex Hooker	\N	Beca Erickson	Work Room
1419	P9280032.JPG	64	Examining. Alum and Member examine something.	Brett Heath-Wlaz and Eric Cohen	2001-09-28 00:00:00	Beca Erickson	Work Room
1420	P9280033.JPG	64	Lounging. When there was a small TV	Mike Plotz, Clara Kim, Brett Heath-Wlaz, Nihal (?), David Reiss, Joe Hasbani	2001-09-28 00:00:00	Beca Erickson	Lounge
1421	P9280035.JPG	64	DJ. 	Chris Nemcosky	2001-09-28 00:00:00	Beca Erickson	Porch
1422	P9280036.JPG	64	Dancin'. 	Rob Allen	2001-09-28 00:00:00	Beca Erickson	Porch
1423	P9290043.JPG	64	David Hacks OS X	David Eigen, Mike Plotz, Clara Kim	2001-09-30 00:00:00	Beca Erickson	Apple Store
1424	P9300001.JPG	64	Brett Heath Wlaz. 	\N	2001-09-30 00:00:00	Beca Erickson	Work Room
1425	P9300003.JPG	64	Cleaning Up. 	Greg Baltazar	2001-09-30 00:00:00	Beca Erickson	Work Room
1426	P9300004.JPG	64	Before The New Work Bench. and after patching the paint	Trebuchet fram, Brett Heath-Wlaz	2001-09-30 00:00:00	Beca Erickson	Work Room
1427	P9300007.JPG	64	Pre-BBQ. Getting ready to squish some meat.	David Erickson, Curran Nachbar, Brett Heath-Wlaz	2001-09-30 00:00:00	Beca Erickson	Kitchen
1428	P9300010.JPG	64	Squishing Meat. Not Estrogen-Burgers	Curran Nachbar, David Erickson	2001-09-30 00:00:00	Beca Erickson	Kitchen
1429	P9300013.JPG	64	Chop-Saw. Projects Manager Chops Some Wood	David Eigen	2001-09-30 00:00:00	Beca Erickson	Work Room
1430	P9300015.JPG	64	BBQ. FOOOOOD	Kate Ho, Chris Nemcosky, Clara Kim, Curran Nachbar, Brett Heath-Wlaz, Eric Cohen, Joe Hasbani	2001-09-30 00:00:00	Beca Erickson	Porchh
1431	P9300020.JPG	64	Sam Gorstein. and his ginger-colored hair	Sam Gorstein	2001-09-30 00:00:00	Beca Erickson	Porch
1432	P9300021.JPG	64	BBQ. More Food	People	2001-09-30 00:00:00	Beca Erickson	Porch
1433	P9300025.JPG	64	Sctoo. 	Razvan Mirica, Scott McKenzie, An Le, Dan Mortenson, David Eigen, Joe Hasbani	2001-09-30 00:00:00	Beca Erickson	Porch
1434	P9300027.JPG	64	Friends. 	Shawn Bachan, Alex Hooker, and Sam Gorstein	2001-09-30 00:00:00	Beca Erickson	Porch
1435	P9300028.JPG	64	Just a little out of Focus. 	Meech Harrington	2001-09-30 00:00:00	Beca Erickson	Porch
1436	P9300030.JPG	64	Ketchup and Camera Wars. Spiffy Ketchup	David Erickson, Meech "Trigger-Happy" Harrington, Razvan Mirica	\N	Beca Erickson	Porch 9/30/01
1437	P9300032.JPG	64	Motion Blur. 	Sam Gorstein, Justin Natale	2001-09-30 00:00:00	Beca Erickson	Porch
1438	P9300033.JPG	64	Curran and Brett. 	Curran Nachbar and Brett Heath-Wlaz	2001-09-30 00:00:00	Beca Erickson	\N
1439	P9300036.JPG	64	Soda Bottles... ...and Alex in the background.	Alex Hooker	2001-09-30 00:00:00	Beca Erickson	Porch
1440	P9300039.JPG	64	Siblings. 	David Erickson and Beca Erickson	2001-09-30 00:00:00	Beca Erickson	Porch
1441	P9300044.JPG	64	Alex Hooker. 	Alex Hooker	2001-09-30 00:00:00	Beca Erickson	Porch
1442	P9300047.JPG	64	Pegboard Goes Up. Fixing up the work room.	David Eigen	2001-09-30 00:00:00	Beca Erickson	Work Room
1443	P9300048.JPG	64	And then it makes you die... Clara explains epidemiology to Mike.	Clara Kim, Mike Plotz	2001-09-30 00:00:00	Beca Erickson	Work Room
1444	PA060047.JPG	64	Juggling. Don't hit my nose...	Clara Kim, and Mikhaila (sp?)	2001-10-06 00:00:00	Beca Erickson	Lounge
1445	PA060050.JPG	64	Eric Cohen. 	Eric Cohen	2001-10-06 00:00:00	Beca Erickson	Lounge
1446	PA130058.JPG	64	LED Clock Trial #1. This is the first Meeting Street tray...which subsequently broke.	Clara Kim	2001-10-13 00:00:00	Beca Erickson	Work Room
1447	PA140059.JPG	64	Illumination. Soren demonstrates the LED clock.	Soren Spies	2001-10-14 00:00:00	Beca Erickson	Work Room
1448	PA140061.JPG	64	Production. Working on the LED Clock	Clara Kim and David Eigen	2001-10-14 00:00:00	Beca Erickson	Work Room
1449	PA140065.JPG	64	Where It's At. Soren points out his favorite spot in Techhouse	Soren Spies	2001-10-14 00:00:00	Beca Erickson	Work Room
1450	PA150069.JPG	64	Wiring. Precision work by Clara Kim	Clara Kim	2001-10-15 00:00:00	Beca Erickson	Work Room
1451	PA190007.JPG	64	Aaaack! The magnetic poetry board.	\N	2001-10-19 00:00:00	Beca Erickson	Lobby
1452	PA190010.JPG	64	Whistler's Mother. ...was Meech.	Meech Harrington	2001-10-19 00:00:00	Beca Erickson	Kitchen
1453	PA190011.JPG	64	Meech. ...annointed in beet juice.	Meech Harrington	2001-10-19 00:00:00	Beca Erickson	Kitchen
1454	PA210015.JPG	64	Studying Outside. 	Rob Allen	2001-10-21 00:00:00	Beca Erickson	Bobby-Su
1455	PA210017.JPG	64	Playing Guitar. Such a college-looking picture.	Meech Harrington	2001-10-21 00:00:00	Beca Erickson	Porch
1456	PA300022.JPG	64	In the kitchen... 	Mikka Pineda, Clara Kim	2001-10-30 00:00:00	Beca Erickson	Kitchen
1458	2Contactpaperdeigenclarak.jpg	65	Contact Paper Shelves. Putting contact paper on the shelves of the kitchen cabinet.	David Eigen, Clara	\N	camera number 2	TH kitchen
73	p3210057.jpg	9	\N	\N	2004-03-21 19:54:00	\N	\N
1459	3Elegentbeculaandnewshelves.jpg	65	New Shelves. Elegant Beca showing off the new shelves	Beca, ghost of Omar	\N	Meech	TH Kitchen
1461	5Mdpcookclarakcontact.jpg	65	Contact Cooking. Clara is playing with contact paper while mike is cooking.	Mike, Ghost of Omar, Clara	\N	Meech	TH Kitchen
1462	6Movingthecabnetclaradeigenmdp.jpg	65	Moving Cabnet. Ha! bet you thought they were moving a cabnet when in fact they were moving shelves.	Mike P., David Eigen, Clara	\N	demetri	TH kitchen
1464	9Trasformerwatching.jpg	65	Trasformers More than meets the eye. Bunch of ppl watching transformers.  The Glare from Chris' pants reveals his true identity as DJRaverTron.	Eric, Jordon, DJ Raver Chris, Melch, Jon, An, Evan	\N	eraserhead	TH Lounge
1465	bbq031.JPG	65	Hidden Camera Number 8 reveals... savage Techhousers feasting on the edibles that were hunted down at the local Stop & Shop	Agent 4532, Agent 4523, Angent4581, etc.	\N	32 Gague Man	TH poarch
1466	bbq032.JPG	65	Assorted people. of all different shapes and sizes.	\N	\N	Clara Kim	TH BBQ/ TH Poarch
1481	challp700.JPG	65	Tower of Pikachu. the first of what may become a world wide craze of stuffed animal stacking	dark blob #1, dark blob #2, Sock #3, foot #6.	\N	Pete	3rd Floor, the coolest floor
1482	chall001.JPG	65	Pikachu. Todem Pole of Pikachu	Kate, Tracy, An, Melissa, Mindori, Dan, Peter, David Eigen, Mike, Clara	\N	Third Floor Spy Camera	Third Floor Hallway
1483	chall002.JPG	65	Pikachu and Friends. Picachu and friends show Mike a few things about standing on other people	Tracy, An, Melissa, Mindori, Dan.	\N	Third Floor Spy Camera #8	3rd Floor Hallway
1485	challp704.JPG	65	Construction begins. On the Antum pole project.	Clara, Am, Melch	\N	pete	3rd Floor
1486	challp706.JPG	65	An holds his head high. or at least all the stuffed animals	Tracy, An, Ghost of Coolness	\N	pete	3rd floor
1487	chall004.JPG	65	An-tum Pole. What people do to An when he starts to meditate	An, Melissa, Francais	\N	Third Floor Hidden Camera #9	Techhouse 3rd Floor
1488	challp701.JPG	65	Hall shot. Gathering on the 3rd floor	Tracy, An, Melissa, Francais, Death Metal Dan, 4A person Beta, Frank, Pete, David Eigen, Beca, Mike	\N	Pete	3rd Floor
1489	challp709.JPG	65	Philip K Dick. in a pet section of a Walmart (Man or Astroman)	Melissa	\N	pete	3rd floor
1490	challp710.JPG	65	Excuse me. while I have a rockin Halloween	DJ raver Chris	\N	pete	3rd Level
1491	challp716.JPG	65	Tweaked. Chris gets his nose tweaked	DJ raver Chris	\N	pete	\N
1492	challp721.JPG	65	Roomate Envy. Dan, envious of his roomates facial hair, tries to grow facial of his own.  Dan's hair did not make it through the night, as tragically it got caught in the TH blender.  Still, the quesiton remains, how did the blender make it up the stairs on its own and what motive did it have for attacking dan's face.	Death Metal (mid life crisis) Dan.	\N	pete	3rd floor
1493	chall005.JPG	65	Puppet project. Peter acts out An's joke with his Penguins	Peter, An	\N	Meech	3rd Floor Hallway
1494	dIScream001.JPG	65	Chris Browne Revealed. Chris Browne's first pic in the archive that is not a groupe photo	Chris Browne, Justin, Alex	\N	Meech	Ice Cream Nite
1495	dIScream005.JPG	65	Insert your name here. 	\N	\N	Meech	\N
1496	dIScream006.JPG	65	I-scream, you-scream, an-scream! mmmmmmmmm an-scream....	An	\N	Meech	Ice Cream Nite
1497	dIScream007.JPG	65	Spoon Man. come together with your hand... Save me...	Andy, Serge, Eric	\N	Meech	Ice Cream Nite
1498	dIScream009.JPG	65	TH be stingy project. Meech is enjoying the frozen/expired milk which TH used instead of icecream, to cut costs.!	Justin, Alex, Meech	\N	Meech	Ice Cream Nite
1502	dIScream019.JPG	65	More ice cream --. Scoot, what happened to your lower body!?	Scott, Andy. Frances, Kate	\N	Mr. Mega Pixel	Ice Cream Nite
1478	bbq046.JPG	65	Where's Waldo. Can you find which TH members are missing from this photo	see members	\N	Beca Erickson	TH meeting
1479	bbq047.JPG	65	TECHOUSE 2001. there should be two H's in techhouse.	yep	\N	Beca Erickson	\N
1463	7PuttingonBackmdpclarakbecula.jpg	65	Putting back on Cabnet. Beca is putting the back on to the Cabnet while Mike and Clara watch	Clara, Beca, Terry, Agent 4932, Mike	\N	Meech	TH Basement
1504	dfire001.JPG	65	Night jug-ling. Soon there will be fire	\N	\N	Meech	\N
1506	dfire004.JPG	65	Hott Stuff. Mike's got some hot stuff in his hands	Mike	\N	Meech	\N
1467	bbq033.JPG	65	Looking Funny. Beca Stole Mike's Hot Dog while Mike was looking at the camera	Beca, Mike, Ikue	\N	Clara Kim	TH Porch
1468	bbq034.JPG	65	Havin fun. Mostly random TH ers having fun.	\N	\N	Clara Kim	TH porch
1469	bbq036.JPG	65	Rich's Demands. Rich demand that more fun must be had right now.	Francais, Kate, Scott, Rich	\N	Clara Kim	TH Porch
1473	bbq041.JPG	65	Hot Dog We have a Weiner. A shot of Beca and her half eaten hot dog.	Yotom, Beca	\N	Clara Kim	\N
1475	bbq043.JPG	65	More fun. more people eating, and thus having fun.	melissa, alex, Robert	\N	Clara Kim	TH BBQ
1477	bbq045.JPG	65	An's Meat. a close up of what's cookin'	\N	\N	Clara Kim	Grill
1503	dIScream020.JPG	65	Overwhelming with excitement. Jordan having more fun than he's had in YEARS, per order of Rich.	Jordan	\N	Meech	Ice Cream Nite
1499	dIScream010.JPG	65	Boyz in THa hood. some of da guys	Clara, Mike, An, Andy	\N	Meech	Ice Cream Nite
1460	4Handmouthserge.jpg	65	H.P. Lovecraft. What looks like Serge is really a monster	Joe, Serge	\N	Meech	TH Lib.
1500	dIScream011.JPG	65	On a full moon. much like a warewolf, vik transforms into super-root, the linux superhero.	Vik	\N	Meech	Ice Crean Nite
1501	dIScream013.JPG	65	After eating too much icecream. Chris B makes room for beer.	Serge, Chris B, Justin, Alex	\N	Meech	Ice Cream Nite
1522	brock004.JPG	66	Birdie. So if I flap my arms hard enough you says I can fly?	Rob	\N	\N	Rob's Room
1523	brock005.JPG	66	Billy Joel, not wait its Dave... No, that isn't a piano either	Dave	\N	\N	Dave's side of Rob's room
1524	brock006.JPG	66	deerr. Dancing for nickles....	\N	\N	\N	Rob's room
1525	brock009.JPG	66	Bad Hair Day. Chris finds out what happens when you stand too  close to a 747 on take off.	Chris	\N	\N	Chris's side of Rob's room
1526	brock013.JPG	66	Decisions. An deep in thought about this one...  Is this where you store women, where you get women, or perhaps, this sign indicates that this room is for women to use.	jane doe, An	\N	\N	3rd floor
1527	brock014.JPG	66	Having Fun. Terry and Rich maintaining the fun levels of the Second Floor	Terry,Rich	\N	\N	2nd Floor hall way
1528	brock015.JPG	66	Dizy. Orient me	Justin	\N	\N	the square room with round walls
1529	brock016.JPG	66	Heliometer. a visual telescope that has a divided ovjective designed for measuring the apparent diameter of the sun but also used for measuring angles between celestial bodies or between points on the moon	Vik, An, David, Heliometer (not present)	\N	\N	stair well
1530	chang003.JPG	66	Shawn. Shawn being his normal self	shawn	\N	\N	lib-er-ary
1531	chang004.JPG	66	David. CS TA by day, hacker by night	David R.	\N	\N	Lib-er-ary
1532	chang005.JPG	66	EEEEeeeerrrrrrrr. meow	Tom	\N	\N	Lib-er-ary
1533	chang007.JPG	66	Stay within the lines. An spends his Friday night coloring Meech's shirt green	An, Demetri	\N	\N	TH Lib-er-ary
1534	dTvshtas001.JPG	66	Cookies. Soren looks at camera while Justin dreams of the cookies that were once on that plate	Soren, Justin	\N	\N	Work room
1535	dTvshtas002.JPG	66	I shall call it mini Mac. Yet another picture of Brett with some circuitry... Clock brains mostly.	Brett	\N	\N	TH Alum weekend (unoffcial)
1536	dTvshtas003.JPG	66	Must not bleed.... Serge building a guitar stand and trying not to bleed at the same time	serge	\N	\N	th work room
1537	dTvshtas005.JPG	66	Up Close and Personal. DJ Raver Chris up close	Raver Chris	\N	\N	techno land
1538	dTvshtas006.JPG	66	Fun Arrives. Rich, overseeing the arrival of an impliment of fun, thus increasing the amount of fun that can be had.	all of them	\N	\N	\N
1539	dTvshtas007.JPG	66	It's Here. Wrapped in plastic	\N	\N	\N	\N
1540	dTvshtas008.JPG	66	Fun Spot. Placing TV in appropriate spot to optimize fun.	\N	\N	\N	\N
1541	dTvshtas009.JPG	66	Debris. That in which our 65 in friend had arrived, has served its purpose.	\N	\N	\N	\N
1542	dTvshtas010.JPG	66	Return of the Curse. With our new friend in place, we gaze with eyes of fondness.	\N	\N	\N	\N
1543	dTvshtas011.JPG	66	Another angle. 	\N	\N	\N	\N
1544	dTvshtas012.JPG	66	Yet another angle. 	\N	\N	\N	\N
1545	dTvshtas013.JPG	66	Final Fantasy. One way you can tell whether you're in techhouse or not.	\N	\N	\N	\N
1546	dTvshtas015.JPG	66	Death Metal Dan. A rare glimpse into the world of death metal dan	death metal dan	\N	\N	death metal dan's room
1547	dTvshtas016.JPG	66	The missing link. Evidence against us evolving from apes... we evolved from Warewolves	Meech, Mini Meech	\N	\N	\N
1548	gar016.JPG	67	Scary Ghost. There is nothing more scary than ghosts than ghosts made out of thin plastic	casper, skullhead, Graham, Soren, and several other ghosts that seem to haunt techhouse.	\N	\N	Javasppok 2001 Setup
1549	gar017.JPG	67	Decoraitoning. Brady decorates the mantel for Java spook	Brady	\N	\N	TH Lounge
1550	gar018.JPG	67	Spider Man. A web is constructed in the corner to decorate for Java Spook	Spider Man	\N	\N	Javaspook 2001
1551	gar020.JPG	67	Packed up. The whole of the Lounge Packed into the Library	Joe (trapped under boxes behind the TV	\N	\N	TH Library
1552	gar021.JPG	67	MMM Foodness. Food is prepared for the Java Spook goodness.	Clara	\N	\N	TH Kitchen
1553	gar022.JPG	67	David Feuer. David washes dishes... While food is prepared	David F.	\N	\N	TH Kitchen
1554	gar023.JPG	67	Worried. Mike seems a bit concerned in this picture.  Perhaps its because there was once food in the pan, and now its gone, or maybe he is trying to figure out how to get food into the pan or perhaps he is thinking, "How many licks DOES it take to get to the center of a Tootsie POP.	MDP	\N	\N	TH Kitchen
1555	gar024.JPG	67	Foodness. Yummy, Yummy, Drool, foodness	\N	\N	\N	TH Kitchen
1556	gar025.JPG	67	Pot Head. Francais models the TH pots and emphasizes their dual uses as magic helmets.	Brandy, Francais	\N	\N	TH Lounge
1557	gar026.JPG	67	Pre-Spook Drinkin. Pete gets a pre-java spook buzz from drinking caffinated beverages in order to enhance the experience.	Pete, Pete's Parrot	\N	\N	TH Pete's room 202
1558	gar027.JPG	67	Set Up. Some throwback 70's groopies setup some band equipment before the event	Key Grip(Jesse), Grip 3 (Matt)	\N	\N	TH Lounge
1559	gar028.JPG	67	More food. So Much Food!!! Why must I wait to eat it?	FOOOOOOOOOOD	\N	\N	TH Kitchen
1560	gar029.JPG	67	Pre Spook Dancin. Dan, always wanting to impress the ladies, practices his dance movess before Java spook.  His dancing technique includes such moves as, the jump, the twist, the bend, and something not quite exactly unlike teh meech.	Dan, thing	\N	\N	302, The Rockin Room of Rockness
1507	dfire005.JPG	65	Pyromania. 6 flaming torches of death	\N	\N	Meech	\N
1508	dfire010.JPG	65	Casual Passer By-ers. are awed by fire	Lou, Skoot, Melch, Dave, Rasvan	\N	Meech	\N
1509	dfire012.JPG	65	Yep. yes	Alex, David F., Scott	\N	Meech	\N
1561	gev002.JPG	67	Primative Thignal. This primative THignal, turns mild mannered eazy going Rob, into the devious master-mind who is EVIL Rob.	Rob, Evil Rob	\N	\N	outside the Tech-cave
1562	gev003.JPG	67	Bouncers. Eric, bounces ppl with a smile, while Andy and Skoot back him up	Scott, Andy, Eric	\N	\N	Java Spook
1563	gev005.JPG	67	Crowd. Java Spook people.	\N	\N	\N	\N
1564	gev006.JPG	67	More People. including one troublesome ghost in the foreground	\N	\N	\N	TH Lounge, Mechanical Arms Setup
1565	gev010.JPG	67	An, Francais. pose for a picture at Java Spook	An Francais	\N	\N	Jabba Spook 2001
1566	petj0801.JPG	67	Sound Check. Chris, checking his equipment, durring the setup of the mechanical arms	Chris	\N	\N	Jabba Spook
1567	petj0802.JPG	67	The Mechanical Arm. The Robotic Serf prepares the Mechanical Arm for use.	Robtic Serf	\N	\N	TH Lounge
1568	petj0803.JPG	67	Jimmi Skaloukis. Introduces the Amazing Mechanical Arms	False Meech	\N	\N	Techhouse
1569	petj0810.JPG	67	THE MECHANICAL ARMs. The Mechanical Arms in Action	\N	\N	\N	\N
1570	petj0812.JPG	67	The Instrument of Choise. A prime space built instrument of the Mechanical Arms	the instrument (yes it is a person)	\N	\N	TH
1571	petj0814.JPG	67	Tolerent. People left in the crowd after the Mech. Arms played	Beca, Dave Lou	\N	\N	TH
1572	petj0815.JPG	67	Body Guards... Bouncers still having fun, dreaming about becoming body guards	Andy, Erk, Evan	\N	\N	TH
1573	petj0819.JPG	67	Java Spook ratings. An asks casual passer byer what he thought of Java Spook.  Victum gave it good reviews	\N	\N	\N	\N
1574	petj0822.JPG	67	D-Licks. 	\N	\N	\N	\N
1575	petj0825.JPG	67	Above the crowd she sings. 	\N	\N	\N	\N
1576	petj0826.JPG	67	Fire. Fire juggling	\N	\N	\N	\N
1577	petj0827.JPG	67	More fire.... is there anything else	\N	\N	\N	\N
1578	petj0830.JPG	67	Jordon. Enjoying fire, clipon parrots	Jordon	\N	\N	TH
1579	petj0831.JPG	67	More people. 	Melch, Francais, Eric	\N	\N	TH
1580	JS0001.JPG	68	Early Evening. 	assorted peoples	2001-11-04 00:00:00	Beca Erickson	Lounge
1581	JS0002.JPG	68	Starting to Dance. 	assorted peoples	2001-11-04 00:00:00	Beca Erickson	Lounge
1582	JS0003.JPG	68	Baked Goodies. 	Scott, Frances	2001-11-04 00:00:00	Beca Erickson	Lounge
1583	JS0004.JPG	68	Singin' His Heart Out. 	\N	2001-11-04 00:00:00	Beca Erickson	Lounge
1584	JS0005.JPG	68	Bouncer. Gives me the raspberries.	Eric Cohen	2001-11-04 00:00:00	Beca Erickson	Porch
1585	JS0006.JPG	68	Illuminating Techhouse. All great thoughts occur on Bobby-Su.	Rob, Nihal (?), Lou	\N	Beca Erickson	\N
1586	JS0007.JPG	68	Proto-Thignal. Giving us subtle hints.	\N	2001-11-04 00:00:00	Beca Erickson	Porch
1587	JS0008.JPG	68	Cooling Off. Check out that coat!	Eric, Razvan, Chris, Andy, Rob	2001-11-04 00:00:00	Beca Erickson	Porch
1588	JS0009.JPG	68	Brandy Cooks. ...is the hostess with the mostest...	Brandy Cooks, Social Chair	2001-11-04 00:00:00	Beca Erickson	Lobby
1589	JS0010.JPG	68	Chatting on the Couches. ...he's about to label everything.	Laura, someone I don't know, and Rich	2001-11-04 00:00:00	Beca Erickson	Lounge
1590	JS0011.JPG	68	Merrrrp! Clara's friend Ryan visits from Harvard	(Wolfe), Ryan, Clara	2001-11-04 00:00:00	Beca Erickson	Lounge
1591	JS0012.JPG	68	Backstage. I had to disguise myself as a groupie to get this shot...	Meech	2001-11-04 00:00:00	Beca Erickson	Library
1592	JS0013.JPG	68	People Socializing. 	way too many for me to list right now	2001-11-04 00:00:00	Beca Erickson	Lounge
1593	JS0014.JPG	68	Sitting. We had tables, too.	Adam, Frances, Pete	2001-11-04 00:00:00	Beca Erickson	Lounge
1594	JS0015.JPG	68	Joe Hasbani. Mr. "I'm not going to play at Javaspook."	Joe Hasbani	2001-11-04 00:00:00	Beca Erickson	\N
1595	JS0016.JPG	68	Weird Foreshortening. 	Matt Moscardi, Dave	2001-11-04 00:00:00	Beca Erickson	Lounge
1596	JS0017.JPG	68	Fire! Heh.	Mike Plotz	2001-11-04 00:00:00	Beca Erickson	\N
1597	JS0018.JPG	68	Outside the Event.... It's an interesting shot...you have to give me that.	people	2001-11-04 00:00:00	Beca Erickson	Porch
1598	JS0019.JPG	68	Still No Flash. And Terry has wings!	people	2001-11-04 00:00:00	Beca Erickson	Porch
1599	JS0020.JPG	68	Cute Couple. 	Rich and Terry	2001-11-04 00:00:00	Beca Erickson	Porch
1600	JS0021.JPG	68	Glowing Poi? 	\N	2001-11-04 00:00:00	Beca Erickson	Porch
1601	JS0022.JPG	68	More Fire! 	lots of people	2001-11-04 00:00:00	Beca Erickson	Porch
1602	JS0023.JPG	68	Back Inside. 	People	2001-11-04 00:00:00	Beca Erickson	Lounge
1603	JS0024.JPG	68	The Mech Arms. Getting ready to perform	Meech's Brother Meech, Meech, Chris	2001-11-04 00:00:00	Beca Erickson	Lounge
1604	JS0025.JPG	68	People Listening to the Mech Arms. 	people	2001-11-04 00:00:00	Beca Erickson	Lounge
1605	JS0026.JPG	68	Meech's Brother Meech. Getting into his music.	Meech's brother Meech	2001-11-04 00:00:00	Beca Erickson	Lounge
1606	JS0027.JPG	68	The Mech Arms. Meech's Custom Machine	Meech's Brother Meech, Chris, Meech	2001-11-04 00:00:00	Beca Erickson	Lounge
1607	JS0028.JPG	68	Funny Face. Alex and Chris	Alex, Chris	2001-11-04 00:00:00	Beca Erickson	Porch
1608	JS0029.JPG	68	Hmmm...Thignal? We SO should have thought of this before...	\N	2001-11-04 00:00:00	Beca Erickson	Porch
1609	JS0032.JPG	68	Spider! ...it's only a model.	David, Pete	2001-11-04 00:00:00	Beca Erickson	Porch
1610	JS0033.JPG	68	Gettin' Down. First of several good ones...	Doobie, Mikka, Rob	2001-11-04 00:00:00	Beca Erickson	Lounge
1611	JS0034.JPG	68	Gettin' Down. Rob is our new Keith Schmidt.	An, Mikka, Rob	2001-11-04 00:00:00	Beca Erickson	Lounge
1612	JS0035.JPG	68	More Dancing. 	Rob, Chris, Mikka, David Feuer, Laura,, Dave	2001-11-04 00:00:00	Beca Erickson	Lounge
1613	JS0036.JPG	68	Dancin'. 	Dave, Pete, Melch	2001-11-04 00:00:00	Beca Erickson	Lounge
1614	JS0037.JPG	68	Funky. It was soooo hard to get these shots.	Chris, Mikka, Dave	2001-11-04 00:00:00	Beca Erickson	Lounge
1615	JS0038.JPG	68	D Licks. I can't spell, sorry.	\N	2001-11-04 00:00:00	Beca Erickson	Lounge
1616	JS0039.JPG	68	Dave got all the funk... ... in the family - he has 3 times the funk of a normal human being.	Dave	2001-11-04 00:00:00	Beca Erickson	Lounge
1617	JS0041.JPG	68	Joe. ...gets the idea.	Joe	2001-11-04 00:00:00	Beca Erickson	Porch
1618	JS0042.JPG	68	Adam and Mariana. Adam looks like he has a halo.	Adam and Mariana	2001-11-04 00:00:00	Beca Erickson	Porch
1619	JS0043.JPG	68	Singing Up a Storm. They really made the evening.	\N	2001-11-04 00:00:00	Beca Erickson	Lounge
1620	JS0044.JPG	68	No Tables. People moved them out for the sole purpose of dancing.	people	2001-11-04 00:00:00	Beca Erickson	lounge
1621	JS0045.JPG	68	More Funk. 	Dave	2001-11-04 00:00:00	Beca Erickson	Lounge
1678	P2190016.JPG	70	Big Smile. 	David Feuer	2002-02-19 00:00:00	Beca Erickson	First floor hallway
1622	JS0046.JPG	68	Even More Funk. Mikka dances on a chair!	Mikka, Dave	2001-11-04 00:00:00	Beca Erickson	Lounge
1623	JS0047.JPG	68	Dancing. 	Mikka and Dave	2001-11-04 00:00:00	Beca Erickson	Lounge
1624	JS0048.JPG	68	Mix Master Morty and Xaos. 	Dan and Chris	2001-11-04 00:00:00	Beca Erickson	Lounge
1625	JS0050.JPG	68	Doin' the Meech. 	Meech, Adam, Lou	2001-11-04 00:00:00	Beca Erickson	Porch
1626	JS0051.JPG	68	Time To Go! Happy Spookers	people don't know surrounding Melch	2001-11-04 00:00:00	Beca Erickson	Lobby
1627	JS0053.JPG	68	Fire Juggling. One last shot...	Mike	2001-11-04 00:00:00	Beca Erickson	Porch
1628	peg001.JPG	69	X Box. John Stairs at the wonder that is the X box	John	\N	\N	\N
1629	peg002.JPG	69	X Box Approval. X Box demo shows gets good reviews	Chris, Dave, Sergio, Jordon	\N	\N	X Box trial night
1630	peg003.JPG	69	Techhouse game junkies. stairing at the X Box	\N	\N	\N	TH X Box Trial
1631	peg006.JPG	69	The X Box, Box. The Box which is the X Box	John, Fox, Socks	\N	\N	TH X Box Trial
1632	peg017.JPG	69	Game. Photos of the Game they were playing	game	\N	\N	\N
1640	peg034.JPG	69	Peg Board Construction. Peg board being constructed	David Eigen	\N	\N	TH kitchen Nov. 8th
1641	peg037.JPG	69	More constuction. David Screws Screws	David F.	\N	\N	TH kitchen
1642	peg040.JPG	69	Pyrophone Demo. Meech, Showing off one tube of the pyrophone	Demetri	\N	\N	\N
1643	peg045.JPG	69	Peg Board. Completed Peg Board	MS	\N	\N	TH Kitchen
1644	peg047.JPG	69	Spinach. I'm strong to the Finish cause I easts me spinich	Olive Oil (Laura), Popeye (Joe)	\N	\N	2nd floor
1651	P2020017.JPG	70	MAME Cabinet. In Progress	David "MAME Meister" Erickson	2002-02-02 00:00:00	Beca Erickson	Work Room
1652	P2020019.JPG	70	MAME Cabinet. 	\N	2002-02-02 00:00:00	Beca Erickson	Work Room
1653	P2020020.JPG	70	MORE MAME. Meech also works on the MAME Cabinet	Meech Harrington	2002-02-02 00:00:00	Beca Erickson	Work Room
1654	P2020021.JPG	70	Um...Fantasy MAMEing Society? I know, that was uncalled for.	Meech Harrington, Chris Nemcosky, Rob Allen, Jordan Parker, David Erickson, An Le, Joe Hasbani	2002-02-02 00:00:00	Beca Erickson	Work Room
1655	P2020022.JPG	70	Iron Chef Shawn Bachan. 	Martha Stewart, Shawn Bachan	2002-02-02 00:00:00	Beca Erickson	Kitchen
1656	P2020024.JPG	70	Joystick Fondling. 	David Erickson, Meech Harrington, Chris Nemcosky	2002-02-02 00:00:00	Beca Erickson	Work Room
1657	P2020025.JPG	70	Behind the Joystick. 	David Erickson, Meech Harrington	2002-02-02 00:00:00	Beca Erickson	Work Room
1658	P2020026.JPG	70	Jordan Ponders the Meaning of MAME. 	Jordan Parker	2002-02-02 00:00:00	Beca Erickson	Workroom
1659	P2020027.JPG	70	Things that make you go "hmmm...". and a T-square	Chris Nemcosky	2002-02-02 00:00:00	Beca Erickson	Workroom
1660	P2020032.JPG	70	No, this one goes here... Fixing the Falcon	Joe Hasbani, David Eigen, Meech Harrington	2002-02-02 00:00:00	Beca Erickson	Workroom
1661	P2020033.JPG	70	(Omar has teeth.). Remember to lock the door & deadbolt.	Joe, Jordan, Dave, Chris N., Yotam, Jordan, Rob	2002-02-02 00:00:00	Beca Erickson	Workroom
1662	P2020036.JPG	70	FISH! The completed Macquarium.	Big Fish, Dumbass Little Fish	2002-02-02 00:00:00	Beca Erickson	Kitchen
1663	P2020038.JPG	70	Kitchen. Jordan comes by for a chat.	Jordan Feil, Curran Nachbar	2002-02-02 00:00:00	Beca Erickson	Kitchen
1664	P2030001.JPG	70	Wire-Crazy. Meech and Joe go berserk.	Meech Harrington, Joe Hasbani	2002-02-03 00:00:00	Beca Erickson	Work Room
1665	P2030002.JPG	70	More Wiring. 	Meech's hands	2002-02-03 00:00:00	Beca Erickson	Work Room
1666	P2030003.JPG	70	More Wiring. 	Meech Harrington and Joe Hasbani	2002-02-03 00:00:00	Beca Erickson	Work Room
1667	P2030004.JPG	70	The New Work Bench. Ain't it purty?	Workbench	2002-02-03 00:00:00	Beca Erickson	Work Room
1668	P2030005.JPG	70	This thing is gonna work? 	Razvan Mirica, Meech Harrington	2002-02-03 00:00:00	Beca Erickson	Work Room
1669	P2030006.JPG	70	Officers' Meeting. 	Yotam Gingold (VP), Brandy Cooks (Social Chair), Razvan Mirica (Treasurer)	2002-02-03 00:00:00	Beca Erickson	Work Room
1670	P2030043.JPG	70	Super Bowl. 	lots of people	2002-02-03 00:00:00	Beca Erickson	Lounge
1671	P2030044.JPG	70	3 TVs. 	lots of people	2002-02-03 00:00:00	Beca Erickson	Lounge
1672	P2030045.JPG	70	The Audience. 	lots of people	2002-02-03 00:00:00	Beca Erickson	Lounge
1673	P2030046.JPG	70	El Presidente. Sergio Garcia	Sergio Garcia	2002-02-03 00:00:00	Beca Erickson	Lounge
1674	P2040007.JPG	70	Last Minute Touches. Getting the MAME Cabinet ready for Video Game Night	Chris Nemcosky, David Eigen, Sergio Garcia, David Erickson, Rob Allen	2002-02-04 00:00:00	Beca Erickson	Work Room
1675	P2040008.JPG	70	More Last Minute... ...than the picture taken a minute ago.	David Eigen, Chris Nemcosky, Sergio Garcia, David Erickson, Rob Allen	2002-02-04 00:00:00	Beca Erickson	Work Room
1676	P2040009.JPG	70	Last Minute Wires. 	Chris Nemcosky, Sergio Garcia, David Erickson	2002-02-04 00:00:00	Beca Erickson	Work Room
1677	P2070014.JPG	70	Knitting Knight. So much yarn!	Frances, Melissa, David, Somebody, Eric	2002-02-07 00:00:00	Beca Erickson	Lounge
1647	P2010010.JPG	70	This is our Library... ...and that is our server.	David Reiss, Beca Erickson, potential recruits	2002-02-01 00:00:00	Beca Erickson	Library, Cheese Night
1648	P2010012.JPG	70	Dan the Pretzel Man. Not the first Dan to attempt to smoke unusual foodstuffs.	Dan Mortenson	2002-02-01 00:00:00	Beca Erickson	Lounge, Cheese Night
1650	P2010016.JPG	70	Less Cheese. ...than before.	David Reiss, David Erickson	2002-02-01 00:00:00	Beca Erickson	Lounge, Cheese Night
1633	peg021.JPG	69	An still ponders the sign. An thinks he has an answer to what the sign means, explains to Pikachu	Woman, Pikachu, An	2001-11-15 00:00:00	\N	\N
1646	P2010008.JPG	70	Cheese Night. Potential recruits eating cheese.	\N	2002-02-01 00:00:00	Beca Erickson	Lounge, Cheese Night
1635	peg023.JPG	69	A Woman.... who is surprised to see pickachu,	\N	2001-11-15 00:00:00	\N	\N
1636	peg024.JPG	69	An Marvels. over what he has discovered.	An, Tracy	2001-11-15 00:00:00	\N	3rd floor
1637	peg025.JPG	69	Overseeing discovery. Mike, too, now knows what the sign means...	MDP	2001-11-15 00:00:00	\N	3rd Floor
1638	peg028.JPG	69	Faint, Pickachu faints from all the excitment	Pikachu	2001-11-15 00:00:00	\N	\N
1639	peg029.JPG	69	The End. Tracy heads back to her room	Tracy	2001-11-15 00:00:00	\N	3rd Floor
1679	P2190019.JPG	70	The Tower of Cookie. ...makes me nervous.	\N	2002-02-19 00:00:00	Beca Erickson	Kitchen
1680	P2190023.JPG	70	Almond Cookies. 	David Reiss	2002-02-19 00:00:00	Beca Erickson	Kitchen
1681	P2190024.JPG	70	Cookie-Dough Cookies. Almost ready	\N	2002-02-19 00:00:00	Beca Erickson	Kitchen
1682	P2190025.JPG	70	500 Cookies. ready for consumption	\N	2002-02-19 00:00:00	Beca Erickson	Lounge
1683	P1010003.JPG	71	Shrimp Tempura. ...for the feast!	Deep-Fried Shrimp, Mikka	2002-03-29 00:00:00	Beca Erickson	Kitchen
1684	P1010011.JPG	71	Feasting. 	Irwin, Serge, Evan, Len, Clara, Mike, Mikka	2002-03-29 00:00:00	Beca Erickson	Lounge
1685	P1010012.JPG	71	I have Mikka's head. 	Clara, Mike, Tracy, Kate, Mikka, Martha, Shawn	2002-03-29 00:00:00	Beca Erickson	Lounge
1687	P1010024.JPG	71	The Techhouse Dance Party. Consists of....Mikka!	Mikka	\N	Beca Erickson	Lounge
1688	P1010032.JPG	71	Shawn gets even... ...at Clara for picking him up.	Serge, Shawn, Clara	\N	Beca Erickson	Lounge
1689	P1010033.JPG	71	Tuckered Out. 	Mikka	\N	Beca Erickson	Lounge
1690	P1010035.JPG	71	Shawn Joins The Party! 	Mikka, Shawn	\N	Beca Erickson	Lounge
1691	P1010037.JPG	71	Len Cooking. 	Len	\N	Beca Erickson	Kitchen
1692	P1010039.JPG	71	Candlestick Acrobatics. Or Clara being bendy...	Clara/Mike, Mike/Clara	\N	Beca Erickson	Lounge
1693	P3310017.JPG	71	Sinking! 	Meech	2002-03-31 00:00:00	Beca Erickson	Lounge
1694	P3310024.JPG	71	Crowded. How many people can you fit in a ball pit?	Edgar, Mikka, Len, Meech, Martha, Clara	2002-03-31 00:00:00	Beca Erickson	Lounge
1695	P3310033.JPG	71	Yeah... Frances, Mike, and Clara reflect on the silliness.	Frances, Mike, Clara	2002-03-31 00:00:00	Beca Erickson	Lounge
1696	P4060002.JPG	72	Barbecue. Eating Things	Lou, Chris M., Dan, Andy, Sue, David Eigen	2002-04-06 00:00:00	Beca Erickson	Porch
1697	P4060004.JPG	72	Happy Feet. They've got those happy feet...	Meech and Serge	2002-04-06 00:00:00	Beca Erickson	Patriot's Court
1698	P4060006.JPG	72	Bunny Sacrifice. Is nothing sacred?	Mikka, Dave	2002-04-06 00:00:00	Beca Erickson	Patriot's Court
1699	P4060007.JPG	72	Cult of the Bunny. And soon we will write BunnyOS...	Eric, Chris M., Chris N., Mikka, Dave	2002-04-06 00:00:00	Beca Erickson	Patriot's Court
1700	P4060011.JPG	72	Smiling Bravely. It's cold out here...	Johanna, Filipa, Cheryl	2002-04-06 00:00:00	Beca Erickson	Porch
1701	P4060012.JPG	72	One Thumb. But that's only a rating of the temperature...	Michael Tschantz, Kern, Adam, and Meech	2002-04-06 00:00:00	Beca Erickson	Porch
1702	P4060013.JPG	72	Cold. But not icy!	Clara and Kate	2002-04-06 00:00:00	Beca Erickson	Porch
1703	P4060016.JPG	72	Siege! The treb needs a name...	Rob, Lou, Chris M., Joe	2002-04-06 00:00:00	Beca Erickson	\N
1704	P4060017.JPG	72	Why is everyone shivering? ...Meech wonders...	Adam, An, Martha, Meech	2002-04-06 00:00:00	Beca Erickson	Bobby-Su
1705	P4060018.JPG	72	Martha has happy feet... ...in red shoes...	Irwin, Eric, Martha, Meech, Sue, John	2002-04-06 00:00:00	Beca Erickson	Bobby-Su
1706	P4060022.JPG	72	Achoo! Got enough tissue?	Mikka	2002-04-06 00:00:00	Beca Erickson	Patriot's Court
1707	P4060023.JPG	72	This is not a rear-projection... ...that is actually the real sky.	An and John	2002-04-06 00:00:00	Beca Erickson	Porch
1708	P4060025.JPG	72	Vogue. Strike A Pose	Mikka and Shawn	2002-04-06 00:00:00	Beca Erickson	Porch
1709	P4060026.JPG	72	Dusk Falls. 	Sue	2002-04-06 00:00:00	Beca Erickson	Porch
1710	P4060030.JPG	72	Hari and Sophia. Missed out on the food...	Hari, Sophia	2002-04-06 00:00:00	Beca Erickson	Library
1711	P4060032.JPG	72	The MAME Cabinet. After the barbecue, everyone piles into the pool room...	um....lots of people...	2002-04-06 00:00:00	Beca Erickson	Pool Room
1712	P4060034.JPG	72	More MAME. 	\N	2002-04-06 00:00:00	Beca Erickson	Pool Room
1713	P4060037.JPG	72	Uncomfortable Bench. It's not that bad, but still...	Eric, An, and Adam	2002-04-06 00:00:00	Beca Erickson	Pool Room
1714	P4150078.JPG	72	Officer Elections. 	\N	2002-04-15 00:00:00	Beca Erickson	Lounge
1715	P4150079.JPG	72	Officer Elections. 	\N	2002-04-15 00:00:00	Beca Erickson	Lounge
1716	P4170082.JPG	72	Martial Arts. 	\N	2002-04-17 00:00:00	Beca Erickson	Lincoln Field
1717	P4180085.JPG	72	Saturday Morning, Spring Weekend. 	\N	2002-04-18 00:00:00	Beca Erickson	Patriots' Court
1718	P4200086.JPG	72	Buff TH Women. After a MEZCLA Performance	Johanna Belda and Mikka Pineda	2002-04-20 00:00:00	Beca Erickson	\N
1720	P4280001.JPG	73	People Eating Food. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1721	P4280004.JPG	73	Pete Hopkins. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1722	P4280005.JPG	73	Kate and Midori. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1723	P4280006.JPG	73	More of People Eating. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1724	P4280007.JPG	73	Prez and VPrez. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1725	P4280008.JPG	73	Razvan and Mikka. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1726	P4280009.JPG	73	People Listening to Someone Talking. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1727	P4280010.JPG	73	Len and An. Playing some kind of game.	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1728	P4280011.JPG	73	David Erickson. Lecturing on the history of Techhouse....or something.	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1729	P4280012.JPG	73	Meech. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1730	P4280013.JPG	73	Yotam and Adam. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1731	P4280014.JPG	73	Megan gets her TH account. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1732	P4280016.JPG	73	Johanna, Megan, and the back of Curran's head. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1733	P4280018.JPG	73	Chris Nemcosky and John Bankaad. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1734	P4280019.JPG	73	More people socializing. The captioner is getting tired.	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1735	P4280020.JPG	73	More Socializing. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1736	P4280028.JPG	73	Curran and Joe. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1737	P4280029.JPG	73	Curran and Joe. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1738	P4280030.JPG	73	Serge. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1739	P4280031.JPG	73	Mikka Defies Gravity. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1740	P4280033.JPG	73	Mike is Superhuman. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1741	P4280034.JPG	73	More of Mike being Superhuman. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1719	m29.jpg	72	Mikka's Masterpiece. a clean, organized freezer	\N	\N	Mikka	TH Kitchen
1742	P4280036.JPG	73	Melch, Dave, and Chris N. 	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1743	P4280037.JPG	73	Dog Pile! Mikka is getting squished.	\N	2002-04-28 00:00:00	Beca Erickson	Lounge
1745	150-5079_IMG_small.jpg	74	Mike Fried. 	\N	\N	Liz Thompson	Senior Week 2002
1746	150-5090_IMG_small.jpg	74	Michael Atkins, Liz Thompson, and Mike Fried. 	\N	\N	David Schuster	Wriston, Senior Week 2002
1748	05240037.JPG	75	Mike Plotz. 	\N	2002-05-24 00:00:00	Clara Kim	Campus Dance
1749	05240001.JPG	75	Clara and An. with An wearing a Pikachu face	\N	2002-05-24 00:00:00	Curran Nachbar	Campus Dance
1750	05240002.JPG	75	Laura Brion. ....in neat blue lizards!	\N	2002-05-24 00:00:00	Curran Nachbar	Campus Dance
1751	05240003.JPG	75	So we beat on, boats against the current, borne back ceaselessly into the past. Chris and Sara ponder the years since Gatsby's tragic death.	Chris Mastrangelo and Sara Grady	2002-05-24 00:00:00	Curran Nachbar	Campus Dance
1753	05250001.JPG	76	Brett Comes to Visit. 	Brett Heath-Wlaz ('01)	\N	Clara Kim	Clara's Room, Commencement Weekend 2002
1754	05250002.JPG	76	Liz is Here! 	Liz Thompson ('01)	\N	Clara Kim	Clara's Room, Commencement Weekend 2002
1759	P1010009.JPG	76	Waterfire. 	\N	2002-05-26 00:00:00	Beca Erickson	Waterplace Park
1762	P1010011.JPG	76	More Waterfire. 	\N	2002-05-26 00:00:00	Beca Erickson	Waterplace Park
1763	P1010012.JPG	76	Pensive. Marianna appreciates the blaze...	Marianna Mihalusova ('04)	2002-05-26 00:00:00	Beca Erickson	Waterplace Park
1764	P1010023.JPG	76	Dancing beneath the Turk's Head. I'll lighten this picture more for those of you with PCs	Mikka Pineda ('04), Marianna Mihalusova ('04)	2002-05-26 00:00:00	Beca Erickson	The Turk's Head Building
1765	com001	77	Marching. Jordan Feil and Niq Beaudrot	\N	2002-05-27 00:00:00	Curran Nachbar	Commencement
1766	05270020.JPG	77	Clara Kim Commencing. 	Clara Kim ('02)	\N	Nam Kim	\N
1767	P1010027.JPG	77	Mike Plotz and Family. 	Mike Plotz ('02), Martha Plotz, Richard Plotz, Judy Plotz	2002-05-27 00:00:00	Beca Erickson	Leung Gallery
1768	P1010036.JPG	77	Mike Fried... ...now has his diploma!	\N	2002-05-27 00:00:00	Beca Erickson	CIT 4th Floor
1769	P1010039.JPG	77	Smiling for the Camera. Brett and Curran	\N	2002-05-27 00:00:00	Beca Erickson	CIT 4th Floor
1771	party001.JPG	78	Mmmmm....Potato Chips. 	Soren Spies	2002-06-30 00:00:00	Curran Nachbar	Curran's End of Year Party
1772	party002.JPG	78	Anticipation of Food. 	Joe, Mike, Lou	2002-06-30 00:00:00	Curran Nachbar	Curran's End of Year Party
1773	party003.JPG	78	Beca Looks Up... ...from her proto-bedspread	Beca	2002-06-30 00:00:00	Curran Nachbar	Curran's End of Year Party
1774	party004.JPG	78	People Socializing. 	Clara, Brett, Tom, Michelle	2002-06-30 00:00:00	Curran Nachbar	Curran's End of Year Party
1775	party005.JPG	78	Yotam. 	\N	2002-06-30 00:00:00	Curran Nachbar	Curran's End of Year Party
1778	06290001.JPG	78	Mike... ...thinks Beca's Guacamole is not too lemon-y	Mike	2002-06-29 00:00:00	Clara Kim	100 Waterman
1779	06290003.JPG	78	More Guys Playing Cards. 	Shawn, Eric, Chris M., David, Brett, Mike	2002-06-29 00:00:00	Beca Erickson	Eric & Co.'s Apartment
1780	P7200004.JPG	78	Fire Clubs. Eric and Dan's hands have been replaced with firey clubs	Dan, Clara, Eric, and Joe	2002-07-20 00:00:00	Beca Erickson	Main Green
1781	P7200008.JPG	78	More Fire Clubs. 	Eric Cohen	2002-07-20 00:00:00	Beca Erickson	Main Green
1782	P7000011.JPG	78	Interlude. Mike and Clara read Hikaru No Go	Mike, Clara	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1783	P7000019.JPG	78	Curran makes pie. 	Goody Curran	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1784	P7000020.JPG	78	Concept Lattice Cherry Pie. Yo, *****, get back in the compiler and make me some *pie*!	\N	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1785	P7000025.JPG	78	Manos Smiles. while people jostle for pie and cake	Tom, Greg, Meech, Curran, Michelle, Eric, Serge, Evan, Manos	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1786	P7000026.JPG	78	Eric and Hari. and Brett's knees	Brett's knees, Eric, Hari	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1787	P7000027.JPG	78	Meech. I can fix that for you	Meech	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1788	P7000028.JPG	78	More Party. 	Amy, Michelle, Curran, Manos	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1789	P7000029.JPG	78	Cat's Cradle. Not the book.	David, Meech	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1790	P7000030.JPG	78	All eyes on Brett. Brett can't remember why everyone was paying attention to him.	Brett's knee, Hari, Michelle, Evan, Serge	2002-07-28 00:00:00	Beca Erickson	100 Waterman
1791	P8100001.JPG	78	Passing Fire Balls. 	Dan, Emily, Eric	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1792	P8100002.JPG	78	Passing Fire Balls. 	Dan, Eric, Carlos	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1793	P8100003.JPG	78	3-Balls. Mystery Girl Juggler	\N	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1794	P8100005.JPG	78	Fire Clubs. 	Dan	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1795	P8100006.JPG	78	Fire Club Recovery. No, she's not singing to the torch	Dan, Emily	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1796	P8100007.JPG	78	Balancing Act. 	Mariana, Curran, Emily	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1797	P8100008.JPG	78	Flag. 	Emily and Dan	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1777	P1010047.JPG	78	Mike has a Cat-Chat. 	Pumpkin/Pie, Mike	\N	Beca Erickson	Mike's House
1755	P1010001.JPG	76	Surprise Hug! From Sara to Shawn	Shawn Bachan ('03), Sara Grady ('01), Shawn's legs ('0?)	2002-05-15 20:02:00	Beca Erickson	Techhouse Lounge
1756	P1010004.JPG	76	Visiting Alumni. 	Chris Mastrangelo ('01), Mike Fried ('01.n)	2002-05-15 20:02:00	Beca Erickson	Techhouse Lounge
1744	150-5078_IMG_small.jpg	74	Liz Thompson. 	\N	\N	Michael Fried	Senior Week 2002
1770	151-5116_IMG_small.jpg	77	Liz. 	\N	2002-05-27 00:00:00	Michael Fried	\N
1798	P8100009.JPG	78	Fire Poi on Eric's Shoulders. Second Successful Attempt	Carlos, Emily/Eric, Curran, Mariana	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1799	P8100011.JPG	78	Jumping Fire Poi. 	Dan	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1800	P8100012.JPG	78	Fire Poi. 	Dan	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1801	P8100014.JPG	78	Clubs. with a gargoyle in the background	Mystery Juggler Girl	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1802	P8100015.JPG	78	Battle Poi. 	Emily and Dan	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1803	P8100016.JPG	78	Cleaning Up. Eric still has hair.	Eric	2002-08-10 00:00:00	Beca Erickson	War Memorial by the River
1804	P8300005.JPG	79	Ethernet Sales. 	Melch, Michael Tschantz, Eric, An, Evan	2002-08-30 00:00:00	Beca Erickson	Wriston Quad
1805	P8300008.JPG	79	The Ethernet Tent. 	Melch, Michael Tschantz, An, Evan	2002-08-30 00:00:00	Beca Erickson	Wriston Quad
1806	P8300009.JPG	79	Mikka prepares to take a picture. and David watches.	Mikka Pineda, David Eigen	2002-08-30 00:00:00	Beca Erickson	Wriston Quad
1807	P8300012.JPG	79	Title. 	\N	\N	Beca Erickson	\N
1808	P8300013.JPG	79	Crimpin' Ain't Easy. 	Eric, An	\N	Beca Erickson	The Ethernet Tent
1809	P8300015.JPG	79	An Le. 	An Le	2002-08-30 00:00:00	Beca Erickson	Wriston Quad
1810	P8300016.JPG	79	Razvan makes a phone call. it seems like everyone got a cell phone this summer	An, Razvan	2002-08-30 00:00:00	Beca Erickson	Wriston Quad
1815	P8300021.JPG	79	Alex. checks out DDR	Alex Hooker	2002-08-30 00:00:00	Beca Erickson	Lounge
1816	P8300022.JPG	79	Air Hockey! 	Jordan, Rob	2002-08-30 00:00:00	Beca Erickson	Lounge
1817	P8300023.JPG	79	Go. the little version	An, Clara, Mike	2002-08-30 00:00:00	Beca Erickson	Lounge
1818	P8300024.JPG	79	MAME. 	Meech, Chris Mastrangelo	2002-08-30 00:00:00	Beca Erickson	Library
1819	P8300025.JPG	79	MAMErs. 	Chris Mastrangelo, Meech	2002-08-30 00:00:00	Beca Erickson	Library
1820	P8300026.JPG	79	Magic. 	Hari, Evan, Eric	2002-08-30 00:00:00	Beca Erickson	Library
1821	P8300028.JPG	79	Magic. 	Hari, Eric	2002-08-30 00:00:00	Beca Erickson	Library
1823	P8300031.JPG	79	X marks the spot. things waiting to be recycled	\N	2002-08-30 00:00:00	Beca Erickson	Basement Hallway
1825	P8300033.JPG	79	Which to Keep? Because they obviously can't get rid of *everything*	David Eigen, Mikka, Meech, Chris Kern, Hari	2002-08-30 00:00:00	Beca Erickson	Basement Hallway
1826	P8300036.JPG	79	Scavengers. 	people, Hari, more people	2002-08-30 00:00:00	Beca Erickson	Basement Hallway
1827	P8300037.JPG	79	More Scavenging. 	Hari, Chris Kern, Meech	2002-08-30 00:00:00	Beca Erickson	Basement Hallway
1832	P8310001.JPG	79	Activities Fair. 	David Eigen, David Erickson, some guys	2002-08-31 00:00:00	Beca Erickson	OMAC
1833	P8310003.JPG	79	Razvan. Making ethernet cable	Razvan	2002-08-31 00:00:00	Beca Erickson	OMAC
1834	P8310005.JPG	79	Interested in Techhouse? Or just wanna play video games?	David Erickson, MAME Cabinet	2002-08-31 00:00:00	Beca Erickson	OMAC
1835	P8310006.JPG	79	Poi. 	Mariana	2002-08-31 00:00:00	Beca Erickson	OMAC
1836	P8310013.JPG	79	Got Pants? Is "Bad Girl" checking them out? Or is she just envious of Dan's cryptic T-Shirt?	"Bad Girl", Dan, Michael Tschantz	2002-08-31 00:00:00	Beca Erickson	Thayer Street
1837	Playground.jpg	80	Community Service Project: Build-A-Playground. An steadies the board while Mikka routes	Mikka, An	\N	Site supervisor	International Charter Elementary School/Second week of September
1840	m24.jpg	80	Pigging out on wassamellon. 	Mikka, Laura	2002-09-01 00:00:00	spg	Porch
1841	m05.jpg	80	At the trough... ...someone said there was treasure in here.	Laura, Mikka	2002-09-01 00:00:00	spg	Porch
1845	P9010023.JPG	80	Pie. the menu is more varied this year...	Joe, Laura, Clara	\N	Beca Erickson	\N
2032	Picture 010.jpg	91	Synth. Looking Synthy	\N	2003-04-13 00:00:00	\N	\N
1846	P9010025.JPG	80	Candid. 	?, Joe, Clara, Meech, Dave, Alex	2002-09-01 00:00:00	Beca Erickson	\N
1842	P9010019.JPG	80	Waiting for Meat. 	lots of people	2002-09-01 00:00:00	Beca Erickson	\N
1848	P9020027.JPG	80	Meeting. Serge prepares to wallop Rob, while Jordan and An Smile Gleefully	Serge, Jordan, An, Rob	2002-09-02 00:00:00	Beca Erickson	\N
1838	P9010018.JPG	80	Watermelon. Eric has been hit too many times with watermelon juice	Sue, Mikka, Eric	2002-09-01 00:00:00	Beca Erickson	\N
1849	P9020029.JPG	80	Dan, Adam, Chris. 	Dan, Adam, Chris	2002-09-02 00:00:00	Beca Erickson	\N
1850	P9020030.JPG	80	Chris N. Has Goggles! 	Midori, Joe, Chris N., Jon,	2002-09-02 00:00:00	Beca Erickson	\N
1851	P9020031.JPG	80	Meetings are very full. 	\N	2002-09-02 00:00:00	Beca Erickson	\N
1847	P9010026.JPG	80	Not Candid. 	Joe, Clara, Meech, Dave, Alex, ?	2002-09-01 00:00:00	Beca Erickson	\N
1811	m02.jpg	79	Hark, do I hear the distress signal of a Cable-less customer? 	Sue Brassard, Meech, Pete, Raz, An	\N	Mikka	Brown and George Sts
1844	P9010021.JPG	80	Tic-Tac-Cheetos. 	Frances	2002-09-01 00:00:00	Beca Erickson	\N
1857	m22.jpg	81	title. Are there ANY permanent fixtures in the house?(Does Beca count?)	Serge, Pawel	\N	Scott McKenzie	War Room
1858	m26.jpg	81	tittle. Anger Management	Serge, Meech	\N	Scott	War Room
1860	DSC00921.JPG	82	The Begining. Forman Dave contemplates what is ahead.  It is here the tough question is asked: What separates a table from a piece of plywood?	Pawel, Mikka, Johnny Boy, the indian spy, Rob (from The Village People), Foreman Dave	\N	H	Techtime Midfall Workroom
1861	DSC00922.JPG	82	Serious Router. Dylan, a serious router, is overseen by Foreman Dave in a scene that could be called Forman Dave supervises Dylan, the serious router, in some serious routing.	Foreman Dave, DYLAN(not the son of a b.)	\N	H	Techtime MidFall 2002
1862	DSC00923.JPG	82	Power Hungy. Adam offers a solution to Mikka's power hungry needs while Laura excitedly waits her turn (being an officer really takes a lot out of you and its nice once and a while to really, and I mean really recharge. Thanks Fenn)	afenn, Mikka, Laura	\N	H	Mechtime Midfall 2002
1863	DSC00924.JPG	82	Punishment. Contractor Joe thinks Foreman Dave should be doing a little more to help out around the job site, therefor Foreman Dave is now Foreman Dave: the serious router. And Dylan, the former serious router, is now Dylan, the supervisor, and is currently supervising the pending job.	Foreman Dave: the serious router, Supervisor Dylan	\N	H	Techtime Midfall 2002
1864	DSC00925.JPG	82	The Reviews Are In. Noise Critic, Robert Allen, reviews the techhouse sound installation "The Construction of a Table" as 'the most putrid work he's witnessed since the Mechanical Arms' while famos people person John Bankard commented that while he liked the work as a whole, he thought that there should be more sharp objects aimed at the eyes.	John Bankard, Robert Allen	\N	H	Techtime/Artfest Midfall 2002
1865	DSC00926.JPG	82	Convergence. The Arcade Machine, the ball pit and pieces of the Trebuchet combine their powers to from CAPTIAN PROJECT.	Matt S. (he's in the ball pit, really he is)	\N	H	Techtime Midfall 2002
1866	DSC00928.JPG	82	Print Server. Contracter Joe makes a little money on the side setting Techhouse up with the very print server we have come to know and love.	Print Server, Joe	\N	H	Techhtime midfall 2002
1867	DSC00929.JPG	82	Newt! After seeing the latest Harry Potter movie Wizard Nihal desides he want to bring Peeves ... i mean Scott back to life.	Scott (dead), Wizard Nihal	\N	H	Techtime Midfall 2002
1868	DSC00930.JPG	82	Chef Shawn. prepares for his shot on Iron Chef on which his masterpiece is raved as simply wonderful.	Shawn	\N	H	Midfall
1869	DSC00931.JPG	82	Still At It. Contractor Joe has left the scene and left President Razvan to finish over seeing Forman Dave:the serious router rout what needs to be routed.	President Rasvan, Foreman Dave: the serious router	\N	H	Techtime 2002 midfall
1870	DSC00932.JPG	82	Mmmmmm ... Sandwich. a rare glimps into the world of the savage Sophia Monster.  Unlike most wild beasts Sophia bites with her tounge.	Sophia	\N	H	The Uncharted Territory in the Basement/ midfall 2002
1878	P2070083.JPG	85	Which Grapes Are Best? David judges produce quality.	David Eigen	2003-02-07 00:00:00	Beca Erickson	Bread & Circus
1879	P2070084.JPG	85	Empty Baskets. 	Dylan Cheasty and Clara Kim	2003-02-07 00:00:00	Beca Erickson	Bread & Circus
1880	P2070085.JPG	85	Choosing Cheese. 	David Eigen (background), Eric Cohen	2003-02-07 00:00:00	Beca Erickson	Bread & Circus
1881	P2070091.JPG	85	Preparing Cheese Night Platters. 	Eric Cohen, David Eigen	2003-02-07 00:00:00	Beca Erickson	Kitchen
1882	P2070093.JPG	85	The Cheesy Spread. 	lots of cheese	2003-02-07 00:00:00	Beca Erickson	Lounge
1883	P2070095.JPG	85	Detail of Cheesy Spread. with small, printed labels on toothpicks	\N	2003-02-07 00:00:00	Beca Erickson	Lounge
1884	P2070096.JPG	85	Mass Tour! For members and friends of TH who already know their way around.	people already very familiar with TH	2003-02-07 00:00:00	Beca Erickson	Basement
1885	P2070097.JPG	85	Room 307 Aces Inspection! Marcus gives the thumbs-up.	Nihal, Marcus, Jimmy	2003-02-07 00:00:00	Beca Erickson	Third Floor Hallway
1886	P2070099.JPG	85	FAFNIR LIVES! Kind of like "Frodo Lives," but not....	\N	2003-02-07 00:00:00	Beca Erickson	Stairwell
1887	P2070104.JPG	85	"Look, Grommit!  Cheese!". Pawel humors me by smiling.	Nihal, Pawel Wrotek, John Bankard	2003-02-07 00:00:00	Beca Erickson	Lounge
1888	P2080108.JPG	85	And now for something completely different... ...as TH members and Recruits, full of cheese, head off to sled down College Hill.	(best shot) David Reiss, Christian Yee, Rob Allen, Nihal, Jordan Parker, An Le, Jodie, Evan Chan, someone else I can't recognize	2003-02-08 00:00:00	Beca Erickson	Porch
1889	P2080110.JPG	85	Hex On The Beach. But they ended up playing soccer instead.	Brett Heath-Wlaz, Curran Nachbar, David Erickson, Jordan Parker, Pawel Wrotek, Eric Cohen, Lou's Shirt, Rob Allen	2003-02-08 00:00:00	Beca Erickson	Lounge
1890	P2130115.JPG	85	Video Game Night. With the MAME Cabinet	Razvan Mirica, Chris Nemcosky, An Le	2003-02-13 00:00:00	Beca Erickson	Lounge
1891	P2130116.JPG	85	Lego Creation. from Lego Night	Lego Dude	2003-02-13 00:00:00	Beca Erickson	Lounge
1892	P2130118.JPG	85	Video Game Night. 	lots of people	2003-02-13 00:00:00	Beca Erickson	Lounge
1893	P2130120.JPG	85	Video Game Night. More MAMEing	Cheryl, Filipa, Eric, Len, ?	2003-02-13 00:00:00	Beca Erickson	Lounge
1894	P2130121.JPG	85	Total Concentration. After all, this is Futbol.	An, Pawel, Evan, Razvan	2003-02-13 00:00:00	Beca Erickson	Lounge
1895	P2140127.JPG	85	Mikka Captions Photos. at Firecream	Mikka Pineda	2003-02-14 00:00:00	Beca Erickson	Lounge
1896	P2210136.JPG	85	TECHNO NIGHT. And of course, the picture just doesn't capture the essence.	\N	2003-02-21 00:00:00	Beca Erickson	Lounge
1855	m27.jpg	80	Mikka re-routes the playground. Community Service Project	Mikka, An	\N	\N	International Charter School Playground, Pawtucket, RI
1871	m03.jpg	83	THignal. 	Bouncers (Joe, Eric, Scott, Someone, Lou)	\N	Mikka	\N
1897	P2230141.JPG	85	And together we are...WILD STALLIONS!!! 	Dylan "S. Preston" and Dan "Theodore Logan"	2003-02-23 00:00:00	Beca Erickson	Lounge
1898	P2230143.JPG	85	We come in peace. Shoot to kill. Shoot to kill, Doug!	Doug Lee and Graham Rosser	2003-02-23 00:00:00	Beca Erickson	Lounge
1899	P2230145.JPG	85	Getting ready for the TH Winter Olympics. 	Doug Lee, David Erickson, Graham Rosser, Mikka Pineda	2003-02-23 00:00:00	Beca Erickson	Porch
1900	P2230146.JPG	85	Snowy, Rainy Barbecue. Everyone is crowded onto this side of the porch because the other side is buried in snow.	I give up.	2003-02-23 00:00:00	Beca Erickson	Porch
1901	P2230147.JPG	85	Hubcap Umbrella. Somehow not as effective as a normal umbrella.	Mary, Mikka, Doug, Graham	2003-02-23 00:00:00	Beca Erickson	Porch
1902	P2230150.JPG	85	Discus Throw. 	Rob Allen, Mikka Pineda	2003-02-23 00:00:00	Beca Erickson	Porch
1903	P2230152.JPG	85	Discus Retrieval. 	Dave Erickson and Mikka Pineda	2003-02-23 00:00:00	Beca Erickson	Porch
1904	P2230153.JPG	85	Dylan attempts to weight his discus. 	Rob Allen and Dylan Cheasty	2003-02-23 00:00:00	Beca Erickson	Porch
1905	P2230154.JPG	85	Onlookers. 	Sean, Adam, Doug, Graham, Mike, Dave, Mary	2003-02-23 00:00:00	Beca Erickson	Porch
1906	P2230155.JPG	85	Olympic Announcer Dave. "And now, hailing from Thessaly, Robbininnicus!	Mike, Dylan, Dave, Mikka, Rob, Adam	2003-02-23 00:00:00	Beca Erickson	Porch
1907	P2230158.JPG	85	And now for the indoor segment of the barbecue. Vik applies ketchup to his burger.	\N	2003-02-23 00:00:00	Beca Erickson	Lounge
1908	P2230159.JPG	85	It's A Miss! Carol doesn't quite catch the munchkin in her mouth.	John, Marcus, Carol, Schuyler, Pawel	2003-02-23 00:00:00	Beca Erickson	Lounge
1909	P2230163.JPG	85	TH gets positive feedback on the BBQ. "Oh hey wow!  Food!  Man, that's AWESOME!"	Scott, Adam, Mary	2003-02-23 00:00:00	Beca Erickson	Lounge
1910	P2230164.JPG	85	No Jello In This Pool. Or is there?	someone I don't know, Carol, Marcus, Pawel, Matt, Melch, Dave	2003-02-23 00:00:00	Beca Erickson	Lounge
1911	P2230166.JPG	85	Blackmail Photo #1. Names have been changed to protect the innocent.	Ted, Bill, and Bert	2003-02-23 00:00:00	Beca Erickson	Lounge
1912	P2230167.JPG	85	Blackmail Photo #2. Yes, Mr. T., mail me $50 and your wife and three kids need never know the name of your chicken in Bolton.	Bert and Bill	2003-02-23 00:00:00	Beca Erickson	Lounge
1913	P2250002.JPG	85	Childhood Regression Night. Eating cereal without a spoon...or milk, for that matter.	Mikka and Graham	2003-02-25 00:00:00	Beca Erickson	Lounge
1914	P2250003.JPG	85	Thank heavens they have a new vacuum. Mikka eats, while Graham watches '80s commercials	Mikka and Graham	2003-02-25 00:00:00	Beca Erickson	Lounge
1915	P2250006.JPG	85	Mike Tschantz plays with his food. (it's Jell-o)	Mike Tschantz	2003-02-25 00:00:00	Beca Erickson	Lounge
1916	P2250007.JPG	85	Clara Flips Out. Into The Ball Pit With You!	Marcus, Clara, Dylan	2003-02-25 00:00:00	Beca Erickson	Lounge
1917	P2250010.JPG	85	What Childhood Is Apparently All About. Watching TV, Ball Pits, Eating Cereal, and Trading What Your Mom Put In Your Lunch Bag	\N	2003-02-25 00:00:00	Beca Erickson	Lounge
1918	P2250017.JPG	85	Ball Pit Lounge. There are actually 3 people in the ball pit.	(visible) Marcus, Doug, Graham, Jimmy, (invisible) Dylan	2003-02-25 00:00:00	Beca Erickson	Lounge
1919	P2250018.JPG	85	Mikka, having a Vision of what to do next. 	Doug, Mikka, Dylan	2003-02-25 00:00:00	Beca Erickson	Lounge
1920	P2250020.JPG	85	Divine Inspiration: Stuff As Many Balls In My Pants As Possible. Mikka: "This reminds me of my dead hamster...."	Doug, Mikka	2003-02-25 00:00:00	Beca Erickson	Lounge
1921	P2250025.JPG	85	Is This Static? No, Clara and Scott are both concentrating on making your hair do that.  It's okay.  You'll pick it up after a few weeks in Techhouse.	Jodie, Clara, Scott	2003-02-25 00:00:00	Beca Erickson	Lounge
1922	P2250027.JPG	85	Clara Feels The Force. Hey, Beca! Wanna take a picture?	Clara Kim	2003-02-25 00:00:00	Beca Erickson	Lounge
1923	P2250028.JPG	85	Mikka Jelly Saint Peter the Rock Domingo Pineda. Yes, it's Tropical Fruit Roll-Up	Mikka	2003-02-25 00:00:00	Beca Erickson	Lounge
1924	P2250033.JPG	85	Tickle Fight. Or, how many balls will be caught in Melch's hair when she gets out?	\N	2003-02-25 00:00:00	Beca Erickson	Lounge
1925	P2250034.JPG	85	The Shark!  The Shark Got Me! This went on for longer than you think.	Clara, Dylan, Doug, Mikka	2003-02-25 00:00:00	Beca Erickson	Lounge
1926	P2250035.JPG	85	Graham loses his shoes. 	\N	2003-02-25 00:00:00	Beca Erickson	Lounge
1963	DSCF0042.jpg	88	Waiting to Start. People are still cooking downstairs...	Hari, Len, Serge, Friend, Cheryl	\N	\N	\N
1964	DSCF0043.jpg	88	In Progress. We are going our best to eat all the food.	Joe, Eric, Friend, Cheryl, Laura, Beca, Shirin, Mike T., Mike P., Hari, Serge	\N	\N	\N
1965	DSCF0046.jpg	88	Dessert! Pies (and pizza pies), and more...	Baklava, Pizza, Cheese Cake, Mouse (no Squirrel)	\N	\N	\N
1966	DSCF0049.jpg	88	El Monstero Texicano. Quick camera work captures the Creature de la Garcia ... or is it simply out of focus?	???	\N	\N	\N
1967	DSCF0052.jpg	88	Mikka wants to be in a picture. Time Lapse.  Hari is stagnent as ever...	Laura, Mikka, Eric (?), Hari's head, ???	\N	\N	\N
1968	DSCF0053.jpg	88	Mikka got in the picture. This time she's really done it..	Eric, Tracy, Friend, Cheryl, Laura, Mikka, Serge, Hari's Head, Meech, Mike P., Len	\N	\N	\N
1969	DSCF0054.jpg	88	Hari's Tired. Resting before attacking the cheese cake.	Hari, Elbow	\N	\N	\N
1970	DSCF0055.jpg	88	More Eating, all around. You know..	Friend, Cheryl, Laura, Beca, Shirin, Mike T., An, Mikka, Tracy	\N	\N	\N
1971	DSCF0056.jpg	88	Playing Nice. Don't they look so innocent?	Evan, Len, Serge	\N	\N	\N
1972	DSCF0057.jpg	88	Not so nice. Len attacks Serge when he thinks the camera is no-longer looking	Evan, Len, Serge	\N	\N	\N
1973	DSCF0059.jpg	88	The Remainders of the Day. Not much left...	Avacado Salad, Rice and Beans	\N	\N	\N
1979	DSCF0060.jpg	88	Funny faces...or something deeper? What you cannot hear is the screeching sounds of dissonant harmonics of higher tones.	Evan, Mikka, Len, Meech, Serge	\N	\N	\N
1980	DSCF0062.jpg	88	Footsies. Suddenly Laura's feet seem remarkably shy...	Leg, Leg and feet, Leg and foot, Legs	\N	\N	\N
1981	DSCF0065.jpg	88	Eric would rather not be captured on camera. But quick camera work defeats that.  Kinda.	Eric's Nose, Eric's Mouth, Eric's Food, Eric's Fork, Eric's Hand	\N	\N	\N
1982	DSCF0066.jpg	88	Teehee...poke. Meech doesn't know what's coming..	Serge, Meech	\N	\N	\N
1983	DSCF0067.jpg	88	Look who's laughing now! You ain't goin NO WHERE.  yeah.	Serge, Dead Meech	\N	\N	\N
1984	DSCF0068.jpg	88	Pride of the Chicken. "I was looking for a place to put him.  This seemed most convenient"	Chicken ala Rocket	\N	\N	\N
1985	DSCF0069.jpg	88	Even Ceilings Need to Eat. The food did not stick to the place..	\N	\N	\N	\N
1986	DSCF0070.jpg	88	Joe is smirky. and Hari has camera envy.	An, Evan, Serge, Joe	\N	\N	\N
1987	DSCF0071.jpg	88	Sittin back. No one wants to do the dishes...	Shirin, Mike T., Mike P., Mikka, Evan, Serge, joe	\N	\N	\N
1988	DSCF0072.jpg	88	I Love Clara. Darth Maul seems less than enthusiatic about the whole thing.	An, Clara, Darth	\N	\N	\N
1989	DSCF0073.jpg	88	Mikka takes picture. And Joe takes picture of it...	Mikka	\N	\N	\N
1990	Flash.jpg	88	Joe takes picture. And Mikka takes picture of it...	Joe	\N	\N	\N
1991	DSCF0075.jpg	88	In conversation. I have no idea what they are talking about.	Friend, Cheryl	\N	\N	\N
1992	DSCF0076.jpg	88	Meech consideres the meaning of Bowl. Joe considers the sillyness of auto-focus.	Meech, Bowl	\N	\N	\N
1993	DSCF0077.jpg	88	An's got a Big Stick. And I promise you, he knows how to use it	An	\N	\N	\N
1994	DSCF0078.jpg	88	Tracy thinks An is funny. To look at!  Ooh, that hurts...	An, Tracy	\N	\N	\N
1995	DSCF0079.jpg	88	Ah, innocence.. Don't they just look so...optimistic?	An, Tracy	\N	\N	\N
1996	DSCF0080.jpg	88	Punishment. An has been a baaaad boy.	An, Tracy	\N	\N	\N
1997	DSCF0081.jpg	88	Camera Shy. Everyone deems this a "cool picture." Except Frances	Frances	\N	\N	\N
1998	DSCF0083.jpg	88	Chicken, part Deux. That looks...uncomfortable.	Chicken	\N	\N	\N
1999	DSCF0084.jpg	88	More camera shyness. But Joe is too fast with the camera.	Eric, Beca	\N	\N	\N
2001	TechnoHouse.jpg	89	Techno House. Another series of still unexplained hacks on TH	\N	\N	\N	\N
2002	LoKeyEntry.jpg	89	Techno Kitchen? 	\N	\N	\N	\N
2003	TechnoKitchen2.jpg	89	Inside Techno Kitchen. One day we woke up and found the kitchen like this	\N	\N	\N	Spring Break 03
2004	TechnoKitchen.jpg	89	Inside Techno Kitchen. A vertical landscape view	\N	\N	\N	Spring Break 03
2005	Foil.jpg	89	Techno Foil. 	\N	\N	\N	\N
2006	MarthaStew.jpg	89	Martha Stewart as Cyclops. 	\N	\N	\N	\N
2007	MarthaDaylite.jpg	89	Techno Inside Traitor. ...as the accompanying post-it note read	\N	\N	\N	\N
2008	Strobe.jpg	89	And next to Martha was "Techno Strobe Lite". 	\N	\N	\N	\N
2009	Tunes.jpg	89	Techno Tunes. Inside the radio was a CD of Techno music	\N	\N	\N	\N
2010	Tube.jpg	89	Techno Tube. Odd decoration scheme	\N	\N	\N	\N
2011	TubeNote.jpg	89	Techno Tube Detail. Everything Techno was labeled like this	\N	\N	\N	\N
2012	Pills.jpg	89	Techno Pills. (Not Altoids)	\N	\N	\N	\N
2013	PillsInside.jpg	89	Trippy. 	\N	\N	\N	\N
2015	StairwellCeiling.jpg	89	And then there were these mysterious outcroppings in the stairwell ceiling. 	Main Stairwell	\N	\N	\N
2016	HairMonster.jpg	89	Hair Monster...Clara? Zooming in on whatever was on the ceiling	\N	\N	\N	\N
2017	Belly.jpg	90	Belly! Lara the bellydancer	\N	2003-03-31 00:00:00	Razvan Mirica	\N
2018	BellyDan.jpg	90	Dan! Dan Mortenson tries out some new moves	\N	2003-03-31 00:00:00	Razvan Mirica	\N
2019	MikkaNoFace.jpg	90	Dance! 	Mikka	2003-03-31 00:00:00	\N	\N
2020	S-Curve.jpg	90	Bellydance! 	Lara the bellydancer	\N	\N	\N
2021	Spectate.jpg	90	Or spectate! They look happy.	Pawel, Rob, J-Ro, Rich, Lou	2003-03-31 00:00:00	Raz	\N
2022	Backbend.jpg	90	Bending over backwards to entertain. 	Lara, Mikka	2003-03-31 00:00:00	Raz	\N
2023	Convergence of the bellydancers.jpg	90	Bellydancers convene. 	Mikka, Dan, Lara	2003-03-31 00:00:00	Raz	\N
2024	LaraFlame.jpg	90	Lara Flame. 	\N	2003-03-31 00:00:00	Raz	\N
2025	LaraLightning.jpg	90	Lara Lightning. Ooh, she does lightning too	\N	\N	\N	\N
2026	VanishingHead.jpg	90	Ahh, my head is vanishing. 	Richard Shay	2003-03-31 00:00:00	Raz	\N
2031	Picture 006.jpg	91	Vandalism. A bottle got thrown through a window in the lounge	\N	2003-04-13 00:00:00	\N	\N
2029	invasion.jpg	91	Invasion. Bridget's animals were dressed up by some fellow athletes	\N	2003-04-03 00:00:00	\N	\N
2030	olFashionedFun.jpg	91	Root Beer Project. Tracy, Scoot, and Jodie cook up some brew	\N	2003-04-03 00:00:00	\N	\N
1974	Avocado.jpg	88	Guacamole. 	\N	\N	Mikka	\N
2028	Dance.jpg	91	DDR. Rob Allen playing some DDR	\N	2003-04-04 00:00:00	David Erickson	\N
2033	Picture 018.jpg	91	Belly Dancing. Baby got belly?	\N	2003-04-13 00:00:00	\N	\N
2034	Picture 019.jpg	91	Getting Down. Melch, Graham, Mikka	\N	2003-04-13 00:00:00	\N	\N
2035	Picture 020.jpg	91	More Belly Dancing. Mikka, Graham, Melch	\N	2003-04-13 00:00:00	\N	\N
2036	Picture 023.jpg	91	Belly Belly. Jo, Mikka, Graham, Melch	\N	2003-04-13 00:00:00	\N	\N
2037	Picture 024.jpg	91	Belly and Booty. Shake it	\N	2003-04-13 00:00:00	\N	\N
2038	Picture 039.jpg	91	Voting in a new social chair. Rob celebrates all nominees for the position quitting the house	\N	2003-04-13 00:00:00	\N	\N
2039	Picture 042.jpg	91	Root Beer. Rob Sean? Meech and Laura	\N	2003-04-13 00:00:00	\N	\N
2040	Picture 052.jpg	91	Pr0n Night. While the rest of the room is watching the screen Ven goes for the Koala bears	\N	2003-04-13 00:00:00	\N	\N
2041	Picture 053.jpg	91	Pr0n Night. Graham approves of the DVD selection	\N	2003-04-13 00:00:00	\N	\N
2042	Picture 054.jpg	91	Car Ride. Where could militant wing members Jordan and Dave be going?	\N	2003-04-13 00:00:00	Chris Nemcosky	\N
2043	Picture 056.jpg	91	Ear Phones. Oh' that's were all the ear protection from the work room went	\N	2003-04-13 00:00:00	Chris Nemcosky	\N
2044	Picture 059.jpg	91	22. Sergio Garcia proves his Texas heritage	\N	2003-04-13 00:00:00	Chris Nemcosky	\N
2045	Picture 061.jpg	91	22. Dave Erickson lines up his sight	\N	2003-04-13 00:00:00	Chris Nemcosky	\N
2046	Picture 062.jpg	91	22. Christian is taking this seriously, coat off	\N	2003-04-13 00:00:00	Chris Nemcosky	\N
2047	Picture 063.jpg	91	22. Jordan Parker, born again hard	\N	2003-04-13 00:00:00	David Erickson	\N
2048	Picture 064.jpg	91	22. Evan Chan says firing with a peep sight and block is pansy	\N	2003-04-13 00:00:00	David Erickson	\N
2049	Picture 065.jpg	91	22. Razvan joins the militant wing	\N	2003-04-13 00:00:00	David Erickson	\N
2050	Picture 067.jpg	91	22. "May my aim be swift and true" Chris Nemcosky	\N	2003-04-13 00:00:00	David Erickson	\N
2051	Picture 069.jpg	91	22. Chris lines em up	\N	2003-04-13 00:00:00	David Erickson	\N
2052	Picture 073.jpg	91	Results. Ravan checks his shots	\N	2003-04-13 00:00:00	\N	\N
2053	Picture 074.jpg	91	Results. Comparing points in the paint	\N	2003-04-13 00:00:00	\N	\N
2054	Picture 075.jpg	91	Results. Jordan Razvan and Chris pose with their targets	\N	2003-04-13 00:00:00	\N	\N
2055	Picture 077.jpg	91	MAC90. Evan Chan, definite bad ass	\N	2003-04-13 00:00:00	David Erickson	\N
2056	Picture 078.jpg	91	M1. Saving Private Garcia	\N	2003-04-13 00:00:00	David Erickson	\N
2057	Picture 080.jpg	91	MAC90. Dave fires the Civilian model of the AK47	\N	2003-04-13 00:00:00	David Erickson	\N
2058	Picture 082.jpg	91	MAC90. Jordan Parker, I think we've finnaly found something you're good at.	\N	2003-04-13 00:00:00	David Erickson	\N
2059	Picture 083.jpg	91	MAC90. Jordan Parker, one man army	\N	2003-04-13 00:00:00	David Erickson	\N
2060	Picture 084.jpg	91	M1. Melch fires the M1, a 50 year old WWII surplus general issue.	\N	2003-04-13 00:00:00	David Erickson	\N
2061	Picture 085.jpg	91	BELGIAN270. Christian uses this Belgian 2.70 hunting rifles telescopic scope	\N	2003-04-13 00:00:00	David Erickson	\N
2062	Picture 086.jpg	91	BELGIAN270. Christian perfects his No Look shot	\N	2003-04-13 00:00:00	David Erickson	\N
2063	Picture 087.jpg	91	BELGIAN270. Dave fires off the hunting rifle at the amazing range of 25 meters	\N	2003-04-13 00:00:00	Chris Nemcosky	\N
2064	Picture 088.jpg	91	M1. jcparker is well prepared by his hardened Battlefield 1942 skills	\N	2003-04-13 00:00:00	Chris Nemcosky	\N
2065	Picture 089.jpg	91	M1. Chris Nemcosky	\N	2003-04-13 00:00:00	David Erickson	\N
2066	Picture 090.jpg	91	M1. This gun packs a kick, is loud as all hell, but makes that cool spring noise when it ejects the casing	\N	2003-04-13 00:00:00	\N	\N
2067	Picture 091.jpg	91	M1. Romainians have always made good marksmen	\N	2003-04-13 00:00:00	David Erickson	\N
2070	Picture 094.jpg	91	MAC90. Scot, one of the instructors, give Melch's shoulder some support. This thing kicks	\N	2003-04-13 00:00:00	\N	\N
2071	Picture 096.jpg	91	Results. 3 hits with the big Belgian hunting rifle, all deer must stay at least 25 meters away from TH president elect, Dave.	\N	2003-04-13 00:00:00	\N	\N
2072	Picture 097.jpg	91	BELGIAN270. Razvan	\N	2003-04-13 00:00:00	\N	\N
2073	Picture 100.jpg	91	MAC90. Evan Chan, he's the man, with a gun.  A big gun	\N	2003-04-13 00:00:00	\N	\N
2074	Picture 104.jpg	91	MAC90. Christian fires the AK-47 clone	\N	2003-04-13 00:00:00	\N	\N
2075	Picture 105.jpg	91	MAC90. Christian	\N	2003-04-13 00:00:00	\N	\N
2076	Picture 107.jpg	91	MAC90. Chris Nemcosky	\N	2003-04-13 00:00:00	\N	\N
2077	Picture 108.jpg	91	MAC90. Canidate for the militant wing, Dave Erickson	\N	2003-04-13 00:00:00	\N	\N
2078	Picture 109.jpg	91	Group shot. All in a days work, and now ... to the BBQ	\N	2003-04-13 00:00:00	\N	\N
2079	Picture 110.jpg	91	Spring is here. 	\N	2003-04-13 00:00:00	\N	\N
2080	Picture 111.jpg	91	Hand stand. Mike Plots decides to do a handstand while waiting for meat.	\N	2003-04-13 00:00:00	\N	\N
2081	Picture 112.jpg	91	Meat Waiters. Chris, checking out some meat	\N	2003-04-13 00:00:00	\N	\N
2082	Picture 113.jpg	91	A good sized cowd. Almost every one is familiar	\N	2003-04-13 00:00:00	\N	\N
2083	Picture 114.jpg	91	Grill Master. Grill Master Evan Chan	\N	2003-04-13 00:00:00	\N	\N
2084	Picture 117.jpg	91	Fries. Deep Fried Freedom Fries, brought to you by Mike	\N	2003-04-13 00:00:00	\N	\N
2085	Picture 119.jpg	91	Graham. TH recruit, Graham	\N	2003-04-13 00:00:00	\N	\N
2086	Picture 120.jpg	91	TH friends. Linday and Jen drop by	\N	2003-04-13 00:00:00	\N	\N
2087	Picture 121.jpg	91	Ven. TH recruit, Ven	\N	2003-04-13 00:00:00	\N	\N
2088	Picture 122.jpg	91	Doug. TH recruit, Doug	\N	2003-04-13 00:00:00	\N	\N
2089	Picture 123.jpg	91	Interception. An Le with the interception, Lou and David can do nothing	\N	2003-04-13 00:00:00	\N	\N
2090	Picture 124.jpg	91	Carol. Carol has no fear of the Foot Ball, Nihal, Jon, Razvan try to recover	\N	2003-04-13 00:00:00	\N	\N
2091	Picture 125.jpg	91	Marble Factory Member. Sinch on drums	\N	2003-04-13 00:00:00	\N	\N
2092	Picture 127.jpg	91	Ketsup. Kate dabs her fries in the delectible sauce	\N	2003-04-13 00:00:00	\N	\N
2093	Picture 128.jpg	91	An. An smiles as Filipa removes the bunny fingers	\N	2003-04-13 00:00:00	\N	\N
2094	Picture 129.jpg	91	Len. Len is just a happy guy, what can I say	\N	2003-04-13 00:00:00	\N	\N
2095	Picture 130.jpg	91	Ikue. Ikue, having a good time	\N	2003-04-13 00:00:00	\N	\N
2096	shitNoSleep.jpg	91	Sleepless. Chris Nemcosky sacrifices sleep for circuitry	\N	2003-04-13 00:00:00	\N	\N
2097	thatsNotMika.jpg	91	Serge shows some affection to Mike while dancing. 	\N	2003-04-13 00:00:00	\N	\N
2098	THE_MAN.jpg	91	Lou. Dragon Master Lou picks up another habit and a taste for fine beer from his TH crew	\N	2003-04-13 00:00:00	\N	\N
2346	108_0873.jpg	102	To the right! 	\N	\N	Mikka	\N
2069	Picture 093.jpg	91	MAC90. Melch can handle it	\N	2003-04-13 00:00:00	David Erickson	\N
2140	Boffer Bunny.jpg	93	Boffer Bunny. 	\N	\N	\N	\N
2141	Circuitry.jpg	93	Circuitry. 	\N	\N	\N	\N
2142	Usual Spoofers.jpg	93	The Usual Spoofers. 	\N	\N	\N	\N
2471	DSCF0014.JPG	108	Moving Target. 	\N	\N	\N	\N
2150	Thinking Dan.jpg	94	Experimental 2: Dan, Before and After. Dan sports a new blue Jerry curl	\N	\N	\N	\N
2153	104_0462.JPG	94	The Finished Products (Minus 1). Frances dyed her hair back in black	Melch, Dan, Mikka	2003-04-23 00:00:00	Rob Allen	\N
2158	104_0458.JPG	94	The Camera Girl. 	The Camera Girl	2003-04-23 00:00:00	The Camera Girl	\N
2165	105_0552.JPG	95	Yeah, he the man. DJ Chronoxaos, who layeth forth the phat beats in TechHouse	\N	\N	\N	\N
2170	106_0661.JPG	95	1-First of the Dancing Dylan Flipbook Series raw images. 	\N	\N	\N	\N
2171	106_0662.JPG	95	2. 	\N	\N	\N	\N
2172	106_0663.JPG	95	3. 	\N	\N	\N	\N
2173	106_0664.JPG	95	4. 	\N	\N	\N	\N
2174	106_0665.JPG	95	5. 	\N	\N	\N	\N
2175	106_0666.JPG	95	6. 	\N	\N	\N	\N
2176	106_0667.JPG	95	7. 	\N	\N	\N	\N
2177	106_0668.JPG	95	8. 	\N	\N	\N	\N
2178	106_0669.JPG	95	9. 	\N	\N	\N	\N
2179	106_0670.JPG	95	10. 	\N	\N	\N	\N
2180	106_0671.JPG	95	11. 	\N	\N	\N	\N
2181	106_0672.JPG	95	12. Damn, I wish we could turn these into an online flipbook	\N	\N	\N	\N
2182	106_0673.JPG	95	13. 	\N	\N	\N	\N
2183	106_0674.JPG	95	14. 	\N	\N	\N	\N
2184	106_0675.JPG	95	15. 	\N	\N	\N	\N
2185	106_0676.JPG	95	16. 	\N	\N	\N	\N
2186	106_0677.JPG	95	17. 	\N	\N	\N	\N
2187	106_0678.JPG	95	18. 	\N	\N	\N	\N
2188	106_0679.JPG	95	19. 	\N	\N	\N	\N
2189	106_0680.JPG	95	20. 	\N	\N	\N	\N
2190	106_0681.JPG	95	21. 	\N	\N	\N	\N
2191	106_0682.JPG	95	22. 	\N	\N	\N	\N
2192	106_0683.JPG	95	23. 	\N	\N	\N	\N
2193	106_0684.JPG	95	24. 	\N	\N	\N	\N
2194	106_0685.JPG	95	25. 	\N	\N	\N	\N
2195	106_0686.JPG	95	26. 	\N	\N	\N	\N
2196	106_0687.JPG	95	27. 	\N	\N	\N	\N
2197	106_0688.JPG	95	28. 	\N	\N	\N	\N
2198	106_0689.JPG	95	29. 	\N	\N	\N	\N
2199	106_0690.JPG	95	30. 	\N	\N	\N	\N
2200	106_0691.JPG	95	31. 	\N	\N	\N	\N
2201	106_0692.JPG	95	32. 	\N	\N	\N	\N
2202	106_0693.JPG	95	33. 	\N	\N	\N	\N
2203	106_0694.JPG	95	34. 	\N	\N	\N	\N
2204	106_0695.JPG	95	35. 	\N	\N	\N	\N
2205	106_0696.JPG	95	Last of the Dancing Dylan Flipbook Series raw images. 	\N	\N	\N	\N
2207	DSCF0001.jpg	95	Austin and Jonathan. 	\N	2003-04-26 00:00:00	Beca Erickson	Semiformal
2208	DSCF0003.JPG	95	Chris Nemcosky. 	Chris Nemcosky	2003-04-26 00:00:00	\N	Semiformal
2209	DSCF0006.JPG	95	Mikka isn't dancing? 	Chris Nemcosky, Adam Fenn, Mikka Pineda	2003-04-26 00:00:00	\N	Semiformal
2210	DSCF0007.JPG	95	Marcus. (blurred)	Marcus Samale	2003-04-26 00:00:00	\N	Semiformal
2215	107_0781.JPG	96	The Grim Mikka. 	\N	\N	Razvan	\N
2217	107_0784.JPG	96	Len's Self-Portrait. 	\N	\N	Len	\N
2218	107_0785.JPG	96	What's that behind them? 	\N	\N	\N	\N
2222	107_0791.JPG	96	Hmm, what's on Graham's mind? 	\N	\N	\N	\N
2224	107_0796.JPG	96	Delightfully tacky, yet unrefined. ARRGH, shaky hands!	\N	\N	\N	\N
2225	108_0804.JPG	96	Hooters groupies. 	Evan, Lou, An, Len, Vik, Raz, Graham	\N	\N	\N
2226	108_0811.JPG	96	That Matrix Guy... afterwards, I was too absorbed in X-Men 2 to take screen shots. 	\N	\N	\N	\N
2164	105_0540.JPG	95	View from the floor. Hmm, maybe standing up is better after all	Marcus Samale	\N	\N	\N
2284	DSCF0014.JPG	101	Following the Flag. Everyone in TH Shirts!	\N	2003-05-10 00:00:00	Tracy Nance	\N
2143	104_0439_r1_r1.jpg	94	Bow Before Me. 	Melch, Dan	2003-04-23 00:00:00	Mikka	2nd Floor Bathroom
2144	104_0428.JPG	94	Foiled. 	Francis	2003-04-23 00:00:00	Mikka	\N
2234	108_0839.JPG	97	Drilling & Cutting. Step 4: Bore a hole and cut a notch at each end of the pipe if you hadn't done so already - this can be done before softening the pipe	Vik, Marcus	\N	\N	\N
2239	108_0851.JPG	97	Hallway slumber party after a long night of weapons work and homework. Mikka, Melch, Dylan, (Tschantz woke up early)	2nd Floor Hallway	\N	\N	Hari Khalsa
2253	P1010055.JPG	98	Dan reads a TH magazine before dinner. 	Dan Mortenson	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2254	P1010057.JPG	98	People Eating. 	Jordan, Rob, Evan, Pete, Dylan, Adam, Shawn	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2255	P1010058.JPG	98	Chicken? 	Graham and Jimmy	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2256	P1010059.JPG	98	Doug. 	\N	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2257	P1010061.JPG	98	Making a list... ...and checking it twice.	\N	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2258	P1010063.JPG	98	Marcus. Poster boy for wireless keyboards everywhere.	\N	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2259	P1010066.JPG	98	Len tries to get in the way. 	Vik, Jimmy, Graham, Razvan, Len	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2260	P1010068.JPG	98	We should be in the next category.... 	Eric, Mike, Marcus, Clara	2003-05-04 00:00:00	Beca Erickson	End Of Year Dinner
2261	P1010045.JPG	99	Generalissimo Luis Ponders the Board. 	Eric, Pawel, Lou, An, Nihal	2003-05-04 00:00:00	Beca Erickson	Library
2262	P1010047.JPG	99	The Field of War. 	\N	2003-05-04 00:00:00	Beca Erickson	Library
2263	P1010049.JPG	99	Chris feels victory is in the bag. Martha knows better.	Mike, Martha, Chris, Melch	2003-05-04 00:00:00	Beca Erickson	Library
2264	P1010050.JPG	99	What to do? 	Eric, Lou, Pawel, Nihal, An, Dave	2003-05-04 00:00:00	Beca Erickson	Library
2265	P1010051.JPG	99	Nihal Laughs at War. 	\N	2003-05-04 00:00:00	Beca Erickson	Library
2266	P1010011.JPG	100	There's something fun about padded weapons. 	Mikka, Sue, Nihal, Rich, Dylan, ?, Scoot, Jimmy	2003-05-04 00:00:00	Beca Erickson	The Porch
2267	P1010013.JPG	100	Random guys get in on the action. Were these the ones who tried to run off with our weapons?	\N	2003-05-04 00:00:00	Beca Erickson	The Porch
2268	P1010014.JPG	100	No, really, we're just watching! 	Filipa and An	2003-05-04 00:00:00	Beca Erickson	The Porch
2269	P1010015.JPG	100	People Fighting. And Vik has a ball.	Jimmy, Pawel, Marsha, ?, Chris, Razvan, Eric, Vik, Scoot, David	2003-05-04 00:00:00	Beca Erickson	The Porch
2270	P1010017.JPG	100	Jimmy takes up the cross? Oh, nevermind.  It's a sword.	Jimmy, Adam, Jon	2003-05-04 00:00:00	Beca Erickson	The Porch
2271	P1010023.JPG	100	Dylan's pants are glowing... ...making an easy target for Vik's javelin.	Vik, Raz, Nihal, Dylan, Eric, Melch	2003-05-04 00:00:00	Beca Erickson	The Porch
2272	P1010024.JPG	100	Francis lets her temper loose. 	Razvan, ?, Frances	2003-05-04 00:00:00	Beca Erickson	The Porch
2273	P1010034.JPG	100	Fighting moves to Patriot's Court. 	People	2003-05-04 00:00:00	Beca Erickson	The Porch
2274	P1010035.JPG	100	Don't they look like anime characters? 	Scoot, Pawel, Sue	2003-05-04 00:00:00	Beca Erickson	The Porch
2275	P1010036.JPG	100	Who, Me? I'm not holding a weapon...	An, Vik	2003-05-04 00:00:00	Beca Erickson	The Porch
2276	P1010038.JPG	100	Frances gets Dave. 'Tis but a flesh wound.	\N	2003-05-04 00:00:00	Beca Erickson	The Porch
2277	P1010039.JPG	100	The boffer swords are actually lightsabers. 	\N	2003-05-04 00:00:00	Beca Erickson	The Porch
2278	P1010041.JPG	100	Sue. 	\N	2003-05-04 00:00:00	Beca Erickson	The Porch
2279	P1010043.JPG	100	Time to wrap it up. 	\N	2003-05-04 00:00:00	Beca Erickson	The Porch
2280	DSCF0009.JPG	101	Rallying the Troops. 	Chris, Rich, Marsha, Eric, Marcus, Scoot, Razvan, David	2003-05-10 00:00:00	Tracy Nance	The Porch
2281	DSCF0010.JPG	101	Discussing Tactics. 	David Eigen, David Erickson, Chris N., Marsha	2003-05-10 00:00:00	Tracy Nance	The Porch
2282	DSCF0012.JPG	101	Marching. Look at all the bunnies!	People	2003-05-10 00:00:00	Tracy Nance	Benevolent Street
2472	DSCF0015.JPG	108	Ole. 	\N	\N	\N	\N
2227	108_0831.JPG	97	PVC Pipe Trumpet Brigade. 	Beca, Lou, Frances, Marcus, Vik, Melch	\N	Mikka	Secret Place, Secret Time
2283	DSCF0013.JPG	101	Embedded Reporter. 	Sue	2003-05-10 00:00:00	Tracy Nance	\N
2230	108_0834.JPG	97	Guards of the Kiln. 	Vik, David (Reiss), Marcus, Dylan	\N	Mikka	Secret Place, Secret Time
2286	DSCF0018.JPG	101	The Troops. 	\N	2003-05-10 00:00:00	Tracy Nance	In Front of the Governor
2287	DSCF0019.JPG	101	The Troops. gather closer.	\N	2003-05-10 00:00:00	Tracy Nance	In Front of the Governor
2296	DSCF0031.JPG	101	Stunned Passersby. 	\N	2003-05-10 00:00:00	Tracy Nance	India Point Park
2297	DSCF0032.JPG	101	Hapless Sunbather. 	\N	2003-05-10 00:00:00	Tracy Nance	India Point Park
2298	DSCF0033.JPG	101	Stretching. 	Rich, Ben, Pawel	2003-05-10 00:00:00	Beca Erickson	India Point Park
2299	DSCF0034.JPG	101	Archers. 	Vik, Marcus	2003-05-10 00:00:00	Beca Erickson	India Point Park
2300	DSCF0035.JPG	101	On the Battlefield. 	Ben, Pawel, Mikka, Nihal, Rich, ?, Dave, Len, Dylan, David Reiss, Eric	2003-05-10 00:00:00	Beca Erickson	India Point Park
2301	DSCF0036.JPG	101	Ben Rubin. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2302	DSCF0038.JPG	101	David Is Felled. 	Rich, Graham, Ben, David, Eric	2003-05-10 00:00:00	Beca Erickson	India Point Park
2303	DSCF0040.JPG	101	The Old Battle Axe. 	The Axe, Razvan	2003-05-10 00:00:00	Beca Erickson	India Point Park
2304	DSCF0043.JPG	101	Ben Rubin. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2305	DSCF0044.JPG	101	Ben vs. Dave. 	Ben, Doug, Dave, Pawel, Razvan, Clara	2003-05-10 00:00:00	Beca Erickson	India Point Park
2306	DSCF0045.JPG	101	Dave vs. Rich. 	Graham, Dave, Rich, Pawel	2003-05-10 00:00:00	Beca Erickson	India Point Park
2307	DSCF0046.JPG	101	Razvan vs. Vik. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2308	DSCF0047.JPG	101	Taking a Break. 	Clara, ?, Dave, Chris	2003-05-10 00:00:00	Beca Erickson	India Point Park
2309	DSCF0048.JPG	101	Preparing for a 4-Way Battle. 	Vik, Len, Mike, Graham, Pawel, Dylan	2003-05-10 00:00:00	Beca Erickson	India Point Park
2310	DSCF0049.JPG	101	More Preparations. 	Pawel, Dylan, Marcus, David Reiss, Rich, Doug	2003-05-10 00:00:00	Beca Erickson	India Point Park
2311	DSCF0051.JPG	101	Eric Sings a Martial Tune. 	?, Dave, Eric, Clara	2003-05-10 00:00:00	Beca Erickson	India Point Park
2312	DSCF0054.JPG	101	They *look* like they're playing Tug-'O-War. 	Mike, Dylan, Rich, Doug, David	2003-05-10 00:00:00	Beca Erickson	India Point Park
2313	DSCF0055.JPG	101	Mikka Collects Arrows. 	Rich, Mikka	2003-05-10 00:00:00	Beca Erickson	India Point Park
2314	DSCF0056.JPG	101	Razvan. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2315	DSCF0057.JPG	101	Clara. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2316	DSCF0059.JPG	101	Sue and David. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2317	DSCF0060.JPG	101	Vik vs. Ben. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2318	DSCF0061.JPG	101	Mike. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2319	DSCF0062.JPG	101	Descent. From the Hills	Eric, Melch, Len, Pawel	2003-05-10 00:00:00	Beca Erickson	India Point Park
2320	DSCF0063.JPG	101	Random Dude vs. Doug. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2321	DSCF0064.JPG	101	Graham Dies. 	Little Kid, Graham, Random Dude, Len	2003-05-10 00:00:00	Beca Erickson	India Point Park
2322	DSCF0065.JPG	101	Readying for Capture the Flag, Boffer-Style. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2323	DSCF0067.JPG	101	Little Kid With Battle Axe. 	Marcus, Little Kid	2003-05-10 00:00:00	Beca Erickson	India Point Park
2324	DSCF0068.JPG	101	David of Arabia. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2325	DSCF0069.JPG	101	The Shirtless Team? 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2326	DSCF0071.JPG	101	Sue Reloads. 	vik, Mikka, Little Kid, Sue	2003-05-10 00:00:00	Beca Erickson	India Point Park
2327	DSCF0072.JPG	101	Joe Looks On, Incredulous. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2328	DSCF0075.JPG	101	FGSer. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2329	DSCF0077.JPG	101	Vik and Marcus. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2330	DSCF0080.JPG	101	Graham and Dave go hand-to-hand. 	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2331	DSCF0081.JPG	101	Nihal and Marsha. taking a breather.	\N	2003-05-10 00:00:00	Beca Erickson	India Point Park
2332	DSCF0082.JPG	101	Tracy Guards the Axe. 	Joe, Tracy	2003-05-10 00:00:00	Beca Erickson	India Point Park
2334	P1010018.JPG	102	Capture the Flag. 	Clara, David, Rich	2003-05-17 00:00:00	Beca Erickson	The Green
2335	P1010021.JPG	102	Crouching Clara, Not-So-Hidden Eric. 	\N	2003-05-17 00:00:00	Beca Erickson	The Green
2336	P1010023.JPG	102	Joe. 	\N	2003-05-17 00:00:00	Beca Erickson	The Green
2337	P1010024.JPG	102	Rich. 	\N	2003-05-17 00:00:00	Beca Erickson	The Green
2338	P1010034.JPG	102	Time for Cocoa. 	Mike, Rich, Joe, Len, David, Eric, David	2003-05-17 00:00:00	Beca Erickson	ABC
2339	P1010037.JPG	102	Nothing like cocoa after a chilling game of CTF. 	Joe, Len, David, Eric, David	2003-05-17 00:00:00	Beca Erickson	ABC
2340	P1010039.JPG	102	Mike Sips. 	\N	2003-05-17 00:00:00	Beca Erickson	ABC
2341	P1010043.JPG	102	Warm and full of cocoa. 	Rich, Mike, David, Joe, Len, Eric, David, Clara	2003-05-17 00:00:00	Beca Erickson	ABC
2342	P1010045.JPG	102	Clara. 	\N	2003-05-17 00:00:00	Beca Erickson	ABC
2343	P1010046.JPG	102	Mmmmmm.....Rich! (What Clara said about the cocoa.)	\N	2003-05-17 00:00:00	Beca Erickson	ABC
2344	108_0871.jpg	102	Group photo after the TH graduation dinner at Tokyo. 	( * denotes a senior graduating with the Class of 2003) Richard Julian Scott McKenzie*, David Reiss, Rob Allen, Joe Hasbani, Evan Chan, An Le*, John Dylan Cheasty, Shear Jue/Winston Len*, Chris Mastrangelo, Ikue Shimizu*, Allison Hale, Richard Shay*, Fellatio al Dente. Missing Seniors: Shawn Bachan, Kate Ho, Sergio Garcio.	\N	\N	\N
2289	DSCF0022.JPG	101	Bunny's-Eye-View. 	\N	2003-05-10 00:00:00	Tracy Nance	\N
2290	DSCF0024.JPG	101	Len thinks it is a good day to die. 	Len	2003-05-10 00:00:00	Tracy Nance	\N
2291	DSCF0025.JPG	101	Perenials Are Here, PANSIES!!! 	\N	2003-05-10 00:00:00	Tracy Nance	\N
2292	DSCF0026.JPG	101	Fearless Leader Directs the Troops. After the infidels insist on a different battlefield.	\N	2003-05-10 00:00:00	Tracy Nance	\N
2293	DSCF0027.JPG	101	Baffled Passersby. 	\N	2003-05-10 00:00:00	Tracy Nance	\N
2294	DSCF0028.JPG	101	Seeing Signs. And Good Omens	\N	2003-05-10 00:00:00	Tracy Nance	\N
2295	DSCF0029.JPG	101	Embedded Reporter #2 Follows the Troops. 	\N	2003-05-10 00:00:00	Tracy Nance	\N
2333	108_0869.jpg	102	Carrying hangers bandolier-style to his summer apartment. (Scroll right - it's an unedited image, not resized or rotated)	Tschantz	\N	Mikka	\N
2285	DSCF0015.JPG	101	Fall In Behing The Major. 	\N	2003-05-10 00:00:00	Tracy Nance	\N
2347	108_0874.jpg	102	Now with Mikka in the photo. (I didn't have time to paste myself in the group photo -Mikka)	\N	\N	Evan Chan	\N
2348	108_0875.jpg	102	Now just the seniors who went to the Tokyo dinner. 	Scott, An, Len, Ikue, Rich, (Serge left early)	\N	\N	\N
2349	P1010001.JPG	103	After the Campus Dance. 	Keith, Su, and Soren	2003-05-24 00:00:00	Beca Erickson	A dorm room
2350	P1010002.JPG	103	Barbecue by the Master. Nik spent a while fixing the barbecue before doing this....	Nik Lochmatow	2003-05-24 00:00:00	Beca Erickson	The Porch
2351	P1010005.JPG	103	I'm not sure what they're looking at. 	Mike, Clara, Curran, Rory	2003-05-24 00:00:00	Beca Erickson	The Porch
2352	P1010007.JPG	103	Mikka, The Watermelon, and War. 	\N	2003-05-24 00:00:00	Beca Erickson	The Porch
2353	P1010008.JPG	103	The Techhouse Alumni Barbecue. It was fun to see alumni and current members hanging out together and being nerdy.	Loads of people.	2003-05-24 00:00:00	Beca Erickson	The Porch
2355	P1010010.JPG	103	EN164 PIMPZ!!!! 	Lou, Soren, and Jeff	2003-05-24 00:00:00	Beca Erickson	The Porch
2356	P1010011.JPG	103	Enter this deserted house... ...but please, walk softly as you do.	Mikka Pineda	2003-05-24 00:00:00	Beca Erickson	The Porch
2357	P1010012.JPG	103	Mike's butt in the air. 	Clara, Mike, Eric	2003-05-24 00:00:00	Beca Erickson	The Porch
2358	P1010013.JPG	103	Mike's feet in the air. 	Clara, Mike, Eric	2003-05-24 00:00:00	Beca Erickson	The Porch
2359	P1010015.JPG	103	Soren and Keith clean the fridge. 	Soren and Keith	2003-05-24 00:00:00	Beca Erickson	The Kitchen
2360	P1010016.JPG	103	Soren couldn't help himself. 	Soren and Keith	2003-05-24 00:00:00	Beca Erickson	The Kitchen
2361	P1010017.JPG	103	Rob's Roommate Sees Techhouse. 	\N	2003-05-24 00:00:00	Beca Erickson	The War Room
2362	P1010018.JPG	103	Soren Tries Trapeze. 	Soren, Mike	2003-05-24 00:00:00	Beca Erickson	Mike's Carriage House
2363	P1010019.JPG	103	Su and Nik. 	\N	2003-05-24 00:00:00	Beca Erickson	Mike's Carriage House
2364	P1010020.JPG	103	Melch's Evil Grin. She has a knife.	Evan, Melch, Dylan, Lou	2003-05-24 00:00:00	Beca Erickson	The Kitchen
2366	P1010022.JPG	103	Alumni In The War Room. 	Lou, Chris, Nik, and Soren	2003-05-24 00:00:00	Beca Erickson	The War Room
2367	P1010023.JPG	103	Orient Me... ...I DARE YOU!	Dylan	2003-05-24 00:00:00	Beca Erickson	The War Room
2368	P1010025.JPG	103	Soren and Keith shoot each other. 	Nik, Soren, Keith, Lou	2003-05-24 00:00:00	Beca Erickson	Basement Hallway
2369	P1010027.JPG	103	Watching the slings and arrows. 	Nik and Su	2003-05-24 00:00:00	Beca Erickson	Basement Hallway
2370	P1010028.JPG	103	Nik: Leisure Archer Extraordinaire. 	Melch, Erwin, Soren, Chris, Keith, Nik, and Su	2003-05-24 00:00:00	Beca Erickson	Basement Hallway
2371	P1010029.JPG	103	Dylan: Master of One-Handed Archery. 	Dylan, David, Lou	2003-05-24 00:00:00	Beca Erickson	Basement Hallway
2372	P1010030.JPG	103	Su Cheerfully Kills Someone. 	Keith, Nik, Su	2003-05-24 00:00:00	Beca Erickson	Basement Hallway
2373	P1010032.JPG	103	Soren smiles in the face of Danger. Yes, that's an arrow in flight.	Soren, Lou, The Arrow, Chris	2003-05-24 00:00:00	Beca Erickson	Basement Hallway
2374	P1010034.JPG	103	Dylan goes for five. 	Dylan	2003-05-24 00:00:00	Beca Erickson	Basement Hallway
2375	P1010036.JPG	103	Mike Defies Gravity. "Gravity, I defy you." -Mike	Mike	2003-05-25 00:00:00	Beca Erickson	Waterplace Park
2376	P1010037.JPG	103	Clara and Mike Show Off. After Clara freaked Soren out by standing on *his* shoulders.	Soren, Clara, Mike	2003-05-25 00:00:00	Beca Erickson	Waterplace Park
2377	P1010038.JPG	103	Curran. Smiling in the rain.	Curran	2003-05-26 00:00:00	Beca Erickson	Lincoln Field
2378	P1010039.JPG	103	Brett Cohen. 	Brett Cohen,  Brock Pytlik	2003-05-26 00:00:00	Beca Erickson	Lincoln Field
2379	P1010040.JPG	103	Len and Serge. 	\N	2003-05-26 00:00:00	Beca Erickson	Lincoln Field
2380	P1010042.JPG	103	Scott. 	\N	2003-05-26 00:00:00	Beca Erickson	Lincoln Field
2381	P1010043.JPG	103	Techhouse Graduates. 	Serge, Yotam, Len, Marsha, Scott, David, Kate, Rich, and An	2003-05-26 00:00:00	Beca Erickson	Lincoln Field
2382	P1010044.JPG	103	Another, slightly blurrier shot. Taking pictures in the rain can be difficult.	\N	2003-05-26 00:00:00	Beca Erickson	Lincoln Field
2383	P1010045.JPG	103	The Andersens. 	\N	2003-05-26 00:00:00	Beca Erickson	Main Green
2384	P1010047.JPG	103	Warming Up. After marching, the alumni head back to abc.th for bagels and hot beverages.	Soren and Su	2003-05-26 00:00:00	Beca Erickson	abc.th
2385	P1010052.JPG	103	At the Math Department Ceremony. David and Ikue are in there....	\N	2003-05-26 00:00:00	Beca Erickson	Leung Gallery
2386	P1010053.JPG	103	At the CS Department Reception. 	Amy, Soren, Yotam	2003-05-26 00:00:00	Beca Erickson	5th Floor CIT
2387	P1010054.JPG	103	Rich and cousins? 	\N	2003-05-26 00:00:00	Beca Erickson	5th Floor CIT
2388	P1010055.JPG	103	Curran and Rory. I swear, I *told* Rory this was the Serious Photo	\N	2003-05-26 00:00:00	Beca Erickson	5th Floor CIT
2389	P1010056.JPG	103	And this was the Silly Photo. 	Rory and Curran	2003-05-26 00:00:00	Beca Erickson	5th Floor CIT
2390	P1010057.JPG	103	Leaning. 	Curran, Brett, Clara	2003-05-26 00:00:00	Beca Erickson	5th Floor CIT
2391	P1010058.JPG	103	David would like to confirm. that there is no sex in the Champagne Room.	David Reiss	2003-05-26 00:00:00	Beca Erickson	5th Floor CIT
2392	P1010059.JPG	103	And Curran Gets A Back Rub. 	Curran, Soren	2003-05-26 00:00:00	Beca Erickson	5th Floor CIT
2393	PB100004.JPG	104	The TH Summer Compound. 	\N	2003-07-15 00:00:00	Beca Erickson	181 Governor
2394	PB100005.JPG	104	Dealing. for Chrononauts	Shirin, Dave, Mike, Jimmy, Eric, Jane, An	2003-07-15 00:00:00	Beca Erickson	181 Governor
2395	PB100006.JPG	104	Explaining the Finer Points of the Game. 	Shirin, Jimmy, Dave, Mike	2003-07-15 00:00:00	Beca Erickson	181 Governor
2396	PB100007.JPG	104	An and Jane. Fiddling With the Space/Time Continuum	An, Jane, Jimmy, Eric's Hair	2003-07-15 00:00:00	Beca Erickson	181 Governor
2397	PB100009.JPG	104	The Compound's Kitchen. And Dan's Birthday Cake	\N	2003-07-15 00:00:00	Beca Erickson	181 Governor
2398	P1010011.JPG	104	That was Good Cake. 	Eric, Curran	\N	Beca Erickson	126 Waterman
2399	P1010013.JPG	104	Dave and An. 	\N	\N	Beca Erickson	126 Waterman
2400	P1010016.JPG	104	Brett. 	\N	\N	Beca Erickson	126 Waterman
2401	P1010017.JPG	104	Sam. 	\N	\N	Beca Erickson	126 Waterman
2402	P1010022.JPG	104	Pete. This Parrot Eats Fascists?	\N	\N	Beca Erickson	126 Waterman
2354	P1010009.JPG	103	Eric gets ready to go to Yale for the weekend. 	Eric Cohen	2003-05-24 00:00:00	Mikka	The Porch
2403	P1010043.JPG	105	The Techhouse Table. 	Dylan, Marcus, Joe, Sue, David Eigen, Tracy	2003-08-30 00:00:00	Beca Erickson	The OMAC
2404	P1010044.JPG	105	Do you like stealing? 	Tracy, Mike Tschantz	2003-08-30 00:00:00	Beca Erickson	The OMAC
2405	P1010045.JPG	105	The Klepto Club. Just give us your name, e-mail address, social security number, and the number of a major credit card....	Tracy, Mike Tschantz	2003-08-30 00:00:00	Beca Erickson	The OMAC
2406	P1010046.JPG	105	Raising Awareness of Kleptomania. Through Public Demonstration	Tracy, Mike Tschantz, Dylan's Hand	2003-08-30 00:00:00	Beca Erickson	The OMAC
2407	P1010048.JPG	105	People like Sue's Project Glory Video. 	People	2003-08-30 00:00:00	Beca Erickson	The OMAC
2408	P1010050.JPG	105	The Klepto Club makes off with our shield. 	Mike Tschantz, Tracy	2003-08-30 00:00:00	Beca Erickson	Outside The OMAC
2409	P1010051.JPG	105	But we know where they live. 	Mike Tschantz, Tracy	2003-08-30 00:00:00	Beca Erickson	Hope Street
2436	P1010057.JPG	106	Grins. 	Martha, Eric	\N	Beca Erickson	The Lounge
2437	P1010058.JPG	106	aaAAAaah! Don't make fun of Pinky...	Jane	\N	Beca Erickson	The Lounge
2438	P1010059.JPG	106	Quasi-Beer. 	Melch, Evan	\N	Beca Erickson	Second Floor Hallway
2439	P1010063.JPG	106	Reading Something. 	Mike, David Reiss	\N	Beca Erickson	The Kitchen
2440	P1010069.JPG	106	Jane tempts the wrath of the unnamable. 	Jane	\N	\N	The Lounge
2441	P1010071.JPG	106	Roots Sit Down With Manjari. 	Adam, Jimmy	\N	Beca Erickson	The Library
2442	P1010075.JPG	106	Future Site of Server. New CIS policies delay our server's homecoming.	Nihal, Jimmy	\N	Beca Erickson	The Library
2444	TH0026.JPG	107	Topless Hallway Bathing. with A1 steak sauce	Sasquatch	2003-12-15 00:00:00	spandex girl	2nd Floor Hallway
2445	TH0027.JPG	107	Warning: Graphic Image. 	Dan's Left Nipple	2003-12-15 00:00:00	spandex girl	2nd Floor Hallway
2446	TH0030.JPG	107	Baby got back. ...hair	Sasquatch	2003-12-15 00:00:00	spandex girl	2nd Floor Hallway
2447	TH0032.JPG	107	Al Capone's Tomb. 	Sasquatch	2003-12-15 00:00:00	spandex girl (mikka)	2nd Floor Hallway
2448	TH0034.JPG	107	Inspired by Iggy Pop. 	Graham and Dan	2003-12-15 00:00:00	spandex girl	2nd Floor Hallway
2459	Door0012.JPG	107	Ninja Strike. The direction in which westerners read	Foyer, Dec. 18, 2003	\N	\N	Mikka
2465	DSCF0001.JPG	108	What's going on? I see ductape balls on stings and Dylan and Marcus.  This can't be good	\N	\N	\N	\N
2466	DSCF0004.JPG	108	Dylan Tags Eric. 	\N	\N	\N	\N
2467	DSCF0005.JPG	108	Marcus Tags Dylan. 	\N	\N	\N	\N
2468	DSCF0006.JPG	108	A Masterful Throw. 	\N	\N	\N	\N
2469	DSCF0007.JPG	108	The Windup. 	\N	\N	\N	\N
2470	DSCF0013.JPG	108	The Pitch. 	\N	\N	\N	\N
2425	16.JPG	106	After Laying Down a Newer Carpet... we feel an urge to do push-ups (and breakdance on the walls)	Dave Erickson	\N	\N	\N
2410	1.JPG	106	First Formal General Meeting. 	Techhouse	\N	Mikka	\N
2411	2.JPG	106	arRerangement. 	Techhouse	\N	Mikka	\N
2412	3.JPG	106	Hunting fo Wabbits. 	Jane Widness	\N	Mikka	\N
2413	4.JPG	106	Swept Away by Pawel. 	Pawel	\N	Mikka	\N
2473	DSCF0016.JPG	108	Run for your life. 	\N	\N	\N	\N
2474	DSCF0017.JPG	108	Now with more feeling. 	\N	\N	\N	\N
2475	DSCF0018.JPG	108	Bola'ed. 	\N	\N	\N	\N
2476	DSCF0022.JPG	108	Straightening it all out. 	\N	\N	\N	\N
2477	DSCF0025.JPG	108	Eric with Bola. 	\N	\N	\N	\N
2478	DSCF0026.JPG	108	He can dodge the second one. 	\N	\N	\N	\N
2479	DSCF0027.JPG	108	You can run... 	\N	\N	\N	\N
2480	DSCF0028.JPG	108	The techhouse fighting style has many stances. 	\N	\N	\N	\N
2481	DSCF0029.JPG	108	All around, a good game. 	\N	\N	\N	\N
2482	P1010001.JPG	109	Bobby-Su's Table is repaired! 	\N	2003-09-07 00:00:00	Beca Erickson	The Porch
2483	P1010002.JPG	109	Grillmaster Evan starts up the grill with Rob. 	Evan, Rob	2003-09-07 00:00:00	Beca Erickson	The Porch
2484	P1010004.JPG	109	Bobby-Su, Unchained No Longer. 	Marcus, Pete	2003-09-07 00:00:00	Beca Erickson	The Porch
2485	P1010006.JPG	109	Lily and Chris. (Lily? Lili? Leelee? Someone clue me in, here.)	\N	2003-09-07 00:00:00	Beca Erickson	The Porch
2486	P1010015.JPG	109	And Everyone Eats. 	Lots o' People	2003-09-07 00:00:00	Beca Erickson	The Porch
2487	P1010019.JPG	109	Good Picnic Table Discussion. 	\N	2003-09-07 00:00:00	Beca Erickson	The Porch
2488	P1010021.JPG	109	Ending the Evening with Video Games. ...but of course....	\N	2003-09-07 00:00:00	Beca Erickson	The Porch
2489	groupphoto.jpg	110	Happy Techhouse. 	\N	2003-09-08 00:00:00	Beca Erickson	The Lounge
2490	DSCF0085.jpg	110	Sad Techhouse. 	\N	2003-09-08 00:00:00	Beca Erickson	The Lounge
2491	DSCF0086.jpg	110	Sketchy Techhouse. 	\N	2003-09-08 00:00:00	Beca Erickson	The Lounge
2492	DSCF0088.jpg	110	Silly Techhouse. 	\N	2003-09-08 00:00:00	Beca Erickson	The Lounge
2499	ths00.jpg	112	The Spoofers. 	Marcus, Jim, Jon, Carol, Pawel, Jorge, Z, (bottom row) Vik, Razvan, Ian, Pablo, Filipa, Marcel	\N	Michael O'Neill	\N
2500	ths01.jpg	112	Blurry Soccer. 	\N	\N	Michael O'Neill	\N
2501	ths02.jpg	112	Stretching. 	*, Vik, Pawel, Carol, *, Marcus	\N	Michael O'Neill	\N
2502	ths03.jpg	112	Soccer. 	\N	\N	Michael O'Neill	\N
2503	ths04.jpg	112	Soccer. 	\N	\N	Michael O'Neill	\N
2504	ths05.jpg	112	Vik Kicks. 	\N	\N	Michael O'Neill	\N
2505	ths06.jpg	112	Marcus Looks Away. 	\N	\N	Michael O'Neill	\N
2506	ths07.jpg	112	Jon Runs. 	\N	\N	Michael O'Neill	\N
2507	ths08.jpg	112	Soccer. 	\N	\N	Michael O'Neill	\N
2508	ths09.jpg	112	Jon About To Kick. 	\N	\N	Michael O'Neill	\N
2509	ths10.jpg	112	Who will get the ball? 	\N	\N	Michael O'Neill	\N
2510	ths11.jpg	112	More Soccer. 	\N	\N	Michael O'Neill	\N
2511	ths12.jpg	112	Jostling. 	\N	\N	Michael O'Neill	\N
2512	ths13.jpg	112	More Jostling. 	\N	\N	Michael O'Neill	\N
2513	ths14.jpg	112	Jon Smiles. 	\N	\N	Michael O'Neill	\N
2514	ths15.jpg	112	Soccer. 	\N	\N	Michael O'Neill	\N
2515	ths16.jpg	112	Carol Kicks. 	\N	\N	Michael O'Neill	\N
2516	ths17.jpg	112	Soccer. 	\N	\N	Michael O'Neill	\N
2517	ths18.jpg	112	People Moving Right. 	\N	\N	Michael O'Neill	\N
2518	ths19.jpg	112	Vik. 	\N	\N	Michael O'Neill	\N
2519	ths20.jpg	112	A Bunch of Spoofers. 	\N	\N	Michael O'Neill	\N
74	p4020069.jpg	10	\N	\N	2004-04-02 21:31:00	\N	\N
2520	NinjasNite0001.JPG	113	Cookie monster. 	\N	2003-10-25 00:00:00	Mikka	\N
2521	NinjasNite0002.JPG	113	A picture that looks like many others in the archive. A common sight in the ex-pool room	\N	2003-10-25 00:00:00	Mikka	\N
2522	NinjasNite0003.JPG	113	Ninjas/Games Nite winding down. 	\N	2003-10-25 00:00:00	Mikka	\N
2523	NinjasNite0004.JPG	113	Settlers of Catan. 	\N	2003-10-25 00:00:00	Mikka	\N
2524	NinjasNite0005.JPG	113	Exhausted from a night of gaming. 	\N	2003-10-25 00:00:00	Mikka	\N
2525	Jspook030001.JPG	114	Trinity/Clara. 	\N	2003-11-01 00:00:00	Mikka	Porch
2526	Jspook030004.JPG	114	Ninja Bouncers. 	\N	2003-11-01 00:00:00	Mikka	Porch
2527	Jspook030005.JPG	114	Rob doing push-ups. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2528	Jspook030007.JPG	114	Stylin' Tschantz. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2529	Jspook030009.JPG	114	Couch Potatoes. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2530	Jspook030010.JPG	114	Girls and their Mike. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2582	PA310001.JPG	115	Ryan Arrives. 	Ryan, Eric, David Reiss, Mike Plotz, Evan	\N	Beca Erickson	2nd Floor Hallway, Halloween 2003
2583	PA310002.JPG	115	David Reiss and Mike Plotz. 	\N	\N	Beca Erickson	2nd Floor Hallway, Halloween 2003
2584	PB010014.JPG	115	Ryan's Pumpkin Creation. 	No One You Know...Or Do You?	2003-11-01 00:00:00	Beca Erickson	126 Waterman
2585	PB010015.JPG	115	I Am The Pumpkin King! 	Ryan, John	\N	Beca Erickson	The Porch, Javaspook IX
2586	PB010016.JPG	115	And now one with glowing pumpkins. 	Ryan	\N	Beca Erickson	The Porch, Javaspook IX
2587	PB010017.JPG	115	Our Bouncers. First question: What is your name?	Doug, Keith Schmidt, Dylan, Lou	\N	Beca Erickson	The Porch, Javaspook IX
2588	PB010018.JPG	115	What is your quest? 	Meech's Brother, Doug, Matt, Dylan	\N	Beca Erickson	The Porch, Javaspook IX
2589	DSC0002.jpg	115	Techhouse Ninjas. What is your favorite color?	Doug, Razvan, Dylan	\N	Clara Kim	The Porch, Javaspook IX
2590	PB010020.JPG	115	Mirth. 	Ben, Jon, Carol	\N	Beca Erickson	Javaspook IX
2591	PB010022.JPG	115	Seasoned and Rookie Alumni. 	Keithe Dreibelbis, Scott McKenzie	\N	Beca Erickson	The Lobby, Javaspook IX
2592	PB010024.JPG	115	Psssst! John lets Keith in on the secret.	Keith Schmidt, Chris Mastrangelo, John Leen	\N	Beca Erickson	The Lobby, Javaspook IX
2593	PB010026.JPG	115	Beca Bares Her Teeth. 	Beca	\N	I forget who took this one.	The Lobby, Javaspook IX
2594	PB010028.JPG	115	Nihal: These aren't the stairs you're looking for. 	Nihal Kulkarni	\N	Beca Erickson	The Lobby, Javaspook IX
2595	PB010029.JPG	115	Stylin' in Techhouse Shirts. 	Ryan, Don	\N	Beca Erickson	The Lobby, Javaspook IX
2596	PB010031.JPG	115	The Lobby From Above. 	Nihal, Ryan, Don, Curran, Lou, Terry, John Leen, Jon Salomon	\N	Beca Erickson	The Lobby, Javaspook IX
2597	PB010032.JPG	115	Don and A Software Pirate. (The Software Pirate is Curran, for those of you who couldn't see through the disguise.)	Don, Curran, Curran's Warez	\N	Beca Erickson	The Lobby, Javaspook IX
2598	PB010033.JPG	115	The THignal Calls. But Whom Will It Summon?	\N	\N	Beca Erickson	\N
2599	DSC0005.jpg	115	Donald Engel, '00 (Masters '01). 	\N	\N	Clara Kim	\N
2600	DSC0006.jpg	115	Ryan Evans, '00. 	\N	\N	Clara Kim	\N
2601	DSC0007.jpg	115	Lou Arruda, '99.5. 	\N	\N	Clara Kim	\N
2602	DSC0008.jpg	115	Jeff Alexander, '99. 	\N	\N	Clara Kim	\N
2603	DSC0009.jpg	115	John Leen, '00. 	\N	\N	Clara Kim	\N
2604	DSC0010.jpg	115	Aram Berlandi, '00.5. 	\N	\N	Clara Kim	\N
2605	DSC0014.jpg	115	Keithe Dreibelbis, '00. 	\N	\N	Clara Kim	\N
2606	PB010034.JPG	115	Ah, The THignal. And if you're not on a PC, you can actually see Marcus below.	\N	\N	Beca Erickson	\N
2607	PB010037.JPG	115	Nihal and Melch. 	\N	\N	Beca Erickson	The Porch, Javaspook IX
2608	PB010038.JPG	115	Aram, Software Pirate, Wizard. Aram, Curran, Brett	Javaspook IX	\N	Beca Erickson	\N
2609	PB010041.JPG	115	Band Name, Please? 	\N	\N	Beca Erickson	Javaspook IX
2610	PB010042.JPG	115	Band Name, Please? 	\N	\N	Beca Erickson	Javaspook IX
2611	PB010044.JPG	115	Catching Up. Is different in person.	Keith Schmidt, John Leen	\N	Beca Erickson	Javaspook IX
2612	PB010046.JPG	115	Clara. Sans Coat	\N	\N	Beca Erickson	The Porch, Javaspook IX
2613	PB010047.JPG	115	Mike Juggles Fire. 	Mike Plotz	\N	Beca Erickson	The Side Yard, Javaspook IX
2614	PB010048.JPG	115	Eric Lights a Staff. 	Eric Cohen	\N	Beca Erickson	The Side Yard, Javaspook IX
2615	PB010049.JPG	115	Eric and his Pirate Wench Assistant. 	Eric, Curran	\N	Beca Erickson	The Side Yard, Javaspook IX
2616	PB010051.JPG	115	Everyone Juggles Fire Now. 	\N	\N	Beca Erickson	The Side Yard, Javaspook IX
2617	PB010052.JPG	115	Eric and Mike Prepare to Pass Flaming Torches. 	\N	\N	Beca Erickson	The Side Yard, Javaspook IX
2618	PB010054.JPG	115	Eric and Fire Poi. 	\N	\N	Beca Erickson	The Side Yard, Javaspook IX
2619	PB010055.JPG	115	Eric and Fire Poi. 	\N	\N	Beca Erickson	The Side Yard, Javaspook IX
2620	PB020056.JPG	115	Schmoozin' on Bobby-Su. 	Dave, Mike Plotz, Ryan, Someone I Don't Know, Jeff, Aram, Brett	\N	Beca Erickson	The Porch, Javaspook IX
2621	DSC0003.jpg	115	More Schmoozin'. Lou searches for a misplaced Teal Stuffie.	Aram, Beca, Lou, Jeff, Melch	\N	Clara Kim	The Porch, Javaspook IX
2622	DSC0004.jpg	115	The Kick-Ass Jazz Band. With Laura's Sister As Their Drummer	\N	\N	Clara Kim	Javaspook IX
2623	DSC0011.jpg	115	Roommates Melch and Jane. 	\N	\N	Clara Kim	The Porch, Javaspook IX
2624	DSC0012.jpg	115	Brett The Wizard. 	\N	\N	Clara Kim	The Porch, Javaspook IX
2625	DSC0013.jpg	115	Yarmulkazi. 	\N	\N	Clara Kim	Javaspook IX
2626	DSC0016.jpg	115	Pete and Sleepy An. 	\N	\N	Clara Kim	The Porch, Javaspook IX
2627	DSC0017.jpg	115	Need Band Name? 	\N	\N	Clara Kim	Javaspook IX
2628	DSC0018.jpg	115	Strike A Pose. 	Doug, Mikka, Sean	\N	Clara Kim	Javaspook IX
2629	DSC0019.jpg	115	The Matrix Reupholstered. ...in pleather!	Don, Clara	\N	Beca Erickson	The Porch, Javaspook IX
2630	DSC0020.jpg	115	Big Grins. 	Ryan, Beca	\N	Clara Kim	The Porch, Javaspook IX
2631	DSC0021.jpg	115	I'll Bite. 	Ryan, Beca	\N	Clara Kim	The Porch, Javaspook IX
2632	PB020064.JPG	115	Eric finds something amusing... ...but not as amusing as his makeup.	Brett, Eric, Melch	\N	Beca Erickson	The Porch, Javaspook IX
2633	PB020068.JPG	115	Ryan gets into the Arsenal. 	Ryan, Eric	\N	Beca Erickson	The Side Yard (aka The Practice Yard), Javaspook IX
2634	PB020069.JPG	115	Searching for Seagulls. 	Ryan and a Hyoi Pear	\N	Beca Erickson	The Porch, Javaspook IX
2635	PB020070.JPG	115	Brett and Curran. 	\N	2003-11-02 00:00:00	Beca Erickson	126 Waterman
2636	PB020072.JPG	115	And Now Just Curran. 	\N	2003-11-02 00:00:00	Beca Erickson	126 Waterman
2637	DSC0022.jpg	115	The After-Party. (What COULD they POSSIBLY be doing?)	Beca, Nik, Lou, Chris Nemcosky, Ryan, Dave, Dylan	2003-11-02 00:00:00	Clara Kim	The Lounge
2639	PB270001.JPG	116	Mike Tschantz and JRo. 	\N	2003-11-27 00:00:00	Beca Erickson	Lounge
2640	PB270002.JPG	116	Clara. 	\N	2003-11-27 00:00:00	Beca Erickson	Lounge
2641	PB270003.JPG	116	Sitting Down to Dinner. 	JRo, Dude Man, Clara, Evan, Pinto, Melch, Melch's Friend, Dan, Mike Tschantz, Mikka, Amanda	2003-11-27 00:00:00	Beca Erickson	Lounge
2642	PB270004.JPG	116	Digging In. 	Melch's Friend, Dan, JRo, Adam, Clara, Evan	2003-11-27 00:00:00	Beca Erickson	Lounge
2644	PB270006.JPG	116	Melch and Pinto. 	\N	2003-11-27 00:00:00	Beca Erickson	Lounge
2646	PC130013.JPG	117	Lounging. 	Mike Tschantz, Tracy	2003-12-13 00:00:00	Beca Erickson	Lounge
2647	PC130015.JPG	117	In Line For Food. 	Nihal, Erk, Lou, Doug, David, Graham, Terry, Razvan	2003-12-13 00:00:00	Beca Erickson	Lounge
2648	PC130016.JPG	117	Fingers. Graham, didn't your mother tell you not to point?	Jimmy, Dan, Graham, JRo	2003-12-13 00:00:00	Beca Erickson	Lounge
2649	PC130017.JPG	117	Dylan Contemplates The Meaning Of Dinner. 	JRo, Rob, Dylan	2003-12-13 00:00:00	Beca Erickson	Lounge
2650	PC130018.JPG	117	An Advises Not To Graduate. Once you get that diploma, you can't give it back!	Pete, An, David Reiss	2003-12-13 00:00:00	Beca Erickson	Lounge
2651	PC130019.JPG	117	Joe A-Smilin'. 	Joe	2003-12-13 00:00:00	Beca Erickson	Lounge
2652	IMG_0057.jpg	118	Fire, Fire, FIRE! Starting up the grill	\N	2004-02-01 00:00:00	Jordan Parker	Outside TH
2653	IMG_0061.jpg	118	Beating the Meat. Mikka recovers from a hit to the breadbasket, Dave works on his shotput technique, and Graham won't be allowed to beat the meat ever again	Chris N, Graham, Rob, Dave, Lou, Mikka, Melch	2004-02-01 00:00:00	Jordan Parker	TH Kitchen
2654	IMG_0063.jpg	118	The Setup. 	\N	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2655	IMG_0064.jpg	118	Revenge of the Setup. The couch is reserved for yours truly	\N	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2656	IMG_0065.jpg	118	Pregame Tossin'. See if you can spot An and the football (not the one on the ground)	An, Pinto	2004-02-01 00:00:00	Jordan Parker	Outside TH
2657	IMG_0066.jpg	118	Smokin'. Grillmaster Chan gets to work	Chris N, Evan	2004-02-01 00:00:00	Jordan Parker	Outside TH
2658	IMG_0068.jpg	118	Food! 	A lot of people	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2659	IMG_0072.jpg	118	More Food! 	A lot of people	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2660	IMG_0069.jpg	118	The Bratwurst Bros. "We must get back to DanceCentrum in Stuttgart in time to see Kraftwerk"	Dave, Rob, Chris N, Lou	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2661	IMG_0073.jpg	118	The Game Begins. 	Everybody	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2662	IMG_0074.jpg	118	Full House. Rob enjoys his beer	Everybody	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2663	IMG_0075.jpg	118	The Crowd Thins. Jon checks with his bookie	Not quite everybody	2004-02-01 00:00:00	Jordan Parker	TH Lounge
2664	104_0466.jpg	119	Mary does some strumming. 	\N	\N	\N	\N
2665	104_0467.jpg	119	While Momoko does some homework. 	\N	\N	\N	\N
2860	038.jpg	127	Smile. One last Jane-smile before she leaves.	\N	\N	\N	\N
2645	PB270008.JPG	116	Hee Hee! Amanda regales us with amusing tales.	Melch's Friend, Dan, Mikka, Amanda	2003-11-27 00:00:00	Beca Erickson	\N
2666	TH0002.JPG	120	Mitteilung von Deutschland. Gummi alphabets	by Carol, Jane, Marcus	2004-01-31 00:00:00	jane widness	Kitchen
2667	TH0004.JPG	120	Edible art. Marcus is suck? or slick?	by Carol, Jane, Marcus	2004-01-31 00:00:00	jane widness	Kitchen
2668	TH0006.JPG	120	Chocaholism. Mikka in a severe bout of chocaholism. (Yes, that's condensed milk in a squeezed tube on the table.)	Melch, Mikka	2004-01-31 00:00:00	jane widness	Kitchen
2671	TH0020.JPG	120	Mikka's worsening addiction. Mmmm...chocolate	Mikka Pineda	2004-02-09 00:00:00	graham rosser	Mary and Mikka's Room
2858	036.jpg	127	After springing from An's skull fully-grown, Jane helps hold An's head together. 	\N	\N	\N	\N
2695	DDR0015.jpg	121	DDR Night. Loves anything bright orange and red - like doritos and other stuff...and people	Chris Nemcocksky	2004-02-25 00:00:00	Mikka	Lounge
2676	Oly0016.JPG	120	Laura conducting herself. 	Laura Brion	2004-02-24 00:00:00	Mikka	2nd Flr Bathroom
2677	Oly0014.JPG	120	Tick, Tick, Tick, Tick... One of the unusual things I've seen people do in these dorm bathrooms, aside from naked tennis and such	Laura Brion	2004-02-24 00:00:00	Mikka	2nd Flr Bathroom
2678	104_0467.JPG	120	...while Momoko does her homework. 	Momoko Hirose	2004-04-06 00:00:00	Mikka	Jane's Room (Harkness 201)
2691	DDR0001.jpg	121	DDR Night. Eric the Wonder Bunny	Erk	2004-02-25 00:00:00	Mikka	Lounge
2692	DDR0005.jpg	121	DDR Night. Whatchu lookin' at?	Scruffy Dave Erickson	2004-02-25 00:00:00	Mikka	Lounge
2693	DDR0010.jpg	121	DDR Night. Rob & Jordan goin' at it	Robert Allen, (Justin) Jordan (Collinsworth) Parker	2004-02-25 00:00:00	Mikka	Lounge
2694	DDR0013.jpg	121	DDR Night. Sigh, I miss vogue-ing	Green Guy, Douglas Lee	2004-02-25 00:00:00	Mikka	Lounge
2696	DDR0019.jpg	121	DDR Night. Bonding over munchies	Graham and Chris Nemcocksky	2004-02-25 00:00:00	Mikka	Lounge
2697	DDR0017.jpg	121	DDR Night. Hungry for more	Beca, Rob Allen, Marcus "Hot Tamale" Samale, Owner of the legs, Doug, Guest	2004-02-25 00:00:00	Mikka	Lounge
2698	DDR0022.jpg	121	DDR Night. TechHouse on tour	Recruit, Recruit, Adam Fenn	2004-02-25 00:00:00	Mikka	Workroom
2721	P2220001.JPG	122	No Aliens Will Read Our Minds! What happens after a day playing Call of Cthulu	Chris, Dave, Lou, Jordan, Nihal, Rob, Evan	2004-02-22 00:00:00	Beca Erickson	Library
2722	P2220002.JPG	122	How To Look Cool And Paranoid, Simultaneously. 	Dave	2004-02-22 00:00:00	Beca Erickson	Library
2723	P2220004.JPG	122	Hey, Who's Throwing Foil? 	Dan, Dylan	2004-02-22 00:00:00	Beca Erickson	Lobby
2724	P2220005.JPG	122	Jon And Carol Survey The Scene. 	\N	2004-02-22 00:00:00	Beca Erickson	Lobby
2725	P2220006.JPG	122	Carol Is *Always* Dressed Appropriately. 	\N	2004-02-22 00:00:00	Beca Erickson	Lobby
2766	104_0472.jpg	123	Title. 	\N	\N	\N	\N
2767	104_0474.jpg	123	Title. 	\N	\N	\N	\N
2768	104_0475.jpg	123	Title. 	\N	\N	\N	\N
2769	104_0476.jpg	123	Title. 	\N	\N	\N	\N
2770	104_0479.jpg	123	Title. 	\N	\N	\N	\N
2771	104_0480.jpg	123	Title. 	\N	\N	\N	\N
2772	104_0481.jpg	123	Title. 	\N	\N	\N	\N
2773	104_0484.jpg	123	Title. 	\N	\N	\N	\N
2774	104_0485.jpg	123	Title. 	\N	\N	\N	\N
2775	104_0486.jpg	123	Title. 	\N	\N	\N	\N
2776	104_0487.jpg	123	Title. 	\N	\N	\N	\N
2778	104_0488.jpg	123	Title. 	\N	\N	\N	\N
2779	104_0491.jpg	123	Title. 	\N	\N	\N	\N
2859	037.jpg	127	Momoko notices us watching her rest. 	\N	\N	\N	\N
2716	Vid0025.JPG	121	Video Games Tournament. Rob powers up with beer in a Bierstein and a Thundercats shirt, whoa-oh... now that's classy	Melch, Rob Allen, the rest are contestants	2004-02-15 00:00:00	Mikka	Lounge
2717	Vid0028.JPG	121	Video Games Tournament. His own console, way to bring the home turf with you	Mr. I-brought-my-own-console	2004-02-15 00:00:00	Mikka	Lounge
2718	Vid0030.JPG	121	Video Games Tournament. MAME cabinet - not the kind you put mothballs in	Pinto, Melch, Erwin, Rob Allen	2004-02-15 00:00:00	Mikka	Lounge
2719	Vid0033.JPG	121	Video Games Tournament. Kneeling before the altar to calibrate their souls	Doug vs. One of the Sakai bros.	2004-02-15 00:00:00	Mikka	Lounge
2720	Vid0036.JPG	121	Video Games Tournament. Hmm, this room wreaks of burning souls	Various	2004-02-15 00:00:00	Mikka	Lounge
2785	IMG_0123.jpg	124	Jacked Up and Good to Go. 	Razvan, Chris N, Evan, Jon, An, Eric, David R, Rob, Jordan, Mikka, Pawel, Nihal, Mike, Graham	2004-02-29 00:00:00	Some employee	Providence Paintball
2786	IMG_0125.jpg	124	Good Form. First time player An "Bumblebee" Le is a natural	An	2004-02-29 00:00:00	Jordan Parker	Providence Paintball
2787	IMG_0127.jpg	124	Supplies! An gets taken down	Nihal? and An	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2788	IMG_0128.jpg	124	I'm in Position. 	Graham?	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2789	IMG_0130.jpg	124	An Advances. 	An	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2790	IMG_0131.jpg	124	Need Backup. An gets some assistance	An and Eric?	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2791	IMG_0132.jpg	124	Hold this Position. 	An and Evan?	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2792	IMG_0133.jpg	124	Covering the Side Lane. 	Jordan?	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2793	IMG_0134.jpg	124	Dead Man Walking. 	Mike, Chris, Evan	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2794	IMG_0135.jpg	124	Go, Go, Go! Chris and Jordan take off	\N	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2795	IMG_0136.jpg	124	Good Day, Sirs! Chris gives a gentlemanly wave	Nihal, Graham, Chris N, Jordan	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2796	IMG_0139.jpg	124	All Alone. 	Graham	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2797	IMG_0141.jpg	124	Stick Together, Team. 	An and two other people	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2798	IMG_0142.jpg	124	Assuming the Position. 	Mike?	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2799	IMG_0143.jpg	124	Evan Makes a Break for it. 	Evan	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2800	IMG_0144.jpg	124	Enemy Down. 	Jon	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2801	IMG_0145.jpg	124	Cover Me! An covers someone	Someone, An	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2802	IMG_0147.jpg	124	Woop! Chris wipes out	Chris	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2803	IMG_0151.jpg	124	Sneak Up... 	Graham	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2804	IMG_0153.jpg	124	... and Fire. 	Graham	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2805	IMG_0156.jpg	124	Over the Top. 	Nihal	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2806	IMG_0157.jpg	124	Taking a Break. 	Pawel, An, Jon, David R, Mike, Eric, Jordan, Chris, Razvan	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2807	IMG_0158.jpg	124	He's a Dead Man. Shortly after, Jordan's camera runs out of juice.	Pawel, An, Jon, Razvan	2004-02-29 00:00:00	Rob Allen	Providence Paintball
2808	104_0494.jpg	125	*Around* the World. 	\N	\N	\N	\N
2809	104_0495.jpg	125	Around *the* World. 	\N	\N	\N	\N
2810	104_0496.jpg	125	Around the *World*. 	\N	\N	\N	\N
2811	104_0497.jpg	125	Switch directions. 	\N	\N	\N	\N
2812	104_0498.jpg	125	At least someone is doing some work around here. 	\N	\N	\N	\N
2813	104_0500.jpg	126	Title. 	\N	\N	\N	\N
2814	105_0501.jpg	126	Title. 	\N	\N	\N	\N
2815	105_0502.jpg	126	Title. 	\N	\N	\N	\N
2816	105_0503.jpg	126	Title. 	\N	\N	\N	\N
2817	105_0504.jpg	126	Title. 	\N	\N	\N	\N
2818	105_0505.jpg	126	Title. 	\N	\N	\N	\N
2819	105_0507.jpg	126	Title. 	\N	\N	\N	\N
2820	105_0508.jpg	126	Title. 	\N	\N	\N	\N
2821	105_0509.jpg	126	Title. 	\N	\N	\N	\N
2822	105_0510.jpg	126	Title. 	\N	\N	\N	\N
2823	105_0513.jpg	126	Title. 	\N	\N	\N	\N
2824	105_0514.jpg	126	Title. 	\N	\N	\N	\N
2825	105_0515.jpg	126	Title. 	\N	\N	\N	\N
2826	105_0516.jpg	126	Title. 	\N	\N	\N	\N
2827	105_0517.jpg	126	Title. 	\N	\N	\N	\N
2828	105_0518.jpg	126	Title. 	\N	\N	\N	\N
2829	004.jpg	127	In da Hood. Pinky takes a ride.	Pinky	\N	An or Jane	\N
2830	005.jpg	127	Woah. Scott didn't see this coming...	Scott, Lou	\N	An or Jane	\N
2831	006.jpg	127	Out of sight, out of mind. Laura missed it.  The rest of us are not so lucky.	Laura, An, Mike T.	\N	Jane(?)	\N
2832	007.jpg	127	These are not the comics you are looking for. We will neither confirm nor deny the existance of such comics.	David Eigen, ???	\N	An or Jane	\N
2833	008.jpg	127	You move, and I will squeeze. Jason means it.	Dylan, Jason, Pinky	\N	An or Jane	\N
2834	009.jpg	127	Word. 	Pinky, Mimoko	\N	\N	\N
2835	010.jpg	127	Pinky's everywhere! 	Scott, Melch, Pinky, Pinto	\N	\N	\N
2836	011.jpg	127	You want some of this? Don't mess with David and his booties.	David R.	\N	\N	\N
2837	012.jpg	127	This is Pinky. Scott definitely saw it coming this time.	Scott, Pinky	\N	\N	\N
2838	013.jpg	127	How...cute. I'm not sure Pinky should be seeing this...	An, Pinky, Jane	\N	\N	\N
2839	014.jpg	127	Three's company. 	An, Pinky, Jane	\N	\N	\N
2840	015.jpg	127	Title. People we *hope* to keep seeing around the house even though Jane is in Iowa	\N	\N	\N	\N
2841	016.jpg	127	Dan Consoles An. Pinky fills in the empty part of the frame.	\N	\N	\N	Dan, An, Pinky
2842	017.jpg	127	More Pinky! 	An, Pinky, ?	\N	\N	\N
2843	019.jpg	127	Don't Leave Me, Jane! 	Pinky, Jane, Beca	\N	\N	\N
2844	020.jpg	127	With Jane's impending departure, Erk turns to drink. 	Eric Cohen	\N	\N	\N
2845	021.jpg	127	David and Joe. 	David Reiss, Joe Hasbani	\N	\N	\N
2846	022.jpg	127	Title. I'll give this one a real title as soon as I figure out who it's a picture of.	\N	\N	\N	\N
2847	023.jpg	127	People gathering around for snacks. 	\N	\N	\N	\N
2848	024.jpg	127	Tickle Fight. 	Melch, Pinto	\N	\N	\N
2849	025.jpg	127	More Gathering People. 	David Reiss, Joe, Momoko, ?	\N	\N	\N
2850	026.jpg	127	JRo. 	\N	\N	\N	\N
2851	028.jpg	127	Cookies! Mikka brought cookies!	\N	\N	\N	\N
2852	030.jpg	127	Smile, Pinky! 	An, Pinky	\N	\N	\N
2853	031.jpg	127	Cookies make everything better. 	Dan, An, Pinky	\N	\N	\N
2854	032.jpg	127	Mike Tschantz, aka Napoleon. 	\N	\N	\N	\N
2855	033.jpg	127	Ow! And Jane springs, fully-grown, from An's cranium, like Athena	\N	\N	\N	\N
2856	034.jpg	127	Title. 	?	\N	\N	\N
2857	035.jpg	127	Momoko Rests. 	\N	\N	\N	\N
2866	dscf0174.jpg	129	Marcus "Hot Tamale" Samale performing an ancient polynesian rite of passage. as both photographed and unphotographed onlookers look on	Lounge, May 1, 2004, after the crowd thinned out	\N	\N	Jimmy Kaplowitz, Sue Brassard, Graham Rosser, Marcus Samale, Dylan Cheasty
457	100_2233.JPG	24	Main Harkness breaker		2009-12-13 00:01:00	Ben Hutchison	Harkness 001
2878	dscf0164.jpg	130	Then we kiss and make up and play out our imperialistic fantasies on a boardgame instead. The coup ends with a truce.	Clara Kim, John Dylan Cheasty, Eric Alexander Cohen	\N	\N	Mikka
2886	dscf0094.jpg	132	The people eating. or the eating people?	\N	\N	Lounge, April 25, 2004	Haley, Dan Erickson, Graham, Chris N., Laura
2890	officerssmall.jpg	133	2004-2005 Officers. 	Adam, Doug, Sean, Haley, Jimmy, Dan	2004-05-19 00:00:00	\N	Patriot's Court
2891	officersclosesmall.jpg	133	Close Up. 	Adam, Doug, Sean, Haley, Jimmy, Dan	2004-05-19 00:00:00	\N	Patriot's Court
2892	dscf0003.jpg	134	Officers' Dinner. 	Jimmy, Laura, Doug, Haley, Sean	\N	\N	\N
2893	dscf0004.jpg	134	Officers' Dinner. 	Adam, Dylan, Ven, Dan	\N	\N	\N
2894	dscf0005.jpg	134	Rob. 	Rob Allen	\N	\N	\N
2895	dscf0008.jpg	134	Fishbowl. 	Chris Nemcosky, Jordan Parker	\N	\N	\N
2896	dscf0009.jpg	134	A Dave Face. 	Dave Erickson	\N	\N	\N
2897	dscf0011.jpg	134	Soviet Block. + Jon	Jon, Chris, Rob, Jordan, Dave	\N	\N	\N
2898	dscf0012.jpg	134	Soviet Block Again. 	Jon, Chris, Rob, Jordan, Dave	\N	\N	\N
2899	dscf0029.jpg	134	Adam With The Chop Saw. 	Adam Fenn	\N	\N	\N
2900	dscf0033.jpg	134	Laura With The Chop Saw. 	Laura Brion	\N	\N	\N
2901	dscf0052.jpg	134	Sean Vacuums. 	Sean Smith	\N	\N	\N
2902	dscf0053.jpg	134	Leaving. 	Dan Mortenson, David Reiss	\N	\N	\N
2903	dscf0057.jpg	134	Last Minute Touches. 	Mikka Pineda	\N	\N	\N
2904	dscf0065.jpg	134	Classic. 	Soren Spies	\N	\N	\N
2905	dscf0066.jpg	134	Off To Somewhere. 	Laura, Dan, David	\N	\N	\N
2906	dscf0124.jpg	134	Sparks Flying. 	Marcus	\N	\N	\N
2907	P1010006.JPG	135	Firing up the Grill. 	Erwin, Brett, Don, Alison	2004-05-28 00:00:00	Beca Erickson	Lou's House
2908	P1010008.JPG	135	Dave Erickson. 	\N	2004-05-28 00:00:00	Beca Erickson	Lou's House
2909	P1010009.JPG	135	Ryan Makes A Face. 	Ryan Evans	2004-05-28 00:00:00	Beca Erickson	Lou's House
2910	P1010010.JPG	135	Ryan Demonstrates Random Picture-Taking. 	Ryan Evans	2004-05-28 00:00:00	Beca Erickson	Lou's House
2911	P1010011.JPG	135	Dave listens, skeptically. to another one of Ryan's wild tales.	Dave Erickson	2004-05-28 00:00:00	Beca Erickson	Lou's House
2912	P1010013.JPG	135	Don Engel. 	\N	2004-05-28 00:00:00	Beca Erickson	Lou's House
2913	P1010014.JPG	135	Lily looks at comics. 	Lily	2004-05-28 00:00:00	Beca Erickson	Lou's House
2914	P1010016.JPG	135	Rob wants you to know that the food is most excellent. 	Rob Allen	2004-05-28 00:00:00	Beca Erickson	Lou's House
2915	P1010017.JPG	135	Momoko, Chillin'. 	Momoko	2004-05-28 00:00:00	Beca Erickson	Lou's House
2916	P1010024.JPG	135	Alex enjoys being disgusting with Meech. 	Meech Harrington, Alex Hooker	2004-05-28 00:00:00	Beca Erickson	Lou's House
3108	IMG_0212.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
2877	dscf0157.jpg	130	Oh, the carnage! 	Various	2004-04-26 00:00:00	Mikka	Lounge
2868	dscf0112.jpg	130	A picture of tranquility during officer elections earlier	Dylan in the pit.\n	2004-04-26 00:00:00	\N	Lounge Ballpit
2917	P1010027.JPG	135	Dave's Passat and Lily's Van o' Blueness. I have car envy.  Of both of them.	\N	2004-05-28 00:00:00	Beca Erickson	Lou's House
2918	P1010029.JPG	135	Chatting. 	Brett Heath-Wlaz, Chris Mastrangelo, Scott McKenzie, Alison Hale	2004-05-28 00:00:00	Beca Erickson	Lou's House
2919	P1010030.JPG	135	Pumpkin Pocky. Ryan shows off the last of his stash - he doesn't see his dealer again until Monday.	Ryan Evans	2004-05-28 00:00:00	Beca Erickson	Lou's House
2920	P1010031.JPG	135	An and Clara. with a bit of Joe	\N	2004-05-28 00:00:00	Beca Erickson	Lou's House
2921	P1010032.JPG	135	Watching something animated. 	Ven, Lou, Dave, Lily, Chris, Rob	2004-05-28 00:00:00	Beca Erickson	Lou's House
2922	P1010033.JPG	135	It's fascinating. 	Lily, Chris, Rob, Nihal, David	2004-05-28 00:00:00	Beca Erickson	Lou's House
2923	CRW_8182_RJ.JPG	136	Alison Hale (pre dance). 	Alison Hale	2004-05-28 00:00:00	Michael Fried	Campus Dance
2924	CRW_8183_RJ.JPG	136	Liz and Alison (pre dance). 	Liz Fried, Alison Hale	2004-05-28 00:00:00	Michael Fried	Campus Dance
2925	CRW_8190_RJ.JPG	136	Beca. 	Beca Erickson	2004-05-28 00:00:00	Michael Fried	Campus Dance
2926	CRW_8191_RJ.JPG	136	Ryan and Brett. Auto focus doesn't work so well in the dark.	Ryan Evans, Brett Heath-Wlaz	2004-05-28 00:00:00	Michael Fried	Campus Dance
2927	CRW_8192_RJ.JPG	136	Don and Meredith. 	Don Engel, Meredith	2004-05-28 00:00:00	Michael Fried	Campus Dance
2928	CRW_8194_RJ.JPG	136	Ryan. 	Ryan Evans	2004-05-28 00:00:00	Michael Fried	Campus Dance
2929	CRW_8195_RJ.JPG	136	Alumni and friends reuniting. 	Don Engel, Jeff Alexander, ?	2004-05-28 00:00:00	Michael Fried	Campus Dance
2930	CRW_8196_RJ.JPG	136	Lou and Cathy. 	Cathy, Lou	2004-05-28 00:00:00	Michael Fried	Campus Dance
2931	CRW_8197_RJ.JPG	136	Laura. 	Laura Brion	2004-05-28 00:00:00	Michael Fried	Campus Dance
2932	CRW_8199_RJ.JPG	136	David and Maggie. 	David Erickson, Maggie Benthal	2004-05-28 00:00:00	Michael Fried	Campus Dance
2933	CRW_8200_RJ.JPG	136	Joe. 	Joe Hasbani	2004-05-28 00:00:00	Michael Fried	Campus Dance
2934	CRW_8202_RJ.JPG	136	Clara. 	Clara Kim	2004-05-28 00:00:00	Michael Fried	Campus Dance
2935	CRW_8203_RJ.JPG	136	Brett. 	Brett Heath-Wlaz	2004-05-28 00:00:00	Michael Fried	Campus Dance
2936	CRW_8204_RJ.JPG	136	Lots of Alumni. 	Keith Dreibelbis, Meredith, Meech Harrington, Don Engel, Ryan Evans	2004-05-28 00:00:00	Michael Fried	Campus Dance
2937	CRW_8205_RJ.JPG	136	Clara and Beca. 	Clara Kim, Beca Erickson	2004-05-28 00:00:00	Michael Fried	Campus Dance
2938	CRW_8207_RJ.JPG	136	David and Beca. 	David Eigen, Beca Erickson	2004-05-28 00:00:00	Michael Fried	Campus Dance
2939	CRW_8210_RJ.JPG	136	Jordan. 	Jordan Parker	2004-05-28 00:00:00	Michael Fried	Campus Dance
2940	CRW_8212_RJ.JPG	136	Meech. 	Meech Harrington	2004-05-28 00:00:00	Michael Fried	Campus Dance
2941	CRW_8215_RJ.JPG	136	Frieds. 	Liz and Mike Fried	2004-05-28 00:00:00	Meech	Campus Dance
2942	CRW_8218_RJ.JPG	136	Frieds in Portrait. 	Liz and Mike Fried	2004-05-28 00:00:00	Meech	Campus Dance
2943	CRW_8219_RJ.JPG	136	Meeting Nik at the Gate. 	Keith Dreibelbis, Nik Lochmatow, Ryan Evans, Beca Erickson	2004-05-28 00:00:00	Michael Fried	Campus Dance
2944	CRW_8220_RJ.JPG	136	Lily and Chris. 	Lily, Chris Nemcosky	2004-05-28 00:00:00	Michael Fried	Campus Dance
2945	CRW_8222_RJ.JPG	136	David and Beca. Look! David can smile for a photo if you sneak up on him.	David Eigen, Beca Erickson	2004-05-28 00:00:00	Michael Fried	Campus Dance
2946	CRW_8224_RJ.JPG	136	Lots of recent grads. 	Jordan Parker, Lucia Ballard, Rob Allen, Evan Chan, Nihal Kulkarni	2004-05-28 00:00:00	Michael Fried	Campus Dance
2947	CRW_8227_RJ.JPG	136	Su-Wen and Beca. They are smiling because I deleted the previous picture...	Su-Wen Ho, Beca Erickson	2004-05-28 00:00:00	Michael Fried	Campus Dance
2948	CRW_8228_RJ.JPG	136	Recent grads. 	Jason, Su-Wen, Ryan, Beca	2004-05-28 00:00:00	Michael Fried	Campus Dance
2949	CRW_8229_RJ.JPG	136	Ryan, Drink, and Eyes. 	Beca, Ryan, Nik's overly-strong G&T	2004-05-28 00:00:00	Michael Fried	Campus Dance
2950	CRW_8235_RJ.JPG	136	Terry. "Is this cute enough for you, Mike"	Therese Landry	2004-05-28 00:00:00	Michael Fried	Campus Dance
2951	CRW_8236_RJ.JPG	136	Nik. 	Nik Lochmatow	2004-05-28 00:00:00	Michael Fried	Campus Dance
2952	CRW_8239_RJ.JPG	136	Jason and Su-Wen. 	Jason, Su-Wen	2004-05-28 00:00:00	Michael Fried	Campus Dance
2953	CRW_8241_RJ.JPG	136	Beca and Nihal. 	Beca Erickson, Nihal Kulkarni	2004-05-28 00:00:00	Michael Fried	Campus Dance
2954	CRW_8247_RJ.JPG	136	Lou and Cathy 2. 	Lou and Cathy	2004-05-28 00:00:00	Michael Fried	Campus Dance
2955	CRW_8248_RJ.JPG	136	Soren. "Can you take a picture without using the flash? Are you sure?"	Soren Spies	2004-05-28 00:00:00	Michael Fried	Campus Dance
2956	CRW_8251_RJ.JPG	136	Sketchy. Beca gains a Soren.	Soren Spies, Beca Erickson	2004-05-28 00:00:00	Michael Fried	Campus Dance
2957	CRW_8252_RJ.JPG	136	Pimpz. 	Lou Arruda, Jeff Alexander, Soren Spies	2004-05-28 00:00:00	Michael Fried	Campus Dance
2958	CRW_8253_RJ.JPG	136	Pimpz 2. Dancing show tune Pimpz sold separately.	Lou Arruda, Jeff Alexander, Soren Spies	2004-05-28 00:00:00	Michael Fried	Campus Dance
2959	CRW_8256_RJ.JPG	136	Alums. 	Alison Hale, Nik Lochmatow, Liz Fried	2004-05-28 00:00:00	Michael Fried	Campus Dance
2960	CRW_8262_RJ.JPG	136	Rob. 	Rob Letzler	2004-05-28 00:00:00	Michael Fried	Campus Dance
2961	CRW_8265_RJ.JPG	136	Mikka and Graham. 	Mikka Pineda, Graham Rosser	2004-05-28 00:00:00	Michael Fried	Campus Dance
2962	CRW_8290.JPG	137	Dan and David. and colorful lens flare	Dan Erickson, David Eigen	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2963	CRW_8292.JPG	137	More Pre-Barbeque hanging out. 	Joe Hasbani, David Eigen, Liz Fried, Benoit Hudson, ?	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2964	CRW_8293.JPG	137	Everyone has their price. Alex gives out price tag stickers	Alex Hooker, Brett Heath-Wlaz	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2965	CRW_8295.JPG	137	Liz playing. with Terry's hair	Liz, Terry Landry	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2966	CRW_8296.JPG	137	Soren. $7.48 of sketchyness	Soren Spies	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2967	CRW_8299.JPG	137	Benoit and friend. someone please fix her name in this album...	Benoit Hudson, ?	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2968	CRW_8300.JPG	137	Beard! 	Meech Harrington	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2969	CRW_8302.JPG	137	Alex hangs out. 	Alex Hooker	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2970	CRW_8303.JPG	137	Chris. chillin' with Alex	Christopher Mastrangelo, Alex Hooker	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2971	CRW_8304.JPG	137	Benoit. 	Benoit Hudson	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
3109	IMG_0226.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
2972	CRW_8305.JPG	137	Serious recording going on herei. Don and Razvan note who lived where	Razvan Mirica, Donald Engel	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2973	CRW_8307.JPG	137	Sam. 	Sam Gorstein	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2974	CRW_8314.JPG	137	David. ponders something	David Eigen	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2975	CRW_8316.JPG	137	Dave Schuster. stopping by to say hi	David Schuster	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2976	CRW_8321.JPG	137	Beca and Comics. it's a techhouse autobiography in art form	Beca Erickson	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2977	CRW_8322.JPG	137	Soren hiding. behind a lens	Soren Spies	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2978	CRW_8323.JPG	137	BLou shades. "You gotta have blue hair... erm or shades."	Lou Arruda	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2979	CRW_8325.JPG	137	Scoot. 	Scott McKenzie	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2980	CRW_8326.JPG	137	An Le. making a brief appearance	An Le	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2981	CRW_8327.JPG	137	Mike and hat. 	Mike Plotz	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2982	CRW_8334.JPG	137	Clara. 	Clara Kim	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2983	CRW_8336.JPG	137	Brett. 	Brett Heath-Wlaz	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2984	CRW_8339.JPG	137	Beca. 	Beca Erickson	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2985	CRW_8340.JPG	137	Dave and Don. pose by the tree	David Schuster, Donald Engel	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2986	CRW_8341.JPG	137	Dave and Peter. pose in front of AD Phi	David Schuster, Peter Buchak	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2987	CRW_8342.JPG	137	Looking at comics. 	Su-Wen Ho, Keith Dreibelbis, Beca Erickson	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2988	CRW_8345.JPG	137	Backrub. Beca gives Sam a backrub	Beca Erickson, Sam Gorstein	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2989	CRW_8349.JPG	137	David. being happy	David Eigen	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2990	CRW_8351.JPG	137	Post Barbeque hanging out. Beca is still giving Sam a backrub	Lou, Jason, Su-Wen, Sam, Beca, Benoit	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2991	CRW_8353.JPG	137	Terry and Mariana. 	Theresa Landry, Mariana Mihalusova	2004-05-29 00:00:00	Michael Fried	TH Alumni BBQ
2992	CRW_8363.JPG	138	Water. Fire	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
2993	CRW_8365.JPG	138	Ryan and Beca. piggy back	Ryan Evans, Beca Erickson, Brett Heath-Wlaz	2004-05-29 00:00:00	Michael Fried	WaterFire
2994	CRW_8370.JPG	138	Fire Crescent. 	Bonfires	2004-05-29 00:00:00	Michael Fried	WaterFire
2995	CRW_8373.JPG	138	Providence. part of the skyline at night	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
2996	CRW_8374.JPG	138	It's a stream of people. The group deftly navigates the crowd	People	2004-05-29 00:00:00	Michael Fried	WaterFire
2997	CRW_8378.JPG	138	Don. 	Donald Engel	2004-05-29 00:00:00	Michael Fried	WaterFire
2998	CRW_8380.JPG	138	A boat of volunteers. to keep those fires burning, it takes a lot of people and a lot of wood	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
2999	CRW_8384.JPG	138	Fires to the mall. 	Bonfires	2004-05-29 00:00:00	Michael Fried	WaterFire
3000	CRW_8385.JPG	138	Watching the fires. 	Beca Erickson, Ryan Evans	2004-05-29 00:00:00	Michael Fried	WaterFire
3001	CRW_8390.JPG	138	Mike and Liz. posing for the camera	Mike and Liz Fried	2004-05-29 00:00:00	Peter Buchak	WaterFire
3002	CRW_8392.JPG	138	Peter. posing in front of the firey water	Peter Buchak	2004-05-29 00:00:00	Michael Fried	WaterFire
3003	CRW_8393.JPG	138	Pondering... what to do next...	Mike Plotz, Donald Engel	2004-05-29 00:00:00	Michael Fried	WaterFire
3004	CRW_8394.JPG	138	Surprise. Liz gives Don a Hug	Joe Hasbani, Donald Engel, Liz Fried	2004-05-29 00:00:00	Michael Fried	WaterFire
3005	CRW_8395.JPG	138	Liz and the river. 	Liz Fried, The Providence River	2004-05-29 00:00:00	Michael Fried	WaterFire
3006	CRW_8396.JPG	138	How romantic. a couple floats by in the river	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
3007	CRW_8397.JPG	138	Steeples in the trees. 	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
3008	CRW_8400.JPG	138	More volunteers keeping the fires hot. 	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
3009	CRW_8401.JPG	138	A single fire. to keep us warm	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
3010	CRW_8407.JPG	138	Another couple going down the river. 	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
3011	CRW_8410.JPG	138	The soul still burns. brightly, in this case	\N	2004-05-29 00:00:00	Michael Fried	WaterFire
3012	CRW_8411.JPG	138	Mike shows off. 	Mike Plotz, onlookers	2004-05-29 00:00:00	Michael Fried	WaterFire
3013	CRW_8413.JPG	138	Mike shows off some more. 	Mike Plotz, onlookers	2004-05-29 00:00:00	Michael Fried	WaterFire
3014	CRW_8416.JPG	138	The walk back. to Beca's place for hot cocoa	Brett Heath-Wlaz, Donald Engel, Liz Fried, Ryan Evans	2004-05-29 00:00:00	Michael Fried	WaterFire
3015	CRW_8270.JPG	139	University Hall. 	\N	\N	Michael Fried	Commencement Weekend
3016	CRW_8273.JPG	139	Faunce House. 	\N	\N	Michael Fried	Commencement Weekend
3017	CRW_8275.JPG	139	New England Frozen Lemonade. and Mike	Mike Fried	\N	Liz Fried	Commencement Weekend
3018	CRW_8277.JPG	139	Faunce Arch. and Liz	Liz Fried	\N	Michael Fried	Commencement Weekend
3019	CRW_8278.JPG	139	Hillel House. and Mike	Mike Fried	\N	Liz Fried	Commencement Weekend
3020	CRW_8283.JPG	139	GeoChem Art. and Liz	Liz Fried	\N	Michael Fried	Commencement Weekend
3021	CRW_8286.JPG	139	House Sparrow. 	\N	\N	Michael Fried	Commencement Weekend
3022	CRW_8315.JPG	139	Bricks and Trees. 	\N	\N	Michael Fried	Commencement Weekend
3023	CRW_8355.JPG	139	Lou's House. and Lou	Lou Arruda	\N	Michael Fried	Commencement Weekend
3024	CRW_8358.JPG	139	Mike and Liz. at Lou's place	Mike and Liz Fried	\N	Rob Letzler	Commencement Weekend
3025	CRW_8360.JPG	139	The Van Winkle Gates. on the way to waterfire	\N	\N	Michael Fried	Commencement Weekend
3026	CRW_8415.JPG	139	Fountain. by Faunce House	\N	\N	Michael Fried	Commencement Weekend
3027	CRW_8419.JPG	139	The Brown Bookstore. 	\N	\N	Michael Fried	Commencement Weekend
3028	CRW_8422.JPG	139	The Donkey Boat. on the side of the SciLi	\N	\N	Michael Fried	Commencement Weekend
3029	CRW_8424.JPG	139	GeoChem. 	\N	\N	Michael Fried	Commencement Weekend
3030	CRW_8426.JPG	139	SciLi. and Donkey Boat	\N	\N	Michael Fried	Commencement Weekend
3031	CRW_8427.JPG	139	Wayland Hall Clock. 	\N	\N	Michael Fried	Commencement Weekend
3032	CRW_8428.JPG	139	Wayland Hall. 	\N	\N	Michael Fried	Commencement Weekend
3033	CRW_8431.JPG	139	Joe and Sara. at the Independence Mall	Joe, Sara P Grady	\N	Michael Fried	Commencement Weekend
3034	CRW_8433.JPG	139	Sara and Liz. at the Independence Mall	Sara P Grady, Liz Fried	\N	Michael Fried	Commencement Weekend
3035	CRW_8435.JPG	139	Mike and Liz. at the Independence Mall	Mike and Liz Fried	\N	Joe	Commencement Weekend
3036	DSC00002.jpg	140	T. 	\N	2004-05-31 00:00:00	Lou Arruda	\N
3037	DSC00003.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3038	DSC00004.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3039	DSC00005.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3040	DSC00006.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3041	DSC00007.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3042	DSC00008.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3043	DSC00009.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3044	DSC00010.jpg	140	\N	\N	2004-05-31 00:00:00	Lou Arruda	\N
3045	DSC00011.jpg	141	T. 	\N	2004-05-31 00:00:00	Lou Arruda	The Porch
3046	DSC00012.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Porch
3047	DSC00013.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Porch
3048	DSC00014.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Porch
3049	DSC00017.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Porch
3050	DSC00018.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Lobby
3051	DSC00021.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Lobby
3052	DSC00022.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Lobby
3053	DSC00023.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Lobby
3054	DSC00024.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3055	DSC00025.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3056	DSC00026.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3057	DSC00027.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3058	P1010034.JPG	141	They're supposed to be packing. 	Rob, Dan, Chris, Dylan	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3059	P1010047.JPG	141	But who really wants to pack, anyway? 	Soren, Alex, Dave, Carol, Chris, Jon, Jordan, Lou, Lily	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3060	P1010048.JPG	141	Dave has the funk. 	Alex, Soren, Dave, Chris	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3061	P1010050.JPG	141	Around The World. 	Chris, Jordan, David, Danimal, Jon, Nihal, Erk, Dylan, Dan, Soren, Graham, Alex, Carol	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3062	P1010051.JPG	141	Around The WORld. 	David, Danimal, Jordan, Nihal, Erk, Dylan, Dan, Rob, Dave (NE Pest Control Hat), Soren (Class of 2000 Hat), Alex, Carol, Jon, Chris	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3063	P1010054.JPG	141	Like A Virgin. One last rendition of Tarantino by Dan	Dan Mortenson	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3064	P1010055.JPG	141	Yay, Spontaneity. 	Soren, Graham, Jordan, Dan, Erk, Dylan, Nihal	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3065	P1010056.JPG	141	Soren and Beca. 	Soren Spies, Beca Erickson	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3066	P1010057.JPG	141	Lily has more video of this than of graduation. 	Lily	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3067	P1010059.JPG	141	Alex Dancing. 	Dan, Alex, Dylan	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3068	P1010061.JPG	141	The Dance Party Continues. 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3069	P1010064.JPG	141	Soren Gets Down. 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3070	P1010066.JPG	141	Nihal Interrupts To Say.... 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3071	P1010070.JPG	141	....BONESAW!!! 	Nihal Kulkarni	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3072	P1010074.JPG	141	Nihal and Dan have a scholarly discussion befitting their graduate status. 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3073	P1010078.JPG	141	Well, it's kind of like packing.... 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3074	P1010079.JPG	141	Dave: We're going to be up all night, aren't we? 	Dave Erickson, Jordan Parker	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3075	P1010083.JPG	141	Nihal decides to sit this one out. 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3076	P1010085.JPG	141	Alex in the Pimp Hat. 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3077	P1010088.JPG	141	Lily attempts to get Pete to drop his robe. Pete isn't going for it.	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3078	P1010095.JPG	141	More Dancing. 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3079	P1010102.JPG	141	Graham Rosser. 	\N	2004-05-31 00:00:00	Beca Erickson	The Soviet Block
3080	P1010103.JPG	141	Nihal and Beca. 	\N	2004-05-31 00:00:00	Someone With Beca's Camera	The Soviet Block
3081	DSC00028.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3082	DSC00029.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3083	DSC00030.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3084	DSC00031.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3085	DSC00035.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3086	DSC00036.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3087	DSC00037.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3088	DSC00038.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3089	DSC00039.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3090	DSC00040.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3091	DSC00041.jpg	141	\N	\N	2004-05-31 00:00:00	Lou Arruda	The Soviet Block
3092	IMG_0167.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3093	IMG_0172.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3094	IMG_0173.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3095	IMG_0174.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3096	IMG_0175.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3097	IMG_0176.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3098	IMG_0177.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3099	IMG_0178.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3100	IMG_0179.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3101	IMG_0200.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3102	IMG_0202.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3103	IMG_0204.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3104	IMG_0205.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3105	IMG_0206.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3106	IMG_0207.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3107	IMG_0211.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3110	IMG_0228.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3111	IMG_0242.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3112	IMG_0252.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3113	IMG_0254.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3114	IMG_0255.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3115	IMG_0257.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3116	IMG_0258.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3117	IMG_0261.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3118	IMG_0262.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3119	IMG_0263.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3120	IMG_0264.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3121	IMG_0268.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3122	IMG_0269.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3123	IMG_0271.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3124	IMG_0274.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3125	IMG_0279.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3126	IMG_0281.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3127	IMG_0282.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3128	IMG_0283.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3129	IMG_0285.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3130	IMG_0286.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3131	IMG_0287.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3132	IMG_0294.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3133	IMG_0297.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3134	IMG_0298.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3135	IMG_0300.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3136	IMG_0304.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3137	IMG_0307.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3138	IMG_0308.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3139	IMG_0309.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3140	IMG_0311.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3141	IMG_0313.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3142	IMG_0318.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3143	IMG_0319.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3144	IMG_0323.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3145	IMG_0329.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3146	IMG_0330.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3147	IMG_0336.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3148	IMG_0337.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3149	IMG_0338.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3150	IMG_0339.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3151	IMG_0340.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3152	IMG_0341.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3153	IMG_0351.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3154	IMG_0354.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3155	IMG_0355.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3156	IMG_0358.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3157	IMG_0359.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3158	IMG_0368.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3159	IMG_0381.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3160	IMG_0383.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3161	IMG_0384.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3162	IMG_0385.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3163	IMG_0386.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3164	IMG_0387.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3165	IMG_0388.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3166	IMG_0390.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3167	IMG_0396.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3168	IMG_0397.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3169	IMG_0402.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3170	IMG_0403.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3171	IMG_0405.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3172	IMG_0407.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3173	IMG_0408.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3174	IMG_0409.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3175	IMG_0410.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3176	IMG_0412.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3177	IMG_0415.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3178	IMG_0418.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3179	IMG_0420.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3180	IMG_0421.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3181	IMG_0427.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3182	IMG_0429.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3183	IMG_0431.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3184	IMG_0434.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3185	IMG_0435.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3186	IMG_0437.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3187	IMG_0438.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3188	IMG_0439.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3189	IMG_0441.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3190	IMG_0442.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3191	IMG_0444.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3192	IMG_0446.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3193	IMG_0447.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3194	IMG_0451.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3195	IMG_0456.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3196	IMG_0457.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3197	IMG_0458.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
75	p4020070.jpg	10	\N	\N	2004-04-02 21:31:00	\N	\N
3198	IMG_0459.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3199	IMG_0460.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3200	IMG_0461.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3201	IMG_0465.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3202	IMG_0469.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3203	IMG_0470.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3204	IMG_0468.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3205	IMG_0473.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3206	IMG_0477.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3207	IMG_0479.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3208	IMG_0480.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3209	IMG_0481.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3210	IMG_0482.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3211	IMG_0483.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3212	IMG_0485.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3213	IMG_0486.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3214	IMG_0490.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3215	IMG_0493.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3216	IMG_0494.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3217	IMG_5101.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3218	IMG_5102.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3219	IMG_5107.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3220	IMG_5108.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3221	IMG_5110.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3222	IMG_5111.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3223	IMG_5112.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3224	IMG_5113.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3225	IMG_5114.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3226	IMG_5116.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3227	IMG_5118.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3228	IMG_5119.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3229	IMG_5120.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3230	IMG_5121.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3231	IMG_5122.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3232	IMG_5127.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3233	IMG_5128.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3234	IMG_5133.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3235	IMG_5135.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3236	IMG_5136.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3237	IMG_5137.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3238	IMG_5138.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3239	IMG_5139.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3240	IMG_5139b.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3241	IMG_5140.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3242	IMG_5142.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3243	IMG_5143.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3244	IMG_5144.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3245	IMG_5148.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3246	IMG_5150.jpg	142	\N	\N	\N	The Militant Wing	2004 Graduation Week
3248	P1010002.JPG	144	At the first cable-making party... 	Tracy, Tschantz	\N	Beca Erickson	Tracy's Room
3249	P1010003.JPG	144	Getting the wires in order takes concentration. 	Marcus, Tracy, David	\N	Beca Erickson	tracy's Room
3250	P1010005.JPG	144	At the second cable-making party... 	Doug, Sue	\N	Beca Erickson	The Lounge, Orientation Week
3251	P1010007.JPG	144	Mike Kazourin learns how to crimp cable. 	Mike Katzourin	\N	Beca Erickson	The Lounge, Orientation Week
3252	P1010010.JPG	144	Dylan and Momoko help, too. 	Dylan, Momoko	\N	Beca Erickson	The Lounge, Orientation Week
3259	P1010001.JPG	146	Lights From The Front. Before wiring; lights are on battery power.	\N	\N	Beca Erickson	\N
3260	P1010002.JPG	146	Closer In. 	\N	\N	Beca Erickson	\N
3261	P1010003.JPG	146	3/4 View. Note the cool lights spilling out the vents in the case.	\N	\N	Beca Erickson	\N
3262	P1010004.JPG	146	Glowing. 	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3263	P1010005.JPG	146	From The Top. 	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3264	P1010006.JPG	146	Clear Nano-Filter by Red Sea. 3-Stage Filtration: Mechanical, Chemical, Biological	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3265	P1010008.JPG	146	Thermometer. Tropical Conditions	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3266	P1010009.JPG	146	Heater. Currently unplugged (intentional).	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3267	P1010010.JPG	146	Face Plate Off. See the fish?	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3268	P1010011.JPG	146	Light Housing. Custom wiring (sealed) by David Eigen	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3269	P1010012.JPG	146	Very Small Monolith. 	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3270	P1010013.JPG	146	Beca's Crash Test Fishies. Getting the tank ready for the Techhouse Fish	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3271	P1010016.JPG	146	Less Impressive With The Flash. 	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3272	P1010017.JPG	146	From Above. Note that all wires have "drip loops" - this is to prevent any water from running down wires to the power strip.	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3273	P1010018.JPG	146	With The Auto-Feeder. We'll see if it feeds the fish....	\N	2004-10-10 00:00:00	Beca Erickson	The Library
3334	CRW_0827_JFR.jpg	152	Jodie vs. Lucia. 	Tara, Graham, Jodie, and Lucia	2005-02-04 00:00:00	Lou Arruda	The Lounge
3247	housesmall.jpg	143	Techhouse 2004-2005. 	\N	\N	Beca Erickson	\N
3274	PA150001.JPG	147	Marcus Tries To Parse Something. 	Mike Katzourin (Wolfie), Marcus, David, Haynes	2004-10-15 00:00:00	Beca Erickson	The Workroom
3275	PA150002.JPG	147	Talking About DDR Pads. 	Haynes, Doug, Marcus, David	2004-10-15 00:00:00	Beca Erickson	The Workroom
3276	PA150003.JPG	147	Someone's Partially-Disassembled DDR Pad. 	\N	2004-10-15 00:00:00	Beca Erickson	The Workroom
3277	PA150004.JPG	147	Getting A Better Look. 	Mike Katzourin (Wolfie), David, Haynes	2004-10-15 00:00:00	Beca Erickson	The Workroom
3278	PA150005.JPG	147	More Discussion. 	Mike Katzourin (Wolfie), Marcus, David, Haynes	2004-10-15 00:00:00	Beca Erickson	The Workroom
3279	PA220018.JPG	148	Cheapest couch, converts to a bed.. Beige (lighting sucks) but they also had 1 in a "light" red.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3280	PA220019.JPG	148	Better lighting. Cover is held on by toggle buttons; body is upholstered.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3281	PA220020.JPG	148	It's $200. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3282	PA220022.JPG	148	With Dan sitting in it, for scale. No arm rests, but can fit 3 people.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3283	PA220025.JPG	148	They had several of the beige $200 sofas in stock (on Friday). 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3284	PA220023.JPG	148	The next-cheapest couch at Building 19. Darker beige, for $249.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3285	PA220024.JPG	148	Velcro holds the cover in place. This one also converts to a bed, but was less comfortable than the cheaper one.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3286	PA220042.JPG	148	$399. 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3287	PA220043.JPG	148	$498 for a sofa & loveseat. 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3288	PA220044.JPG	148	$498 sofa and loveseat, so you can see the pattern. 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3289	PA220045.JPG	148	$395 (I think). 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3290	PA220046.JPG	148	$399. 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3291	PA220047.JPG	148	$429. 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3292	PA220048.JPG	148	$948. 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3293	PA220049.JPG	148	$788. 	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3294	PA220050.JPG	148	Cardi's doesn't deliver clearance furniture. And all above Cardi's furniture is in the clearance section.	\N	2004-10-22 00:00:00	Beca Erickson	Cardi's
3295	ikea3seat.JPG	148	3-seater couch from Ikea. $199 + shipping	\N	\N	\N	\N
3296	ikea2seat.JPG	148	2-seater couch from Ikea. $149 + shipping, for the sake of completeness	\N	\N	\N	\N
3297	PA220051.JPG	149	Poking The Irish Turf. 	\N	2004-10-22 00:00:00	Beca Erickson	The Lounge
3298	PA220052.JPG	149	Everyone looks softer in firelight. 	Jodie, Scott, Sue, David, Sean	2004-10-22 00:00:00	Beca Erickson	The Lounge
3299	PA220054.JPG	149	Fireeating. Haynes takes a suggestion from Marcus.	Haynes	2004-10-22 00:00:00	Beca Erickson	The Lounge
3300	PA220055.JPG	149	American Gothic. 	Graham, Mikka	2004-10-22 00:00:00	Beca Erickson	The Lounge
3301	PA220056.JPG	149	Chubby Bunnies. 	Haley, Sean	2004-10-22 00:00:00	Beca Erickson	The Lounge
3302	PA220057.JPG	149	Chubby Bunny. Haley has given up, but Sean is still going.	Haley, Sean	2004-10-22 00:00:00	Beca Erickson	The Lounge
3303	PA220026.JPG	150	Sign. For 8'x11' machine-made oriental rugs, $119.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3304	PA220027.JPG	150	Rugs. Except this 8'x11' rug is only $55, as are several others.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3305	PA220028.JPG	150	Rugs. Here's one for $140.  Wide range of prices.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3306	PA220029.JPG	150	And some more rugs. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3307	PA220030.JPG	150	More Signs. For 8'x11' machine-made oriental rugs, $149.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3308	PA220031.JPG	150	Bound carpets. $90, 9'x12'.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3309	PA220032.JPG	150	More $90 9'x12' bound carpets. Several colors.	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3310	PA220033.JPG	150	Another $90 9'x12', in darg red. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3311	PA220034.JPG	150	9'x12' beige berber, $95. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3312	PA220035.JPG	150	Tan 9'x12', $130. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3313	PA220036.JPG	150	Dark green 9'x12', $130. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3314	PA220037.JPG	150	Some 12'x18' carpets (bound? not bound?) for ~$200. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3315	PA220038.JPG	150	Some 9'x12' carpets for $150. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3316	PA220039.JPG	150	A 12'x14' for $150. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3317	PA220040.JPG	150	Some 12'x13' carpets for ~$100. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3318	PA220041.JPG	150	A 12'x12' for $130. 	\N	2004-10-22 00:00:00	Beca Erickson	Building 19
3323	CRW_0802_JFR.jpg	152	The DDR Hard Pads of Doom! 	Doom pads	2005-02-04 00:00:00	Lou Arruda	The Lounge
3324	CRW_0803_JFR.jpg	152	Java the Mutt says hello. 	Java and Mike K.	2005-02-04 00:00:00	Lou Arruda	The Lounge
3325	CRW_0809_JFR.jpg	152	Ping-pong. 	Various	2005-02-04 00:00:00	Lou Arruda	The Lounge
3326	CRW_0810_JFR.jpg	152	Air Hockey. 	Jimmy and ?	2005-02-04 00:00:00	Lou Arruda	The Lounge
3327	CRW_0811_JFR.jpg	152	The DDR Challenge. 	Tara, Mike K., and Adam Fenn (in the background)	2005-02-04 00:00:00	Lou Arruda	The Lounge
3328	CRW_0812_JFR.jpg	152	The DDR Challenge II. 	Tara, Mike K., and Adam Fenn (in the background)	2005-02-04 00:00:00	Lou Arruda	The Lounge
3329	CRW_0813_JFR.jpg	152	This victory strengthens the soul of... 	Mike K. and ?	2005-02-04 00:00:00	Lou Arruda	The Lounge
3330	CRW_0820_JFR.jpg	152	Mmmm, donuts! 	Tara, Jimmy, Sean, Graham, Sue, and Scoot	2005-02-04 00:00:00	Lou Arruda	The Lounge
3331	CRW_0821_JFR.jpg	152	Practicing his DDR technique. 	Sean, Graham, Sue, and Scoot	2005-02-04 00:00:00	Lou Arruda	The Lounge
3332	CRW_0825_JFR.jpg	152	Lincoln vs. Adam. 	Various	2005-02-04 00:00:00	Lou Arruda	The Lounge
3333	CRW_0826_JFR.jpg	152	Lincoln vs. Adam, Round II. 	Various	2005-02-04 00:00:00	Lou Arruda	The Lounge
3695	bDSC00928.jpg	176	Lincoln. 	\N	\N	\N	War Room
3335	CRW_0828_JFR.jpg	152	This victory strengthens the soul of... 	Various	2005-02-04 00:00:00	Lou Arruda	The Lounge
3336	CRW_0834_JFR.jpg	152	Jane vs. Lucia. 	Jane and Lucia	2005-02-04 00:00:00	Lou Arruda	The Lounge
3337	CRW_0835_JFR.jpg	152	Stupid Camera Tricks I. 	Haynes' Feet	2005-02-04 00:00:00	Lou Arruda	The Lounge
3338	CRW_0839_JFR.jpg	152	Stupid Camera Tricks II. 	Haynes' and Mike K.'s Feet	2005-02-04 00:00:00	Lou Arruda	The Lounge
3339	CRW_0843_JFR.jpg	152	Stupid Camera Tricks III. 	Mike K.	2005-02-04 00:00:00	Lou Arruda	The Lounge
3340	CRW_0845_JFR.jpg	152	More air hockey. 	?, ?, and Mike K.	2005-02-04 00:00:00	Lou Arruda	The Lounge
76	p4020071.jpg	10	\N	\N	2004-04-02 21:31:00	\N	\N
3414	IMG_0323.JPG	159	Beca Makes A Grocery List. 	\N	2005-03-05 00:00:00	Tara	Room 107
3424	IMG_0339.JPG	162	Containment Lost. 	\N	2005-04-08 00:00:00	Tara Olson	Room 107
3425	IMG_0340.JPG	162	Dealing With Explosions. 	Graham Rosser, Sean Smith	2005-04-08 00:00:00	Tara Olson	Room 107
3426	IMG_0342.JPG	163	Brendan reads thnme. 	Brendan	2005-04-09 00:00:00	Beca Erickson	Room 107
3427	IMG_0344.JPG	163	Doug and Jim Wrestle. Scoot claims this is Bizarre Techhouse	Scott, Bright, Jim, Doug, Jodie, Wolfie(Mike K.)	2005-04-09 00:00:00	Beca Erickson	First Floor Hallway
3428	IMG_0345.JPG	163	Jim. 	\N	2005-04-09 00:00:00	Beca Erickson	First Floor Hallway
3429	IMG_0346.JPG	163	Bright. 	Bright, Doug	2005-04-09 00:00:00	Beca Erickson	First Floor Hallway
3430	IMG_0347.JPG	163	Lincoln. 	\N	2005-04-09 00:00:00	Beca Erickson	Library
3431	IMG_0348.JPG	163	The Macquarium. 	\N	2005-04-09 00:00:00	Beca Erickson	Library
3432	IMG_0350.JPG	164	The Meeting Begins. 	Lucia, Lincoln, Jane, Haynes, Sean	2005-04-11 00:00:00	Beca Erickson	The Lounge
3433	IMG_0351.JPG	164	Waiting For Cookies. 	Jimmy, Jim, Patrick, Wolfie(Mike K.)	2005-04-11 00:00:00	Beca Erickson	The Lounge
3434	IMG_0352.JPG	164	Going Over Lottery Procedure. 	Jim, Patrick, Wolfie(Mike K.), Dan, Sean	2005-04-11 00:00:00	Beca Erickson	The Lounge
3435	CRW_1135_JFR.jpg	165	Gathering in the lounge. 	Marcus, Haley, Brendan, [Can't remember cause I'm an idiot], and Lucia	2005-04-22 00:00:00	Lou Arruda	The Lounge
3436	CRW_1136.jpg	165	Grinning couple. 	Marcus and Haley	2005-04-22 00:00:00	Lou Arruda	The Lounge
3437	CRW_1137_JFR.jpg	165	Wide grins. 	Marcus and Haley	2005-04-22 00:00:00	Lou Arruda	The Lounge
3438	CRW_1138_JFR.jpg	165	Playing Fluxx. 	Lincoln and Sara?	2005-04-22 00:00:00	Lou Arruda	The Lounge
3439	CRW_1139.jpg	165	Bright light! 	Brendan, Lucia, Haley, and Marcus	2005-04-22 00:00:00	Lou Arruda	The Lounge
3440	CRW_1141_JFR.jpg	165	Use the choke hold! 	Dan and Brendan	2005-04-22 00:00:00	Lou Arruda	The Lounge
3441	CRW_1142_JFR.jpg	165	Take that! 	Dan and Brendan	2005-04-22 00:00:00	Lou Arruda	The Lounge
3442	CRW_1143_JFR.jpg	165	Getting jiggy with Java the Mutt. 	Alex Hogg and Java the Mutt	2005-04-22 00:00:00	Lou Arruda	The Lounge
3443	CRW_1144.jpg	165	Party on! 	Various	2005-04-22 00:00:00	Lou Arruda	The Lounge
3444	CRW_1146_JFR.jpg	165	Lucia strikes a pose. 	Lucia	2005-04-22 00:00:00	Lou Arruda	The Lounge
3445	CRW_1147_JFR.jpg	165	Lucia strikes a pose II. 	Lucia	2005-04-22 00:00:00	Lou Arruda	The Lounge
3446	CRW_1148_JFR.jpg	165	White Mage will poke your eye out! 	Alex Hogg	2005-04-22 00:00:00	Lou Arruda	The Lounge
3447	CRW_1150_JFR.jpg	165	Haynes and Jane. 	Haynes and Jayne	2005-04-22 00:00:00	Lou Arruda	The Lounge
3448	CRW_1151_JFR.jpg	165	I am a man's man! 	Lincoln and Brendan	2005-04-22 00:00:00	Lou Arruda	The Lounge
3449	CRW_1152_JFR.jpg	165	Yes, we have dancing girls. 	Jane, Lucia, and Haley	2005-04-22 00:00:00	Lou Arruda	The Lounge
3450	CRW_1153_JFR.jpg	165	Ring of dance. 	Various	2005-04-22 00:00:00	Lou Arruda	The Lounge
3451	CRW_1154.jpg	165	Dancing Girls II. 	Lucia and Haley	2005-04-22 00:00:00	Lou Arruda	The Lounge
3452	CRW_1155_JFR.jpg	165	Brendan, pimp daddy. 	Tara, Brendan, Jane, and Lucia	2005-04-22 00:00:00	Lou Arruda	The Lounge
3453	CRW_1156_JFR.jpg	165	Who's yo' pimp daddy? 	Haley, Tara, Brendan, Jane, and Lucia	2005-04-22 00:00:00	Lou Arruda	The Lounge
3454	CRW_1157_JFR.jpg	165	Chick magnet. 	Haley, Brendan, and Lucia	2005-04-22 00:00:00	Lou Arruda	The Lounge
3455	CRW_1158_JFR.jpg	165	Aww yeah. 	Haley, Brendan, and Lucia	2005-04-22 00:00:00	Lou Arruda	The Lounge
3456	CRW_1159_JFR.jpg	165	Dancing with an old friend. 	Jodie's hometown friend [sorry, can't remember the name], Jodie, and Doug	2005-04-22 00:00:00	Lou Arruda	The Lounge
77	p4020072.jpg	10	\N	\N	2004-04-02 21:31:00	\N	\N
78	p4020073.jpg	10	\N	\N	2004-04-02 21:32:00	\N	\N
79	p4020074.jpg	10	\N	\N	2004-04-02 21:33:00	\N	\N
3419	IMG_0334.jpg	161	\N	\N	2005-03-27 00:00:00	Sean Smith	Patriots Court
3420	IMG_0335.jpg	161	\N	\N	2005-03-27 00:00:00	Sean Smith	Patriots Court
3421	IMG_0336.jpg	161	\N	\N	2005-03-27 00:00:00	Sean Smith	Patriots Court
3422	IMG_0337.jpg	161	\N	\N	2005-03-27 00:00:00	Sean Smith	Patriots Court
3423	IMG_0338.jpg	161	\N	\N	2005-03-27 00:00:00	Sean Smith	Patriots Court
3457	CRW_1160_JFR.jpg	165	It's hot in here. 	Haynes (from behind)	2005-04-22 00:00:00	Lou Arruda	The Lounge
3458	CRW_1165.jpg	165	Sean and Beca. 	Sean and Beca	2005-04-22 00:00:00	Lou Arruda	The Library
3459	CRW_1166.jpg	165	Angel and Devil. 	Tara and Beca	2005-04-22 00:00:00	Lou Arruda	The Library
3486	DSCF0002.jpg	167	"Bo looks just like a turtle!". 	Bo "the turbo-turtle" Chen, Dan "the man" Diaz	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3487	DSCF0001.JPG	167	What a nice little turtle! 	Jim, Jimmy, Bo, Mike Th., Patrick	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3488	DSCF0003.JPG	167	The 3vil man grins. 	Jim, Doug	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3489	DSCF0004.JPG	167	Patrick is tired. and also confused	Dan D., Jimmy, Patrick, Mike Th.	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3490	DSCF0006.JPG	167	Who says that CS students have poor grooming? 	Jim, Doug	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3491	DSCF0008.JPG	167	Thorough grooming. 	Doug, Jim	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3492	DSCF0009.JPG	167	Dan ran out of paper. so he decided to write on his knee	Bo, Dan D.	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3493	DSCF0010.JPG	167	"Arm tastes goooood". 	Doug, Jim	2005-10-02 00:00:00	Amanda L.	The 2nd Floor
3494	CRW_1443.jpg	168	Chilling at Memphis BBQ. 	Dave Eigen, An Le, Erwin Chan, Serge Garcia	2005-05-27 00:00:00	Lou Arruda	Memphis BBQ
3495	CRW_1453.jpg	168	Chris and Dave chilling. 	Chris Nemcosky and Dave Erickson	2005-05-28 00:00:00	Lou Arruda	Wayland Suite
3496	CRW_1454.jpg	168	Scoot and Serge chilling. 	Scott McKenzie and Serge Garcia	2005-05-28 00:00:00	Lou Arruda	Wayland Suite
3497	CRW_1455.jpg	168	Dinner at Tokyo. 	Rob Allen, Jason Rodriguez, Dave Erickson	2005-05-28 00:00:00	Lou Arruda	Tokyo Restaurant
3498	CRW_1457.jpg	168	Outside TH. 	An Le, Jon Bankard, Pawel Wrotek	2005-05-28 00:00:00	Lou Arruda	Outside Tech House
3499	CRW_1458.jpg	168	Serge is buff. 	Serge Garcia	2005-05-28 00:00:00	Lou Arruda	Patriot's Court (outside TH)
3500	CRW_1462.jpg	168	Munchies at Meech's. 	Dave Eigen and An Le	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3501	CRW_1463.jpg	168	A huge alumni gathering. 	Various alumni	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3502	CRW_1464.jpg	168	The Tschantz twins. 	Mike's brother and Mike Tschantz	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3503	CRW_1465.jpg	168	Showing off new toys. 	Keith Dreibelbis, Chris Chin, and Mike Tschantz in the background	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3504	CRW_1466.jpg	168	Alumni schmoozing. 	Chris Mastrangelo, Dave Erickson, and Rob Letzler	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3505	CRW_1467.jpg	168	It's getting crowded here. 	Various alumni	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3506	CRW_1468.jpg	168	More alumni action. 	Various alumni	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3507	CRW_1469.jpg	168	They were careless people, Tom and Daisy. 	Rabbits and modern communications technology	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3508	CRW_1470.jpg	168	Meech gets up on the stool for an announcement. 	Mike Tschantz's brother, Meech Harrington, Chris Nemcosky	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3509	CRW_1471.jpg	168	Attention Tech House alumni. 	Meech Harrington and Chris Nemcosky	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3510	CRW_1472.jpg	168	Hey, what's this non-alumn doing here!? 	Brendan	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3511	CRW_1473.jpg	168	Inquisitive! 	Don Engel	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3512	CRW_1475.jpg	168	Food! 	\N	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3513	CRW_1478.jpg	168	The life of the party. 	Mike Plotz	2005-05-28 00:00:00	Lou Arruda	Meech and Eric Cohen's apartment
3514	CRW_1485.jpg	168	Lining up for the Commencement March. 	Don Engel	2005-05-29 00:00:00	Lou Arruda	George St.
3515	CRW_1489.jpg	168	Pawel looks forward to his diploma. 	Pawel Wrotek	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Chruch
3516	CRW_1490.jpg	168	Hari checks in. 	Hari Khalsa	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Church
3517	CRW_1492.jpg	168	Jon gets his diploma. 	Jon Bankard	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Church
3518	CRW_1493.jpg	168	Walking down the aisle with the parchment. Jon Bankard	St. Stephen's Church, May 29, 2005	\N	\N	Lou Arruda
3519	CRW_1498.jpg	168	Smilin' Mike Tschantz. Mike Tschantz	St. Stephen's Church, May 29, 2005	\N	\N	Lou Arruda
3520	CRW_1499.jpg	168	Pawel finally gets his diploma (silly alphabetical order). 	Pawel wrotek	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Church
3521	CRW_1500.jpg	168	Miriam finally gets hers too. 	Miriam Goldberg	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Church
3522	CRW_1501.jpg	168	Now it's Hari's turn. 	Hari Khalsa	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Church
3523	CRW_1503.jpg	168	Chris Chin gets his Masters. 	Chris Chin	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Church
3524	CRW_1506.jpg	168	A shot of the gang. 	Jason Rodriguez, Rob Allen, Serge Garcia, Chris Nemcosky, Jon Bankard, Ven Tadipatri	2005-05-29 00:00:00	Lou Arruda	St. Stephen's Church
3525	CRW_1507.jpg	168	Gathering at the CIT. 	Pawel Wrotek, Chris Nemcosky, Serge Garcia, Carol Diaz, Jon Bankard, Jesse Funaro and Jason Rodriguez	2005-05-29 00:00:00	Lou Arruda	CIT 3rd floor
3526	CRW_1508.jpg	168	Alumni hanging out. 	Keith Dreibelbis, Miriam Goldberg, Beca Erickson, Mike Boilen, and Matt Gillooly	2005-05-29 00:00:00	Lou Arruda	CIT 3rd floor
3527	CRW_1509.jpg	168	NINJAR!!! 	Matt Gillooly	2005-05-29 00:00:00	Lou Arruda	CIT 3rd floor
3538	DSCF0001.jpg	170	Acrobats and Pirates. 	Haley, K. Adam, Joey, Lincoln	2005-10-10 00:00:00	Amanda L.	The Lounge
3539	DSCF0005.jpg	170	These people are being comparatively less comical. but we still love them	Lucia, K. Adam, Joey, Lincoln's Feet, Dan E.	2005-10-10 00:00:00	Amanda L.	The Lounge
3540	DSCF0006.jpg	170	A warmly shared moment. 	Doug, Jim, Matt	2005-10-10 00:00:00	Amanda L.	The Lounge
3541	DSCF0007.jpg	170	Dan is Displeased. 	Dan E., Haley, Graham, Jane, Patrick	2005-10-10 00:00:00	Amanda L.	The Lounge
3542	DSCF0008.jpg	170	Ok people, listen up! Haley takes charge	Mike K., Owen, Haley, Lincoln, K. Adam, Joey	2005-10-10 00:00:00	Amanda L.	The Lounge
3543	DSCF0009.jpg	170	Brendan has found me out! he shall trust no camera	Graham, Jane, Patrick, David, Brendan, Doug, Jim, Matt	2005-10-10 00:00:00	Amanda L.	The Lounge
3566	A001.JPG	172	Percolators arrive. 	\N	2005-10-29 00:00:00	\N	The Lounge
3567	A002.JPG	172	Dan sets up. you can almost smell the caffeine already	Dan Erikson	2005-10-29 00:00:00	\N	The Lounge
3568	D001.jpg	172	Finding room for the drum kit. 	Jimmy, Haley	2005-10-29 00:00:00	\N	The Lounge
3569	B001.jpg	172	Setting Up. "How's this?"	Haley Allen	2005-10-29 00:00:00	\N	The Lounge
3696	bDSC00929.jpg	176	Mike K is looking sleepy. 	Mike K	\N	\N	Bar
3544	001.jpg	171	Pumpkins are carved. 	\N	2005-10-28 00:00:00	Owen Strain	The Library
3545	002.jpg	171	Jack smiles for his close-up. 	Jack O'Lantern	2005-10-28 00:00:00	Owen Strain	The Library
3546	003.jpg	171	But, pumpkins aside, it's mostly the usual. 	guy on a grey controller, Mike K. (on the orange controller), guy on a black controller, K. Adam, Joey	2005-10-28 00:00:00	Owen Strain	The Lounge
3570	D002.jpg	172	A little to the left... just right!	Haley	2005-10-29 00:00:00	\N	The Lounge
3571	D003.jpg	172	Deigen documents the setup. for posterity	Matt Gillooly, Deigen	2005-10-29 00:00:00	\N	The Lounge
3572	B004.jpg	172	Lookin' good, guys! 	Deigen	2005-10-29 00:00:00	\N	The Lounge
3573	B002.jpg	172	These little pumkins got sent out into the rain. 	\N	2005-10-29 00:00:00	\N	Outside
3574	B003.jpg	172	These little pumkins are joined by their bowling ball friend. 	\N	2005-10-29 00:00:00	\N	The Lounge
3575	C001.JPG	172	the fate of the seeds. 	\N	2005-10-29 00:00:00	\N	The Kitchen
3576	C002.JPG	172	oh my god that's a lot of food. 	\N	2005-10-29 00:00:00	\N	The Lounge
3577	C003.JPG	172	...and they're still making more!! 	Lincoln, Joey	2005-10-29 00:00:00	\N	The Kitchen
3578	C004.JPG	172	Jane helps set the table. 	Jane	2005-10-29 00:00:00	\N	The Lounge
3579	C005.JPG	172	frontal view of the glut of baked goods. 	\N	2005-10-29 00:00:00	\N	The Lounge
3580	C006.JPG	172	Jimmywankers. if you squint real hard you can see that they have the TH logo stamped into them	\N	2005-10-29 00:00:00	\N	The Lounge
3581	C007.JPG	172	Joey is a baking GOD. 	Joey	2005-10-29 00:00:00	\N	The Kitchen
3582	C008.JPG	172	Joey in Party mode. 	Joey	2005-10-29 00:00:00	\N	The Lounge
3583	C009.JPG	172	Amanda in Baking Maven mode. 	Amanda	2005-10-29 00:00:00	\N	The Lounge
3584	C010.JPG	172	Amanda in Party mode. 	Amanda	2005-10-29 00:00:00	\N	The Lounge
3585	C011.JPG	172	Owen helps frost the pumpkin cakes. "that's a pretty big knife you've got there"	Owen	2005-10-29 00:00:00	\N	The Middle Kitchen
3586	C012.JPG	172	Catherine helps frost too. 	Owen, Catherine	2005-10-29 00:00:00	\N	The Middle Kitchen
3587	C013.JPG	172	Catherine and Owen in Party mode. 	Catherine, Owen	2005-10-29 00:00:00	\N	The Lounge
3588	E001.jpg	173	Adam is the Cardboard Tube Samurai. 	K. Adam White	2005-10-29 00:00:00	\N	The Lounge
3589	E002.jpg	173	Cardboard Tube Samurai prepares to draw. 	K. Adam White	2005-10-29 00:00:00	\N	The Vestibular Area
3590	E003.jpg	173	Your pitiful brain cannot fathom Brendan's angst. 	Brendan	2005-10-29 00:00:00	\N	The Corner
3591	E004.jpg	173	Pain. and nailpolish	Brendan	2005-10-29 00:00:00	\N	The Lounge
3592	E005.jpg	173	Princess Ali. 	Ali, Dan Diaz	2005-10-29 00:00:00	\N	The Lounge
3593	E006.jpg	173	Dan. has the absolute cutest little llama	Dan Erikson	2005-10-29 00:00:00	\N	The Lounge
3594	E007.jpg	173	Jim. has a power-cord lasso	Jim, Pawel, Lou, J-Ro	2005-10-29 00:00:00	\N	The Vestibular Area
3595	E008.jpg	173	Graham. 	Graham Rosser	2005-10-29 00:00:00	\N	The Lounge
3596	E008b.jpg	173	Yep, that's our Graham alright. 	Graham Rosser	2005-10-29 00:00:00	\N	The Lounge
3597	E009.jpg	173	Owen. 	Owen	2005-10-29 00:00:00	\N	The Vestibular Area
3598	E010.jpg	173	Owen attempts a contemplative pose. but is foiled by the antics of Jane and Dan	some guy, Jane, Dan Winograd-Court, Owen	2005-10-29 00:00:00	\N	The Lounge
3599	E011.jpg	173	Contemplative Pose Try 2. 	some guy, Owen	2005-10-29 00:00:00	\N	The Lounge
3600	E012.jpg	173	More costumed people. 	Joey Brunelle, Albert Lin, Sean	2005-10-29 00:00:00	\N	The Lounge
3601	E013.jpg	173	Another pose. 	Mike, Joey, David, Jimmy, Albert, Sean	2005-10-29 00:00:00	\N	The Lounge
3602	E014.jpg	173	Katie and Adam. aww... they match!	Katie, K. Adam	2005-10-29 00:00:00	\N	The Lounge
3603	F001.jpg	173	Security Guard Patrick. ready for duty	Patrick	2005-10-29 00:00:00	\N	The Lounge
3604	F002.jpg	173	The Axe. 	people, axe, more people	2005-10-29 00:00:00	\N	The Lounge
3605	F003.jpg	173	Doing Security-Type Things. 	people, Patrick	2005-10-29 00:00:00	\N	The Lounge
3606	F004.jpg	173	Talking on a cellphone on the job!? this is completely unacceptable.  everyone knows that real security guards use walkie-talkies.	Patrick, some other guy	2005-10-29 00:00:00	\N	The Vestibular Area
3607	F005.jpg	173	Patrick is fired for negligence and Adam is named his successor. (actually Patrick is just taking a break)	K. Adam	2005-10-29 00:00:00	\N	The Vestibular Area
3608	G001.jpg	173	Haley works the table. 	Haley Allen	2005-10-29 00:00:00	\N	The Lounge
3609	G002.jpg	173	Joey enjoys the fruits of his labor. 	Joey Brunelle, Haley Allen	2005-10-29 00:00:00	\N	The Lounge
3610	G003.jpg	173	The disappearance of the baked goods: A Time-Lapse Portrait. 	\N	2005-10-29 00:00:00	\N	The Lounge
3611	H001.jpg	173	The Effects of Caffeine on Subject 107B (Lincoln Quirk). Stage 1 - In contrast to later effects, the initial sensation produced is one of relaxation	Lincoln Quirk	2005-10-29 00:00:00	\N	The Lounge
3612	H002.jpg	173	The Effects of Caffeine on Subject 107B (Lincoln Quirk). Stage 2 - Unnatural cravings for additional doses of the substance	Lincoln Quirk	2005-10-29 00:00:00	\N	The Lounge
3613	H003.jpg	173	The Effects of Caffeine on Subject 107B (Lincoln Quirk). Stage 3 - Feelings of euphoria	Lincoln Quirk	2005-10-29 00:00:00	\N	The Lounge
3614	H004.jpg	173	The Effects of Caffeine on Subject 107B (Lincoln Quirk). Stage 4 - Subject exhibits extreme restlessness and the onset of bodily tremors	Lincoln Quirk, Joey Brunelle	2005-10-29 00:00:00	\N	The Vestibular Area
3615	H005.jpg	173	The Effects of Caffeine on Subject 107B (Lincoln Quirk). Stage 5 - Inability to blink   (not shown: Stage 6 - Crashing)	Lincoln Quirk	2005-10-29 00:00:00	\N	The Lounge
3616	I001.jpg	173	partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3617	I002.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3618	I003.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3619	I004.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3620	I005.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3621	I006.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3622	I007.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3623	I008.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3624	I009.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3625	I010.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3626	I011.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3627	I012.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3628	I013.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3629	I014.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3630	I015.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3631	I016.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3632	I017.jpg	173	more partying. 	people	2005-10-29 00:00:00	\N	The Lounge
3697	bDSC00931.jpg	176	Frog. 	Frog	\N	\N	Bar
3633	J001.jpg	173	The musical stylings of The Dots. 	people, Dot #1, Dot #2	2005-10-29 00:00:00	\N	The Lounge
3634	J002.jpg	173	The musical stylings of Matt Gillooly. 	Matt Gillooly, the guy on the drums	2005-10-29 00:00:00	\N	The Lounge
3635	J003.jpg	173	CTS* takes a most honorable photograph. *Cardboard Tube Samurai	K. Adam	2005-10-29 00:00:00	\N	The Vestibular Area
3636	J004.jpg	173	photographic ambuscade. 	Ven, Graham	2005-10-29 00:00:00	\N	The Vestibular Area
3637	J005.jpg	173	Ven. 	Ven	2005-10-29 00:00:00	\N	The Middle Kitchen
3638	J006.jpg	173	Being a samurai has its perks. 	K. Adam, Alex, Drew	2005-10-29 00:00:00	\N	The Vestibular Area
3639	J007.jpg	173	Bleach. 	\N	2005-10-29 00:00:00	\N	The Lounge
3640	J008.jpg	173	Arwyn. 	\N	2005-10-29 00:00:00	\N	The Lounge
3641	J009.jpg	173	Something. 	Mike K, Dan E, some guy drinking coffee	2005-10-29 00:00:00	\N	The Vestibular Area
3642	J010.jpg	173	Catherine's ball is glowing. 	Mike K, Catherine	2005-10-29 00:00:00	\N	The Vestibular Area
3643	J011.jpg	173	Catherine can do some amazing things with balls. 	Catherine	2005-10-29 00:00:00	\N	The Vestibular Area
3644	J012.jpg	173	This guy looks tired. 	this guy's name is Alex Dean	2005-10-29 00:00:00	\N	The Vestibular Area
3645	J013.jpg	173	What's this?  A Hall Party?  Occuring concurrently with a Real Party? yes.  yes it is.	Pawel, Lou, J-Ro	2005-10-29 00:00:00	\N	The 1st floor Hallway
3646	J014.jpg	173	Those who are too lame to dance sit in the hallway. in shame	Dan D, Jim, Ven	2005-10-29 00:00:00	\N	The 1st floor Hallway
3647	J015.jpg	173	Meanwhile, back in the lounge... A form emerges from the darkness.	that which is known as "graham"	2005-10-29 00:00:00	\N	The Lounge
3648	K001.jpg	173	The Showdown Begins. 	FFC vs. CTS	2005-10-29 00:00:00	\N	Outside
3649	K002.jpg	173	They circle one another pensively. 	CTS vs. FFC	2005-10-29 00:00:00	\N	Outside
3650	K003.jpg	173	Cardboard Tube Samurai strikes! 	CTS	2005-10-29 00:00:00	\N	Outside
3651	K004.jpg	173	It's over. "but tell me who has won?"	CTS	2005-10-29 00:00:00	\N	Outside
3652	L001.jpg	173	Leela and Bender. 	Erin, Paul	2005-10-29 00:00:00	\N	The Vestibular Area
3653	L002.jpg	173	Bender opens his chest compartment to reveal... 	\N	2005-10-29 00:00:00	\N	The Lounge
3654	L003.jpg	173	...Beer!!! 	Joey, Bender, Haynes, guy, Dan Diaz	2005-10-29 00:00:00	\N	The Lounge
3655	L004.jpg	173	Beer always draws a crowd. 	Haynes, Bender, Deigen, Ven, Patrick	2005-10-29 00:00:00	\N	The Lounge
3656	M001.jpg	173	Yarmulkazi Arrives! 	people	2005-10-29 00:00:00	\N	The Vestibular Area
3657	M002.jpg	173	Jon Cannon. plays the meanest fiddle this side of the Mississippi	Jon Cannon	2005-10-29 00:00:00	\N	The Vestibular Area
3658	M003.jpg	173	Nat temporarily repositions his nose, so as to better drink his coffee. 	Peter, Nat	2005-10-29 00:00:00	\N	The Vestibular Area
3659	M004.jpg	173	Yarmulkazi Plays! 	Jon Cannon, Alan Gordon, Rebecca Fischer, Leora Fox, Nat Seelen	2005-10-29 00:00:00	\N	The Lounge
3660	N001.jpg	173	Circle dancing. 	people	2005-10-29 00:00:00	\N	The Lounge
3661	N002.jpg	173	More people join the circle. 	Joey, Brendan, people	2005-10-29 00:00:00	\N	The Lounge
3662	N003.jpg	173	Attempting to synchronize the kicking. 	people	2005-10-29 00:00:00	\N	The Lounge
3663	N004.jpg	173	Brendan shows off some fancy footwork. this deserves a round of applause	Brendan	2005-10-29 00:00:00	\N	The Lounge
3664	N005.jpg	173	Brendan gets hoisted in a chair. now that's what I call a party!	people	2005-10-29 00:00:00	\N	The Lounge
3665	O001.jpg	173	Notice that the pumpkins are illuminated.  Since candles are forbidden, this is done by means of glowstick. 	ghosts of our dearly beloved	2005-10-29 00:00:00	\N	The Lounge
3666	O002.jpg	173	Dan Diaz robs some glowsticks from the pumpkins. Dan Erikson holds onto his hat (he knows this is the start of something massive)	people, Amanda, Dan E., Owen, Dan D., Pawel	2005-10-29 00:00:00	\N	The Lounge
3667	O003.jpg	173	Soon there is nary a pumpkin left that has not been robbed. 	people	2005-10-29 00:00:00	\N	The Lounge
3668	O004.jpg	173	A trend has been started.  It is... 	people	2005-10-29 00:00:00	\N	The Lounge
3669	O005.jpg	173	KLEZMER RAVE DANCING!!! 	people	2005-10-29 00:00:00	\N	The Lounge
3670	O006.jpg	173	Awwww Yeahhh. 	people	2005-10-29 00:00:00	\N	The Lounge
3671	O007.jpg	173	Those Jews really know how to lay down the funky beatz. 	people	2005-10-29 00:00:00	\N	The Lounge
3672	O008.jpg	173	glowsticks rule. 	people	2005-10-29 00:00:00	\N	The Lounge
3673	O009.jpg	173	glowsticks really, really rule. 	people	2005-10-29 00:00:00	\N	The Lounge
3674	DSCF0011th.jpg	174	The Knife is bestowed unto Jim. 	Jim, Patrick, Bo	2005-11-28 00:00:00	amanda	2nd floor Hallway
3675	DSCF0010th.jpg	174	But what shall he do with it? 	Patrick, Jim, Bo, Jimmy	2005-11-28 00:00:00	amanda	2nd floor Hallway
3676	DSCF0012th.jpg	174	First he decides to Pose. 	Jim, Patrick, Bo	2005-11-28 00:00:00	amanda	2nd floor Hallway
3677	DSCF0014th.jpg	174	Then he gets a better idea. (Jimmy watches, but remains aloof)	Jimmy, Jim	2005-11-28 00:00:00	amanda	2nd floor Hallway
3678	DSCF0016th.jpg	174	Good times are had by all. 	Bo, Patrick, Jim, Jimmy	2005-11-28 00:00:00	amanda	2nd floor Hallway
3679	DSCF0013th.jpg	174	Brendan retains his unflappable cynicism. 	Dan E, Brendan, Jimmy	2005-11-28 00:00:00	amanda	2nd floor Hallway
3687	bDSC00916.jpg	176	Howdy Partner. 	John Wayne	\N	\N	Basement hallway
3688	bDSC00918.jpg	176	warming up. 	mike k, haynes, colin, lincoln, owen, tara, mike w, jro	\N	\N	War Room
3689	bDSC00919.jpg	176	random shot. 	tara, mike w, jro, quinn, taylor	\N	\N	War Room
3690	bDSC00920.jpg	176	close-up of the bar logo. 	the bar	\N	\N	war room
3691	bDSC00922.jpg	176	Haynes is unsure about this one. 	Haynes, mike k	\N	\N	War Room
3692	bDSC00923.jpg	176	Rob. 	Rob	\N	\N	War Room
3693	bDSC00924.jpg	176	practicing "the pose". 	Haynes, mike k	\N	\N	War Room
3694	bDSC00926.jpg	176	Owen. 	Owen	\N	\N	War Room
3681	06.jpg	175	Black Mage!! 	Black Mage	2006-01-26 00:00:00	Owen Strain	The Lounge
3683	05.jpg	175	A good time is had by all. while spending their time constructively to boot	Nick, Alastair, Mike K., Warren	2006-01-26 00:00:00	Owen Strain	The Lounge
3698	bDSC00933.jpg	176	Haynes and Diaz. 	Haynes, Dan Diaz	\N	\N	Bar
3699	bDSC00934.jpg	176	Tara and Joey making awesome faces. 	Tara, Joey	\N	\N	Bar
3700	bDSC00936.jpg	176	Mike K :). 	Mike K	\N	\N	Bar
3701	bDSC00937.jpg	176	Jro and Quinn. 	Jro, Quinn	\N	\N	Bar
3702	bDSC00938.jpg	176	Brendan. 	Brendan Hickey	\N	\N	\N
3703	bDSC00939.jpg	176	More taylor. 	Taylor	\N	\N	Bar
3704	bDSC00945.jpg	176	No, you dont want to drink that high life. 	Jro, Lauren	\N	\N	Bar
3705	bDSC00946.jpg	176	more recruits. 	Rob M, Benedict, Abbie	\N	\N	War Room
3706	bDSC00947.jpg	176	another random picture. 	Haynes, Frog, Lincoln, Benedict	\N	\N	War Room
3707	bDSC00948.jpg	176	Deull. 	David Deull	\N	\N	Bar
3708	bDSC00954.jpg	176	Dan E. 	Dan Erickson	\N	\N	War Room
3709	bDSC00955.jpg	176	Adam. 	Adam W	\N	\N	War Room
3710	bDSC00950.jpg	176	A job well done. 	Colin, Owen	\N	\N	TH Bar
3711	bDSC00951.jpg	176	The aftermath. 	beer	\N	\N	Bar
3712	wDSC00910.jpg	177	The Aparatus. 	\N	\N	Joey	The basement
3713	wDSC00912.jpg	177	The Gobo and the Wall. 	The gobo and the wall, after a little tracing around the shadow.	\N	Joey	The basement.
3714	wDSC00956.jpg	177	Joey Traces. 	Joey	\N	David Deull	The basement.
3715	wDSC00958.jpg	177	Joey Traces More! 	Joey, tracing more around the shadow on the wall.	\N	David Deull	The basement.
3716	wDSC00961.jpg	177	Joey Fixes his Mistakes! 	Joey, the wall, an eraser	\N	David Deull	The basement.
3717	IMG_6278.jpg	178	Brains. 	Abbie Popa	\N	Mat Coughlin	Smith-Buonanno
3718	IMG_6280.jpg	178	Brains. 	Diana Huang	\N	Mat Coughlin	Smith-Buonanno
3719	IMG_6281.jpg	178	Brains. 	Jon Silverman	\N	Mat Coughlin	Smith-Buonanno
3720	IMG_6283.jpg	178	Brains. 	Alex Hogg	\N	Mat Coughlin	Smith-Buonanno
3721	IMG_6284.jpg	178	Brains. 	\N	\N	Mat Coughlin	Smith-Buonanno
3722	IMG_6317.jpg	178	Basement zombie. 	\N	\N	Mat Coughlin	Smith-Buonanno
3723	IMG_6324.jpg	178	The last thing you see. 	\N	\N	Mat Coughlin	Smith-Buonanno
3724	IMG_6330.jpg	178	Hat zombie. 	\N	\N	Mat Coughlin	Smith-Buonanno
3753	000_0661.jpg	183	1. 	\N	\N	\N	\N
3754	000_0662.jpg	183	2. 	\N	\N	\N	\N
3755	000_0663.jpg	183	3. 	\N	\N	\N	\N
3756	000_0664.jpg	183	4. 	\N	\N	\N	\N
3757	000_0666.jpg	183	5. 	\N	\N	\N	\N
3758	000_0667.jpg	183	6. 	\N	\N	\N	\N
3759	000_0668.jpg	183	7. 	\N	\N	\N	\N
3760	000_0669.jpg	183	8. 	\N	\N	\N	\N
3761	000_0670.jpg	183	9. 	\N	\N	\N	\N
3762	000_0671.jpg	183	10. 	\N	\N	\N	\N
3763	000_0672.jpg	183	11. 	\N	\N	\N	\N
3764	000_0673.jpg	183	12. 	\N	\N	\N	\N
3776	IMG_1345.sm.JPG	186	Anonymous hottie. 	Anonymous	\N	it's a mystery	TH Lounge
3725	000_0689.jpg	179	Ceiling Cat is watching you not have sex on the bar. 	Ceiling Cat	\N	Michael Katzourin	The War Room
3738	000_0656.jpg	181	people. 	people	\N	Michael Katzourin	3rd floor
3739	000_0657.jpg	181	people again. 	people	\N	Michael Katzourin	3rd floor
3740	000_0658.jpg	181	blurry people. 	\N	\N	Michael Katzourin	3rd floor
3741	000_0646.jpg	182	Dan soldering. 	dan diaz	\N	Michael Katzourin	war room
3742	000_0647.jpg	182	Buttons! 	The buttons! =D	\N	Michael Katzourin	war room
3743	000_0655.jpg	182	the cabinet. 	the... cabinet...	\N	Michael Katzourin	war room
3744	00.jpg	182	gutted cabinet. 	colin brendan	\N	Michael Katzourin	basement
3745	01.jpg	182	the heart of the new cabinet. 	TH PC	\N	Michael Katzourin	basement
3746	02.jpg	182	working things out. 	colin, brendan, brendan's ass	\N	Michael Katzourin	basement
3789	n1011143_30816888_8151.jpg	187	"Bad News". 	Ali	\N	dmeister	\N
3790	n1011143_30816891_8723.jpg	187	Jim weilding "the knife". 	Jim	\N	dmeister	\N
3791	n1011143_30816893_9384.jpg	187	Adam W as Ian McConville. 	Adam White	\N	dmeister	\N
3792	n1011143_30816897_1337.jpg	187	Dana as death from "the sandman". 	Dana G	\N	dmeister	\N
3793	n1011143_30816904_4552.jpg	187	Andres is up to no good... 	Andres, Brendan, Tim, Mike W, Colin, Dan Diaz	\N	dmeister	3rd floor hallway
3794	n1011143_30816908_6760.jpg	187	Andres looks pleased. 	Josh F, Andres	\N	dmeister	3rd floor hallway
2229	108_0833.JPG	97	Other kinds of work, like homework, gets done in the workshop as well. An's iMac draws wonders	Vik, Marcus, Dylan, Beca, Melch	\N	Secret Place, Secret Time	\N
2422	13.JPG	106	Shrimp Me. So white and delicate-looking, Graham's foot is	Graham Kosser	\N	\N	\N
2443	TH0025.JPG	107	A Sight for Sore Eyes. 'cuz only poor eyesight could handle it	spandex girl	2003-12-15 00:00:00	\N	2nd Floor Hallway
1505	dfire002.JPG	65	FIRE HACK. need I say more	\N	2001-09-26 00:00:00	Meech	\N
2155	104_0475.JPG	94	Melch wants wings. Sigh, if only Henna wasn't so expensive	Mikka	2003-04-23 00:00:00	\N	3rd Floor Hallway
1843	P9010020.JPG	80	Eating. I'm cutting back on pictures of people eating this year	people	2002-09-01 00:00:00	Beca Erickson	\N
1776	P1010043.JPG	78	What's That You're Reading. Clara and Curran chill at Mike's house...	Clara, Pumpkin/Pie, Curran, Pie/Pumpkin	\N	Beca Erickson	Mike's house
1686	P1010015.JPG	71	Self-Serve. 	Len, Mike, Clara, Tracy, Meech, Irwin	2002-03-29 00:00:00	Beca Erickson	Lounge
1645	P2010003.JPG	70	Devil Bunny Hates The Earth. But how can he resist its delicious cheese?	David Erickson, someone	2002-02-01 00:00:00	Beca Erickson	Lounge, Cheese Night
1649	P2010014.JPG	70	Cheese Frenzy. Cheese consumption is at an all-time high.	Sergio Garcia, David Erickson, Someone, Rob Allen, Nihal?, David Feuer	2002-02-01 00:00:00	Beca Erickson	Lounge, Cheese Night
2345	108_0872.jpg	102	Everyone to the left! 	\N	\N	Mikka	\N
1484	chall003.JPG	65	Rockin Halloween. Dan and Chris are rockin out to Dan's Stuffed animal	Dan, Chris, Evan, Handsome Pete(dances for nickels), David, Mike, Clara	2001-09-15 00:00:00	Third Floor Spy Camera 4.6	3rd Floor Hallway
592	board.jpg	32	The White Board. House members hard at work with our self-made white board.	Just some guys.	\N	\N	Tech House library
20	p2210004.jpg	4	Tin Foil	\N	2004-02-21 21:14:00	\N	\N
21	p2210005.jpg	4	Everything stayed dark in the lounge when the trapped opened the doors.	\N	2004-02-21 21:14:00	\N	\N
22	p2210006.jpg	4	\N	\N	2004-02-21 21:16:00	\N	\N
23	p2210007.jpg	4	\N	\N	2004-02-21 21:16:00	\N	\N
24	p2210008.jpg	4	\N	\N	2004-02-21 21:16:00	\N	\N
25	p2210009.jpg	4	\N	\N	2004-02-21 21:16:00	\N	\N
26	p2210010.jpg	4	\N	\N	2004-02-21 21:17:00	\N	\N
27	p2210011.jpg	4	\N	\N	2004-02-21 21:17:00	\N	\N
28	p3200038.jpg	5	\N	\N	2004-03-20 21:29:00	\N	\N
29	p3200039.jpg	5	Quite possibly Eric & Dylan's masterpiece.	\N	2004-03-20 21:30:00	\N	\N
30	p3200040.jpg	5	\N	\N	2004-03-20 21:30:00	\N	\N
31	p3200041.jpg	5	\N	\N	2004-03-20 21:31:00	\N	\N
32	p3200042.jpg	5	\N	\N	2004-03-20 21:42:00	\N	\N
33	p3200043.jpg	5	\N	\N	2004-03-20 21:42:00	\N	\N
34	p3200044.jpg	5	\N	\N	2004-03-20 21:42:00	\N	\N
35	p3200045.jpg	5	\N	\N	2004-03-20 21:42:00	\N	\N
36	p3200046.jpg	5	You'll never take our freedom!!!	\N	2004-03-20 21:43:00	\N	\N
37	p3200047.jpg	5	\N	\N	2004-03-20 21:43:00	\N	\N
38	p3200048.jpg	5	\N	\N	2004-03-20 21:43:00	\N	\N
39	p4100117.jpg	6	In lieu of walling them in with brick and mortar, we give you a wall of balloons.	\N	2004-04-10 19:28:00	\N	\N
40	p4100118.jpg	6	\N	\N	2004-04-10 19:30:00	\N	\N
41	p4100120.jpg	6	\N	\N	2004-04-10 19:31:00	\N	\N
42	p4100121.jpg	6	\N	\N	2004-04-10 19:32:00	\N	\N
43	p4100122.jpg	6	Undefeated	\N	2004-04-10 19:32:00	\N	\N
44	p4100123.jpg	6	\N	\N	2004-04-10 19:32:00	\N	\N
45	p4100124.jpg	6	Nihal & escaping: Serious Business	\N	2004-04-10 19:33:00	\N	\N
46	p4100125.jpg	6	\N	\N	2004-04-10 19:34:00	\N	\N
47	p4100126.jpg	6	\N	\N	2004-04-10 19:34:00	\N	\N
48	p4100127.jpg	6	\N	\N	2004-04-10 19:36:00	\N	\N
49	p4100128.jpg	6	From inside the lounge, it looked awesome.	\N	2004-04-10 19:50:00	\N	\N
50	p4240047.jpg	7	Knotted Grocery Bag Defensive Array	\N	2004-04-24 19:45:00	\N	\N
51	p4240048.jpg	7	\N	\N	2004-04-24 20:04:00	\N	\N
52	p4240049.jpg	7	\N	\N	2004-04-24 20:04:00	\N	\N
53	p4240050.jpg	7	Fenn's got skills	\N	2004-04-24 20:04:00	\N	\N
65	p3210049.jpg	9	\N	\N	2004-03-21 19:52:00	\N	\N
66	p3210050.jpg	9	\N	\N	2004-03-21 19:52:00	\N	\N
2288	DSCF0021.JPG	101	The Troops Listen to Fearless Leader. 	\N	2003-05-10 00:00:00	Tracy Nance	\N
2365	P1010021.JPG	103	Chatting In The Kitchen. 	Lou, Dylan, Soren, Su	2003-05-24 00:00:00	Beca Erickson	\N
2643	PB270005.JPG	116	Mmmmmm Food. 	Melch's Friend, Melch, Mike Tschantz, Dan, Mikka, Amanda, Pinto, Evan, Adam	2003-11-27 00:00:00	Beca Erickson	\N
3418	IMG_0333.jpg	161	\N	\N	2005-03-27 00:00:00	Sean Smith	Patriots Court
3784	IMG_1355.sm.JPG	186	Grillmaster Haynes grills. 	W. Haynes Heaton	\N	Brendan Hickey	TH porch
3785	IMG_1356.sm.JPG	186	Bright looks on. 	Adisorn Bright Chaibang	\N	Brendan Hickey	TH porch
3786	IMG_1357.sm.JPG	186	The mustache is watching. 	Robert "the Mustache" Mustaccio	\N	Brendan Hickey	TH lounge
3787	IMG_1358.sm.JPG	186	Wazzup? 	Colin Stebbins Gordon	\N	Brendan Hickey	TH lounge
3788	IMG_1359.sm.JPG	186	Narrowly wide angle. 	Robert, Colin, Tara, K. Adam, Diaz, Ben, Mike, John, Owen, Chris	\N	Brendan Hickey	TH lounge
2169	Shoes.jpg	95	Name those shoes! Dancing Feet (fetish)	Answer Key: Ask the photographer	\N	Mikka	\N
2708	Oly0087.JPG	121	TH Winter Olympics. See Strongman Andy pulverize Mikka	Andy Lambe, Bits and pieces of Mikka	2004-02-24 00:00:00	Mikka	\N
2674	TH0049.JPG	120	Striptease. 	Alex	2004-02-11 00:00:00	Mikka	\N
80	p4020075.jpg	10	\N	\N	2004-04-02 21:33:00	\N	\N
81	p4020076.jpg	10	\N	\N	2004-04-02 21:33:00	\N	\N
82	p4020077.jpg	10	\N	\N	2004-04-02 21:34:00	\N	\N
83	p4140019.jpg	11	\N	\N	2004-04-14 19:58:00	\N	\N
84	p4140020.jpg	11	\N	\N	2004-04-14 19:58:00	\N	\N
85	p4140021.jpg	11	\N	\N	2004-04-14 19:58:00	\N	\N
86	p4140022.jpg	11	\N	\N	2004-04-14 19:59:00	\N	\N
87	p4140023.jpg	11	\N	\N	2004-04-14 19:59:00	\N	\N
88	p4140024.jpg	11	\N	\N	2004-04-14 19:59:00	\N	\N
89	p4140025.jpg	11	\N	\N	2004-04-14 19:59:00	\N	\N
90	p4140026.jpg	11	\N	\N	2004-04-14 19:59:00	\N	\N
91	p4140027.jpg	11	\N	\N	2004-04-14 20:00:00	\N	\N
92	p4140028.jpg	11	\N	\N	2004-04-14 20:00:00	\N	\N
93	p4140029.jpg	11	\N	\N	2004-04-14 20:01:00	\N	\N
94	p4140030.jpg	11	\N	\N	2004-04-14 20:01:00	\N	\N
95	p4140031.jpg	11	\N	\N	2004-04-14 20:01:00	\N	\N
96	p4140032.jpg	11	\N	\N	2004-04-14 20:01:00	\N	\N
97	p4150034.jpg	12	\N	\N	2004-04-15 20:45:00	\N	\N
98	p4150035.jpg	12	\N	\N	2004-04-15 20:46:00	\N	\N
99	p4150036.jpg	12	\N	\N	2004-04-15 20:46:00	\N	\N
100	p4150037.jpg	12	\N	\N	2004-04-15 20:46:00	\N	\N
101	p4150038.jpg	12	\N	\N	2004-04-15 20:50:00	\N	\N
102	p4150039.jpg	12	\N	\N	2004-04-15 20:50:00	\N	\N
103	p4150040.jpg	12	\N	\N	2004-04-15 20:51:00	\N	\N
104	p4150041.jpg	12	\N	\N	2004-04-15 20:52:00	\N	\N
105	p4150042.jpg	12	\N	\N	2004-04-15 20:52:00	\N	\N
106	p4150043.jpg	12	\N	\N	2004-04-15 20:52:00	\N	\N
318	P1010019.JPG	20	Ambushed!	The Hit Squad	2009-03-16 22:00:00	\N	\N
319	P1010020.JPG	20	\N	\N	2009-03-16 22:00:00	\N	\N
320	P1010021.JPG	20	\N	\N	2009-03-16 22:00:00	\N	\N
321	P1010022.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
322	P1010023.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
323	P1010024.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
324	P1010025.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
325	P1010026.JPG	20	Cold killers	\N	2009-03-16 22:30:00	\N	\N
326	P1010028.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
327	P1010034.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
328	P1010035.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
329	P1010036.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
330	P1010037.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
331	P1010038.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
332	P1010040.JPG	20	Formal Pose	The Boss and the Negotiator	2009-03-16 22:30:00	\N	\N
333	P1010041.JPG	20	Casual Pose	The Boss and the Negotiator, taking it easy.	2009-03-16 22:30:00	\N	\N
334	P1010042.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
335	P1010043.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
336	P1010044.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
337	P1010045.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
338	P1010046.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
339	P1010047.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
340	P1010048.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
341	P1010049.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
342	P1010050.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
343	P1010051.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
344	P1010053.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
345	P1010054.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
346	P1010055.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
347	P1010056.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
348	P1010057.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
349	P1010058.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
350	P1010059.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
351	P1010060.JPG	20	Protect the President!	\N	2009-03-16 22:30:00	\N	\N
352	P1010061.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
353	P1010062.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
354	P1010063.JPG	20	How many shotguns can this man fit beneath his coat?	\N	2009-03-16 22:30:00	\N	\N
355	P1010064.JPG	20	\N	\N	2009-03-16 22:30:00	\N	\N
2099	DSCF0152.JPG	92	What time is it? Its battle time baby!	Mikka,Sue	2003-04-15 00:00:00	Mikka	TH porch
1116	25_mikeliz.jpg	56	mikeliz. 	\N	\N	Christopher Chin	\N
1117	26_mikeliz.jpg	56	mikeliz. 	\N	\N	Christopher Chin	\N
1118	27_chrisn.jpg	56	chrisn. 	\N	\N	Christopher Chin	\N
1119	28_curbrett.jpg	56	curbrett. 	\N	\N	Christopher Chin	\N
1120	29_shawn.jpg	56	shawn. 	\N	\N	Christopher Chin	\N
1121	30_clara.jpg	56	clara. 	\N	\N	Christopher Chin	\N
1122	31_evan.jpg	56	evan. 	\N	\N	Christopher Chin	\N
1123	32_alijon.jpg	56	alijon. 	\N	\N	Christopher Chin	\N
1124	33_chrisn.jpg	56	chrisn. 	\N	\N	Christopher Chin	\N
1125	34_niq.jpg	56	niq. 	\N	\N	Christopher Chin	\N
1126	36_lou.jpg	56	lou. 	\N	\N	Christopher Chin	\N
1127	37_bbq.jpg	56	bbq. 	\N	\N	Christopher Chin	\N
1128	38_davef.jpg	56	davef. 	\N	\N	Christopher Chin	\N
1129	39_frances.jpg	56	frances. 	\N	\N	Christopher Chin	\N
1130	40_meech.jpg	56	meech. 	\N	\N	Christopher Chin	\N
1131	41_unknown.jpg	56	unknown. 	\N	\N	Christopher Chin	\N
1132	42_unknown.jpg	56	unknown. 	\N	\N	Christopher Chin	\N
1133	43_yotam.jpg	56	yotam. 	\N	\N	Christopher Chin	\N
1134	44_tom.jpg	56	tom. 	\N	\N	Christopher Chin	\N
1135	45_curran.jpg	56	curran. 	\N	\N	Christopher Chin	\N
1136	46_dan.jpg	56	dan. 	\N	\N	Christopher Chin	\N
1137	47_sae.jpg	56	sae. 	\N	\N	Christopher Chin	\N
1138	48_serge.jpg	56	serge. 	\N	\N	Christopher Chin	\N
1139	49_an.jpg	56	an. 	\N	\N	Christopher Chin	\N
1140	50_tom.jpg	56	tom. 	\N	\N	Christopher Chin	\N
1141	51_yotams.jpg	56	yotams. 	\N	\N	Christopher Chin	\N
1142	53_tom.jpg	56	tom. 	\N	\N	Christopher Chin	\N
1143	54_daver.jpg	56	daver. 	\N	\N	Christopher Chin	\N
1144	55_glow.jpg	56	glow. 	\N	\N	Christopher Chin	\N
1145	56_joe.jpg	56	joe. 	\N	\N	Christopher Chin	\N
1146	58_mikef.jpg	56	mikef. 	\N	\N	Christopher Chin	\N
1147	59_shawnmdp.jpg	56	shawnmdp. 	\N	\N	Christopher Chin	\N
1148	60_alijon.jpg	56	alijon. 	\N	\N	Christopher Chin	\N
1149	61_claramdp.jpg	56	claramdp. 	\N	\N	Christopher Chin	\N
1150	62_mikeliz.jpg	56	mikeliz. 	\N	\N	Christopher Chin	\N
1151	63_donmeretal.jpg	56	donmeretal. 	\N	\N	Christopher Chin	\N
1152	64_sarafriends.jpg	56	sarafriends. 	\N	\N	Christopher Chin	\N
1153	65_mdpericandy.jpg	56	mdpericandy. 	\N	\N	Christopher Chin	\N
1154	66_nik.jpg	56	nik. 	\N	\N	Christopher Chin	\N
1155	68_andy.jpg	56	andy. 	\N	\N	Christopher Chin	\N
1156	69_meechdonmer.jpg	56	meechdonmer. 	\N	\N	Christopher Chin	\N
1157	70_razvan.jpg	56	razvan. 	\N	\N	Christopher Chin	\N
1158	71_tomserge.jpg	56	tomserge. 	\N	\N	Christopher Chin	\N
1159	72_jordantracyevan.jpg	56	jordantracyevan. 	\N	\N	Christopher Chin	\N
1160	73_meechserge.jpg	56	meechserge. 	\N	\N	Christopher Chin	\N
1161	74_evanand.jpg	56	evanand. 	\N	\N	Christopher Chin	\N
1162	75_frances.jpg	56	frances. 	\N	\N	Christopher Chin	\N
1163	76_melissa.jpg	56	melissa. 	\N	\N	Christopher Chin	\N
1164	77_kayak.jpg	56	kayak. 	\N	\N	Christopher Chin	\N
1165	78_showercap.jpg	56	showercap. 	\N	\N	Christopher Chin	\N
1166	79_melandy.jpg	56	melandy. 	\N	\N	Christopher Chin	\N
1167	80_dancers.jpg	56	dancers. 	\N	\N	Christopher Chin	\N
3736	000_0705.jpg	180	Hallway entrance - also pwned. 	\N	\N	Michael Katzourin	\N
3737	000_0706.jpg	180	All gone... 	Colin	\N	Michael Katzourin	\N
2100	DSCF0156.JPG	92	Flail and Shild. Marcus displays Techhouse superior weaponry	Marcus	2003-04-15 00:00:00	Mikka	TH porch
2493	P1010024.JPG	111	Ready to Leave. 	Melch, Clara, Jane, Mikka, Sue, Beca, Carol, Tracy	2003-09-12 00:00:00	Jon Bankard	\N
2494	P1010025.JPG	111	Okay, *now* we're ready to leave... (Carol insisted she "didn't feel the love" in the first photo)	Melch, Clara, Jane, Mikka, Sue, Beca, Carol, Tracy	2003-09-12 00:00:00	Jon Bankard	\N
2495	P1010026.JPG	111	Mikka replenishes her energy resources. 	Mikka	2003-09-12 00:00:00	Beca Erickson	\N
2496	P1010027.JPG	111	Winding Down. 	Melch, Carol	2003-09-12 00:00:00	Beca Erickson	\N
2497	P1010029.JPG	111	Sue. ...and Jane, in the background.	\N	2003-09-12 00:00:00	Beca Erickson	\N
2498	P1010030.JPG	111	Clara is Luminous. 	\N	2003-09-12 00:00:00	Beca Erickson	\N
2117	DSCF0176.JPG	92	Here they come. 	\N	2003-04-15 00:00:00	Mikka	India Point Park
2751	DSCF0049.JPG	123	DEATH! 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2752	DSCF0051.JPG	123	Erk and Laura find death amusing. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2753	DSCF0053.JPG	123	Oh-HO!  What's THIS? 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2754	DSCF0054.JPG	123	It's the original Pirate! 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2755	DSCF0056.JPG	123	Walking the PLANK! Check out another GREAT face from Jordan....	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2756	DSCF0057.JPG	123	He nears the edge... A non-member in the back is shocked at our barbarism.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2757	DSCF0058.JPG	123	And now he's gone, folks! 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2758	DSCF0060.JPG	123	Dave points something out. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2759	DSCF0061.JPG	123	Pete prepares to send his dead monitor to its doom. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2760	DSCF0062.JPG	123	But first, a eulogy. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2761	DSCF0063.JPG	123	Ngh!  It didn't break! 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2762	DSCF0065.JPG	123	Ninja Dave prepares to attack Pete's monitor. with a hockey stick - which promptly died.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2763	DSCF0069.JPG	123	Pete: It's a TANK! 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2764	DSCF0073.JPG	123	Dave makes amends with the crowbar. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2765	DSCF0074.JPG	123	The Finale. Andy readies himself to drop Big Boy.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2777	DSCF0076.JPG	123	David selects a victim for the evening's electrocution. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2780	DSCF0077.JPG	123	David set us up the pickle. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2781	DSCF0079.JPG	123	Pickle, being electrocuted. What you cannot see due to the flash is that the pickle is flickering orange.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2782	DSCF0083.JPG	123	Marcus: How about I put 10,000 volts through it? Dave: How about I cut power before you touch that thing?	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2533	Jspook030021.JPG	114	Mmm...Legs. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2534	Jspook030022.JPG	114	Blurry band. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2535	Jspook030023.JPG	114	Food. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2536	Jspook030024.JPG	114	Bird's-eye view. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2537	Jspook030025.JPG	114	Foyer action. 	\N	2003-11-01 00:00:00	Mikka	Foyer
2538	Jspook030026.JPG	114	Strongman (no, not Strongbad). 	\N	2003-11-01 00:00:00	Mikka	Foyer
2539	Jspook030027.JPG	114	Matt? 	\N	2003-11-01 00:00:00	Mikka	Foyer
2540	Jspook030031.JPG	114	Pirate and Bare-chested Wizard. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2541	Jspook030032.JPG	114	THignal. 	\N	2003-11-01 00:00:00	Mikka	Porch
2543	Jspook030035.JPG	114	French street clown harlequin. 	\N	2003-11-01 00:00:00	Mikka	Front Yard
2544	Jspook030036.JPG	114	Crowd 1. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2545	Jspook030042.JPG	114	Get ready for Mechanical Arms and plenty of rear views. 	\N	2003-11-01 00:00:00	Mikka	Chamber
2546	Jspook030043.JPG	114	Amish? 	\N	2003-11-01 00:00:00	Mikka	Lounge
2547	Jspook030044.JPG	114	Chronoxaos. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2548	Jspook030045.JPG	114	Worm's-eye view of Mech. Arms. 	\N	2003-11-01 00:00:00	Mikka	Carnegie Hall
2549	Jspook030047.JPG	114	Mechanical Arms - the whole band. 	\N	2003-11-01 00:00:00	Mikka	Sydney Opera House
2550	Jspook030050.JPG	114	Mechanical Arms - Julia, The Drummer. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2551	Jspook030051.JPG	114	Laura's sister. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2552	Jspook030052.JPG	114	Suitcase of memories... junk in the trunk. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2553	Jspook030054.JPG	114	People gyrating to Mech. Arms. 	\N	2003-11-01 00:00:00	Mikka	Boom boom room
2554	Jspook030056.JPG	114	Mechanical Arms - Alex, the singer and modulator. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2555	Jspook030057.JPG	114	The Hands of God. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2556	Jspook030060.JPG	114	Mechanical Arms - Chris, Turntablist/Sampler Extraordinaire. 	\N	2003-11-01 00:00:00	Mikka	Heaven
2557	Jspook030061.JPG	114	Mechanical Arms - Alex eating the microphone. 	\N	2003-11-01 00:00:00	Mikka	Max's Ice Cream Shoppe
2558	Jspook030062.JPG	114	Electric Corpses. 	\N	2003-11-01 00:00:00	Mikka	Ministry of Sound
2559	Jspook030064.JPG	114	Seeking waveforms from outer space. 	\N	2003-11-01 00:00:00	Mikka	Arecibo Research Center
2561	Jspook030075.JPG	114	Rob footloose again. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2244	108_0816.JPG	98	5. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2245	108_0817.JPG	98	6. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2246	108_0818.JPG	98	7. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2247	108_0819.JPG	98	8. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2248	108_0820.JPG	98	9. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2574	TH0002.JPG	114	Making Java spooky. 	\N	2003-11-01 00:00:00	\N	\N
2575	TH0003.JPG	114	The Making of Javaspook. While furniture is being moved and food is prepared (and the rest of the world is running around like it's the Second Coming)...	\N	2003-11-01 00:00:00	\N	\N
2576	TH0005.JPG	114	The Making of Javaspook. Mmm, you can almost smell them scones...	\N	2003-11-01 00:00:00	\N	\N
2577	TH0010.JPG	114	The Making of Javaspook. He's crafty (Rob embellishes Mikka's lizards)	\N	2003-11-01 00:00:00	\N	\N
2578	TH0014.JPG	114	The Making of Javaspook. Installing lizards on the ceiling	Mikka	2003-11-01 00:00:00	Tschantz	Lounge
1856	m30.jpg	80	Magic in the hallway. 	Magic Nerds	2002-09-15 00:00:00	Mikka	First Floor
1093	01_david.jpg	56	david. 	\N	\N	Christopher Chin	\N
1094	02_travis.jpg	56	travis. 	\N	\N	Christopher Chin	\N
1095	04_tracy.jpg	56	tracy. 	\N	\N	Christopher Chin	\N
2579	ninjasnite0006.jpg	114	For next year's banner: Leftover Idea 1. Blood-stirring coffee	\N	2003-11-01 00:00:00	\N	Library Whiteboard
2580	ninjasnite0007.jpg	114	Idea 2. JavaFpook	\N	2003-11-01 00:00:00	\N	Library Whiteboard
2581	ninjasnite0008.jpg	114	Idea 3. Bloodshot Pook	\N	2003-11-01 00:00:00	\N	Llibrary Whiteboard
2027	analogInners.jpg	91	Analog Synth Project. Project Insides	\N	2003-04-04 00:00:00	\N	\N
438	img_7074.jpg	23	\N	\N	2009-11-01 01:02:00	Ben Hutchison	Tech House Lounge
439	img_7075.jpg	23	\N	\N	2009-11-01 01:02:00	Ben Hutchison	Tech House Lounge
440	img_7076.jpg	23	Unawares of the dangers that lurk behind...	\N	2009-11-01 01:02:00	Ben Hutchison	Tech House Lounge
441	img_7077.jpg	23	Backstabb'dddd	\N	2009-11-01 01:03:00	Ben Hutchison	Tech House Lounge
442	img_7078.jpg	23	Live long and prosper (please don't kill me again)	\N	2009-11-01 01:03:00	Ben Hutchison	Tech House Lounge
443	img_7079.jpg	23	\N	\N	2009-11-01 01:04:00	Ben Hutchison	Tech House Lounge
444	img_7081.jpg	23	REVENGE!!!	\N	2009-11-01 01:06:00	Ben Hutchison	Tech House Lounge
445	img_7082.jpg	23	Drums	DRUMS!!	2009-11-01 01:07:00	Ben Hutchison	Tech House Lounge
446	img_7083.jpg	23	\N	\N	2009-11-01 01:08:00	Ben Hutchison	Tech House Lounge
447	img_7085.jpg	23	2 classy guys!	\N	2009-11-01 01:09:00	Ben Hutchison	Tech House Lounge
449	img_7088.jpg	23	\N	\N	2009-11-01 01:11:00	Ben Hutchison	Tech House Lounge
451	img_7090.jpg	23	\N	\N	2009-11-01 01:12:00	Ben Hutchison	Tech House Lounge
452	img_7091.jpg	23	\N	\N	2009-11-01 01:12:00	Ben Hutchison	Tech House Lounge
454	img_7093.jpg	23	\N	\N	2009-11-01 01:13:00	Ben Hutchison	Tech House Lounge
455	img_7094.jpg	23	\N	\N	2009-11-01 01:14:00	Ben Hutchison	Tech House Lounge
456	img_7095.jpg	23	\N	\N	2009-11-01 01:21:00	Ben Hutchison	Tech House Lounge
3773	IMG_1342.sm.JPG	186	Dylan schemes. 	Dylan Cheasty	\N	Brendan Hickey	TH lounge
3774	IMG_1343.sm.JPG	186	Emily drawing. 	Emily Garfield	\N	Brendan Hickey	TH lounge
3775	IMG_1344.sm.JPG	186	Hogg ruffles his upper lip. 	Alex Hogg	\N	Brendan Hickey	TH lounge
3777	IMG_1346.sm.JPG	186	Jeremy does something...? 	Jeremy Kuhn	\N	Brendan Hickey	TH lounge
3778	IMG_1347.sm.JPG	186	Abbie comments you out. 	Abbie Poppa	\N	Brendan Hickey	TH lounge
3779	IMG_1348.sm.JPG	186	Adam by surprise. 	K. Adam White	\N	Brendan Hickey	TH lounge
3780	IMG_1349.sm.JPG	186	Kenny at 6 o'clock. 	Kenny Coane	\N	Brendan Hickey	TH lounge
3781	IMG_1350.sm.JPG	186	Grillmaster Haynes posing. 	W. Haynes Heaton	\N	Brendan Hickey	TH porch
3782	IMG_1352.sm.JPG	186	Ladies! 	Maxwell "Edison" Lang	\N	Brendan Hickey	TH porch
3783	IMG_1353.sm.JPG	186	Frog can't see you. 	Matt "Frog" Cannizarro	\N	Brendan Hickey	TH porch
289	img_5486.jpg	19	Group Picture #1	\N	2008-11-17 20:25:00	Brendan Hickey	Lounge
290	img_5487.jpg	19	Group Picture #2	\N	2008-11-17 20:25:00	Brendan Hickey	Lounge
291	img_5488.jpg	19	Group Picture #3	\N	2008-11-17 20:25:00	Brendan Hickey	Lounge
292	img_5489.jpg	19	Group Picture #4	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
293	img_5490.jpg	19	Group Picture #5	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
294	img_5491.jpg	19	Sidding	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
295	img_5492.jpg	19	Sidding: Up close	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
296	img_5496.jpg	19	Serious Tech House	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
297	img_5497.jpg	19	Serious Tech House	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
298	img_5498.jpg	19	Keith Prepares	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
299	img_5499.jpg	19	Dylan: Up to Good?	\N	2008-11-17 20:26:00	Brendan Hickey	Lounge
1096	05_curran.jpg	56	curran. 	\N	\N	Christopher Chin	\N
1097	06_chrisn.jpg	56	chrisn. 	\N	\N	Christopher Chin	\N
1098	07_an.jpg	56	an. 	\N	\N	Christopher Chin	\N
1099	08_thete.jpg	56	thete. 	\N	\N	Christopher Chin	\N
1100	09_mdp.jpg	56	mdp. 	\N	\N	Christopher Chin	\N
1101	10_curshawn.jpg	56	curshawn. 	\N	\N	Christopher Chin	\N
1102	11_flower.jpg	56	flower. 	\N	\N	Christopher Chin	\N
1103	12_curbredon.jpg	56	curbredon. 	\N	\N	Christopher Chin	\N
1104	13_mdp.jpg	56	mdp. 	\N	\N	Christopher Chin	\N
1105	14_sharon.jpg	56	sharon. 	\N	\N	Christopher Chin	\N
1106	15_an.jpg	56	an. 	\N	\N	Christopher Chin	\N
1107	16_mdp.jpg	56	mdp. 	\N	\N	Christopher Chin	\N
1108	17_mdp.jpg	56	mdp. 	\N	\N	Christopher Chin	\N
1109	18_jordan.jpg	56	jordan. 	\N	\N	Christopher Chin	\N
1110	19_curran.jpg	56	curran. 	\N	\N	Christopher Chin	\N
1111	20_forgot.jpg	56	forgot. 	\N	\N	Christopher Chin	\N
1112	21_jordan.jpg	56	jordan. 	\N	\N	Christopher Chin	\N
1113	22_joe.jpg	56	joe. 	\N	\N	Christopher Chin	\N
1114	23_tracy.jpg	56	tracy. 	\N	\N	Christopher Chin	\N
1115	24_curtracy.jpg	56	curtracy. 	\N	\N	Christopher Chin	\N
436	img_7072.jpg	23	Second shift photography: Ben	Abbie, Robert	2009-11-01 01:00:00	Ben Hutchison	Tech House Lounge
437	img_7073.jpg	23	Stop right there, criminal scum!	Robert	2009-11-01 01:01:00	Ben Hutchison	Tech House Lounge
448	img_7086.jpg	23	Serious costume work went on last night.	Jon Barchi, Kenny, Robert	2009-11-01 01:10:00	Ben Hutchison	Tech House Lounge
450	img_7089.jpg	23		K. Adam White, back from the grave	2009-11-01 01:11:00	Ben Hutchison	Tech House Lounge
453	img_7092.jpg	23	I think he went that way.	Dylan, Will	2009-11-01 01:13:00	Ben Hutchison	Tech House Lounge
1480	bbq050.JPG	65	TV ate TH. All current members of techhouse are infact stuck inside this TV with room to spare.  And you thought getting 40 people into a phone booth was hard.	TV (also know as Ulix)	\N	Beca Erickson	Second TH meeting
2726	DSCF0004.JPG	123	Welcome To Drop Night. Whenever someone is in the drop area, we will yell "Car!" and when they leave the drop area, we will yell, "Game on!"	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2727	DSCF0006.JPG	123	Mikka, Nihal, Andy. Awaiting the first drop.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2728	DSCF0008.JPG	123	Evan and the first victim. We think it used to belong to Soren	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2729	DSCF0010.JPG	123	Dave gives us another view. 	Dave and Dan Erickson	2004-02-24 00:00:00	Beca Erickson	The Lobby
2730	DSCF0011.JPG	123	Now one with the screen open. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2731	DSCF0012.JPG	123	Final Moment. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2732	DSCF0013.JPG	123	And the wreckage. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2733	DSCF0014.JPG	123	Dan leans over the railing. and Jordan makes a GREAT face.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2734	DSCF0015.JPG	123	Jane prepares for destruction! 	Amanda, Carol, Jane, Mikka, Dave	2004-02-24 00:00:00	Beca Erickson	The Lobby
2735	DSCF0022.JPG	123	Jordan prepares his offering. 	Dave, Pawel, Jordan, Graham, Dan Mortenson, Dan Erickson, Marcus, David	2004-02-24 00:00:00	Beca Erickson	The Lobby
2736	DSCF0024.JPG	123	Dan prepares to drop the first monitor. 	Amanda, Carol, Dan, Jane's Orange Juice	2004-02-24 00:00:00	Beca Erickson	The Lobby
2737	DSCF0029.JPG	123	Is that a BROKEN CINDERBLOCK?!?!? Impressed looks from the peanut gallery.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2738	DSCF0026.JPG	123	It IS a broken cinderblock!!! Holy Powder, Batman!	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2739	DSCF0030.JPG	123	Marcus prepares to chuck a keyboard. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2740	DSCF0033.JPG	123	Nihal prepares to drop a fax machine. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2741	DSCF0035.JPG	123	People survey the wreckage thus far. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2742	DSCF0036.JPG	123	Take THAT, inkjet! 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2743	DSCF0037.JPG	123	Heh.  Dead things. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2744	DSCF0039.JPG	123	Amanda prepares to drop a monitor. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2745	DSCF0043.JPG	123	And the screen is unscathed! Marcus gives us a signature "I don't get it" look.  Or is that an "okay, you're making me pose with an unbroken monitor" look? I guess it doesn't really matter in the long run; Marcus makes that face a lot.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2746	DSCF0040.JPG	123	Pawel and the indestructible something. You've gotta love Pawel's shiteating grin.  If everyone grinned like Pawel, the world would be a better place.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2747	DSCF0044.JPG	123	I thought Andy was dressed appropriately. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2748	DSCF0045.JPG	123	Onlooking from behind the safety of that random window. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2749	DSCF0047.JPG	123	Jane shows off the battered laptop. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2750	DSCF0048.JPG	123	Mikka smiles for the camera. I really tried to fix the red-eye, but I just couldn't.	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2783	DSCF0084.JPG	123	Smoking Pickles in Parallel. 	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
2784	DSCF0086.JPG	123	Marcus "you can touch it; it just *hurts* a little" Samale. and his Jacob's Ladder	\N	2004-02-24 00:00:00	Beca Erickson	The Lobby
3319	IMG_0195.JPG	151	Some Socializers. 	\N	2005-02-03 00:00:00	Beca Erickson	The Lounge
3320	IMG_0202.JPG	151	S'mores. 	\N	2005-02-03 00:00:00	Beca Erickson	The Lounge
3321	IMG_0203.JPG	151	Fire. 	\N	2005-02-03 00:00:00	Beca Erickson	The Lounge
3322	IMG_0205.JPG	151	Lu and Haley. 	Lucia, Haley	2005-02-03 00:00:00	Beca Erickson	The Lounge
3341	IMG_0207.JPG	153	Haley and Sean. 	Haley Allen, Sean Smith	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3342	IMG_0209.JPG	153	Jane and Haynes. 	Jane Widness, Haynes Heaton	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3343	IMG_0214.JPG	153	Mike Pants. Courtesy of Graham	Mike Katzourin (Wolfie)	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3344	IMG_0216.JPG	153	Loot. Haley gets ready to open her new tablet.	Haley Allen	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3345	IMG_0218.JPG	153	Opening. 	Haley Allen	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3346	IMG_0221.JPG	153	Marcus Offers His Help As An Engineer. But Haley wants to read the instruction manual.	Marcus Samale, Haley Allen, Lucia Ballard	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3347	IMG_0222.JPG	153	Haynes "Hot Pocket?" Heaton. 	Haynes Heaton	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3348	IMG_0224.JPG	153	Plugging It In. 	Lucia Ballard, Haley Allen	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3349	IMG_0226.JPG	153	It's Alive! Jane looks through the instructions, Haley is delighted with the pretty highlighting, and Lucia is just amused.	Lucia Ballard, Haley Allen, Jane Widness	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3350	IMG_0229.JPG	153	OMG 6 Different Kinds of "TO DO" Lists! Haley has a moment.	Haley Allen	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3351	IMG_0231.JPG	153	Marcus Expresses His Sentiments. ...regarding the operating system.	Marcus Samale, Lucia Ballard, Haley Allen, Jane Widness	2005-02-07 00:00:00	Beca Erickson	Second Floor Hallway
3352	IMG_0236.JPG	154	Anyone for DDR? 	\N	2005-02-11 00:00:00	Beca Erickson	The Lounge
3353	IMG_0237.JPG	154	Clowning Around. 	\N	2005-02-11 00:00:00	Beca Erickson	The Lounge
3354	IMG_0242.JPG	154	DDR. 	\N	2005-02-11 00:00:00	Beca Erickson	The Lounge
3355	IMG_0247.JPG	154	Synthesis. Graham and Tara devote a little of Saturday night to creating a programming language.	Graham Rosser, Tara Olson	2005-02-12 00:00:00	Beca Erickson	Room 107
3356	IMG_0249.JPG	154	It's 1:00 AM...Do You Know Where Your Children Are? In the Lounge, watching The Exorcist	Mike Tschantz	2005-02-13 00:00:00	Beca Erickson	First Floor Hallway
3357	DSCF0292.JPG	155	The Stage Is Set. 	Haley Allen, Marcus Samale	2005-02-15 00:00:00	Beca Erickson	The Lounge
3358	DSCF0294.JPG	155	Adam Fenn. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3359	DSCF0295.JPG	155	Adam's Reading. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3360	DSCF0297.JPG	155	Marcus Accompanies. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3361	DSCF0298.JPG	155	Hep Cats Dig It. 	Michael Tschantz, Amanda Lucek	2005-02-15 00:00:00	Beca Erickson	The Lounge
3362	DSCF0302.JPG	155	Intellectual Appreciation. 	Michael Tschantz, Amanda Lucek, Adam Fenn	2005-02-15 00:00:00	Beca Erickson	The Lounge
3363	DSCF0311.JPG	155	Tschantz Regales. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3364	DSCF0312.JPG	155	Back To The Couch. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3365	DSCF0313.JPG	155	An Audience Enthralled. 	Dan Erickson, David Eigen	2005-02-15 00:00:00	Beca Erickson	The Lounge
3366	DSCF0314.JPG	155	Maxwell's Equations. 	Adam Fenn	2005-02-15 00:00:00	Beca Erickson	The Lounge
3367	DSCF0319.JPG	155	Sean Delineates Genre. 	Marcus Samale, Sean Smith	2005-02-15 00:00:00	Beca Erickson	The Lounge
3368	DSCF0323.JPG	155	Jimmy Teases The Audience. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3369	DSCF0327.JPG	155	The Queue. Sean and Jimmy arrange for the next reading while Adam beats the bucket.	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3370	DSCF0328.JPG	155	Tara Imparts Some Wisdom. 	Tara Olson	2005-02-15 00:00:00	Beca Erickson	The Lounge
3371	DSCF0331.JPG	155	Extra Creamy Ingredients. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3372	DSCF0334.JPG	155	Amanda Defies Gender Bias. with a reading on "spearm health".	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3373	DSCF0335.JPG	155	Sue Gives Us Something To Think About. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3374	DSCF0336.JPG	155	More Complicated Than One Might Think. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3375	DSCF0339.JPG	155	David Gives Us Some Equations. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3376	DSCF0341.JPG	155	Marcus Gets Down To The Foundations. 	\N	2005-02-15 00:00:00	Beca Erickson	The Lounge
3377	IMG_0250.JPG	156	Someone Promised Us Explosions. 	\N	2005-02-23 00:00:00	Beca Erickson	The Side Yard
3378	IMG_0251.JPG	156	More Onlookers. 	\N	2005-02-23 00:00:00	Beca Erickson	The Side Yard
3379	IMG_0252.JPG	156	Marcus Has Set Us Up The Bomb. 	\N	2005-02-23 00:00:00	Beca Erickson	The Side Yard
3380	IMG_0253.JPG	156	Haley. You know it's bad when Marcus says "That's a lot of thermite...."	\N	2005-02-23 00:00:00	Beca Erickson	The Side Yard
3381	IMG_0254.JPG	156	Some Materials. 	\N	2005-02-23 00:00:00	Beca Erickson	The Side Yard
3382	IMG_0256.JPG	157	Congregation. 	Adam White, Doug, Wolfie (Mike Katzourin), Joey, Adam Fenn, Graham, Amanda, Haynes, Jodie, Deigen, Scoot, Sean	2005-02-24 00:00:00	Beca Erickson	The Lobby
3383	IMG_0259.JPG	157	Amusement. 	Amanda, Haynes, Jodie, Deigen, Sean, Scoot	2005-02-24 00:00:00	Beca Erickson	The Lobby
3384	IMG_0260.JPG	157	Another View. And Sean is, as always, laughing.	\N	2005-02-24 00:00:00	Beca Erickson	The Lobby
3385	IMG_0261.JPG	157	David Argues Over Cinderblock Placement. 	\N	2005-02-24 00:00:00	Beca Erickson	The Lobby
3386	IMG_0263.JPG	157	Sean Eats His Soup. 	Sean Smith	2005-02-24 00:00:00	Beca Erickson	The Lobby
3387	IMG_0264.JPG	157	Graham Picks A Target. 	Graham, Deigen, Adam, Joey	2005-02-24 00:00:00	Beca Erickson	The Lobby
3388	IMG_0265.JPG	157	Graham Takes Aim. 	Dan, Graham, Jodie	2005-02-24 00:00:00	Beca Erickson	The Lobby
3389	IMG_0266.JPG	157	Haynes. Arranging The Now-Broken Monitor For Optimal Further Destruction	Haynes Heaton	2005-02-24 00:00:00	Beca Erickson	The Lobby
3390	IMG_0269.JPG	157	This Power Supply Won't Break. 	Haynes	2005-02-24 00:00:00	Beca Erickson	The Lobby
2562	Jspook030076.JPG	114	Sweet couple. 	\N	2003-11-01 00:00:00	Mikka	Lounge
3391	IMG_0270.JPG	157	Lucia Likes The Breaking. 	Pawel, Lucia	2005-02-24 00:00:00	Beca Erickson	The Lobby
3392	IMG_0271.JPG	157	Mmm, Destruction. 	Lucia, Wolfie (Mike Katzourin)	2005-02-24 00:00:00	Beca Erickson	The Lobby
3393	IMG_0272.JPG	157	Pawel Prepares To Launch The Big Monitor. 	Lucia, Wolfie (Mike Katzourin), Pawel, Dan, Deigen	2005-02-24 00:00:00	Beca Erickson	The Lobby
3394	IMG_0273.JPG	157	Heh. 	Lucia, Wolfie (Mike Katzourin), Pawel, Dan, Amanda	2005-02-24 00:00:00	Beca Erickson	The Lobby
3395	IMG_0275.JPG	157	Haynes Does Some More Arranging. 	Haynes Heaton	2005-02-24 00:00:00	Beca Erickson	The Lobby
3396	IMG_0276.JPG	157	Direct Hit. With A Power Supply	\N	2005-02-24 00:00:00	Beca Erickson	The Lobby
3397	IMG_0277.JPG	157	Side View Of Destruction. 	\N	2005-02-24 00:00:00	Beca Erickson	The Lobby
3398	IMG_0278.JPG	158	Adam White. Watching some DDR.	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3399	IMG_0279.JPG	158	How Adam Feels About Cameras. 	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3400	IMG_0281.JPG	158	More DDR Onlookers. 	The Headless Body of Lou, Dan Winograd-Court, Lincoln Quirk, and Someone whose name I don't know...	2005-03-04 00:00:00	Beca Erickson	The Lounge
3401	IMG_0282.JPG	158	Tara Olson. Taking a break from DDR	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3402	IMG_0283.JPG	158	Haynes. Proud of his DDRmy	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3403	IMG_0284.JPG	158	Sean. Teasing Haynes.	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3404	IMG_0288.JPG	158	Jane! 	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3405	IMG_0291.JPG	158	Lincoln Quirk. 	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3406	IMG_0299.JPG	158	Cute! Even though Jane is ill.	Pinky, Jane	2005-03-04 00:00:00	Beca Erickson	The Lounge
3407	IMG_0300.JPG	158	Take A Bite Out Of Cute? Haynes gives recruit Jim pointers on torturing Jane.	Haynes, Jim (Li-Wei) Liu	2005-03-04 00:00:00	Beca Erickson	The Lounge
3408	IMG_0305.JPG	158	Hi Beca! Somehow, in spite of all the DDR-playing, I haven't managed to take very many pictures of people actually playing DDR.	Dominic, Jane, Haynes, Tara	2005-03-04 00:00:00	Beca Erickson	The Lounge
3409	IMG_0307.JPG	158	Dominic. 	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3410	IMG_0308.JPG	158	Lucia. 	\N	2005-03-04 00:00:00	Beca Erickson	The Lounge
3411	IMG_0313.JPG	159	MTSR, Round One. That would be the Multi-Tiered Sponge Rack, for the Multi-Tiered Sponge System	\N	2005-03-05 00:00:00	Beca Erickson	The Kitchen
3412	IMG_0315.JPG	159	MTSS. An Explanation	\N	2005-03-05 00:00:00	Beca Erickson	The Kitchen
3413	IMG_0319.JPG	159	Anime Hair. You have to have anime hair to make pancakes in TH	Graham, Tara	2005-03-05 00:00:00	Beca Erickson	The Kitchen
3415	IMG_0324.JPG	159	Serge Recovers From Another Round Of Tara. Apparently, Serge can't handle Tara's terminal cuteness.	Graham, Serge	2005-03-05 00:00:00	Beca Erickson	Room 107
3416	IMG_0328.JPG	160	Alex Hogg. (That's root beer.)	\N	2005-03-06 00:00:00	Beca Erickson	The Lounge
3417	IMG_0329.JPG	160	Michael Williams. 	\N	2005-03-06 00:00:00	Beca Erickson	The Lounge
3460	IMG_0360.JPG	166	Hungry. So, uh, can we eat yet?	Dan, Joey, Adam	2005-05-08 00:00:00	Beca Erickson	The Lounge
3461	IMG_0361.JPG	166	Really, I'm hungry. Joey Brunelle	Joey, Adam	2005-05-08 00:00:00	Beca Erickson	The Lounge
3462	IMG_0362.JPG	166	Mrraow! Adam White	Adam	2005-05-08 00:00:00	Beca Erickson	The Lounge
3463	IMG_0363.JPG	166	I'm The Leprechaun! Says Haynes	Jimmy, Haynes	2005-05-08 00:00:00	Beca Erickson	The Lounge
3464	IMG_0366.JPG	166	Caught. In the Act of Eating	Tara, Graham	2005-05-08 00:00:00	Beca Erickson	The Lounge
3465	IMG_0367.JPG	166	Tara Olson and Graham Rosser. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3466	IMG_0377.JPG	166	Old And New Members. Peacefully Coexisting	Tara, Adam, Erk, Laura, David, Mike, Bright	2005-05-08 00:00:00	Beca Erickson	The Lounge
3467	IMG_0381.JPG	166	Graham. 	bits of lots of people	2005-05-08 00:00:00	Beca Erickson	The Lounge
3468	IMG_0383.JPG	166	Ack! Haley tries to undo what Marcus has done to her hair.	Marcus, Haley, Haynes, Doug	2005-05-08 00:00:00	Beca Erickson	The Lounge
3469	IMG_0384.JPG	166	Jimmy Kaplowitz. (recently shorn)	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3470	IMG_0386.JPG	166	Haley Allen. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3471	IMG_0389.JPG	166	A Little To The Right... 	Marcus, Haley	2005-05-08 00:00:00	Beca Erickson	The Lounge
3472	IMG_0390.JPG	166	Haley concedes to a "silly" picture. Probably because of Marcus's glasses.	Marcus, Haley	2005-05-08 00:00:00	Beca Erickson	The Lounge
3473	IMG_0392.JPG	166	Patrick Ramsey and Owen Strain. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3474	IMG_0393.JPG	166	Mike Thompson. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3475	IMG_0396.JPG	166	David Ellis. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3476	IMG_0399.JPG	166	SPG, Chatting With Some Young'uns. 	Jon, Sara, Jodie, Meech	2005-05-08 00:00:00	Beca Erickson	The Lounge
3477	IMG_0402.JPG	166	Brendan and Lucia Ballard. Inset: Marcus Devil and Sleeping Haley	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3478	IMG_0404.JPG	166	Lincoln Quirk. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3479	IMG_0406.JPG	166	Four Presidents. That's What They Called This Picture; Don't Blame Me.	Sean, Sean, Dave, Mike	2005-05-08 00:00:00	Beca Erickson	The Lounge
3480	IMG_0409.JPG	166	Winding Down. Less Food; More Computers	Tara, Graham, Adam	2005-05-08 00:00:00	Beca Erickson	The Lounge
3481	IMG_0411.JPG	166	Tara and Graham. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
3482	IMG_0412.JPG	166	Talking. 	Sean, Brendan, Bright, Lincoln, with Alison, Scoot, Chris, and Dave in the background	2005-05-08 00:00:00	Beca Erickson	The Lounge
3483	IMG_0414.JPG	166	Mesmerized By Technology, As Always. 	Tara, Graham, Adam, David, Dan (Diaz), Mike, Owen	2005-05-08 00:00:00	Beca Erickson	The Lounge
3484	IMG_0421.JPG	166	The Erickson Clan. 	Dan, Dave, Beca	2005-05-08 00:00:00	Beca Erickson	The Library
3485	IMG_0422.JPG	166	Tara and Graham. 	\N	2005-05-08 00:00:00	Beca Erickson	The Lounge
1515	ebbq013.JPG	65	Glass trees of techhouse... blown by our e-mail order glass blower.	Vik (super root)	\N	Meech	TH BBQ
1186	042108curranbrettdon.JPG	58	Smiling in the Sun. 	Curran Nachbar, Brett Heath-Wlaz, and Donald Engel	2001-04-21 00:00:00	Christopher Chin	The Barbecue
1187	042112curranshawn.JPG	58	Curran and Shawn. 	\N	2001-04-21 00:00:00	Christopher Chin	The Barbecue
1194	042126mikep.JPG	58	Mike Plotz. 	\N	2001-04-21 00:00:00	Christopher Chin	The Barbecue
1195	042128jordanp.JPG	58	Jordan Parker. 	\N	2001-04-21 00:00:00	Christopher Chin	The Barbecue
1197	042132meech.JPG	58	Demetrious Harrington. 	\N	2001-04-21 00:00:00	Christopher Chin	The Barbecue
1202	042142serge.JPG	58	El Presidente-Elect. Serge Garcia returns from Spring Weekend festivities.	\N	2001-04-21 00:00:00	Christopher Chin	The Barbecue
1205	042148yotamsumi.JPG	58	Cute Couple. Yotam and Sumi	\N	2001-04-21 00:00:00	Christopher Chin	The Barbecue
1218	050502joe.JPG	59	Tonight on Masterpiece Theatre... 	Joe Hasbani	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1219	050504jonalison.JPG	59	Alison and Jon. 	\N	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1220	050506jordanpfriends.JPG	59	Friends. 	Jordan Parker and friends.	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1221	050508mikef.JPG	59	Mike Fried. 	\N	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1222	050510mikefliz.JPG	59	Mike and Liz. 	\N	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1223	050512mikepclara.JPG	59	Mike and Clara. 	\N	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1224	050514mikePshawn.JPG	59	Mike and Shawn. 	\N	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1225	050516razvanjorge.JPG	59	Recruits Razvan Mirica and Jorge Munoz. 	\N	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1226	050518sergemeech.JPG	59	Meech: I must kill you. Serge: Okay.	\N	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1227	050520sergetom.JPG	59	Having a good time... 	Tom Wooldridge and Serge Garcia	2001-05-05 00:00:00	Christopher Chin	The Spring Semi-Formal
1244	051224curran.JPG	59	Go Ahead..Make My Boat. Curran goes kayaking in the lounge.	\N	2001-05-12 00:00:00	Christopher Chin	The End Of Year Dinner
1510	ebbq002.JPG	65	How's it going man? Mediocre	Andy, Tom, Chirs	\N	Meech	TH BBQ
1511	ebbq004.JPG	65	Casual Conversations. So... err...	Alex, Shawn	\N	Meech	TH BBQ
1512	ebbq009.JPG	65	Grilling like we're Texans. New grill, lot o food.	Evan, Skoot, An	\N	Meech	TH BBQ
1513	ebbq010.JPG	65	Invisible man revealed... by a sack of flour	Ghosts of TH	\N	Meech	TH Ghost summoning nite
1514	ebbq012.JPG	65	My buddy, my buddy. my buddy and me.	Joe, scott, evan, an	\N	Meech	TH BBQ
1516	ebbq014.JPG	65	MMMM. hot dogs and hamburgers	Wilbur, Wilbur, Babe, Wilbur	\N	Meech	\N
1517	ebbq020.JPG	65	Super Greg. faster than a speeding brick	Greg	\N	Meech	TH BBQ
1518	ebbq022.JPG	65	Bird's eye view. So many targets, so little fiber.	TH member #3243A, #534e, 45432	\N	Meech	TH BBQ
1519	ebbq025.JPG	65	Jay.... and Not so silent BOB	Jay, Not so silent Bob	\N	Meech	TH BBQ
1520	ebbq028.JPG	65	Oh stop  your whining, Alex.... Please chris, pretty please	Chris B, Alex, Sam	\N	Meech	TH BBQ
1521	ebbq030.JPG	65	<self titled>. <insert your comments here>	Alex, Sam, Justin	\N	Meech	TH BBQ
1752	150-5092_IMG_small.jpg	75	Sara and Liz. 	\N	2002-05-24 00:00:00	Michael Fried	Campus Dance
1757	150-5098_IMG_small.jpg	76	Mike Plotz. Juggling 5 clubs.	\N	\N	Michael Fried	Main Green, Commencement Weekend 2002
1758	151-5102_IMG_small.jpg	76	Chris Mastrangelo. 	\N	\N	Michael Fried	India Point Park, Commencement Weekend 2002
1760	151-5104_IMG_small.jpg	76	Chris, Lou, Liz, and Sara. 	\N	2002-05-26 00:00:00	Michael Fried	Waterfire
1761	151-5105_IMG_small.jpg	76	Liz and Sara. 	\N	2002-05-26 00:00:00	Michael Fried	Waterfire
1747	150-5091_IMG_small.jpg	74	Carol Martens and David Schuster. 	\N	\N	Michael Fried	Wriston, Senior Week 2002
1470	bbq037.JPG	65	Dead Sexy. Dead Sexy Dave watches Raver Chris eat his hamburger	Dave, DJ Raver Chris	\N	Clara Kim	TH Porch
1471	bbq039.JPG	65	MMM Salsa. Peter is eyeing the salsa.  Perhaps its because he may want to eat the salsa or not.	Peter	\N	Clara Kim	Bobby Su
1472	bbq040.JPG	65	From another angle. Same shot as Dead Sexy but from another angle	Dave, DJ Raver Chris	\N	Clara Kim	Bobby Su
1474	bbq042.JPG	65	Michael David Plotz. MDP	Mike	\N	Clara Kim	TH BBQ
1476	bbq044.JPG	65	Chef An. is takin orders and grillin better than George Forman himself.	An	\N	Clara Kim	\N
2068	Picture 092.jpg	91	Clips and Magazines. Our instructor, Dave, explains the difference between a magazine and a clip	\N	2003-04-13 00:00:00	David Erickson	\N
861	PC090019.JPG	46	Woz poses with TH people in the workroom (Soren too). 	\N	\N	Lou Arruda	\N
3528	CRW_1510.jpg	168	Another shot. 	Lou Arruda, Serge Garcia, Chris Nemcosky, Jason Rodriguez, Dave Erickson, Pawel Wrotek, Carol Diaz, Jon Bankard, and Rob Allen	2005-05-29 00:00:00	Lou Arruda	CIT 3rd floor
3529	CRW_1511.jpg	168	Another gathering of friends. 	Lou Arruda, Serge Garcia, Chris Nemcosky, Jason Rodriguez, Dave Erickson, Pawel Wrotek, Carol Diaz, Jon Bankard, and Rob Allen	2005-05-29 00:00:00	Lou Arruda	CIT 3rd floor
3680	01.jpg	175	Lego Night!! 	\N	2006-01-26 00:00:00	Michael Katzourin	The Lounge
3682	03.jpg	175	... & Friends!! 	Boo, Black Mage, White Mage, Bub	2006-01-26 00:00:00	Michael Katzourin	The Lounge
3686	02.jpg	175	The awesomeness of Lego Night is of Kabongian proportions. 	Warren	2006-01-26 00:00:00	Michael Katzourin	The Lounge
3747	03.jpg	182	buttons. 	\N	\N	Michael Katzourin	basement
3748	04.jpg	182	the capcom motherboard. 	your aged god	\N	Michael Katzourin	war room
3749	05.jpg	182	closeup of the motherboard. 	\N	\N	Michael Katzourin	\N
3750	06.jpg	182	the old controller. 	\N	\N	Michael Katzourin	\N
3751	07.jpg	182	Oh dear god, it's being sacrificed! 	the old controler	\N	Michael Katzourin	\N
3752	08.jpg	182	the open controller. 	\N	\N	Michael Katzourin	\N
3765	000_0648.jpg	184	making the TH logo. 	\N	\N	Michael Katzourin	\N
3766	000_0649.jpg	184	Stained wood. 	\N	\N	Michael Katzourin	\N
3767	000_0650.jpg	184	Glimpse of the bar. 	John Wayne	\N	Michael Katzourin	War Room
3768	000_0651.jpg	184	Bar up close (unfinished). 	\N	\N	Michael Katzourin	war room
3769	000_0652.jpg	184	Behind the Bar. 	The bar	\N	Michael Katzourin	war room
3770	000_0653.jpg	184	shelves go here. 	\N	\N	Michael Katzourin	\N
3771	000_0654.jpg	184	The rest of the war room. 	\N	\N	Michael Katzourin	war room (dur)
3772	000_0593.jpg	185	=D. 	everyone (not really)	\N	Michael Katzourin	war room
3726	000_0695.jpg	180	The trigger - Adam White. 	Joey's shoes	\N	Michael Katzourin	Joey's room
3727	000_0696.jpg	180	Colin continues in stead of Adam. 	Colin	\N	Michael Katzourin	Adam+Owen's room
3728	000_0697.jpg	180	Target 2 - Jimmy. 	Jimmy's door	\N	Michael Katzourin	\N
3729	000_0698.jpg	180	Target 3 - Matt. 	Matt's door	\N	Michael Katzourin	\N
3730	000_0699.jpg	180	Target 4  -Max. 	Max's door	\N	Michael Katzourin	\N
3731	000_0700.jpg	180	Target 5 - Aleks. 	Aleks's door	\N	Michael Katzourin	\N
3732	000_0701.jpg	180	Random sacrifices. 	THE spoon	\N	Michael Katzourin	\N
3733	000_0702.jpg	180	Other sacrifices. 	\N	\N	Michael Katzourin	\N
3734	000_0703.jpg	180	Taping Mike's door open. 	Colin	\N	Michael Katzourin	In Mike K's room... after leaving the door open to make sure it wouldn't be taped shut...
3735	000_0704.jpg	180	OH SHI-. 	\N	\N	Michael Katzourin	\N
1457	1Booksarrrrg.jpg	65	Books. Setting up the lib. with the skills of Dewey.	Terry, Serge	\N	Meech	\N
3547	004.jpg	171	More of the usual. 	people	2005-10-28 00:00:00	Owen Strain	The Lounge
3548	005.jpg	171	Nice hair. 	people	2005-10-28 00:00:00	Owen Strain	The Lounge
3549	006.jpg	171	Spectators. 	Aleks, Doug, Jim, Alice	2005-10-28 00:00:00	Owen Strain	The Lounge
3550	007.jpg	171	But they ought to be spectating this. 	Jane, Catherine	2005-10-28 00:00:00	Owen Strain	The Lounge
3551	008.jpg	171	Jane gives a Look. 	Jane, Catherine	2005-10-28 00:00:00	Owen Strain	The Lounge
3552	009.jpg	171	Hangin'. 	Adam Fenn, Some Guy, Joey, K. Adam, Doug	2005-10-28 00:00:00	Owen Strain	The Lounge
3553	010.jpg	171	Workin'. 	K. Adam	2005-10-28 00:00:00	Owen Strain	The Lounge
3554	011.jpg	171	Still Workin'. 	K. Adam	2005-10-28 00:00:00	Owen Strain	The Lounge
3555	012.jpg	171	I'd like to use my "call a friend" lifeline. 	K. Adam	2005-10-28 00:00:00	Owen Strain	The Lounge
3556	013.jpg	171	Back to Workin'. 	K. Adam	2005-10-28 00:00:00	Owen Strain	The Lounge
3557	014.jpg	171	It's the Peddler from "Caps for Sale"! (Doug Rapp gives us a preview of his halloween costume)	Doug Rapp	2005-10-28 00:00:00	Owen Strain	The Library
3558	015.jpg	171	Ping-Pong! 	Doug, Dee	2005-10-28 00:00:00	Owen Strain	The Lounge
3559	016.jpg	171	Volley 1. in the infamous match:  K. Adam & Alice  vs.  Jim & Roald	Aleks, Josh, Dee, K. Adam, Someone, Alice	2005-10-28 00:00:00	Owen Strain	The Lounge
3560	017.jpg	171	Volley 2. in the infamous match:  K. Adam & Alice  vs.  Jim & Roald	K. Adam, Jim, Roald	2005-10-28 00:00:00	Owen Strain	The Lounge
3561	018.jpg	171	Volley 3. in the infamous match:  K. Adam & Alice  vs.  Jim & Roald	Josh, Dee, K. Adam, Alice	2005-10-28 00:00:00	Owen Strain	The Lounge
2675	Ven0017.JPG	120	Ven Violin. 	Ven Tadipatri	2004-02-11 00:00:00	Mikka	\N
3562	019.jpg	171	Volley 4. in the infamous match:  K. Adam & Alice  vs.  Jim & Roald	Jim, Roald	2005-10-28 00:00:00	Owen Strain	The Lounge
3563	020.jpg	171	Volley 5. in the infamous match:  K. Adam & Alice  vs.  Jim & Roald	Josh, Aleks, Dee, Someone, K. Adam, Alice	2005-10-28 00:00:00	Owen Strain	The Lounge
3564	021.jpg	171	Game, Set, Match! in the infamous match:  K. Adam & Alice  vs.  Jim & Roald	Jim, Roald	2005-10-28 00:00:00	Owen Strain	The Lounge
3565	022.jpg	171	Joey gives Roald a congratulatory spin. 	K. Adam, Mike K., Roald, Joey, Haynes	2005-10-28 00:00:00	Owen Strain	The Lounge
3684	04.jpg	175	Investigating the integral stability of the Lego medium... 	The illustrious Warren Schudy	2006-01-26 00:00:00	Owen Strain	The Lounge
3685	07.jpg	175	...or perhaps just showing off. 	Warren	2006-01-26 00:00:00	Owen Strain	The Lounge
409	img_7044.jpg	23	\N	\N	2009-11-01 00:28:00	Robert Mustacchi	Tech House Lounge
413	img_7048.jpg	23	NEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRRRRDDDDDDDDDDDDDDDSSSSSSSSSSSSSSSSSSSSSSSS!!!!!!!!!!!!!!!11!	\N	2009-11-01 00:37:00	Robert Mustacchi	Tech House Lounge
414	img_7049.jpg	23	\N	\N	2009-11-01 00:38:00	Robert Mustacchi	Tech House Lounge
415	img_7050.jpg	23	\N	\N	2009-11-01 00:40:00	Robert Mustacchi	Tech House Lounge
416	img_7051.jpg	23	Which one of these is not like the other?	\N	2009-11-01 00:41:00	Robert Mustacchi	Tech House Lounge
417	img_7052.jpg	23	Which one of these doesn't belong?	\N	2009-11-01 00:41:00	Robert Mustacchi	Tech House Lounge
418	img_7053.jpg	23	\N	\N	2009-11-01 00:46:00	Robert Mustacchi	Tech House Lounge
419	img_7054.jpg	23	\N	\N	2009-11-01 00:46:00	Robert Mustacchi	Tech House Lounge
420	img_7055.jpg	23	That's Dylan Dancing	\N	2009-11-01 00:46:00	Robert Mustacchi	Tech House Lounge
421	img_7056.jpg	23	\N	\N	2009-11-01 00:46:00	Robert Mustacchi	Tech House Lounge
422	img_7057.jpg	23	I sure hope nobody walks in front of this photo	\N	2009-11-01 00:47:00	Robert Mustacchi	Tech House Lounge
423	img_7058.jpg	23	WOAHGOD	\N	2009-11-01 00:47:00	Robert Mustacchi	Tech House Lounge
424	img_7059.jpg	23	And as quickly as he appeared, he disappeared...	\N	2009-11-01 00:47:00	Robert Mustacchi	Tech House Lounge
425	img_7060.jpg	23	\N	\N	2009-11-01 00:48:00	Robert Mustacchi	Tech House Lounge
426	img_7061.jpg	23	\N	\N	2009-11-01 00:50:00	Robert Mustacchi	Tech House Lounge
427	img_7062.jpg	23	\N	\N	2009-11-01 00:50:00	Robert Mustacchi	Tech House Lounge
428	img_7063.jpg	23	\N	\N	2009-11-01 00:50:00	Robert Mustacchi	Tech House Lounge
429	img_7064.jpg	23	\N	\N	2009-11-01 00:51:00	Robert Mustacchi	Tech House Lounge
430	img_7065.jpg	23	Can you guess real hard with all your might?	\N	2009-11-01 00:55:00	Robert Mustacchi	Tech House Lounge
432	img_7068.jpg	23	For serious reals guys, get out.	\N	2009-11-01 00:57:00	Robert Mustacchi	Tech House Lounge
433	img_7069.jpg	23	\N	\N	2009-11-01 00:57:00	Robert Mustacchi	Tech House Lounge
434	img_7070.jpg	23	He lasted the whole party, that's pretty good for a red-shirt.	\N	2009-11-01 00:57:00	Robert Mustacchi	Tech House Lounge
431	img_7067.jpg	23	You don't have to go home, but you can't stay here.	A Biker Gang, Abbie, Ethan	2009-11-01 00:56:00	Robert Mustacchi	Tech House Lounge
435	img_7071.jpg	23	I can't help but notice that your shirt is red.	Crits	2009-11-01 00:58:00	Robert Mustacchi	Tech House Lounge
109	p4100131.jpg	13	\N	deigen, Evan	2004-04-10 22:21:00	Dylan Cheasty	\N
110	p5310007.jpg	14	\N	\N	2004-05-31 18:37:00	Dylan Cheasty	\N
111	p5310008.jpg	14	\N	\N	2004-05-31 18:37:00	Dylan Cheasty	\N
112	p5310009.jpg	14	\N	\N	2004-05-31 18:56:00	Dylan Cheasty	\N
113	p5310010.jpg	14	\N	\N	2004-05-31 18:58:00	Dylan Cheasty	\N
114	p5310011.jpg	14	\N	\N	2004-05-31 18:58:00	Dylan Cheasty	\N
115	p5310012.jpg	14	\N	\N	2004-05-31 18:58:00	Dylan Cheasty	\N
411	img_7046.jpg	23	\N	Mike Kossey... Ethan Cecchetti, Jimmy	2009-11-01 00:35:00	Robert Mustacchi	Tech House Lounge
116	p5310013.jpg	14	\N	\N	2004-05-31 18:58:00	Dylan Cheasty	\N
117	p5310014.jpg	14	The most epic hall party runs into Daft Punk	\N	2004-05-31 19:05:00	Dylan Cheasty	\N
118	p5310015.jpg	14	Around the World, Super Orbit Mode	\N	2004-05-31 19:05:00	Dylan Cheasty	\N
119	p5310016.jpg	14	\N	\N	2004-05-31 19:06:00	Dylan Cheasty	\N
120	p5310017.jpg	14	\N	\N	2004-05-31 19:06:00	Dylan Cheasty	\N
121	p6010018.jpg	14	\N	\N	2004-06-01 05:00:00	Dylan Cheasty	\N
122	p6010019.jpg	14	\N	\N	2004-06-01 05:00:00	Dylan Cheasty	\N
2699	DDR0026.jpg	121	DDR Night. Competition heats up... or some generic sports caption	Recruit, Recruit, Rob Allen, Recruit	2004-02-25 00:00:00	Mikka	Lounge
2700	DDR0027.jpg	121	DDR Night. Last Man Standing	Rob Allen	2004-02-25 00:00:00	Mikka	Lounge
2701	Lego0050.JPG	121	Lego Night. On-site Lighting	Recruit, Jason Li, Recruit	2004-02-19 00:00:00	Mikka	Lounge
2702	Lego0053.JPG	121	Lego Night. The Fallen	Plastic Pieces made from fallen dinosaurs	2004-02-19 00:00:00	Mikka	Lounge
2703	Oly0065.JPG	121	TH Winter Olympics. Strongman Andy at the Computer Tower Shotput event	Andy Lambe	2004-02-24 00:00:00	Mikka	Patriot's Court
2704	Oly0070.JPG	121	TH Winter Olympics. Dave at the Keyboard Discus	David Benigno Erickson	2004-02-24 00:00:00	Mikka	Patriot's Court
2249	108_0821.JPG	98	10. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2250	108_0822.JPG	98	11. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2251	108_0825.JPG	98	12. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2252	108_0828.JPG	98	13. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
1975	Baklava.jpg	88	Baklava. 	\N	\N	Mikka	\N
1976	Beans.jpg	88	Three Bean Salad. 	\N	\N	Mikka	\N
1977	Porkchop.jpg	88	Porkchops. 	\N	\N	Mikka	\N
1978	Cheezcake.jpg	88	Hari's Cheesecake with Crumbly Stuff on Top. 	\N	\N	Mikka	\N
2000	Dishes2wash.jpg	88	Kitchen upheaved. 	\N	\N	Mikka	\N
2014	RecycleLite.jpg	89	Light FX. 	\N	\N	Mikka	\N
2228	108_0832.JPG	97	In a steamy workshop where weapons are forged. ...Lou takes a breather from tooting his PVC horn.	Lou, Dylan, Marcus	\N	Mikka	Secret Place, Secret Time
2231	108_0835.JPG	97	How to make a PVC bow (as in archery). Step 1: Soften the PVC with hot water	David Reiss	\N	Mikka	Secret Place, Secret Time
2232	108_0842.JPG	97	Bending. Step 2: Shape the pipe as desired	Marcus's hands	\N	Mikka	Secret Place, Secret Time
2233	108_0838.JPG	97	Cooling. Step 3: Cool the pipe in the baptismal font	Vik, Vik, Mikka, Marcus	\N	Mikka	Secret Place, Secret Time
2235	108_0840.JPG	97	Bowmaster Flex crafts a mighty new weapon. Step 5: String the bow Attach the bow string to the other end of the bow	Marcus's legs, Vik's hands	\N	Mikka	Secret Place, Secret Time
2236	108_0843.JPG	97	Voila! A finished bow! 	Vik	\N	Mikka	Secret Place, Secret Time
2240	108_0812.JPG	98	1. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2241	108_0813.JPG	98	2. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2242	108_0814.JPG	98	3. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2243	108_0815.JPG	98	4. 	\N	2003-05-04 00:00:00	Mikka	End Of Year Dinner
2237	108_0845.JPG	97	Weaponsmiths crucify or impale themselves on crosses of plastic. 	Dylan	\N	Mikka	\N
2531	Jspook030019.JPG	114	Geckos on the ceiling. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2564	Jspook030081.JPG	114	Everyone's paired up but me. 	\N	2003-11-01 00:00:00	Mikka	Lounge
1812	m03.jpg	79	The Needethernetcable Cult annual service. 	The Cult	\N	Mikka	Corner of George and Brown Streets
1813	m04.jpg	79	Supplicants proffer sacrifice at the Altar of High-quality Blue Cables. 	Frances, Jorge, Parishioners	\N	Mikka	Corner of George and Brown Streets
1814	m05.jpg	79	Ethernet-Making "Party". 	\N	\N	Mikka	The Holy of Holies
1822	m33.jpg	79	Styrofoam Shoes. 	Adam Fenn	\N	Mikka	\N
1824	m15.jpg	79	Check out that ass(es). 	The Communal Ass (Meech, Hari, Chris Kern, Laura)	\N	Mikka	Come, join us
1828	m14.jpg	79	Loading up vehicles en route to the executioner... umm, computer recycling center. 	Tracy, Megan, Cheryl	\N	Mikka	\N
1829	m10.jpg	79	Excommunicated electronics bourne up to the hearses. 	J-Ro, Raz, Meg, Cher,Trace	\N	Mikka	\N
1830	m11.jpg	79	Our first model dons a classic button-down shirt with khakis. 	Tracy Nance	\N	Mikka	RIRRC - Recycling Center
1831	m18.jpg	79	And now we have Razvan, with a grey color-blocked fleece by North Face. 	Razvan Mirica	\N	Mikka	RIRRC - Recycling Center
1839	m13.jpg	80	Slurp! Kid tested, SPG approved.	Sara Grady	2002-09-01 00:00:00	Mikka	Porch
1852	m01.jpg	80	Cheese Doodles. 	Library	\N	Mikka	\N
1853	m04.jpg	80	Daddy comes to visit. and helps all his children strip...(PVCs)	Porch, Early September	\N	Mikka	Dylan, Soren, David Eigen, Laura
1854	m06.jpg	80	mAn Le twisting bolts. Community Service Project	An Le	\N	Mikka	International Charter School Playground, Pawtucket, RI
1859	m32.jpg	81	tuttle. Mike making his getaway after a little prank pulled on Sophia and Mikka	Mike Tschantz	\N	Mikka	2nd Floor Hallway
1872	m19.jpg	83	We're too sexy for this party, too sexy for this pa-... 	An, Dylan	\N	Mikka	The Elbow Room, Javaspook
1873	m20.jpg	83	Last-minute baking spree. Time to make the donuts	Laura, Alison, Tracy	\N	Mikka	Kitsch-en
1874	m21.jpg	83	Tres coool. 	Bouncer Eric	\N	Mikka	Entrance
1875	m12.jpg	84	Serge goes down. and enjoys it	Dave Erickson, Sergio "Pretzel Man" Garcia	\N	Mikka	3rd Floow Hallway
1876	m25.jpg	84	Buhhh-DDY! 	Alex, Shawn	\N	Mikka	Lounge, Javaspook
1877	m31.jpg	84	New piercing trend. Meech, you've got something stuck on your beard...It's your head.	Hari, Meech "Bam Bam" Harrington, and Laura "Pebbles" Brion	\N	Mikka	Lounge, End-of-Semester Dinner 2002
2145	104_0426.JPG	94	Metalhead. 	Collin, Melch	2003-04-23 00:00:00	Mikka	Library
2146	104_0440_r1.jpg	94	Double Entendre. 	Melch, Mikka	2003-04-23 00:00:00	Mikka	2nd Floor Bathroom
2147	104_0449.JPG	94	Melch bathing in the sink. 	Melch	2003-04-23 00:00:00	Mikka	\N
2148	Foil.jpg	94	While waiting for the bleach to bleach. Mikka plays with her camera: (Scrolling Left to Right) What's up? Oh no! I think there's something in my nose. Hmm, time for an archetypical glamor shot.	Mikka	2003-04-23 00:00:00	Mikka	Mikka's Room 208
2149	Bleach.jpg	94	Experimental 1: Bleached. I look like a coppertop Duracell battery	Mikka	2003-04-23 00:00:00	Mikka	\N
2151	104_0447_r1.jpg	94	Turquoise + Orange =. GREEN!	Mikka	2003-04-23 00:00:00	Mikka	\N
2152	104_0450.JPG	94	Mikka's Jaded Scalp. 	Mikka	2003-04-23 00:00:00	Mikka	\N
2154	104_0467_r1_r1.jpg	94	Hallo Torte! 	Das Karamelbonbon	2003-04-23 00:00:00	Mikka	\N
2156	104_0482.JPG	94	Serge wears Melch's slipper. 	\N	2004-04-23 00:00:00	Mikka	\N
2157	104_0483_r2.jpg	94	Claimed for Canada. Proud to Be an Imperialist	Melch, Dylan	2003-04-23 00:00:00	Mikka	\N
2159	106_0647.JPG	95	Rob rockin' out. 	\N	\N	Mikka	Lounge
2160	Group1.jpg	95	Good times had by all there. (The white dots in the photos were caused by the light reflected from the disco ball)	\N	\N	Mikka	\N
2161	104_0502.JPG	95	Dan's peculiar dance style. 	\N	\N	Mikka	\N
2162	Dylans.jpg	95	Dylan, Movement in C. Here he goes again...raving on and on about something	\N	\N	Mikka	\N
2163	105_0534.JPG	95	Just a flash (or two) in the pants. 	Chris's pants	\N	Mikka	\N
2166	105_0553.JPG	95	Headache or attitude? Winston Len	\N	\N	Mikka	\N
2167	105_0568_r1.jpg	95	Alternators. 	Melch (Melissa Chun), Len	\N	Mikka	\N
2168	105_0572_r1.jpg	95	Stepping up to the challenge. Fenn assimilating a new move while practicing liquid footwork	\N	\N	Mikka	\N
2206	107_0709.JPG	95	A llama among the edible menagerie. 	\N	\N	Mikka	\N
2211	107_0774.JPG	96	Hail, hail the gang's all here, minus Mikka. 	\N	\N	Mikka	\N
2212	107_0778.JPG	96	An intellectualizing Hooters. 	\N	\N	Mikka	\N
2213	107_0779.JPG	96	Graham giving The Look. (A bit blurry - I switched off the auto-focus)	\N	\N	Mikka	\N
2214	107_0780.JPG	96	Razvan with the Hooters bar and bar-girl in the background. 	\N	\N	Mikka	\N
2216	107_0782.JPG	96	The Blithe Len. 	\N	\N	Mikka	\N
2219	107_0789.JPG	96	At the window-side, we've got Nihal, Lou, and a quarter of Chris. 	\N	\N	Mikka	\N
2220	107_0790.JPG	96	In the hinterland, we have Len, Evan, and Nihal (again). 	\N	\N	Mikka	\N
2221	107_0788.JPG	96	Last but not least, we got part of Evan and An, Razvan, Vikram, and Len on the West End. 	\N	\N	Mikka	\N
2223	107_0793.JPG	96	Hooters' Colorful, photogenic bar. 	\N	\N	Mikka	\N
2238	108_0848.JPG	97	Sculptural exploration of Man's new weapons. 	\N	\N	Mikka	\N
2414	5.JPG	106	Squat & Pan. Note film of poolroom dust on the camera lens	Laura	\N	Mikka	\N
2415	6.JPG	106	Good Form. 	Marcus	\N	Mikka	\N
2416	7.JPG	106	Allergic Reaction. 	Laura	\N	Mikka	\N
2417	8.JPG	106	Airing Out the Armpits. 	Venkatesa Tadipatri	\N	Mikka	\N
2418	9.JPG	106	A Kinder, Warper Larper. 	Sue Brassard	\N	Mikka	\N
2419	10.JPG	106	Run! It's Big Bird Washed Out from Sesame St.! 	Beca, Mike, Chicken, Ven, Pete, Tracy	\N	Mikka	\N
2420	11.JPG	106	Clunch! 	Chris	\N	Mikka	\N
2421	12.JPG	106	Leelee F. 	\N	\N	Mikka	\N
2423	14.JPG	106	Pardon Me, Sir, You Have a Phone Call, Sir. 	Meech, Adam	\N	Mikka	\N
2424	15.JPG	106	Look What Fell Out of the Bookshelf. 	Tracy	\N	Mikka	\N
2426	17.JPG	106	Muscleman Andy, An Eagle Scout. 	Andy Lambe	\N	Mikka	\N
2427	18.JPG	106	Is There No House Without Fighting? 	Erk, Sue	\N	Mikka	\N
2428	19.JPG	106	He Nailed His Protestations Against Filth. 	\N	\N	Mikka	\N
2429	20.JPG	106	A Mystery Yet To Be Solved. 	\N	\N	Mikka	\N
2430	21.JPG	106	Fafnir Continues to Live. 	\N	\N	Mikka	\N
2431	22.JPG	106	Marcus's New Toy. 	Marcus Aurelius	\N	Mikka	\N
2432	23.JPG	106	Ahh, Nothing Like an Infrared Massager Belly Rub. 	Marcus Aurelius	\N	Mikka	\N
2433	24.JPG	106	We Whistle While We Work, doo-doo doo doo doo doo doo. 	Sean, Adam	\N	Mikka	\N
2434	25.JPG	106	Picnic Bench After Frat Boys Displaced/Damaged It. 	Bobby Sue	\N	Mikka	\N
2435	26.JPG	106	Pokey Waiting For Adoption. 	Pokey	\N	Mikka	\N
2449	Topless0005.JPG	107	Ah yes, another Topless-TH-Man sighting. 	Yeti	2003-12-18 00:00:00	Mikka	2nd Floor Hallway
2450	Topless0004.JPG	107	Bessie and Gazpacho. 	Yeti	2003-12-18 00:00:00	Mikka	2nd Floor Hallway
2451	Topless0003.JPG	107	Now meet Mr. December. 	Yeti	2003-12-18 00:00:00	Mikka	2nd Floor Hallway
2452	124_2424.JPG	107	Testing: Makeshift Monopod. not bad for a pipe	Hell's Angels	\N	Mikka	Hell's Kitchen
2453	124_2420_r1.jpg	107	Gee, I wonder what Rob's doing... oh	\N	\N	Mikka	\N
2454	Topless0001.JPG	107	Daniella Returns. 	Daniella	2003-12-19 00:00:00	Mikka	Harkness 204
2455	Door0002.JPG	107	Ninja Strike. Huh?	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2456	Door0005.JPG	107	Ninja Strike. Wuh?	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2457	Door0007.JPG	107	Ninja Strike. Ohh!	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2458	Door0011.JPG	107	Ninja Strike. One escapee	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2460	Door0013.JPG	107	Ninja Strike. Heave!	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2461	Door0015.JPG	107	Ninja Strike. 	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2462	Door0017.JPG	107	Ninja Strike. 	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2463	Door0018.JPG	107	Ninja Strike. Plan B	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2464	Door0019.JPG	107	Ninja Strike. Rob had to crawl out the doggie door in the library	The direction in which westerners read	2003-12-18 00:00:00	Mikka	Foyer
2705	Oly0076.JPG	121	TH Winter Olympics. The Executioner marks his next chop at the Keyboard Pinata (I know, I left out the tilde)	David Benigno Erickson	2004-02-24 00:00:00	Mikka	Patriot's Court
2706	Oly0083.JPG	121	TH Winter Olympics. Easter Egg Hunt - Picking up pieces of the smashed keyboard	Jason Li, Andy Lambe, False Recruit (he wound up in Games House), Dave Erickson	2004-02-24 00:00:00	Mikka	Patriot's Court
2707	Oly0086.JPG	121	TH Winter Olympics. See Strongman Andy spin Mikka at the Ballpit Gladiator Wrestling event	Andy Lambe, Mikka Pineda	2004-02-24 00:00:00	Mikka	BallPit
2709	Oly0097.JPG	121	TH Winter Olympics. The next brave contestant takes on winner	Dave Erickson, Andy Lambe	2004-02-24 00:00:00	Mikka	Ballpit
2710	Oly0100.JPG	121	TH Winter Olympics. See Strongman Andy about to squish Dave too	Dave Erickson, Andrew Lambe	2004-02-24 00:00:00	Mikka	Ballpit
2711	Techno0055.JPG	121	Techno Night. Hello, we come from L.A.	The Ericksons - Dan and Beca	2004-02-20 00:00:00	Mikka	Lounge
2712	Techno0057.JPG	121	Techno Night. Ooh, lots of shiny reflector stuff	Tschantz, Unidentified, Sweaty Graham, DJ Chronoxaos, Mixmaster Morty, Dylan Cheasty, Lucia	2004-02-20 00:00:00	Mikka	Lounge
2713	Techno0058.JPG	121	Techno Night. The Math TA and her students	Recruit, Dylan, David Eigen, Recruit, Terry, Recruit, Haley, Doug, Graham	2004-02-20 00:00:00	Mikka	Lounge
2714	Vid0018.JPG	121	Video Games Tournament. Pre-game warm-up	Just the TH-ers: Graham Rosser, Erk, Lou, Nihal, Marcus	2004-02-15 00:00:00	Mikka	Lounge
2715	Vid0024.JPG	121	Video Games Tournament. Zeke's Dreads	Zeke	2004-02-15 00:00:00	Mikka	Lounge
2669	TH0011.JPG	120	Hands of God. Thank you Meat Squisher	Dave Erickson	2004-02-01 00:00:00	Mikka	Kitchen
2670	TH0016.JPG	120	Annual Dogpile. 	Mary, Dan	2004-01-01 00:00:00	Mikka	2nd Flr Hallway
2861	dscf0035.jpg	128	Constructing a testimony to static. Ahh, more post-meeting madness. I wonder what Beca puts in those cookies...	Razvan, Erk (Eric Cohen), Scoot	2004-04-19 00:00:00	Mikka	Lounge
2862	dscf0036.jpg	128	Staticman, with his red cape. ...or Razvan's red jacket?	Razvan?, Erk	2004-04-19 00:00:00	Mikka	Lounge
2863	dscf0038.jpg	128	King Louis the XIV's obscure fetish. 	Erk, Razvan Scoot	2004-04-19 00:00:00	Mikka	Lounge
2864	dscf0041.jpg	128	How 'bout a sideshot for posterity? 	Erk, Razvan	2004-04-19 00:00:00	Mikka	Lounge
2865	dscf0175.jpg	129	Are you ready to Luau? Thanks to Lou for the Luau decorations	\N	2004-05-01 00:00:00	Mikka	Lounge
2867	4.jpg	130	Jimmy in the corner. during officer elections earlier.	Jimmy	2004-04-26 00:00:00	Mikka	Lounge corner
2869	1.jpg	130	The handoff of power from the current leadership, Dave Erickson, to the future one, Sean Smith. in a ceremony full of pomp and splendour	Dave Erickson, Rob Allen, Sean Smith, Ven Tadipatri, Jason Rodriguez	2004-04-26 00:00:00	Mikka	Lounge
2870	2.jpg	130	Behold, the power of El Kabong! Sean strikes a mighty pose as per his image consultant J-ro's suggestion	Meech, Sean Smith	2004-04-26 00:00:00	Mikka	Lounge
2871	3.jpg	130	Fear me, I am J-ro. "I nominate J-ro. Fuck you! I reject."	J-ro / J-WHOA!	2004-04-26 00:00:00	Mikka	Lounge
2872	dscf0119.jpg	130	Sean's peaceful succession is celebrated with violence. Nope, not a coup d'etat. Just violence. Pure violence. Ah, violence and celebratory coups.	Beca, Eric, Meech, Dylan, Claudia Arno, Jimmy, Sean	2004-04-26 00:00:00	Mikka	Lounge
2873	dscf0120.jpg	130	Sue gets pegged in the back. Pardon the motion blur. These people move quickly under threat of pain.	Various, Sue Brassard	2004-04-26 00:00:00	Mikka	Lounge
2874	dscf0127.jpg	130	Another scene from the celebratory coup. 	Eric, Doug, Joe	2004-04-26 00:00:00	Mikka	Lounge
2875	dscf0133.jpg	130	Yet another scene from the celebratory coup. 	Various	2004-04-26 00:00:00	Mikka	Lounge
2876	dscf0154.jpg	130	The new president joins the fray. 	Just the not-so-blurry people: Sean, Ven, Beca, Laura, Beca, David Eigen	2004-04-26 00:00:00	Mikka	Lounge
2879	dscf0084.jpg	132	PDNA. Public Displays of Nerdly Affection	Melch, Pinto, Erk, Nihal	2004-04-25 00:00:00	Mikka	Lounge
2880	dscf0082.jpg	132	Stuff yer colon! 	Clara, Erk	2004-04-25 00:00:00	Mikka	Lounge
2881	dscf0085.jpg	132	Next generation in, old generation out. At the threshold of change	Dan Erickson, Nihal Kulkarni	2004-04-25 00:00:00	Mikka	Lounge Doorway
2882	dscf0087.jpg	132	Xit. Jon's head is a xit or has a xit? What are signs telling us?	Jonathan Bankard	2004-04-25 00:00:00	Mikka	Foyer
2884	dscf0089.jpg	132	Evan's final batch of hamburgers for an official TH BBQ. 	Flesh of the fallen	2004-04-25 00:00:00	Mikka	Patio
2885	dscf0090.jpg	132	Heartache visible, Grillmaster Evan retires from his TH burger-flipping career. 	Evan Chan, he's the man	2004-04-25 00:00:00	Mikka	Patio
2887	dscf0096.jpg	132	Cookies and Pickle Juice - The NEW Cookies and Milk. "It cuts the fat? No. It just tastes good."	This hand belongs to a very sick person	2004-04-25 00:00:00	Mikka	Lounge
2120	DSCF0179.JPG	92	The Chaos of Battle. War is hell, unless you have ductape padded weapons	\N	2003-04-15 00:00:00	Mikka	India Point Park
2888	dscf0102.jpg	132	Scruffy-cum-Suave Dave. Hurry folks, shots like this won't last for long (especially since Dave's graduating)! Dave, your face(s) will be missed.	Dave Benigno Erickson	2004-04-25 00:00:00	Mikka	Lounge
2889	dscf0103.jpg	132	Jon, looking naughty or nagging? 	Jon Bankard	2004-04-25 00:00:00	Mikka	Lounge
2672	TH0030.JPG	120	Groove Session. Early jungle, funk, psytrance	Dave Erickson, Amanda, Graham Rosser, Chris Nemcosky	2004-02-11 00:00:00	Mikka	Chris's Room
2532	Jspook030020.JPG	114	Detail of wheelchair. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2673	TH0044.JPG	120	Thain't nuthin' a li'l asian can't carry. 	Clara Kim	2003-12-01 00:00:00	Mikka	Lounge
2679	TH0017.JPG	121	French and Indian Food Night. The Crepe-Making Sweatshop	Jon Bankard, Razvan Mirica, Michael Tschantz	2004-02-05 00:00:00	Mikka	Kitchen
2680	TH0019.JPG	121	French and Indian Food Night. Crepe Flipper	Razvan Mirica	2004-02-05 00:00:00	Mikka	Kitchen
2681	Bub0001.JPG	121	Bubble Pipe Night. A Period Piece	Spy, Meech, Tschantz, Phlopkins, Rob, Graham	2004-02-12 00:00:00	Mikka	Library
2682	Bub0011.JPG	121	Bubble Pipe Night. Col. Livingston arrives	Hitler, Chris Mastrangelo fresh from eye surgery, Graham	2004-02-12 00:00:00	Mikka	Library
2683	Bub0013.JPG	121	Bubble Pipe Night. A Rollicking Good Time Had By All...except Pete	Chris Nemcocksy, Pete Phlopkins, Meech, Tschantz	2004-02-12 00:00:00	Mikka	Library
2684	Bub0015.JPG	121	Bubble Pipe Night. Mike's exhortations	Chris Nemcocksy, Pete, Meech, Tschantz, Rob	2004-02-12 00:00:00	Mikka	Library
2685	Bub0027.JPG	121	Bubble Pipe Night. Recounting tales of subjugating savages, blowing up the sun, and crabs	Col. Livingston	2004-02-12 00:00:00	Mikka	Library
2686	Bub0029.JPG	121	Bubble Pipe Night. Port: brewed by savages, drunk by gentlemen	Tschantz	2004-02-12 00:00:00	Mikka	Library
2687	Bub0034.JPG	121	Bubble Pipe Night. Pensive Rob	Rob Allen	2004-02-12 00:00:00	Mikka	Library
2688	Bub0036.JPG	121	Bubble Pipe Night. Blowing each other's pipes	Chris Nemcocksy, Rob Allen	2004-02-12 00:00:00	Mikka	Library
2689	Bub0042.JPG	121	Bubble Pipe Night. Extolling the virtues of the White Man	Laura Brion, Mike Tschantz	2004-02-12 00:00:00	Mikka	Library
2690	Bub0044.JPG	121	Bubble Pipe Night. Gentlemen's Club of TechHouse	Justin Jordan Parker, Demetrious Mark Harrington, Michael Tschantz, Christopher Mastrangelo, Robert Allen, Graham Rosser, Venkatesa Tadipatri	2004-02-12 00:00:00	Mikka	Library
3258	THugs0001.JPG	145	THugs. THuggin' it up	Smithy 'n' GrahaMaster T	\N	Mikka	their crib, yo
2565	Jspook030083.JPG	114	Meow, Melch. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2566	Jspook030084.JPG	114	Schmoozing and losing and acting so cool. 	\N	2003-11-01 00:00:00	Mikka	Lounge
2567	Jspook030087.JPG	114	The Architect of Javaspook. 	\N	2003-11-01 00:00:00	Mikka	Swivel Chair
2570	Jspook030091.JPG	114	West Side Storyteller. 	\N	2003-11-01 00:00:00	Mikka	Porch
2568	Jspook030088.JPG	114	Klez infects us all. Coffee Mug's View of Yarmulkazi	\N	2003-11-01 00:00:00	Mikka	\N
2563	Jspook030077.JPG	114	Kick-Ass Jazz Band. Couldn't stop movin' my feet	\N	2003-11-01 00:00:00	Mikka	\N
2542	Jspook030033.JPG	114	Lady vs. Ninja. (Blurry)	\N	2003-11-01 00:00:00	Mikka	\N
2569	Jspook030089.JPG	114	Anyone know any Jewish or Yiddish dances? 	\N	2003-11-01 00:00:00	Mikka	Lounge
2571	Jspook030092.JPG	114	Pumpkins screaming for better captions. 	\N	2003-11-01 00:00:00	Mikka	BobbySue
2572	Jspook030095.JPG	114	The Macabre. 	\N	2003-11-01 00:00:00	Mikka	Porch
2573	Jspook030096.JPG	114	Setting Up or Setting Down? Sunrise or Sunset?	\N	2003-11-01 00:00:00	Mikka	\N
2101	DSCF0157.JPG	92	Kite Shield. Marcus needs a logo for his shield	Marcus	2003-04-15 00:00:00	Mikka	TH porch
2102	DSCF0159.JPG	92	Formation. Eric drills the troops	David,Eric,Scoot,Jodie,Evan,Graham,Sue	2003-04-15 00:00:00	Mikka	TH porch
2103	DSCF0161.JPG	92	Fearless Leader. Dylan wears the Techhouse war banner	Marcus, Dylan	2003-04-15 00:00:00	Mikka	TH porch
2104	DSCF0162.JPG	92	Present. President Dave steps in to organize the troops	Daid,Graham,Evan,Scoot,Sue,Jodie,Dave,Eric,David	2003-04-15 00:00:00	Mikka	TH porch
2105	DSCF0163.JPG	92	Discipline. Alright you Apes, form up! Our irrgulars watch on	Cleric Rob, Marcus, Dylan, Troops	2003-04-15 00:00:00	Mikka	TH porch
2106	DSCF0164.JPG	92	In Step. The troops march in step, they are happy, but where are they going?	Fearless Leader, Cleric, Marcus, Troops	2003-04-15 00:00:00	Mikka	TH porch
2107	DSCF0165.JPG	92	You need more training. Dave instructs the troops in the art of war.	Melch, Doug, Dave, Troops, Leader, Laura, Christian, Marcus	2003-04-15 00:00:00	Mikka	TH porch
2108	DSCF0166.JPG	92	Is the GradCenter our target? No, if we wanted that we would have moved out of house.	Fearless Leader, Cleric, Blade Master Eric, Troops	2003-04-15 00:00:00	Mikka	Thayer Street
2109	DSCF0167.JPG	92	Marching Order. Dylan receives our spy report. The target is in place.  We have the element of surprise.	Fearless Leader Dylan, Unit head scratcher Evan Chan, troops	2003-04-15 00:00:00	Mikka	Power Street
2110	DSCF0168.JPG	92	Marching Order. Marcus Brings up the rear, in case our security was comprimised.	Nihal, Doug, Graham, David, David, Christian, Marcus	2003-04-15 00:00:00	Mikka	Power Street
2112	DSCF0169.JPG	92	Their Hero. FGS's leader is awe struck by our disciplined and ninja like troops	Paul Friedman	2003-04-15 00:00:00	Mikka	India Point Park
2113	DSCF0170.JPG	92	The battle in near. Techhouse Ninja forces march on to glory and victory	Christian, anonymous ninja troops, Fearless Leader	2003-04-15 00:00:00	Mikka	India Point Park
2111	DSCF0171.JPG	92	Target Sighted!!! Fantasy Gaming Society doesn't stand a chance.	Techhouse marching down the hill, scattered FGS'ers	2003-04-15 00:00:00	Mikka	India Point Park
2114	DSCF0172.JPG	92	FGS rallies. Notice our spy on the right packing up her cell phone	FGS, Ninja Spy Marsha	2003-04-15 00:00:00	Mikka	India Point Park
2115	DSCF0173.JPG	92	To victory. Techhouse Ninjas parade to shake the enemies resolve	Anonymous Ninja Troops	2003-04-15 00:00:00	Mikka	India Point Park
2116	DSCF0174.JPG	92	Spy returns home. Ninja Spy Marsha returns to her own kind after being wounded by the enemies Bearded One	Matt Weber, Marsha	2003-04-15 00:00:00	Mikka	India Point Park
2118	DSCF0177.JPG	92	Charge. Fearless Leader leads our offensive, note our irregulars attempting a flanking move	\N	2003-04-15 00:00:00	Mikka	India Point Park
2119	DSCF0178.JPG	92	The Battle Begins. Without rules techhouse has an immediate advantage	FGS,Techhouse	2003-04-15 00:00:00	Mikka	India Point Park
3255	TH0003.JPG	145	Tasted to Comply. 	\N	\N	Mikka	\N
3256	TH0004.JPG	145	Batman. 	\N	\N	Mikka	\N
3257	TH0005.JPG	145	Tasted to Comply. 	\N	\N	Mikka	\N
3254	TH0002.JPG	145	Tasted to Comply. 	\N	\N	Mikka	\N
2121	DSCF0180.JPG	92	Heroes clash. Blademaster Eric faces off agianst their leader	Paul, Eric	2003-04-15 00:00:00	Mikka	India Point Park
2122	DSCF0181.JPG	92	Reinforcements. The cameraman directs some help for Ninja Marcus	Random kid, David, Marcus, FGS girl with cool sword,Nihal,Paul	2003-04-15 00:00:00	Mikka	India Point Park
2123	DSCF0182.JPG	92	Enemy looks confused. Cut off from his friends the Bearded one is taken aback by FGS's loss of numbers	Matt Webber	2003-04-15 00:00:00	Mikka	India Point Park
2124	DSCF0183.JPG	92	Regroup! Techhouse reforms to mop up the remainders	\N	2003-04-15 00:00:00	Mikka	India Point Park
2125	DSCF0185.JPG	92	Leaders Conference. Fearless Leader Dylan and Paul work out rules.  Hah! Silly LARPers, they want rules.  Don't they know who they are fighting?	\N	2003-04-15 00:00:00	Mikka	India Point Park
2126	DSCF0186.JPG	92	Conference. Ninja Leader refuses FGS's terms.	Dylan, Paul	2003-04-15 00:00:00	Mikka	India Point Park
2127	DSCF0187.JPG	92	Ready for the second wave. Not deterred by their first failure FGS refuses to surrender; Dylan instructs the ninjas on Techhouse Fighting Spirit (5 hits you're dead)	\N	2003-04-15 00:00:00	Mikka	India Point Park
2128	DSCF0188.JPG	92	Ninja Flail. Marcus Using the ball and chain attack	Marcus	2003-04-15 00:00:00	Mikka	India Point Park
2129	DSCF0189.JPG	92	Second wave. Eric lends our spy a blade and switches to his doule-sword	Eric, Killed FGSers, Remaining FGSers,Marsha	2003-04-15 00:00:00	Mikka	India Point Park
2130	DSCF0190.JPG	92	A Challenge. Defeated by our numbers and organization the FGSers call for a challenge battle of heroes	Dylan, Dave, Troops, Paul	2003-04-15 00:00:00	Mikka	India Point Park
2131	DSCF0191.JPG	92	One on One. Fearless leader attacks Brown's Saber Nationalist Fencer and Games House President, Paul Friedman	\N	2003-04-15 00:00:00	Mikka	India Point Park
2132	DSCF0192.JPG	92	A proper Duel. Cleric Rob fights the Bearded One	Matt Weber, Ninja Cleric Rob	2003-04-15 00:00:00	Mikka	India Point Park
2133	DSCF0193.JPG	92	Clubbed. The Bearded one takes a nasty blow from Cleric Rob's Mace	\N	2003-04-15 00:00:00	Mikka	India Point Park
2134	DSCF0194.JPG	92	Superior Arms. Dave takes a fighting stance against the enemy	\N	2003-04-15 00:00:00	Mikka	India Point Park
2135	DSCF0195.JPG	92	Dave vs The Bearded one. Fool does he not know Dave is a Troll Slayer and can defeat even the bearded hero!	Dave, Matt Webber	2003-04-15 00:00:00	Mikka	India Point Park
2136	DSCF0196.JPG	92	Techhouse Standard Issue. Doug has crazy range with a Techhouse built boffer spear	Hopelessly outranged FGS member, Ninja Doug	2003-04-15 00:00:00	Mikka	India Point Park
2137	DSCF0197.JPG	92	Vincent vs Graham. Vincent was just a cool guy in the park who challenged lots of us.  Here Graham shows him what Techhouse Ductape is made of	Vincent, Graham	2003-04-15 00:00:00	Mikka	India Point Park
2138	DSCF0198.JPG	92	Action Shot. Blademaster Eric runs to where the action is	Nihal, Eric, Scoot, Marcus	2003-04-15 00:00:00	Mikka	India Point Park
2139	DSCF0199.JPG	92	Victoly! Doug basks in the post-battle wind.  Project glory is complete.  The troops can return home victorious.	Doug and his trusty spear	2003-04-15 00:00:00	Mikka	India Point Park
1927	DSCF0001.jpg	86	\N	\N	\N	\N	\N
1928	DSCF0002.jpg	86	\N	\N	\N	\N	\N
1929	DSCF0003.jpg	86	\N	\N	\N	\N	\N
1930	DSCF0004.jpg	86	\N	\N	\N	\N	\N
1931	DSCF0005.jpg	86	\N	\N	\N	\N	\N
1932	DSCF0010.jpg	86	\N	\N	\N	\N	\N
1933	DSCF0011.jpg	86	\N	\N	\N	\N	\N
1934	DSCF0012.jpg	86	\N	\N	\N	\N	\N
1935	DSCF0013.jpg	86	\N	\N	\N	\N	\N
1936	DSCF0014.jpg	86	\N	\N	\N	\N	\N
1937	DSCF0018.jpg	86	\N	\N	\N	\N	\N
1938	DSCF0019.jpg	86	\N	\N	\N	\N	\N
1939	DSCF0020.jpg	86	\N	\N	\N	\N	\N
1940	DSCF0021.jpg	86	\N	\N	\N	\N	\N
1941	DSCF0022.jpg	86	\N	\N	\N	\N	\N
1942	DSCF0025.jpg	86	\N	\N	\N	\N	\N
1943	DSCF0026.jpg	86	\N	\N	\N	\N	\N
1944	DSCF0027.jpg	86	\N	\N	\N	\N	\N
1945	DSCF0028.jpg	86	\N	\N	\N	\N	\N
1946	DSCF0006.jpg	87	\N	\N	\N	\N	\N
1947	DSCF0008.jpg	87	\N	\N	\N	\N	\N
1948	DSCF0009.jpg	87	\N	\N	\N	\N	\N
1949	DSCF0015.jpg	87	\N	\N	\N	\N	\N
1950	DSCF0017.jpg	87	\N	\N	\N	\N	\N
1951	DSCF0029.jpg	87	\N	\N	\N	\N	\N
1952	DSCF0030.jpg	87	\N	\N	\N	\N	\N
1953	DSCF0031.jpg	87	\N	\N	\N	\N	\N
1954	DSCF0032.jpg	87	\N	\N	\N	\N	\N
1955	DSCF0033.jpg	87	\N	\N	\N	\N	\N
1956	DSCF0034.jpg	87	\N	\N	\N	\N	\N
1957	DSCF0035.jpg	87	\N	\N	\N	\N	\N
1958	DSCF0036.jpg	87	\N	\N	\N	\N	\N
1959	DSCF0037.jpg	87	\N	\N	\N	\N	\N
1960	DSCF0038.jpg	87	\N	\N	\N	\N	\N
1961	DSCF0039.jpg	87	\N	\N	\N	\N	\N
1962	DSCF0040.jpg	87	\N	\N	\N	\N	\N
3795	PA280006.JPG	39	Inside Nik's room	\N	\N	\N	his 2nd floor room junior year
3253	TH0001.JPG	145	Tasted to Comply. 	\N	\N	Mikka	\N
699	PA280011.JPG	39	Chuckie & the webcam, on top of Don's speaker	Chuckie the woodchuck!	\N	\N	\N
382	img_7016.jpg	23		Blanche, Dylan, Josh	2009-11-01 00:36:00	Robert Mustacchi	Tech House Lounge
539	DSC02547.jpg	29	Adam Pantel	as the Flying Spaghetti Monster	2007-10-27 23:45:00	Kenny Coane	Lounge
3835	IMG_5767.jpg	190	That's a drunk Jason Lee	\N	2008-02-09 10:49:49	Mat Coughlin	War Room
2638	PB020075.JPG	115	And now one especially for Soren: Special Agent Ryan reports his mission to corrupt the next generation of Techhouse a total success.	Sean, Dave, Ryan, Chris Nemcosky	2003-11-02 00:00:00	Beca Erickson	Lounge
2560	Jspook030068.JPG	114	Technics, only the best. 	people	2003-11-01 01:00:00	Mikka	Lounge
3841	100_2431.JPG	192	\N	\N	2010-05-03 16:53:59	Ben	Charlesfield St.
3842	100_2432.JPG	192	\N	\N	2010-05-03 16:55:17	Ben	Charlesfield St.
3840	100_2430.JPG	192	Off they go	\N	2010-05-03 16:53:48	Ben	Charlesfield St.
3843	100_2433.JPG	192	\N	\N	2010-05-03 16:55:24	Ben	Charlesfield St.
3845	100_2435.JPG	192	\N	\N	2010-05-03 16:55:40	Ben	Charlesfield St.
3846	100_2436.JPG	192	\N	\N	2010-05-03 16:55:52	Ben	Charlesfield St.
3844	100_2434.JPG	192	They were never heard from again.	\N	2010-05-03 16:55:31	Ben	Charlesfield St.
3836	100_2426.JPG	192	Looks like an initiation	Hostages	2010-05-03 16:52:40	Ben	Charlesfield St.
3837	100_2427.JPG	192	They all piled out of minivans, usually with the handler yelling at them.	\N	2010-05-03 16:53:07	Ben	Charlesfield St.
3800	IMG_5643.jpg	190	\N	\N	2008-02-09 08:34:23	Mat Coughlin	War Room
3801	IMG_5645.jpg	190	\N	\N	2008-02-09 08:37:38	Mat Coughlin	War Room
3802	IMG_5646.jpg	190	\N	\N	2008-02-09 08:38:03	Mat Coughlin	War Room
3803	IMG_5649.jpg	190	\N	\N	2008-02-09 08:48:05	Mat Coughlin	War Room
3804	IMG_5651.jpg	190	\N	\N	2008-02-09 08:48:50	Mat Coughlin	War Room
3805	IMG_5652.jpg	190	\N	\N	2008-02-09 08:49:19	Mat Coughlin	War Room
3806	IMG_5655.jpg	190	\N	\N	2008-02-09 08:52:43	Mat Coughlin	War Room
3807	IMG_5656.jpg	190	\N	\N	2008-02-09 09:01:18	Mat Coughlin	War Room
3808	IMG_5662.jpg	190	\N	\N	2008-02-09 09:02:53	Mat Coughlin	War Room
3809	IMG_5663.jpg	190	\N	\N	2008-02-09 09:03:05	Mat Coughlin	War Room
3810	IMG_5665.jpg	190	\N	\N	2008-02-09 09:03:22	Mat Coughlin	War Room
3811	IMG_5667.jpg	190	\N	\N	2008-02-09 09:03:24	Mat Coughlin	War Room
3812	IMG_5669.jpg	190	\N	\N	2008-02-09 09:05:02	Mat Coughlin	War Room
3813	IMG_5671.jpg	190	\N	\N	2008-02-09 09:05:20	Mat Coughlin	War Room
3814	IMG_5675.jpg	190	\N	\N	2008-02-09 09:10:32	Mat Coughlin	War Room
3815	IMG_5686.jpg	190	\N	\N	2008-02-09 09:13:01	Mat Coughlin	War Room
3816	IMG_5687.jpg	190	\N	\N	2008-02-09 09:13:06	Mat Coughlin	War Room
3817	IMG_5701.jpg	190	\N	\N	2008-02-09 09:17:34	Mat Coughlin	War Room
3818	IMG_5702.jpg	190	\N	\N	2008-02-09 09:17:44	Mat Coughlin	War Room
3819	IMG_5704.jpg	190	\N	\N	2008-02-09 09:18:11	Mat Coughlin	War Room
3820	IMG_5705.jpg	190	\N	\N	2008-02-09 09:18:22	Mat Coughlin	War Room
3821	IMG_5706.jpg	190	\N	\N	2008-02-09 09:21:56	Mat Coughlin	War Room
3822	IMG_5709.jpg	190	\N	\N	2008-02-09 09:22:30	Mat Coughlin	War Room
3823	IMG_5715.jpg	190	\N	\N	2008-02-09 09:23:38	Mat Coughlin	War Room
3824	IMG_5724.jpg	190	\N	\N	2008-02-09 09:37:44	Mat Coughlin	War Room
3825	IMG_5729.jpg	190	\N	\N	2008-02-09 09:39:30	Mat Coughlin	War Room
3826	IMG_5730.jpg	190	\N	\N	2008-02-09 09:39:38	Mat Coughlin	War Room
3827	IMG_5731.jpg	190	\N	\N	2008-02-09 09:39:48	Mat Coughlin	War Room
3828	IMG_5732.jpg	190	\N	\N	2008-02-09 09:39:55	Mat Coughlin	War Room
3829	IMG_5737.jpg	190	\N	\N	2008-02-09 09:43:24	Mat Coughlin	War Room
3830	IMG_5741.jpg	190	\N	\N	2008-02-09 09:44:37	Mat Coughlin	War Room
3831	IMG_5742.jpg	190	\N	\N	2008-02-09 09:44:52	Mat Coughlin	War Room
3832	IMG_5746.jpg	190	\N	\N	2008-02-09 09:47:07	Mat Coughlin	War Room
3833	IMG_5762.jpg	190	\N	\N	2008-02-09 09:52:50	Mat Coughlin	War Room
3834	IMG_5764.jpg	190	\N	\N	2008-02-09 09:53:24	Mat Coughlin	War Room
3838	100_2428.JPG	192	Blindfolded and lost.	\N	2010-05-03 16:53:17	Ben	Charlesfield St.
3839	100_2429.JPG	192	I should have yelled to them "You're right next to the Grad Center and Harkness!"	\N	2010-05-03 16:53:30	Ben	Charlesfield St.
3852	100_2251.JPG	193	\N	\N	2010-01-26 21:06:41	Ben	War Room
3853	100_2252.JPG	193	\N	\N	2010-01-26 21:07:04	Ben	War Room
3854	100_2254.JPG	193	\N	\N	2010-01-26 21:08:13	Ben	War Room
3855	100_2255.JPG	193	I have an eeePC	Robert, Abbie	2010-01-26 21:09:02	Ben	War Room
3856	100_2257.JPG	193	Thesis work	Robert, Abbie	2010-01-26 21:09:45	Ben	War Room
3857	100_2258.JPG	193	I'm just gonna pull this as hard as I can...	Will	2010-01-26 21:10:20	Ben	War Room
3858	100_2259.JPG	193	Shiny new guts	\N	2010-01-26 21:10:51	Ben	War Room
3859	100_2260.JPG	193	Good lord it's a BIOS	Kenny, Will	2010-01-27 21:47:50	Ben	War Room
3860	100_2261.JPG	193	Check this shit out!!	Will, Kenny	2010-01-27 21:48:13	Ben	War Room
3848	100_2247.JPG	193	I am fiddling with something!	Will "Fiddly" Vinci	2010-01-26 17:36:48	Ben	War Room
3849	100_2248.JPG	193	As am I	Jeffrey "Fiddly" Pfau	2010-01-26 17:36:58	Ben	War Room
3850	100_2249.JPG	193	Crazy wiring!	Will	2010-01-26 21:06:08	Ben	War Room
3847	100_2246.JPG	193	Considering building an Arcade Machine	\N	2010-01-26 17:36:09	Ben	War Room
3878	100_2277.JPG	194	\N	\N	2010-02-02 20:41:21	Ben	Lounge
3879	100_2278.JPG	194	\N	\N	2010-02-02 20:41:29	Ben	Lounge
3880	100_2279.JPG	194	\N	\N	2010-02-02 20:42:03	Ben	Lounge
3885	100_2284.JPG	194	\N	\N	2010-02-02 20:44:26	Ben	Lounge
3875	100_2274.JPG	194	Food	\N	2010-02-02 20:39:57	Ben	Lounge
3876	100_2275.JPG	194	This guy is not participating	Jon Silverman	2010-02-02 20:40:46	Ben	Lounge
3877	100_2276.JPG	194	Tons of people	\N	2010-02-02 20:41:13	Ben	Lounge
3881	100_2280.JPG	194	\N	Adam Pantel, Tom Lawler	2010-02-02 20:43:21	Ben	Lounge
3882	100_2281.JPG	194	This is... something	Tom	2010-02-02 20:43:38	Ben	Lounge
3883	100_2282.JPG	194	\N	John Hawley	2010-02-02 20:43:54	Ben	Lounge
3884	100_2283.JPG	194	\N	Tom, Kenny	2010-02-02 20:44:18	Ben	Lounge
3886	100_2285.JPG	194	\N	Jeffrey Pfau, Jon Silverman	2010-02-02 20:46:04	Ben	Lounge
3905	100_2352.JPG	198	Let me tell you how it is...	Kenny Coane, Jon Silverman, Jeffery Pfau	2010-03-24 15:11:01	Ben	Paul's off-campus house
3889	100_2422.JPG	195	\N	\N	2010-04-11 21:48:14	Ben	Harkness Floor 2
3890	100_2423.JPG	195	\N	\N	2010-04-11 21:48:25	Ben	Harkness Floor 2
3891	100_2424.JPG	195	\N	\N	2010-04-11 21:48:36	Ben	Harkness Floor 2
3892	100_2425.JPG	195	\N	\N	2010-04-11 21:49:39	Ben	Harkness Floor 2
3894	100_2438.JPG	196	\N	Allan Stewart, Sam Scudder, Jon Silverman, Paul Meier, Robert Mustacchi, Nathan Partlan	2010-05-08 02:12:30	Ben	Lounge
3888	100_2421.JPG	195	We have constructed a bridge out of all the shit that was abandoned in the hallway.	Tom Lawler, Benedict Landgren Mills	2010-04-11 21:48:05	Ben	Harkness Floor 2
3893	100_2437.JPG	196	Left 4 Dead 2	Allan Stewart, Sam Scudder, Jon Silverman, Paul Meier, Robert Mustacchi, Nathan Partlan	2010-05-08 02:12:16	Ben	Lounge
3896	100_2440.JPG	196	\N	Allan Stewart, Sam Scudder, Jon Silverman, Paul Meier, Robert Mustacchi, Nathan Partlan, Kenny Coane, Jeffrey Pfau	2010-05-08 02:12:00	Ben	Lounge
3900	100_2314.JPG	197	\N	\N	2010-02-26 15:11:03	Ben	War Room
3897	100_2311.JPG	197	Good lord it's a Sony Bravia	\N	2010-02-26 15:10:25	Ben	War Room
3898	100_2312.JPG	197	We are watching Jon Silverman's DVD of Planet Earth. Very cool	Kenny	2010-02-26 15:10:34	Ben	War Room
3899	100_2313.JPG	197	By the way we also bought a new couch.	Jon Silverman, Robert Mustacchi, Abbie Popa	2010-02-26 15:10:49	Ben	War Room
3902	100_2349.JPG	198	These two guys	Kenny Coane, Jon Silverman	2010-03-24 15:09:57	Ben	Paul's off-campus house
3903	100_2350.JPG	198	Paul hosted a barbeque in his backyard	Paul, Kenny, Jon Silverman, Jeffrey Pfau	2010-03-24 15:10:34	Ben	Paul's off-campus house
3887	100_2273.JPG	194	A roaring fire	Fire!	2010-02-02 20:39:39	Ben	Lounge
3907	100_2354.JPG	198	Everything you could ever want out of a barbeque	Hot dogs, and also condiments	2010-03-24 15:11:53	Ben	Paul's off-campus house
3904	100_2351.JPG	198	\N	Paul, Kenny, Jon Silverman, Jeffrey Pfau	2010-03-24 15:10:47	Ben	Paul's off-campus house
3910	100_2357.JPG	198	Gotcha	Paul McCann	2010-03-24 15:49:37	Ben	Paul's off-campus house
3909	100_2356.JPG	198	I have found you! You can't run!	Paul "Psycho Killer" O'Leary McCann	2010-03-24 15:49:29	Ben	Paul's off-campus house
3911	100_2358.JPG	198	\N	Keith Monach	2010-03-24 16:02:49	Ben	Paul's off-campus house
3912	100_2359.JPG	198	\N	Jeffrey Pfau	2010-03-24 16:03:18	Ben	Paul's off-campus house
3913	100_2360.JPG	198	\N	Jeffrey Pfau	2010-03-24 16:03:26	Ben	Paul's off-campus house
3914	100_2265.JPG	199	Program House fair	Mike Kossey, Kenny Coane, Abbie Popa, Sam Scudder	2010-01-28 19:06:30	Ben	Salomon
3915	100_2266.JPG	199	Making chain mail	Nathan Partlan, Benedict Landgren Mills	2010-01-28 19:07:17	Ben	Salomon
3916	100_2267.JPG	199	This attracted a lot of attention	Nathan, Benedict	2010-01-28 19:07:31	Ben	Salomon
3917	100_2268.JPG	199	Representing	Mike, Kenny	2010-01-28 19:07:43	Ben	Salomon
3918	100_2269.JPG	199	Dual laptops	Mike, Kenny, Abbie, Sam	2010-01-28 19:08:11	Ben	Salomon
3919	100_2270.JPG	199	He's convinced	Mike, Kenny, Abbie, Sam, NASA	2010-01-28 19:08:33	Ben	Salomon
3920	100_2271.JPG	199	We can offer you friendship and hammers	\N	2010-01-28 19:08:51	Ben	Salomon
3921	100_2286.JPG	199	Tech House, hell yeah	Kenny, Abbie, Mike	2010-02-09 19:28:49	Ben	Andrew's Dining Hall
3925	100_2290.JPG	200	\N	\N	2010-02-13 18:18:10	Ben	OMAC Ice Rink
3926	100_2291.JPG	200	\N	\N	2010-02-13 18:18:26	Ben	OMAC Ice Rink
3930	100_2295.JPG	200	\N	\N	2010-02-13 18:19:10	Ben	OMAC Ice Rink
3931	100_2296.JPG	200	\N	\N	2010-02-13 18:19:24	Ben	OMAC Ice Rink
3932	100_2297.JPG	200	\N	\N	2010-02-13 18:19:42	Ben	OMAC Ice Rink
3933	100_2298.JPG	200	\N	\N	2010-02-13 18:19:56	Ben	OMAC Ice Rink
3934	100_2299.JPG	200	\N	\N	2010-02-13 18:20:24	Ben	OMAC Ice Rink
3937	100_2302.JPG	200	\N	\N	2010-02-13 18:20:46	Ben	OMAC Ice Rink
3938	100_2303.JPG	200	\N	\N	2010-02-13 18:21:04	Ben	OMAC Ice Rink
3939	100_2304.JPG	200	\N	\N	2010-02-13 18:21:09	Ben	OMAC Ice Rink
3940	100_2305.JPG	200	\N	\N	2010-02-13 18:21:38	Ben	OMAC Ice Rink
3922	100_2287.JPG	200	Zamboni! Go go go!	Guy with an awesome job	2010-02-13 17:25:40	Ben	OMAC Ice Rink
3935	100_2300.JPG	200	\N	Robert Mustacchi	2010-02-13 18:20:30	Ben	OMAC Ice Rink
3924	100_2289.JPG	200	On the ice	\N	2010-02-13 18:17:51	Ben	OMAC Ice Rink
3927	100_2292.JPG	200	\N	Mike Feldman	2010-02-13 18:18:35	Ben	OMAC Ice Rink
3928	100_2293.JPG	200	\N	Sam Scudder	2010-02-13 18:18:46	Ben	OMAC Ice Rink
3929	100_2294.JPG	200	\N	Robert Mustacchi	2010-02-13 18:18:53	Ben	OMAC Ice Rink
3936	100_2301.JPG	200	\N	Samantha Scudder	2010-02-13 18:20:35	Ben	OMAC Ice Rink
3901	100_2348.JPG	198	Power duo	Kenny Coane, Jon Silverman	2010-03-24 15:09:39	Ben	Paul's off-campus house
3906	100_2353.JPG	198	\N	Kenny Coane, Jon Silverman, Jeffery Pfau	2010-03-24 15:11:06	Ben	Paul's off-campus house
3908	100_2355.JPG	198	I will conquer your chair	Kenny Coane	2010-03-24 15:45:08	Ben	Paul's off-campus house
3895	100_2439.JPG	196	Sam finds a Starcraft Powerup	Allan Stewart, Sam Scudder, Jon Silverman, Paul Meier, Robert Mustacchi, Nathan Partlan, Kenny Coane	2010-05-08 02:12:46	Ben	Lounge
3923	100_2288.JPG	200	Brown Band	Bruno, Brown Band	2010-02-13 17:25:56	Ben	OMAC Ice Rink
3941	100_2306.JPG	200	\N	\N	2010-02-13 18:22:13	Ben	OMAC Ice Rink
3942	100_2307.JPG	200	\N	\N	2010-02-13 18:22:20	Ben	OMAC Ice Rink
3943	100_2308.JPG	200	\N	\N	2010-02-13 18:22:26	Ben	OMAC Ice Rink
3944	100_2309.JPG	200	\N	\N	2010-02-13 18:23:58	Ben	OMAC Ice Rink
3945	100_2310.JPG	200	\N	\N	2010-02-13 18:25:00	Ben	OMAC Ice Rink
3954	100_1979.JPG	201	Half Mustache	Robert Mustacchi	2008-10-23 21:33:51	Ben	214 Bathroom
3957	100_2049.JPG	202	Going to see a pre-release screening of Star Trek	Top: Blanche, Kenny, Will, Robert, Keith, Mike. Bottom: Sid, Abbie, Sam, Leilani, Jason, Dylan, Emily, Ben Z., Jeffrey P., ?, Jon Silverman.	2009-04-24 16:16:05	Ben	Porch
3851	100_2250.JPG	193	Fiddling with wires!	Will "Fiddly" Vinci	2010-01-26 21:06:21	Ben	War Room
3968	DSC02591.JPG	203	\N	Aleks Bromfield	2007-11-08 23:24:06	Kenny Coane	Rm213
3961	DSC02598.JPG	203	\N	Ben Hutchison, Robert Mustacchi	2007-11-10 22:27:11	Kenny Coane	Rm213
3960	DSC02599.JPG	203	\N	Josh Fuhrmann, Diana Huang	2007-11-10 22:28:32	Kenny Coane	Rm213
3959	DSC02600.JPG	203	\N	Josh Fuhrmann	2007-11-10 22:28:41	Kenny Coane	Rm213
3958	DSC02601.JPG	203	\N	Jane	2007-11-14 00:25:14	Kenny Coane	Rm213
3967	DSC02592.JPG	203	\N	Owen Strain, Kadam	2007-11-08 23:29:11	Kenny Coane	Rm213
3966	DSC02593.JPG	203	\N	Sean "Disheveled" Smith	2007-11-08 23:29:21	Kenny Coane	Rm213
3965	DSC02594.JPG	203	\N	Jason Lee	2007-11-09 02:53:39	Kenny Coane	Rm213
3964	DSC02595.JPG	203	\N	Diana Huang	2007-11-10 22:26:50	Kenny Coane	Rm213
3963	DSC02596.JPG	203	\N	Lyn Fong, Rassi, Sharon Lee	2007-11-10 22:26:57	Kenny Coane	Rm213
3991	DSC02684.JPG	203	\N	Jeffrey Pfau	2008-02-01 21:47:07	Kenny	\N
3977	DSC02810.JPG	204	\N	\N	2008-02-24 17:30:42	Kenny Coane	Rm213
3988	DSC02793.JPG	204	\N	Robert Mustacchi	2008-02-24 17:20:40	Kenny Coane	Rm213
3987	DSC02794.JPG	204	\N	Robert Mustacchi	2008-02-24 17:21:25	Kenny Coane	Rm213
3986	DSC02797.JPG	204	\N	Robert Mustacchi, Lyn Fong	2008-02-24 17:21:50	Kenny Coane	Rm213
4012	mat.JPG	15	\N	Mat Coughlin, and ZOMBIE Haynes	2008-05-02 23:23:24	Kenny Coane	Lounge
3946	100_1970.JPG	201	\N	Robert Mustacchi	2008-10-23 21:22:00	Ben	214 Bathroom
3947	100_1971.JPG	201	\N	Robert Mustacchi	2008-10-23 21:23:55	Ben	214 Bathroom
3948	100_1972.JPG	201	\N	Robert Mustacchi	2008-10-23 21:24:16	Ben	214 Bathroom
3949	100_1974.JPG	201	\N	Robert Mustacchi	2008-10-23 21:25:35	Ben	214 Bathroom
3953	100_1978.JPG	201	Classic Mustache	Robert Mustacchi	2008-10-23 21:33:08	Ben	214 Bathroom
3952	100_1977.JPG	201	Evil Mustache	Robert Mustacchi	2008-10-23 21:31:58	Ben	214 Bathroom
3950	100_1975.JPG	201	Goatee	Robert Mustacchi	2008-10-23 21:28:34	Ben	214 Bathroom
3955	100_1980.JPG	201	No Mustache	Robert Mustacchi	2008-10-23 21:42:42	Ben	214 Bathroom
3992	DSC02685.JPG	203	\N	Ben Hutchison	2008-02-01 21:47:14	Kenny	\N
3956	100_1981.JPG	201	\N	Robert "Nobeard" Mustacchi	2008-10-23 21:42:55	Ben	214 Bathroom
3962	DSC02597.JPG	203	\N	Lyn Fong, Rassi, Sharon Lee	2007-11-10 22:27:05	Kenny Coane	Rm213
3951	100_1976.JPG	201	Outlaw Style	Robert Mustacchi	2008-10-23 21:30:59	Ben	214 Bathroom
4000	DSC02696.JPG	203	\N	Kadam, Robert Mustacchi	2008-02-04 21:30:45	Kenny	\N
3993	DSC02686.JPG	203	\N	Watch, Ben Hutchison	2008-02-01 21:51:52	Kenny	\N
3996	DSC02691.JPG	203	\N	Jason "Jro" Lee Rodriguez, Haynes Heaton	2008-02-01 22:04:42	Kenny	\N
3994	DSC02687.JPG	203	\N	Paul McCann, Robert Mustacchi, Lyn Fong, Jinabaah Showa	2008-02-01 22:01:43	Kenny	\N
3995	DSC02690.JPG	203	\N	Jeffrey Pfau	2008-02-01 22:04:35	Kenny	\N
3997	DSC02693.JPG	203	\N	Haynes Heaton, Max Lang, Jim Liu	2008-02-01 22:12:31	Kenny	\N
3998	DSC02694.JPG	203	\N	Dylan Cheasty	2008-02-01 22:12:44	Kenny	\N
3999	DSC02695.JPG	203	\N	Ben Hutchison, Mat Coughlin	2008-02-04 21:30:41	Kenny	\N
4001	DSC02697.JPG	203	\N	Ben Hutchison, Mat Coughlin	2008-02-04 21:31:12	Kenny	\N
4002	DSC02698.JPG	203	\N	Kadam	2008-02-04 21:31:27	Kenny	\N
4003	DSC02732.JPG	203	\N	Mat Coughlin	2008-02-16 02:21:11	Kenny	\N
4009	DSC02738.JPG	203	\N	Robert Mustacchi	2008-02-19 02:39:28	Kenny	\N
4006	DSC02735.JPG	203	2	Bo Chen	2008-02-19 02:38:24	Kenny	\N
4004	DSC02733.JPG	203	Shirts from Kenny's Closet	Shirts	2008-02-16 02:21:46	Kenny	\N
4007	DSC02736.JPG	203	3	Bo Chen	2008-02-19 02:38:30	Kenny	\N
4005	DSC02734.JPG	203	1	Bo Chen	2008-02-19 02:38:16	Kenny	\N
4008	DSC02737.JPG	203	4	Bo Chen	2008-02-19 02:38:42	Kenny	\N
4010	DSC02739.JPG	203	\N	Ben Hutchison	2008-02-19 02:40:00	Kenny	\N
4011	DSC02740.JPG	203	\N	Bo Chen	2008-02-19 02:40:59	Kenny	\N
3985	DSC02798.JPG	204	\N	Robert Mustacchi, Lyn Fong	2008-02-24 17:22:40	Kenny Coane	Rm213
3989	DSC02792.JPG	204	\N	Robert Mustacchi	2008-02-24 17:20:27	Kenny Coane	Rm213
3984	DSC02799.JPG	204	\N	Robert Mustacchi	2008-02-24 17:22:51	Kenny Coane	Rm213
3983	DSC02800.JPG	204	\N	Robert Mustacchi	2008-02-24 17:23:30	Kenny Coane	Rm213
3981	DSC02802.JPG	204	\N	Kadam, Lyn Fong	2008-02-24 17:25:29	Kenny Coane	Rm213
3979	DSC02804.JPG	204	\N	Robert Mustacchi (facepalm)	2008-02-24 17:26:03	Kenny Coane	Rm213
3980	DSC02803.JPG	204	\N	Robert Mustacchi	2008-02-24 17:25:45	Kenny Coane	Rm213
3976	DSC02806.JPG	204	\N	Robert Mustacchi (facepalm)	2008-02-24 17:26:36	Kenny Coane	Rm213
3990	DSC02683.JPG	203	SemiSketchy Sean	Sean Smith	2008-02-01 21:46:18	Kenny	\N
3978	DSC02809.JPG	204	\N	Robert Mustacchi	2008-02-24 17:29:53	Kenny Coane	Rm213
3975	DSC02867.JPG	204	\N	Owen Strain	2008-03-01 22:16:39	Kenny Coane	Rm213
3974	DSC02868.JPG	204	\N	Owen Strain	2008-03-01 22:16:56	Kenny Coane	Rm213
3973	DSC02871.JPG	204	\N	Jason "Jro" Lee Rodriguez	2008-03-01 23:04:51	Kenny Coane	Rm213
3972	DSC02872.JPG	204	\N	Owen Strain, Frog, Jason "Jro" Lee Rodriguez	2008-03-01 23:05:25	Kenny Coane	Rm213
3971	DSC02873.JPG	204	\N	Owen Strain, Frog, Jro	2008-03-01 23:05:57	Kenny Coane	Rm213
3970	DSC02874.JPG	204	\N	Lyn Fong	2008-03-01 23:06:41	Kenny Coane	Rm213
3969	DSC02878.JPG	204	\N	Frog	2008-03-02 02:27:38	Kenny Coane	Rm213
3982	DSC02801.JPG	204	\N	Robert Mustacchi (facepalm)	2008-02-24 17:23:57	Kenny Coane	Rm213
4013	DCAM0155.JPG	205	\N	Mike Katzourin, Lyn Fong, Kenny Coane	2008-08-16 15:40:34	Bo Chen	Muir Woods, California
551	DSC02562.jpg	29	Mat in the Hat	Mat coughlin	2007-10-27 23:58:00	Kenny Coane	Lounge
310	img_5511.jpg	19	The Infamous Jon	Jon Sailor, Jon Silverman	2008-11-17 20:28:00	Brendan Hickey	Lounge
4016	DSC04184.JPG	205	\N	Bo Chen	2008-08-16 12:06:09	Kenny Coane	Muir Woods, California
4017	DSC04186.JPG	205	\N	Mike Katzourin	2008-08-16 12:09:21	Kenny Coane	Muir Woods, California
4018	DSC04189.JPG	205	\N	Bo Chen	2008-08-16 13:18:16	Kenny Coane	Muir Woods, California
4050	IMG_0148.JPG	207	\N	\N	2009-04-16 17:28:53	Kenny Coane	\N
4051	IMG_0149.JPG	207	\N	\N	2009-04-16 17:29:02	Kenny Coane	\N
4019	DSC04193.JPG	205	The Sign	random people	2008-08-16 15:23:52	Kenny Coane	Muir Woods, California
4020	DSC04194.JPG	205	\N	Bo Chen, Lyn Fong	2008-08-16 15:24:12	Kenny Coane	Muir Woods, California
4021	DSC04214.JPG	205	\N	Mike Katzourin, Lyn Fong	2008-08-16 15:40:08	Kenny Coane	Muir Woods, California
4022	DSC04221.JPG	205	\N	Lyn Fong, Mike Katzourin, Bo Chen	2008-08-16 15:43:03	Kenny Coane	Muir Woods, California
4023	DSC04236.JPG	205	\N	Bo Chen, Lyn Fong	2008-08-16 15:51:02	Kenny Coane	Muir Woods, California
4024	DSC04246.JPG	205	\N	Bo Chen, Lyn Fong	2008-08-16 15:59:51	Kenny Coane	Muir Woods, California
4025	DSC04256.JPG	205	\N	Lyn Fong, Mike Katzourin	2008-08-16 16:22:35	Kenny Coane	Muir Woods, California
4026	DSC04263.JPG	205	\N	Lyn Fong, Mike Katzourin	2008-08-16 16:30:24	Kenny Coane	Muir Woods, California
4027	DSC04270.JPG	205	A Fallen Tree Off The Beaten Path	Lyn Fong	2008-08-16 16:34:55	Kenny Coane	Muir Woods, California
4028	DSC04276.JPG	205	\N	Mike Katzourin	2008-08-16 16:37:59	Kenny Coane	Muir Woods, California
4029	DSC04277.JPG	205	\N	Bo Chen, Lyn Fong	2008-08-16 16:38:14	Kenny Coane	Muir Woods, California
4030	DSC04303.JPG	205	\N	Lyn Fong	2008-08-16 17:05:31	Kenny Coane	Muir Woods, California
4031	DSC04309.JPG	205	\N	Mike Katzourin, Lyn Fong	2008-08-16 17:16:40	Kenny Coane	Muir Woods, California
4032	DSC04311.JPG	205	\N	Bo Chen, Mike Katzourin	2008-08-16 18:03:01	Kenny Coane	Muir Woods, California
4033	DSC04312.JPG	205	Mike """" Katzourin	Bo Chen, Mike Katzourin	2008-08-16 18:03:10	Kenny Coane	Muir Woods, California
4015	DSC04183.JPG	205	Anticipated Poking Which Never Arrived	Bo Chen	2008-08-16 11:57:29	Kenny Coane	Muir Woods, California
4014	DCAM0158.JPG	205	\N	Kenny Coane	2008-08-16 18:06:15	Bo Chen	Muir Woods, California
4058	IMG_0158.JPG	207	\N	\N	2009-04-16 17:42:51	Kenny Coane	\N
4034	DSC04313.JPG	205	\N	Kenny Coane	2008-08-16 18:37:41	Lyn Fong	Muir Woods, California
4035	IMG_0107.JPG	206	Printed and ready to cut	\N	2009-02-23 17:25:00	Kenny Coane	War Room
4059	IMG_0162.JPG	207	\N	\N	2009-04-16 17:43:20	Kenny Coane	\N
4067	IMG_0174.JPG	207	\N	\N	2009-04-16 18:05:24	Kenny Coane	\N
4036	IMG_0108.JPG	206	Printed and ready to cut	\N	2009-02-23 17:25:18	Kenny Coane	War Room
4037	IMG_0109.JPG	206	Thumbs up!	Ben Hutchison	2009-02-23 17:28:15	Kenny Coane	War Room
4038	IMG_0110.JPG	206	BZZZZZZT	Ben Hutchison's hand	2009-02-23 17:28:29	Kenny Coane	War Room
4039	IMG_0111.JPG	206	King Solomon's Guide to Tableslip Cutting	\N	2009-02-23 17:30:36	Kenny Coane	War Room
4040	IMG_0112.JPG	206	Good work, team	Robert Mustacchi	2009-02-23 17:31:36	Kenny Coane	War Room
4041	IMG_0113.JPG	206	Victory over the tableslips	\N	2009-02-23 17:33:53	Kenny Coane	War Room
4042	IMG_0114.JPG	206	BZZZZZZZZZZZZZZZZ....	Ben Hutchison	2009-02-23 17:37:32	Kenny Coane	War Room
4043	IMG_0115.JPG	206	...ZZZZZZZZZZZZZZZZZZT	Ben Hutchison	2009-02-23 17:37:40	Kenny Coane	War Room
4069	DSC09976.JPG	208	Crossing the street	Kadam, Abbie Popa, Kenny Coane, Robert Mustacchi	2009-02-17 17:14:43	Emily Garfield	\N
4068	DSC09975.JPG	208	Speakers secured, we head back to Tech House	Robert Mustacchi, Abbie Popa	2009-02-17 17:14:37	Emily Garfield	\N
4071	DSC09978.JPG	208	Ben is having fun	Andrew Ayer, Ben Hutchison, Kenny Coane	2009-02-17 17:14:58	Emily Garfield	\N
4070	DSC09977.JPG	208	Ben has a brilliant idea	Jon SIlverman, Ben Hutchison, Andrew Ayer, Will Vinci	2009-02-17 17:14:49	Emily Garfield	\N
4073	DSC09980.JPG	208	We approach Hughes Court	Jon SIlverman, Will Vinci, Ben Hutchison	2009-02-17 17:15:05	Emily Garfield	\N
4072	DSC09979.JPG	208	Towards Tomorrow	Ben Hutchison	2009-02-17 17:15:02	Emily Garfield	\N
4053	IMG_0151.JPG	207	\N	Keith Monach	2009-04-16 17:30:41	Kenny Coane	\N
4074	DSC09981.JPG	208	Towards Tomorrow II	Will Vinci, Ben Hutchison, Andrew Ayer, Jon Silverman, Kenny Coane	2009-02-17 17:15:17	Emily Garfield	\N
4075	DSC09982.JPG	208	The Vanguard	Abbie Popa, Kadam, Ben Hutchison, Andrew Ayer	2009-02-17 17:15:27	Emily Garfield	\N
4076	DSC09983.JPG	208	\N	Robert Mustacchi, Ben Hutchison, Andrew Ayer, Abbie Popa, Will Vinci, Jon Silverman, Sam Scudder, Kenny Coane	2009-02-17 17:15:35	Emily Garfield	\N
4077	DSC09984.JPG	208	\N	Ben Hutchsion, Jon Silverman, Andrew Ayer, Will Vinci, Kenny Coane	2009-02-17 17:16:04	Emily Garfield	\N
4048	IMG_0146.JPG	207	Juggling	\N	2009-04-16 17:28:22	Kenny Coane	\N
4054	IMG_0153.JPG	207	Mechanical Bull	\N	2009-04-16 17:31:45	Kenny Coane	\N
4079	DSC09986.JPG	208	\N	Jon Silverman, Will Vinci, Ben Hutchison, Andrew Ayer, Robert Mustacchi, Abbie Popa, Kenny Coane	2009-02-17 17:16:13	Emily Garfield	\N
4052	IMG_0150.JPG	207	\N	Ben	2009-04-16 17:29:09	Kenny Coane	\N
4080	DSC09987.JPG	208	\N	Kadam, Ben Hutchison, Andrew Ayer	2009-02-17 17:16:17	Emily Garfield	\N
4082	DSC09989.JPG	208	The Chase Continues	Andrew Ayer, Ben Hutchison, Will Vinci, Kadam	2009-02-17 17:17:46	Emily Garfield	\N
4056	IMG_0156.JPG	207	Juggling	Jeremy Kuhn	2009-04-16 17:33:02	Kenny Coane	\N
4055	IMG_0155.JPG	207	Juggling	Jeremy Kuhn	2009-04-16 17:32:20	Kenny Coane	\N
4057	IMG_0157.JPG	207	Bouncy pit	\N	2009-04-16 17:42:47	Kenny Coane	\N
4060	IMG_0166.JPG	207	The Power Cart	\N	2009-04-16 17:45:58	Kenny Coane	\N
4062	IMG_0168.JPG	207	\N	Will Vinci	2009-04-16 17:55:57	Kenny Coane	\N
4063	IMG_0170.JPG	207	\N	Dylan Cheasty	2009-04-16 18:03:19	Kenny Coane	\N
4064	IMG_0171.JPG	207	\N	Dylan Cheasty, Will Vinci	2009-04-16 18:03:35	Kenny Coane	\N
4066	IMG_0173.JPG	207	\N	Abbie Popa	2009-04-16 18:05:15	Kenny Coane	\N
4045	DSC04712.JPG	207	\N	Ben Hutchison, Josh Hamelfarb, Abbie Popa, Jason Lee	2009-04-16 18:53:27	Kenny Coane	\N
4046	DSC04713.JPG	207	\N	Ben Hutchison	2009-04-16 18:53:39	Kenny Coane	\N
4047	DSC04714.JPG	207	\N	Tom Lawler, John Hawley	2009-04-16 18:54:03	Kenny Coane	\N
4078	DSC09985.JPG	208	\N	Jon Silverman, Will Vinci, Ben Hutchison, Andrew Ayer, Robert Mustacchi, Abbie Popa, Kenny Coane	2009-02-17 17:16:11	Emily Garfield	\N
4081	DSC09988.JPG	208	Andrew tries to run over Kadam using Ben	Andrew Ayer, Ben Hutchison, Will Vinci, Kadam	2009-02-17 17:17:42	Emily Garfield	\N
4083	DSC09990.JPG	208	\N	Will Vinci, Kadam	2009-02-17 17:18:15	Emily Garfield	\N
4084	DSC04317.JPG	209	\N	Paul McCann, Leilani Diaz	2008-09-04 20:31:03	Kenny Coane	OMAC
4085	DSC04318.JPG	209	\N	Diana Huang, Sam Scudder, ?, Josh Fuhrmann, ?	2008-09-04 20:31:30	Kenny Coane	OMAC
4086	DSC04319.JPG	209	\N	Jinibaah	2008-09-04 20:31:42	Kenny Coane	OMAC
4087	DSC04320.JPG	209	\N	Jinibaah, Leilani Diaz, Diana Huang, Sam Scudder, Robert Mustacchi, Josh Fuhrmann	2008-09-04 20:35:53	Kenny Coane	OMAC
4088	DSC04321.JPG	209	\N	Diana Huang, Sam Scudder, Robert Mustacchi	2008-09-04 21:04:33	Kenny Coane	OMAC
4089	DSC04322.JPG	209	\N	Ben Hutchison, Jon Silverman, Will Vinci, Paul McCann, Jeffrey Pfau	2008-09-04 22:10:45	Kenny Coane	OMAC
4090	DSCF3619.JPG	210	\N	Diana Huang, Aaron Silverman, Brendan Hickey, Robert Mustacchi	2009-04-25 17:08:43	Kenny Coane	Lounge
4091	DSCF3620.JPG	210	\N	Jon Silverman, Brendan Hickey, Aaron Silverman, Diana Huang, Sid Jain	2009-04-25 17:09:05	Kenny Coane	Lounge
4061	IMG_0167.JPG	207	Free ice cream	Ben Hutchison, Abbie Popa, Diana Huang	2009-04-16 17:55:22	Kenny Coane	\N
4065	IMG_0172.JPG	207	\N	Diana Huang	2009-04-16 18:04:17	Kenny Coane	\N
4092	DSCF3621.JPG	210	\N	Robert Mustacchi, Jim Liu, ??, Jeff Pfau, Brendan Hickey, Sam Scudder, Sid, Kadam	2009-04-25 17:15:38	Kenny Coane	Lounge
4044	DSC04711.JPG	207	Chilling out with a couch on the porch	Ben Hutchison, Josh Hamelfarb, Abbie Popa, Jason Lee	2009-04-16 18:53:14	Kenny Coane	\N
4093	DSCF3622.JPG	210	\N	Tom Lawler, Aaron Silverman, Mike Kossey	2009-04-25 17:15:52	Kenny Coane	Lounge
4049	IMG_0147.JPG	207	Activities on the Main Green	\N	2009-04-16 17:28:28	Kenny Coane	\N
4128	DSC05903.JPG	211	\N	\N	2010-04-17 18:19:28	Kenny Coane	\N
4094	DSCF3623.JPG	210	NEED FOOD BADLY	Adam Pantel, Sam Scudder, Kadam... Tom Lawler	2009-04-25 17:16:04	Kenny Coane	Lounge
4095	DSCF3624.JPG	210	\N	Adam Pantel, Kadam	2009-04-25 17:16:09	Kenny Coane	Lounge
4096	DSCF3625.JPG	210	\N	Mike Kossey, Laura Parkinson, Diana Huang, Kenny Coane, Andrew Ayer, Travis Webb, Jon Silverman	2009-04-25 17:16:39	Kenny Coane	Lounge
4097	DSCF3626.JPG	210	\N	Laura Parkinson, Kenny Coane, Andrew Ayer, Travis Webb, Jon Silverman	2009-04-25 17:16:44	Kenny Coane	Lounge
4098	DSCF3627.JPG	210	\N	Robert Mustacchi, Diana Huang, others	2009-04-25 17:17:01	Kenny Coane	Lounge
383	img_7017.jpg	23	\N	Dylan Cheasty, Josh Brown	2009-10-31 23:58:00	Robert Mustacchi	Tech House Lounge
4151	DSC05929.JPG	211	\N	\N	2010-04-18 00:42:49	Kenny Coane	\N
4160	DSC05938.JPG	211	\N	\N	2010-04-18 01:29:32	Kenny Coane	\N
4161	DSC05939.JPG	211	\N	\N	2010-04-18 01:29:49	Kenny Coane	\N
4162	DSC05940.JPG	211	\N	\N	2010-04-18 01:30:32	Kenny Coane	\N
4103	DSC05875.JPG	211	\N	Brendan Hickey, Joey Brunelle, Emily Garfield	2010-04-17 17:38:04	Kenny Coane	\N
4101	DSC05873.JPG	211	\N	Nathan Partlan, Ryan "Spain" Abradi	2010-04-17 17:35:04	Kenny Coane	\N
4104	DSC05876.JPG	211	\N	Ryan "Spain" Abradi, Jon Silverman, Ben Hutchison, Paul McCann	2010-04-17 17:38:12	Kenny Coane	\N
4108	DSC05880.JPG	211	Awm nawm nawm	Paul McCann	2010-04-17 17:38:48	Kenny Coane	\N
4106	DSC05878.JPG	211	\N	Paul McCann, Ben Hutchison	2010-04-17 17:38:33	Kenny Coane	\N
4109	DSC05881.JPG	211	The process behind the meat	Mike Kossey, Justin Kim, Robert Mustacchi	2010-04-17 17:39:01	Kenny Coane	\N
4111	DSC05884.JPG	211	\N	Justin Kim, Robert Mustacchi	2010-04-17 17:39:15	Kenny Coane	\N
4113	DSC05888.JPG	211	\N	Mike Kossey	2010-04-17 17:39:51	Kenny Coane	\N
4114	DSC05889.JPG	211	\N	Liz Young	2010-04-17 17:45:40	Kenny Coane	\N
4115	DSC05890.JPG	211	\N	Kadam	2010-04-17 17:45:46	Kenny Coane	\N
4116	DSC05891.JPG	211	\N	Robert Mustacchi, Jon Silverman, Ben Hutchison	2010-04-17 18:14:26	Kenny Coane	\N
4118	DSC05893.JPG	211	\N	Dan Winograd-Cort	2010-04-17 18:14:42	Kenny Coane	\N
4120	DSC05895.JPG	211	\N	Nathan Partlan	2010-04-17 18:15:01	Kenny Coane	\N
4121	DSC05896.JPG	211	\N	Kassie Kelly, Liz Young, Shannon Johnson, Dana Mirsalis	2010-04-17 18:15:24	Kenny Coane	\N
4122	DSC05897.JPG	211	\N	John Hawley, Jeffrey Pfau, Tom Lawler	2010-04-17 18:15:30	Kenny Coane	\N
4124	DSC05899.JPG	211	\N	Diana Huang	2010-04-17 18:16:19	Kenny Coane	\N
4125	DSC05900.JPG	211	Food	\N	2010-04-17 18:16:37	Kenny Coane	\N
4126	DSC05901.JPG	211	\N	Lots	2010-04-17 18:18:35	Kenny Coane	\N
4127	DSC05902.JPG	211	\N	Nathan Partlan	2010-04-17 18:19:21	Kenny Coane	\N
4130	DSC05906.JPG	211	\N	Zach Kahn	2010-04-17 18:19:58	Kenny Coane	\N
4131	DSC05907.JPG	211	\N	Jane	2010-04-17 18:21:07	Kenny Coane	\N
4132	DSC05908.JPG	211	\N	Ben Hutchison	2010-04-17 18:21:30	Kenny Coane	\N
4133	DSC05909.JPG	211	\N	Nori	2010-04-17 18:21:37	Kenny Coane	\N
4135	DSC05911.JPG	211	\N	Dylan Cheasty	2010-04-17 18:32:09	Kenny Coane	\N
4136	DSC05912.JPG	211	\N	Joey Brunelle, Jane, Kadam, Dan	2010-04-17 18:33:46	Kenny Coane	\N
4137	DSC05913.JPG	211	\N	Dylan Cheasty	2010-04-17 18:37:25	Kenny Coane	\N
4138	DSC05914.JPG	211	\N	Dan	2010-04-17 18:37:30	Kenny Coane	\N
4142	DSC05918.JPG	211	\N	Robert Mustacchi	2010-04-18 00:38:18	Kenny Coane	\N
4140	DSC05916.JPG	211	DJ at work	Ben Hutchison	2010-04-18 00:33:43	Kenny Coane	\N
4143	DSC05919.JPG	211	\N	Nathan Partlan	2010-04-18 00:38:41	Kenny Coane	\N
4144	DSC05920.JPG	211	\N	Nathan Partlan	2010-04-18 00:38:54	Kenny Coane	\N
4146	DSC05922.JPG	211	\N	Samantha Scudder, Mike Kossey, Leilani Diaz	2010-04-18 00:40:51	Kenny Coane	\N
4147	DSC05923.JPG	211	\N	Leilani, Samantha Scudder, Mike Kossey	2010-04-18 00:41:10	Kenny Coane	\N
4153	DSC05931.JPG	211	A Man, His Speakers, and a Stop Sign	Ben Hutchison	2010-04-18 00:48:28	Kenny Coane	\N
4149	DSC05926.JPG	211	number one beartato	Jeffrey Pfau	2010-04-18 00:42:13	Kenny Coane	\N
4152	DSC05930.JPG	211	Important DJ duties	Ben Hutchison	2010-04-18 00:46:57	Kenny Coane	\N
4158	DSC05936.JPG	211	\N	Ben Hutchison, Leilani	2010-04-18 00:52:52	Kenny Coane	\N
4155	DSC05933.JPG	211	\N	Leilani Diaz, Mike Kossey, Abbie Popa	2010-04-18 00:49:57	Kenny Coane	\N
4157	DSC05935.JPG	211	A Tale of Two Haynes	Samantha Scudder, Haynes Heaton	2010-04-18 00:52:07	Kenny Coane	\N
4159	DSC05937.JPG	211	Tech House Logo	\N	2010-04-18 00:54:38	Kenny Coane	\N
4163	DSC05941.JPG	211	\N	\N	2010-04-18 01:30:41	Kenny Coane	\N
4165	DSC05944.JPG	211	\N	\N	2010-04-18 01:32:05	Kenny Coane	\N
4166	DSC05945.JPG	211	\N	\N	2010-04-18 01:33:56	Kenny Coane	\N
4167	DSC05946.JPG	211	\N	\N	2010-04-18 01:34:25	Kenny Coane	\N
4169	DSC05948.JPG	211	\N	\N	2010-04-18 01:35:33	Kenny Coane	\N
4171	DSC05950.JPG	211	\N	\N	2010-04-18 01:36:51	Kenny Coane	\N
4172	DSC05951.JPG	211	\N	\N	2010-04-18 01:37:07	Kenny Coane	\N
4173	IMG_0472.JPG	200	\N	\N	2010-02-13 18:22:24	Kenny Coane	Meehan
4174	IMG_0473.JPG	200	\N	\N	2010-02-13 18:22:32	Kenny Coane	Meehan
4175	IMG_0475.JPG	200	\N	\N	2010-02-13 18:22:51	Kenny Coane	Meehan
4176	IMG_0476.JPG	200	\N	\N	2010-02-13 18:22:55	Kenny Coane	Meehan
4177	IMG_0477.JPG	200	\N	\N	2010-02-13 18:22:58	Kenny Coane	Meehan
4178	IMG_0478.JPG	200	\N	\N	2010-02-13 18:23:08	Kenny Coane	Meehan
4179	IMG_0479.JPG	200	\N	\N	2010-02-13 18:23:23	Kenny Coane	Meehan
4180	IMG_0480.JPG	200	\N	\N	2010-02-13 18:23:43	Kenny Coane	Meehan
4181	IMG_0481.JPG	200	\N	\N	2010-02-13 18:23:52	Kenny Coane	Meehan
390	img_7024.jpg	23	Take a close look	Edes, Sam Scudder	2009-11-01 00:04:00	Robert Mustacchi	Tech House Lounge
4182	IMG_0482.JPG	200	\N	\N	2010-02-13 18:26:27	Kenny Coane	Meehan
4183	IMG_0483.JPG	200	\N	\N	2010-02-13 18:26:37	Kenny Coane	Meehan
4184	IMG_0484.JPG	200	\N	\N	2010-02-13 18:26:40	Kenny Coane	Meehan
4185	IMG_0485.JPG	200	\N	\N	2010-02-13 18:26:43	Kenny Coane	Meehan
4186	IMG_0486.JPG	200	\N	\N	2010-02-13 18:27:17	Kenny Coane	Meehan
4187	IMG_0487.JPG	200	\N	\N	2010-02-13 18:27:22	Kenny Coane	Meehan
4188	IMG_0488.JPG	200	\N	\N	2010-02-13 18:27:31	Kenny Coane	Meehan
4189	IMG_0489.JPG	200	\N	\N	2010-02-13 18:28:29	Kenny Coane	Meehan
4190	IMG_0490.JPG	200	\N	\N	2010-02-13 18:28:32	Kenny Coane	Meehan
391	img_7025.jpg	23	Can you spot the difference?	Edes, Jon Silverman, Sam Scudder	2009-11-01 00:04:00	Robert Mustacchi	Tech House Lounge
408	img_7043.jpg	23	\N	Dylan Cheasty, Roan LaPlante, Bo Chen	2009-11-01 00:27:00	Robert Mustacchi	Tech House Lounge
410	img_7045.jpg	23	\N	Ethan Cecchetti	2009-11-01 00:34:00	Robert Mustacchi	Tech House Lounge
412	img_7047.jpg	23	\N	Jason, Samantha Scudder, Abbie Popa, Jon Silverman	2009-11-01 00:36:00	Robert Mustacchi	Tech House Lounge
4099	DSC05871.JPG	211	Oh god the light it burns	Kadam	2010-04-17 17:34:34	Kenny Coane	\N
4100	DSC05872.JPG	211	\N	Abbie Popa, Samantha Scudder	2010-04-17 17:34:50	Kenny Coane	\N
4102	DSC05874.JPG	211	\N	Abbie Popa, Brendan Hickey, Joey Brunelle, Emily Garfield	2010-04-17 17:37:58	Kenny Coane	\N
4105	DSC05877.JPG	211	\N	(Clockwise) Jeffrey Pfau, Anna Louie, Dana Marsalis, Lyn Fong, Liz Young, Leilani Diaz, Brendan Hickey, John Hawley	2010-04-17 17:38:25	Kenny Coane	\N
4107	DSC05879.JPG	211	Awm nawm nawm	Jon Silverman	2010-04-17 17:38:41	Kenny Coane	\N
4110	DSC05883.JPG	211	\N	Justin Kim, Robert Mustacchi	2010-04-17 17:39:10	Kenny Coane	\N
4112	DSC05885.JPG	211	\N	Mike Kossey, Robert Mustacchi, Justin Kim	2010-04-17 17:39:26	Kenny Coane	\N
4117	DSC05892.JPG	211	\N	Robert Mustacchi (facepalm), Jon Silverman, Ben Hutchison	2010-04-17 18:14:32	Kenny Coane	\N
4119	DSC05894.JPG	211	\N	Justin Kim, Ashley Tuccero, Zach Kahn, Edward Tremel, Zach Davis, Robert Mustacchi, Jon Silverman, Ben Hutchison, Tyler Mantaring	2010-04-17 18:14:54	Kenny Coane	\N
4123	DSC05898.JPG	211	\N	Nori	2010-04-17 18:16:02	Kenny Coane	\N
4129	DSC05905.JPG	211	\N	Edward Tremel	2010-04-17 18:19:49	Kenny Coane	\N
4134	DSC05910.JPG	211	\N	Robert Mustacchi, Dana Mirsalis, ..., Aaron SIlverman	2010-04-17 18:22:03	Kenny Coane	\N
4139	DSC05915.JPG	211	\N	Ben Hutchison	2010-04-18 00:16:01	Kenny Coane	\N
4141	DSC05917.JPG	211	skeleton hands	Nathan Partlan's hands	2010-04-18 00:37:12	Kenny Coane	\N
4145	DSC05921.JPG	211	\N	Abbie Popa, Samantha Scudder,  Mike Kossey	2010-04-18 00:40:44	Kenny Coane	\N
4170	DSC05949.JPG	211	A DJ and his crowd	Ben Hutchison, others	2010-04-18 01:36:43	Kenny Coane	\N
4148	DSC05925.JPG	211	word from the street	Jeffrey Pfau, Nathan Partlan	2010-04-18 00:41:46	Kenny Coane	\N
4150	DSC05927.JPG	211	a man and his speakers	ben hutchison, Pyle Drivers	2010-04-18 00:42:33	Kenny Coane	\N
4154	DSC05932.JPG	211	Can You Spot the Difference?	Ben Hutchison	2010-04-18 00:48:37	Kenny Coane	\N
4156	DSC05934.JPG	211	\N	Leilani Diaz, Mike Kossey, Robert Mustacchi, Abbie Popa	2010-04-18 00:50:39	Kenny Coane	\N
4164	DSC05942.JPG	211	DJ in motion	Ben Hutchison	2010-04-18 01:31:29	Kenny Coane	\N
4168	DSC05947.JPG	211	\N	Robert Mustacchi	2010-04-18 01:35:10	Kenny Coane	\N
4248	DSC04383.JPG	216	\N	Andrew Ayer, Ben Hutchison	2008-10-03 22:39:46	Kenny Coane	TDH2
4264	IMG_0020.JPG	217	making the tie	Robert Mustacchi	2008-10-24 23:50:50	Kenny Coane	Lounge
4255	DSC04611.JPG	217	Trying on the cape	Robert Mustacchi	2008-10-25 19:59:19	Kenny Coane	Lounge
4249	DSC04384.JPG	216	Robert when he still had a beard, cursing something	Robert Mustacchi	2008-10-03 22:39:53	Kenny Coane	TDH2
4256	DSC04612.JPG	217	Trying on the cape	Robert Mustacchi	2008-10-25 19:59:24	Kenny Coane	Lounge
4250	DSC04386.JPG	216	He Blinked	Jon Silverman	2008-10-03 22:40:33	Kenny Coane	TDH2
4251	DSC04387.JPG	216	ANGRY	Jeffrey Pfau	2008-10-03 22:40:40	Kenny Coane	TDH2
4252	DSC04620.JPG	216	\N	Brendan Hickey	2008-10-31 21:20:06	Kenny Coane	TDH2
4257	DSC04614.JPG	217	\N	Leilani, Paul McCann	2008-10-25 22:51:59	Kenny Coane	Lounge
4253	DSC04625.JPG	216	This is Sparta!	Robert Mustacchi	2008-11-16 02:14:36	Kenny Coane	TDH2
4254	DSC04627.JPG	216	Lots of People Watching Top Gear	Diana Huang, Samantha Scudder, Jeremy Kuhn, Kadam, Robert Mustacchi, Emily Garfield, Dylan Cheasty,  Tom Lawler, Jeffrey Pfau	2008-11-17 00:58:59	Kenny Coane	TDH2
4262	IMG_0006.JPG	217	Canonical Robert Photo	Robert Mustacchi	2008-10-10 18:56:45	Kenny Coane	Lounge
4258	DSC04615.JPG	217	people mingling	\N	2008-10-25 22:52:05	Kenny Coane	Lounge
4263	IMG_0018.JPG	217	Max provides his photogenic face as a sunlab advertisement	Max Lang	2008-10-23 21:49:18	Kenny Coane	Lounge
4259	DSC04616.JPG	217	Robot Max	Max Lang	2008-10-25 23:07:56	Kenny Coane	Lounge
4260	DSC04617.JPG	217	Mysterious Masked Tuxedo	Robert Mustacchi	2008-10-25 23:26:03	Kenny Coane	Lounge
4261	DSC04618.JPG	217	Who could he be?	Robert Mustacchi	2008-10-25 23:31:10	Kenny Coane	Lounge
4265	IMG_0967.JPG	217	\N	Kenny Coane	2008-10-25 23:42:28	Kenny Coane	Lounge
4266	IMG_0968.JPG	217	\N	Kenny Coane	2008-10-25 23:43:47	Kenny Coane	Lounge
4267	IMG_0969.JPG	217	\N	Kenny Coane	2008-10-25 23:44:00	Kenny Coane	Lounge
4301	DSC05983.JPG	220	\N	\N	2010-04-24 17:15:09	Kenny Coane	Basement
4268	IMG_0970.JPG	217	Kenny devours that which Jim sacrifices freely	Jim Liu, Kenny Coane	2008-10-25 23:49:21	Kenny Coane	Lounge
4302	DSC05984.JPG	220	\N	\N	2010-04-24 17:15:26	Kenny Coane	Basement
4304	DSC05986.JPG	220	\N	\N	2010-04-24 17:16:14	Kenny Coane	Basement
4305	DSC05987.JPG	220	\N	\N	2010-04-24 17:20:50	Kenny Coane	Basement
4306	DSC05988.JPG	220	\N	\N	2010-04-24 17:21:03	Kenny Coane	Basement
4307	DSC05989.JPG	220	\N	\N	2010-04-24 17:21:36	Kenny Coane	Basement
4308	DSC05990.JPG	220	\N	\N	2010-04-24 17:21:51	Kenny Coane	Basement
4309	DSC05991.JPG	220	\N	\N	2010-04-24 18:01:07	Kenny Coane	Basement
4310	DSC05992.JPG	220	\N	\N	2010-04-24 18:01:15	Kenny Coane	Basement
4311	DSC05993.JPG	220	\N	\N	2010-04-24 18:01:26	Kenny Coane	Basement
4312	DSC05994.JPG	220	\N	\N	2010-04-24 18:01:41	Kenny Coane	Basement
4313	DSC05995.JPG	220	\N	\N	2010-04-24 18:01:47	Kenny Coane	Basement
4272	DSC05597.JPG	218	\N	Robert Mustacchi, Mike Kossey	2010-01-29 18:33:06	Kenny Coane	The Grill, -10°C
4269	IMG_0971.JPG	217	Kenny devours his phone	Kenny Coane	2008-10-25 23:49:53	Kenny Coane	Lounge
4270	DSC05595.JPG	218	Robert dons his coat to prepare to brave the frigid wasteland of our porch	Robert Mustacchi	2010-01-29 18:31:54	Kenny Coane	The Grill, -10°C
4271	DSC05596.JPG	218	Mike lays out the hot dogs	Robert Mustacchi, Mike Kossey	2010-01-29 18:32:42	Kenny Coane	The Grill, -10°C
4273	DSC05598.JPG	218	\N	Robert Mustacchi, Mike Kossey	2010-01-29 18:33:13	Kenny Coane	The Grill, -10°C
4316	DSC04704.JPG	221	\N	\N	2009-04-07 03:13:11	Kenny Coane	TDH2
4317	DSC04705.JPG	221	\N	\N	2009-04-07 03:17:14	Kenny Coane	TDH2
4318	DSC04708.JPG	221	\N	\N	2009-04-07 03:44:24	Kenny Coane	TDH2
4275	DSC05600.JPG	218	\N	Leilani, Robert Mustacchi, Mike Kossey	2010-01-29 18:34:35	Kenny Coane	The Grill, -10°C
4277	DSC05602.JPG	218	MEAT	\N	2010-01-29 18:34:58	Kenny Coane	The Grill, -10°C
4278	DSC05603.JPG	218	\N	Leilani, Robert Mustacchi	2010-01-29 18:35:07	Kenny Coane	The Grill, -10°C
4279	DSC05604.JPG	218	MEEEAT	\N	2010-01-29 18:36:38	Kenny Coane	The Grill, -10°C
4280	DSC05605.JPG	218	\N	Leilani, Robert Mustacchi, Mike Kossey	2010-01-29 18:36:51	Kenny Coane	The Grill, -10°C
4282	DSC05607.JPG	218	\N	Leilani, Robert Mustacchi, Mike Kossey	2010-01-29 18:37:35	Kenny Coane	The Grill, -10°C
4288	DSC05445.JPG	219	\N	Jon SIlverman, Sid Jain, Ethan Ceccheti, Julia	2009-12-13 19:08:40	Kenny Coane	Lounge
4284	DSC05612.JPG	218	\N	Leilani, Robert Mustacchi, Mike Kossey	2010-01-29 18:56:45	Kenny Coane	The Grill, -10°C
4287	DSC05444.JPG	219	\N	Roan LaPlante, Miranda Sinnott-Armstrong, Jeffrey Pfau, Nathan Partlan...	2009-12-13 19:08:26	Kenny Coane	Lounge
4289	DSC05446.JPG	219	\N	Abbie Popa	2009-12-13 19:08:59	Kenny Coane	Lounge
4291	DSC05449.JPG	219	Leilani silly face 2	Leilani	2009-12-13 20:09:07	Kenny Coane	Lounge
4292	DSC05974.JPG	220	\N	Kenny Coane	2010-04-24 15:44:29	Kenny Coane	Basement
4290	DSC05447.JPG	219	Leilani silly face	Leilani	2009-12-13 20:07:52	Kenny Coane	Lounge
4293	DSC05975.JPG	220	\N	Kenny Coane	2010-04-24 15:45:50	Kenny Coane	Basement
4295	DSC05977.JPG	220	\N	Kenny Coane	2010-04-24 15:46:14	Kenny Coane	Basement
4299	DSC05981.JPG	220	\N	Andrew Ayer	2010-04-24 16:05:36	Kenny Coane	Basement
4300	DSC05982.JPG	220	\N	Andrew Ayer	2010-04-24 16:05:55	Kenny Coane	Basement
4303	DSC05985.JPG	220	\N	Mike Kossey	2010-04-24 17:15:51	Kenny Coane	Basement
4315	DSC05997.JPG	220	\N	Andrew Ayer	2010-04-24 18:02:05	Kenny Coane	Basement
4296	DSC05978.JPG	220	\N	Andrew Ayer	2010-04-24 15:49:39	Kenny Coane	Basement
4297	DSC05979.JPG	220	\N	Andrew Ayer	2010-04-24 15:49:51	Kenny Coane	Basement
4298	DSC05980.JPG	220	\N	Andrew Ayer	2010-04-24 15:49:59	Kenny Coane	Basement
4319	DSC04709.JPG	221	\N	\N	2009-04-07 03:45:13	Kenny Coane	TDH2
4320	DSC04710.JPG	221	\N	\N	2009-04-14 23:44:37	Kenny Coane	TDH2
4274	DSC05599.JPG	218	Leilani provides delivery with a smile	Leilani, Robert Mustacchi	2010-01-29 18:33:34	Kenny Coane	The Grill, -10°C
4396	DSC04827.JPG	223	\N	\N	2009-05-02 23:44:18	Kenny Coane	Lounge
4276	DSC05601.JPG	218	Robert drowns out his assistants with music	Leilani, Robert Mustacchi, Mike Kossey	2010-01-29 18:34:44	Kenny Coane	The Grill, -10°C
4321	DSC04678.JPG	222	\N	\N	2009-04-05 18:13:06	Kenny Coane	The Ratty
4322	DSC04679.JPG	222	\N	\N	2009-04-05 18:13:24	Kenny Coane	The Ratty
4323	DSC04681.JPG	222	\N	\N	2009-04-05 18:18:38	Kenny Coane	The Ratty
4324	DSC04682.JPG	222	\N	\N	2009-04-05 18:21:26	Kenny Coane	The Ratty
4325	DSC04683.JPG	222	\N	\N	2009-04-05 18:22:00	Kenny Coane	The Ratty
4326	DSC04685.JPG	222	\N	\N	2009-04-05 18:29:08	Kenny Coane	The Ratty
4327	DSC04686.JPG	222	\N	\N	2009-04-05 18:32:27	Kenny Coane	The Ratty
4328	DSC04687.JPG	222	\N	\N	2009-04-05 18:37:02	Kenny Coane	The Ratty
4329	DSC04688.JPG	222	\N	\N	2009-04-05 18:37:38	Kenny Coane	The Ratty
4330	DSC04689.JPG	222	\N	\N	2009-04-05 18:37:43	Kenny Coane	The Ratty
4331	DSC04690.JPG	222	\N	\N	2009-04-05 18:39:00	Kenny Coane	The Ratty
4332	DSC04691.JPG	222	\N	\N	2009-04-05 18:40:10	Kenny Coane	The Ratty
4333	DSC04692.JPG	222	\N	\N	2009-04-05 18:40:45	Kenny Coane	The Ratty
4334	DSC04693.JPG	222	\N	\N	2009-04-05 18:41:02	Kenny Coane	The Ratty
4335	DSC04694.JPG	222	\N	\N	2009-04-05 18:44:08	Kenny Coane	The Ratty
4336	DSC04695.JPG	222	\N	\N	2009-04-05 18:44:19	Kenny Coane	The Ratty
4337	DSC04696.JPG	222	\N	\N	2009-04-05 18:46:40	Kenny Coane	The Ratty
4338	DSC04697.JPG	222	\N	\N	2009-04-05 18:49:04	Kenny Coane	The Ratty
4339	DSC04698.JPG	222	\N	\N	2009-04-05 18:50:18	Kenny Coane	The Ratty
4340	DSC04701.JPG	222	\N	\N	2009-04-05 18:54:03	Kenny Coane	The Ratty
4341	DSC04702.JPG	222	\N	\N	2009-04-05 18:56:38	Kenny Coane	The Ratty
4342	DSC04703.JPG	222	\N	\N	2009-04-05 18:57:36	Kenny Coane	The Ratty
4283	DSC05611.JPG	218	Robert turns up the heat	Leilani, Robert Mustacchi	2010-01-29 18:56:36	Kenny Coane	The Grill, -10°C
4343	DSC04759.JPG	223	\N	\N	2009-05-02 21:52:59	Kenny Coane	Lounge
4344	DSC04761.JPG	223	\N	\N	2009-05-02 21:58:09	Kenny Coane	Lounge
4345	DSC04762.JPG	223	\N	\N	2009-05-02 22:09:58	Kenny Coane	Lounge
4346	DSC04763.JPG	223	\N	\N	2009-05-02 22:10:11	Kenny Coane	Lounge
4347	DSC04764.JPG	223	\N	\N	2009-05-02 22:10:57	Kenny Coane	Lounge
4348	DSC04765.JPG	223	\N	\N	2009-05-02 22:11:25	Kenny Coane	Lounge
4349	DSC04766.JPG	223	\N	\N	2009-05-02 22:12:00	Kenny Coane	Lounge
4350	DSC04767.JPG	223	\N	\N	2009-05-02 22:15:06	Kenny Coane	Lounge
4351	DSC04768.JPG	223	\N	\N	2009-05-02 22:15:14	Kenny Coane	Lounge
4352	DSC04769.JPG	223	\N	\N	2009-05-02 22:17:31	Kenny Coane	Lounge
4353	DSC04770.JPG	223	\N	\N	2009-05-02 22:17:51	Kenny Coane	Lounge
4354	DSC04771.JPG	223	\N	\N	2009-05-02 22:18:54	Kenny Coane	Lounge
4355	DSC04772.JPG	223	\N	\N	2009-05-02 22:19:32	Kenny Coane	Lounge
4356	DSC04773.JPG	223	\N	\N	2009-05-02 22:19:43	Kenny Coane	Lounge
4357	DSC04774.JPG	223	\N	\N	2009-05-02 22:19:53	Kenny Coane	Lounge
4358	DSC04775.JPG	223	\N	\N	2009-05-02 22:20:00	Kenny Coane	Lounge
4359	DSC04776.JPG	223	\N	\N	2009-05-02 22:20:17	Kenny Coane	Lounge
4360	DSC04777.JPG	223	\N	\N	2009-05-02 22:42:46	Kenny Coane	Lounge
4361	DSC04779.JPG	223	\N	\N	2009-05-02 22:43:16	Kenny Coane	Lounge
4362	DSC04780.JPG	223	\N	\N	2009-05-02 22:44:12	Kenny Coane	Lounge
4363	DSC04781.JPG	223	\N	\N	2009-05-02 22:44:44	Kenny Coane	Lounge
4364	DSC04783.JPG	223	\N	\N	2009-05-02 22:48:40	Kenny Coane	Lounge
4365	DSC04784.JPG	223	\N	\N	2009-05-02 22:49:02	Kenny Coane	Lounge
4366	DSC04785.JPG	223	\N	\N	2009-05-02 22:53:20	Kenny Coane	Lounge
4367	DSC04786.JPG	223	\N	\N	2009-05-02 22:53:27	Kenny Coane	Lounge
4368	DSC04787.JPG	223	\N	\N	2009-05-02 23:03:44	Kenny Coane	Lounge
4369	DSC04788.JPG	223	\N	\N	2009-05-02 23:03:51	Kenny Coane	Lounge
4370	DSC04789.JPG	223	\N	\N	2009-05-02 23:04:19	Kenny Coane	Lounge
4371	DSC04790.JPG	223	\N	\N	2009-05-02 23:04:35	Kenny Coane	Lounge
4372	DSC04791.JPG	223	\N	\N	2009-05-02 23:04:49	Kenny Coane	Lounge
4373	DSC04792.JPG	223	\N	\N	2009-05-02 23:07:11	Kenny Coane	Lounge
4374	DSC04793.JPG	223	\N	\N	2009-05-02 23:07:18	Kenny Coane	Lounge
4375	DSC04794.JPG	223	\N	\N	2009-05-02 23:09:33	Kenny Coane	Lounge
4376	DSC04796.JPG	223	\N	\N	2009-05-02 23:15:12	Kenny Coane	Lounge
4377	DSC04797.JPG	223	\N	\N	2009-05-02 23:15:33	Kenny Coane	Lounge
4378	DSC04802.JPG	223	\N	\N	2009-05-02 23:17:50	Kenny Coane	Lounge
4379	DSC04803.JPG	223	\N	\N	2009-05-02 23:18:28	Kenny Coane	Lounge
4380	DSC04804.JPG	223	\N	\N	2009-05-02 23:20:25	Kenny Coane	Lounge
4381	DSC04805.JPG	223	\N	\N	2009-05-02 23:20:35	Kenny Coane	Lounge
4382	DSC04808.JPG	223	\N	\N	2009-05-02 23:23:56	Kenny Coane	Lounge
4383	DSC04811.JPG	223	\N	\N	2009-05-02 23:25:21	Kenny Coane	Lounge
4384	DSC04812.JPG	223	\N	\N	2009-05-02 23:25:48	Kenny Coane	Lounge
4385	DSC04813.JPG	223	\N	\N	2009-05-02 23:37:03	Kenny Coane	Lounge
4386	DSC04815.JPG	223	\N	\N	2009-05-02 23:37:17	Kenny Coane	Lounge
4387	DSC04816.JPG	223	\N	\N	2009-05-02 23:37:25	Kenny Coane	Lounge
4388	DSC04819.JPG	223	\N	\N	2009-05-02 23:40:08	Kenny Coane	Lounge
4389	DSC04820.JPG	223	\N	\N	2009-05-02 23:40:17	Kenny Coane	Lounge
4390	DSC04821.JPG	223	\N	\N	2009-05-02 23:40:44	Kenny Coane	Lounge
4391	DSC04822.JPG	223	\N	\N	2009-05-02 23:40:54	Kenny Coane	Lounge
4392	DSC04823.JPG	223	\N	\N	2009-05-02 23:40:58	Kenny Coane	Lounge
4393	DSC04824.JPG	223	\N	\N	2009-05-02 23:41:30	Kenny Coane	Lounge
4394	DSC04825.JPG	223	\N	\N	2009-05-02 23:41:46	Kenny Coane	Lounge
4395	DSC04826.JPG	223	\N	\N	2009-05-02 23:44:13	Kenny Coane	Lounge
4397	DSC04828.JPG	223	\N	\N	2009-05-02 23:44:26	Kenny Coane	Lounge
4398	DSC04829.JPG	223	\N	\N	2009-05-02 23:58:28	Kenny Coane	Lounge
4399	DSC04830.JPG	223	\N	\N	2009-05-03 00:05:04	Kenny Coane	Lounge
4400	DSC04831.JPG	223	\N	\N	2009-05-03 00:05:29	Kenny Coane	Lounge
4401	DSC04833.JPG	223	\N	\N	2009-05-03 00:06:48	Kenny Coane	Lounge
4402	DSC04834.JPG	223	\N	\N	2009-05-03 00:15:16	Kenny Coane	Lounge
4403	DSC04835.JPG	223	\N	\N	2009-05-03 00:16:36	Kenny Coane	Lounge
4404	DSC04836.JPG	223	\N	\N	2009-05-03 00:16:43	Kenny Coane	Lounge
4405	DSC04837.JPG	223	\N	\N	2009-05-03 00:16:54	Kenny Coane	Lounge
4406	DSC04838.JPG	223	\N	\N	2009-05-03 00:17:03	Kenny Coane	Lounge
4407	DSC04840.JPG	223	\N	\N	2009-05-03 00:17:13	Kenny Coane	Lounge
4408	DSC04841.JPG	223	\N	\N	2009-05-03 00:20:29	Kenny Coane	Lounge
4409	DSC04842.JPG	223	\N	\N	2009-05-03 00:20:42	Kenny Coane	Lounge
4410	DSC04843.JPG	223	\N	\N	2009-05-03 00:20:49	Kenny Coane	Lounge
4411	DSC04844.JPG	223	\N	\N	2009-05-03 00:25:14	Kenny Coane	Lounge
4412	DSC04845.JPG	223	\N	\N	2009-05-03 00:26:39	Kenny Coane	Lounge
4413	DSC04846.JPG	223	\N	\N	2009-05-03 00:26:47	Kenny Coane	Lounge
4414	DSC04847.JPG	223	\N	\N	2009-05-03 00:27:38	Kenny Coane	Lounge
4415	DSC04849.JPG	223	\N	\N	2009-05-03 00:28:06	Kenny Coane	Lounge
4416	DSC04850.JPG	223	\N	\N	2009-05-03 00:28:53	Kenny Coane	Lounge
4417	DSC04851.JPG	223	\N	\N	2009-05-03 00:29:19	Kenny Coane	Lounge
4418	DSC04852.JPG	223	\N	\N	2009-05-03 00:29:48	Kenny Coane	Lounge
4419	DSC04853.JPG	223	\N	\N	2009-05-03 00:36:12	Kenny Coane	Lounge
4420	DSC04854.JPG	223	\N	\N	2009-05-03 00:41:16	Kenny Coane	Lounge
4421	DSC04855.JPG	223	\N	\N	2009-05-03 00:41:25	Kenny Coane	Lounge
4422	DSC04856.JPG	223	\N	\N	2009-05-03 00:41:32	Kenny Coane	Lounge
4423	DSC04857.JPG	223	\N	\N	2009-05-03 00:41:43	Kenny Coane	Lounge
4285	DSC05613.JPG	218	Cooked, the meat is loaded onto Leilani and Mike and delivered to the hungry horde waiting inside	Leilani, Robert Mustacchi, Mike Kossey	2010-01-29 18:57:01	Kenny Coane	The Grill, -10°C
4424	DSC04858.JPG	223	\N	\N	2009-05-03 00:42:14	Kenny Coane	Lounge
4425	DSC04859.JPG	223	\N	\N	2009-05-03 00:42:23	Kenny Coane	Lounge
4426	DSC04860.JPG	223	\N	\N	2009-05-03 01:18:04	Kenny Coane	Lounge
4427	DSCF3643.JPG	223	\N	\N	2009-05-02 21:53:29	Kenny Coane	Lounge
4428	DSCF3644.JPG	223	\N	\N	2009-05-02 21:54:13	Kenny Coane	Lounge
4429	DSCF3645.JPG	223	\N	\N	2009-05-02 21:54:32	Kenny Coane	Lounge
4430	DSCF3646.JPG	223	\N	\N	2009-05-02 21:54:52	Kenny Coane	Lounge
4431	DSCF3647.JPG	223	\N	\N	2009-05-02 21:55:02	Kenny Coane	Lounge
4433	DSCF3649.JPG	223	\N	\N	2009-05-02 22:10:08	Kenny Coane	Lounge
4434	DSCF3650.JPG	223	\N	\N	2009-05-02 22:34:51	Kenny Coane	Lounge
4435	DSCF3651.JPG	223	\N	\N	2009-05-02 22:35:14	Kenny Coane	Lounge
4436	DSCF3652.JPG	223	\N	\N	2009-05-02 22:35:36	Kenny Coane	Lounge
4437	DSCF3653.JPG	223	\N	\N	2009-05-02 22:35:42	Kenny Coane	Lounge
4438	DSCF3654.JPG	223	\N	\N	2009-05-02 22:35:51	Kenny Coane	Lounge
4439	DSCF3655.JPG	223	\N	\N	2009-05-02 22:35:59	Kenny Coane	Lounge
4440	DSCF3656.JPG	223	\N	\N	2009-05-02 22:36:20	Kenny Coane	Lounge
4441	DSCF3657.JPG	223	\N	\N	2009-05-02 22:36:28	Kenny Coane	Lounge
4442	DSCF3658.JPG	223	\N	\N	2009-05-02 22:37:10	Kenny Coane	Lounge
4443	DSCF3659.JPG	223	\N	\N	2009-05-02 22:37:28	Kenny Coane	Lounge
4444	DSCF3660.JPG	223	\N	\N	2009-05-02 22:37:53	Kenny Coane	Lounge
4445	DSCF3661.JPG	223	\N	\N	2009-05-02 22:38:13	Kenny Coane	Lounge
4446	DSCF3662.JPG	223	\N	\N	2009-05-02 22:38:18	Kenny Coane	Lounge
4447	DSCF3663.JPG	223	\N	\N	2009-05-02 22:38:25	Kenny Coane	Lounge
4448	DSCF3664.JPG	223	\N	\N	2009-05-02 22:38:30	Kenny Coane	Lounge
4449	DSCF3665.JPG	223	\N	\N	2009-05-02 22:39:02	Kenny Coane	Lounge
4450	DSCF3666.JPG	223	\N	\N	2009-05-02 22:59:01	Kenny Coane	Lounge
4451	DSCF3668.JPG	223	\N	\N	2009-05-02 23:57:58	Kenny Coane	Lounge
4452	DSCF3669.JPG	223	\N	\N	2009-05-02 23:58:35	Kenny Coane	Lounge
4453	DSCF3670.JPG	223	\N	\N	2009-05-02 23:58:42	Kenny Coane	Lounge
4454	DSCF3671.JPG	223	\N	\N	2009-05-03 01:20:20	Kenny Coane	Lounge
4455	DSCF3676.JPG	223	\N	\N	2009-05-03 01:23:43	Kenny Coane	Lounge
4456	DSCF3677.JPG	223	\N	\N	2009-05-03 01:24:09	Kenny Coane	Lounge
4457	DSCF3678.JPG	223	\N	\N	2009-05-03 01:43:55	Kenny Coane	Lounge
4458	DSCF3680.JPG	223	\N	\N	2009-05-03 01:44:07	Kenny Coane	Lounge
4459	DSCF3681.JPG	223	\N	\N	2009-05-03 01:44:16	Kenny Coane	Lounge
4460	DSCF3682.JPG	223	\N	\N	2009-05-03 01:47:33	Kenny Coane	Lounge
4461	DSCF3683.JPG	223	\N	\N	2009-05-03 01:48:04	Kenny Coane	Lounge
4462	DSCF3684.JPG	223	\N	\N	2009-05-03 01:56:31	Kenny Coane	Lounge
4463	DSCF3686.JPG	223	\N	\N	2009-05-03 01:56:41	Kenny Coane	Lounge
4464	DSCF3687.JPG	223	\N	\N	2009-05-03 02:17:47	Kenny Coane	Lounge
4465	DSCF3688.JPG	223	\N	\N	2009-05-03 02:18:02	Kenny Coane	Lounge
4466	DSCF3689.JPG	223	\N	\N	2009-05-03 02:18:17	Kenny Coane	Lounge
4467	DSCF3690.JPG	223	\N	\N	2009-05-03 02:18:27	Kenny Coane	Lounge
4468	DSCF3691.JPG	223	\N	\N	2009-05-03 02:18:54	Kenny Coane	Lounge
4469	DSCF3692.JPG	223	\N	\N	2009-05-03 02:19:03	Kenny Coane	Lounge
4470	DSCF3693.JPG	223	\N	\N	2009-05-03 02:19:20	Kenny Coane	Lounge
4471	DSCF3694.JPG	223	\N	\N	2009-05-03 02:21:01	Kenny Coane	Lounge
4472	DSCF3695.JPG	223	\N	\N	2009-05-03 02:21:31	Kenny Coane	Lounge
4473	DSCF3696.JPG	223	\N	\N	2009-05-03 02:22:14	Kenny Coane	Lounge
4474	IMG_0190.JPG	223	\N	\N	2009-05-02 23:09:51	Kenny Coane	Lounge
4286	DSC05443.JPG	219	The Vultures Descend	Roan LaPlante, John Hawley, Jeffrey Pfau, Julia Larmore, Aaron Silverman, ??, Josh Brown, Jon Silverman	2009-12-13 19:08:16	Kenny Coane	Lounge
4478	DSC05167.JPG	224	\N	\N	2009-07-25 16:57:11	Kenny Coane	San Bruno Mountain, California
4475	DSC05155.JPG	224	\N	Robert Mustacchi, Andrew Ayer	2009-07-25 16:08:26	Kenny Coane	San Bruno Mountain, California
4485	DSC06005.JPG	225	\N	\N	2010-05-01 22:58:19	Kenny Coane	Lounge
4486	DSC06006.JPG	225	\N	\N	2010-05-01 22:58:29	Kenny Coane	Lounge
4492	DSC06012.JPG	225	\N	\N	2010-05-01 23:02:12	Kenny Coane	Lounge
4496	DSC06020.JPG	225	\N	\N	2010-05-01 23:04:37	Kenny Coane	Lounge
4497	DSC06021.JPG	225	\N	\N	2010-05-01 23:05:03	Kenny Coane	Lounge
4498	DSC06022.JPG	225	\N	\N	2010-05-01 23:05:31	Kenny Coane	Lounge
4482	DSC06002.JPG	225	\N	Kenny Coane, Robert Mustacchi, Ben Hutchison, Jon Silverman	2010-05-01 22:52:44	Kenny Coane	Lounge
4484	DSC06004.JPG	225	Leaning	\N	2010-05-01 22:54:57	Kenny Coane	Lounge
4487	DSC06007.JPG	225	\N	Mike Kossey, Edward Tremel	2010-05-01 22:58:48	Kenny Coane	Lounge
4488	DSC06008.JPG	225	\N	Ben Hutchison	2010-05-01 22:59:24	Kenny Coane	Lounge
4490	DSC06010.JPG	225	\N	Ben Hutchison	2010-05-01 22:59:35	Kenny Coane	Lounge
4494	DSC06014.JPG	225	\N	Aaron Silverman, Ethan Cecchetti, Nori, Abbie Popa	2010-05-01 23:02:57	Kenny Coane	Lounge
4493	DSC06013.JPG	225	\N	Ben Hutchison	2010-05-01 23:02:40	Kenny Coane	Lounge
4432	DSCF3648.JPG	223	\N	Robert Mustacchi, Abbie Popa	2009-05-02 21:58:40	Kenny Coane	Lounge
4476	DSC05156.JPG	224	Radio Tower. Warning, may cause cancer if you are close enough to take a picture	\N	2009-07-25 16:08:35	Kenny Coane	San Bruno Mountain, California
4479	DSC05171.JPG	224	\N	Andrew Ayer, Robert Mustacchi, Soren Spies	2009-07-25 17:18:05	Kenny Coane	San Bruno Mountain, California
4495	DSC06016.JPG	225	\N	Josh Brown, Jeffrey Pfau	2010-05-01 23:03:50	Kenny Coane	Lounge
4543	DSC06073.JPG	225	\N	\N	2010-05-01 23:45:40	Kenny Coane	Lounge
4549	DSC06080.JPG	225	\N	\N	2010-05-01 23:47:48	Kenny Coane	Lounge
4501	DSC06025.JPG	225	\N	Kenny Coane	2010-05-01 23:06:28	Kenny Coane	Lounge
4502	DSC06026.JPG	225	\N	Aaron Silverman	2010-05-01 23:07:48	Kenny Coane	Lounge
4503	DSC06027.JPG	225	\N	Jeffrey Blum	2010-05-01 23:09:04	Kenny Coane	Lounge
4504	DSC06028.JPG	225	\N	Andrew Ayer	2010-05-01 23:10:51	Kenny Coane	Lounge
4506	DSC06030.JPG	225	\N	Jon Silverman	2010-05-01 23:12:15	Kenny Coane	Lounge
4507	DSC06031.JPG	225	\N	Andrew Ayer, Robert Mustacchi	2010-05-01 23:12:32	Kenny Coane	Lounge
4508	DSC06032.JPG	225	\N	Jeffrey Blum	2010-05-01 23:14:46	Kenny Coane	Lounge
4510	DSC06034.JPG	225	Man Train	\N	2010-05-01 23:15:17	Kenny Coane	Lounge
4514	DSC06038.JPG	225	\N	Leilani, Mike Kossey	2010-05-01 23:16:47	Kenny Coane	Lounge
4512	DSC06036.JPG	225	MAN TRAIN!!!	\N	2010-05-01 23:15:36	Kenny Coane	Lounge
4511	DSC06035.JPG	225	Man Train!	\N	2010-05-01 23:15:25	Kenny Coane	Lounge
4519	DSC06046.JPG	225	\N	Josh Brown, Robert Mustacchi	2010-05-01 23:25:09	Kenny Coane	Lounge
4515	DSC06039.JPG	225	Round 1: FIGHT!	Leilani, Mike Kossey	2010-05-01 23:17:08	Kenny Coane	Lounge
4523	DSC06050.JPG	225	\N	Nicholas Sinnott-Armstrong, Samantha Scudder	2010-05-01 23:27:13	Kenny Coane	Lounge
4520	DSC06047.JPG	225	Give peace a chance	Robert Mustacchi	2010-05-01 23:26:11	Kenny Coane	Lounge
4522	DSC06049.JPG	225	Stare-Off	Jon Silverman, Katie, Benedict	2010-05-01 23:27:00	Kenny Coane	Lounge
4527	DSC06054.JPG	225	\N	Lauren Kenney	2010-05-01 23:29:04	Kenny Coane	Lounge
4528	DSC06055.JPG	225	\N	Adam Pantel, Benedict (photobomb), Katie	2010-05-01 23:29:53	Kenny Coane	Lounge
4530	DSC06058.JPG	225	\N	Will Vinci, Samantha Scudder	2010-05-01 23:35:35	Kenny Coane	Lounge
4531	DSC06059.JPG	225	\N	Liz Young	2010-05-01 23:35:42	Kenny Coane	Lounge
4532	DSC06060.JPG	225	\N	Nori	2010-05-01 23:35:48	Kenny Coane	Lounge
4533	DSC06061.JPG	225	\N	Edward Tremel	2010-05-01 23:35:57	Kenny Coane	Lounge
4535	DSC06063.JPG	225	\N	Will Vinci	2010-05-01 23:37:25	Kenny Coane	Lounge
4536	DSC06064.JPG	225	\N	Abbie Popa	2010-05-01 23:38:48	Kenny Coane	Lounge
4537	DSC06065.JPG	225	\N	Will Vinci, Blanche Case	2010-05-01 23:40:42	Kenny Coane	Lounge
4540	DSC06069.JPG	225	\N	Ben Hutchison	2010-05-01 23:44:22	Kenny Coane	Lounge
4541	DSC06071.JPG	225	\N	Ethan Cecchetti	2010-05-01 23:45:02	Kenny Coane	Lounge
4542	DSC06072.JPG	225	\N	Katie, Benedict	2010-05-01 23:45:31	Kenny Coane	Lounge
4544	DSC06074.JPG	225	\N	Katie, Benedict	2010-05-01 23:45:48	Kenny Coane	Lounge
4545	DSC06075.JPG	225	\N	Will Vinci, Blanche Case	2010-05-01 23:45:57	Kenny Coane	Lounge
4546	DSC06076.JPG	225	\N	Leilani, Mike Kossey	2010-05-01 23:46:10	Kenny Coane	Lounge
4551	DSC06084.JPG	225	\N	Ben Hutchison	2010-05-01 23:51:27	Kenny Coane	Lounge
4548	DSC06078.JPG	225	Facepalm	Robert Mustacchi (facepalm)	2010-05-01 23:46:45	Kenny Coane	Lounge
4552	DSC06086.JPG	225	\N	Leilani, Benedict (photobomb), Kenny Coane, Jeffrey Pfau, Will Vinci	2010-05-01 23:56:37	Kenny Coane	Lounge
4554	DSC06088.JPG	225	\N	Kenny Coane, Blanche Case, Jon Silverman (photobomb), Will Vinci	2010-05-01 23:59:28	Kenny Coane	Lounge
4556	DSC06090.JPG	225	\N	Will Vinci	2010-05-02 00:02:27	Kenny Coane	Lounge
4557	DSC06092.JPG	225	\N	Jon Silverman, Blanche Case, Will Vinci	2010-05-02 00:03:23	Kenny Coane	Lounge
4558	DSC06093.JPG	225	\N	Mike Kossey, Leilani	2010-05-02 00:04:09	Kenny Coane	Lounge
4559	DSC06094.JPG	225	\N	Samantha Scudder, Nori	2010-05-02 00:04:31	Kenny Coane	Lounge
4563	DSC06098.JPG	225	\N	Robert Mustacchi	2010-05-02 00:11:27	Kenny Coane	Lounge
4561	DSC06096.JPG	225	\N	Mike Kossey, Leilani, Jon Silverman	2010-05-02 00:10:14	Kenny Coane	Lounge
4564	DSC06099.JPG	225	\N	Abbie Popa, Robert Mustacchi	2010-05-02 00:11:42	Kenny Coane	Lounge
4565	DSC06100.JPG	225	\N	Robert Mustacchi	2010-05-02 00:12:25	Kenny Coane	Lounge
4566	DSC06103.JPG	225	\N	Jeremy Kuhn	2010-05-02 00:14:46	Kenny Coane	Lounge
4568	DSC06105.JPG	225	\N	Andrew Ayer (photobomb), Jeffrey Pfau	2010-05-02 00:15:19	Kenny Coane	Lounge
4573	DSC06110.JPG	225	DJing with cape	Ben Hutchison	2010-05-02 00:52:15	Kenny Coane	Lounge
4587	DSC06126.JPG	225	Now look here	Jon Silverman	2010-05-02 01:18:02	Kenny Coane	Lounge
4571	DSC06108.JPG	225	2	Robert Mustacchi, Kenny Coane	2010-05-02 00:48:59	Kenny Coane	Lounge
4575	DSC06113.JPG	225	\N	Liz Young, Aaron Silverman, Will Vinci, Abbie Popa	2010-05-02 00:55:41	Kenny Coane	Lounge
4574	DSC06112.JPG	225	Mike has the cape	Leilani, Mike Kossey	2010-05-02 00:55:27	Kenny Coane	Lounge
4577	DSC06115.JPG	225	\N	Robert Mustacchi (photobomb), Leilani	2010-05-02 00:57:28	Kenny Coane	Lounge
4579	DSC06118.JPG	225	\N	Leilani	2010-05-02 00:59:13	Kenny Coane	Lounge
4580	DSC06119.JPG	225	\N	Ashley Tuccero, Jon Silverman	2010-05-02 01:04:07	Kenny Coane	Lounge
4581	DSC06120.JPG	225	\N	Jon Silverman, Ashley Tuccero	2010-05-02 01:04:19	Kenny Coane	Lounge
4583	DSC06122.JPG	225	\N	Benedict, Ashley Tuccero, Katie	2010-05-02 01:07:18	Kenny Coane	Lounge
4584	DSC06123.JPG	225	\N	Ashley Tuccero, Katie, Benedict	2010-05-02 01:07:23	Kenny Coane	Lounge
4586	DSC06125.JPG	225	\N	Leilani, Mike Kossey, Benedict, Katie	2010-05-02 01:15:04	Kenny Coane	Lounge
4588	DSC06127.JPG	225	\N	Jon Silverman (photobomb), Kenny Coane	2010-05-02 01:18:16	Kenny Coane	Lounge
4590	DSC06129.JPG	225	\N	Katie, Benedict, Ashley Tuccero, Jon Silverman	2010-05-02 01:21:50	Kenny Coane	Lounge
4500	DSC06024.JPG	225	\N	Tyler Mantaring	2010-05-01 23:06:01	Kenny Coane	Lounge
4591	DSC06131.JPG	225	\N	Blanche Case	2010-05-02 01:22:03	Kenny Coane	Lounge
4594	DSC05617.JPG	226	\N	Samantha Scudder	2010-02-23 21:31:26	Kenny Coane	Paul's House
4516	DSC06040.JPG	225	\N	Shannon Johnson, Megan Turley, Aaron Silverman, Edward Tremel, Dana Mirsalis	2010-05-01 23:17:35	Kenny Coane	Lounge
4525	DSC06052.JPG	225	We weren't even playing that song	Liz, Kassie, Anna Louie	2010-05-01 23:28:48	Kenny Coane	Lounge
4526	DSC06053.JPG	225	Why are you dancing like that?	Liz, Kassie, Anna Louie	2010-05-01 23:28:55	Kenny Coane	Lounge
4619	DSC05642.JPG	226	\N	\N	2010-02-23 21:48:41	Kenny Coane	Paul's House
4636	IMG_0042.JPG	228	\N	\N	2008-11-23 19:39:12	Kenny Coane	The Ratty
4637	IMG_0043.JPG	228	\N	\N	2008-11-23 19:39:23	Kenny Coane	The Ratty
4638	IMG_0051.JPG	228	\N	\N	2008-12-11 19:21:24	Kenny Coane	The Ratty
4639	IMG_0055.JPG	228	\N	\N	2008-12-16 19:38:03	Kenny Coane	The Ratty
4640	DSC05952.JPG	229	\N	\N	2010-04-18 18:24:18	Kenny Coane	The Ratty
4641	DSC05953.JPG	229	\N	\N	2010-04-18 18:24:24	Kenny Coane	The Ratty
4654	DSC05966.JPG	229	\N	\N	2010-04-18 19:08:24	Kenny Coane	The Ratty
4656	DSC05968.JPG	229	\N	\N	2010-04-18 19:13:53	Kenny Coane	The Ratty
4661	DSC05973.JPG	229	\N	\N	2010-04-18 19:28:47	Kenny Coane	The Ratty
4663	DSC05713.JPG	230	\N	Abbie Popa	2010-03-26 13:27:35	Kenny Coane	Hynes Convention Center, Boston
4665	DSC05715.JPG	230	\N	Samantha Scudder	2010-03-26 13:27:44	Kenny Coane	Hynes Convention Center, Boston
4666	DSC05716.JPG	230	The Queue Room	\N	2010-03-26 13:30:26	Kenny Coane	Hynes Convention Center, Boston
4668	DSC05726.JPG	230	\N	Samantha Scudder, Abbie Popa	2010-03-26 16:53:43	Kenny Coane	Hynes Convention Center, Boston
4667	DSC05724.JPG	230	The expo hall	\N	2010-03-26 16:43:11	Kenny Coane	Hynes Convention Center, Boston
4670	DSC05732.JPG	230	\N	Samantha Scudder	2010-03-26 17:59:02	Kenny Coane	Hynes Convention Center, Boston
4671	DSC05741.JPG	230	Axe Cop	\N	2010-03-26 21:03:02	Kenny Coane	Hynes Convention Center, Boston
4672	DSC05743.JPG	230	TF2 Battle. The Red Team is outmatched.	\N	2010-03-26 21:25:58	Kenny Coane	Hynes Convention Center, Boston
4673	DSC05744.JPG	230	\N	Jeffrey Pfau	2010-03-26 21:35:32	Kenny Coane	Hynes Convention Center, Boston
4675	DSC05750.JPG	230	\N	Justin Kim	2010-03-27 00:05:04	Kenny Coane	Hynes Convention Center, Boston
4676	DSC05751.JPG	230	The Music Meister	\N	2010-03-27 09:13:50	Kenny Coane	Hynes Convention Center, Boston
4677	DSC05760.JPG	230	The Annual Hotdog Fairy	\N	2010-03-27 13:27:47	Kenny Coane	Hynes Convention Center, Boston
4679	DSC05762.JPG	230	Open wide!	\N	2010-03-27 13:46:38	Kenny Coane	Hynes Convention Center, Boston
4680	DSC05817.JPG	230	\N	Jeffrey Pfau, Jake Eakle	2010-03-28 00:11:13	Kenny Coane	Hynes Convention Center, Boston
4681	DSC05818.JPG	230	\N	Jake Eakle	2010-03-28 00:14:36	Kenny Coane	Hynes Convention Center, Boston
4682	DSC05819.JPG	230	\N	Jake Eakle	2010-03-28 00:14:57	Kenny Coane	Hynes Convention Center, Boston
4595	DSC05618.JPG	226	\N	Samantha Scudder	2010-02-23 21:31:42	Kenny Coane	Paul's House
4606	DSC05629.JPG	226	\N	Samantha Scudder	2010-02-23 21:35:13	Kenny Coane	Paul's House
4634	DSC05660.JPG	226	\N	Jon Silverman, Robert Mustacchi	2010-02-23 22:49:47	Kenny Coane	Paul's House
4629	DSC05653.JPG	226	\N	Samantha Scudder	2010-02-23 22:42:05	Kenny Coane	Paul's House
4600	DSC05623.JPG	226	\N	Robert Mustacchi	2010-02-23 21:33:08	Kenny Coane	Paul's House
4605	DSC05628.JPG	226	\N	Jon Silverman	2010-02-23 21:35:04	Kenny Coane	Paul's House
4608	DSC05631.JPG	226	\N	Jon Silverman	2010-02-23 21:37:48	Kenny Coane	Paul's House
4618	DSC05641.JPG	226	We investigate Paul's creepy basement lair, complete with cave drawings and five water heaters	Jon Silverman	2010-02-23 21:46:05	Kenny Coane	Paul's House
4613	DSC05636.JPG	226	\N	Jon Silverman	2010-02-23 21:42:46	Kenny Coane	Paul's House
4620	DSC05643.JPG	226	We heard screams!	\N	2010-02-23 21:49:04	Kenny Coane	Paul's House
4628	DSC05652.JPG	226	\N	Robert Mustacchi, Samantha Scudder, Nori	2010-02-23 22:41:42	Kenny Coane	Paul's House
4626	DSC05650.JPG	226	Tie straightening	Jon Silverman	2010-02-23 22:09:45	Kenny Coane	Paul's House
4624	DSC05648.JPG	226	\N	Jon Silverman	2010-02-23 22:00:35	Kenny Coane	Paul's House
4642	DSC05954.JPG	229	\N	Jeffrey Pfau	2010-04-18 18:25:36	Kenny Coane	The Ratty
4632	DSC05656.JPG	226	\N	Jon Silverman	2010-02-23 22:46:06	Kenny Coane	Paul's House
4597	DSC05620.JPG	226	\N	Paul McCann	2010-02-23 21:32:35	Kenny Coane	Paul's House
4599	DSC05622.JPG	226	Look at that Quality	\N	2010-02-23 21:32:55	Kenny Coane	Paul's House
4611	DSC05634.JPG	226	\N	Ben Hutchison, Jon Silverman	2010-02-23 21:40:57	Kenny Coane	Paul's House
4631	DSC05655.JPG	226	\N	Ben Hutchison	2010-02-23 22:42:31	Kenny Coane	Paul's House
4598	DSC05621.JPG	226	"Tennis Pro"	Ben Hutchison	2010-02-23 21:32:50	Kenny Coane	Paul's House
4610	DSC05633.JPG	226	Coffee table books, correctly placed	\N	2010-02-23 21:40:39	Kenny Coane	Paul's House
4602	DSC05625.JPG	226	\N	Robert Mustacchi	2010-02-23 21:33:44	Kenny Coane	Paul's House
4603	DSC05626.JPG	226	\N	Robert Mustacchi	2010-02-23 21:33:51	Kenny Coane	Paul's House
4604	DSC05627.JPG	226	\N	Robert Mustacchi	2010-02-23 21:33:55	Kenny Coane	Paul's House
4630	DSC05654.JPG	226	\N	Kenny Coane	2010-02-23 22:42:19	Kenny Coane	Paul's House
4614	DSC05637.JPG	226	Well I'm drunk	Jon Silverman	2010-02-23 21:42:52	Kenny Coane	Paul's House
4621	DSC05645.JPG	226	\N	Paul McCann	2010-02-23 21:50:13	Kenny Coane	Paul's House
4643	DSC05955.JPG	229	\N	Zach Kahn	2010-04-18 18:32:55	Kenny Coane	The Ratty
4633	DSC05658.JPG	226	\N	Ben Hutchison, Kenny Coane	2010-02-23 22:47:56	Kenny Coane	Paul's House
4612	DSC05635.JPG	226	We listened to the moon landing	Paul McCann	2010-02-23 21:41:16	Kenny Coane	Paul's House
4644	DSC05956.JPG	229	\N	Robert Mustacchi	2010-04-18 18:34:31	Kenny Coane	The Ratty
4645	DSC05957.JPG	229	\N	Roan LaPlante	2010-04-18 18:36:40	Kenny Coane	The Ratty
4646	DSC05958.JPG	229	\N	Jim Liu	2010-04-18 18:42:22	Kenny Coane	The Ratty
4647	DSC05959.JPG	229	\N	Benedict Landgren Mills	2010-04-18 18:45:05	Kenny Coane	The Ratty
4649	DSC05961.JPG	229	\N	Tom Lawler	2010-04-18 18:56:21	Kenny Coane	The Ratty
4650	DSC05962.JPG	229	\N	Robert Mustacchi	2010-04-18 18:59:48	Kenny Coane	The Ratty
4651	DSC05963.JPG	229	\N	Josh Brown	2010-04-18 19:01:03	Kenny Coane	The Ratty
4653	DSC05965.JPG	229	\N	Abe Pressman, Allan Stewart	2010-04-18 19:03:34	Kenny Coane	The Ratty
4657	DSC05969.JPG	229	\N	Jeffrey Pfau	2010-04-18 19:15:28	Kenny Coane	The Ratty
4658	DSC05970.JPG	229	\N	Allan Stewart	2010-04-18 19:16:35	Kenny Coane	The Ratty
4659	DSC05971.JPG	229	\N	A Very Detuned Piano, Tom Lawler	2010-04-18 19:28:20	Kenny Coane	The Ratty
4660	DSC05972.JPG	229	\N	Robert Mustacchi	2010-04-18 19:28:34	Kenny Coane	The Ratty
4702	DSC05286.JPG	233	\N	\N	2009-11-04 03:38:31	Black Ops	First Floor, Harkness House
4703	DSC05287.JPG	233	\N	\N	2009-11-04 03:38:56	Black Ops	First Floor, Harkness House
4704	DSC05710.JPG	233	\N	\N	2010-03-23 01:55:22	Black Ops	First Floor, Harkness House
4705	IMG_0459.jpg	233	\N	\N	2010-02-01 00:25:28	Black Ops	First Floor, Harkness House
4706	IMG_0082.JPG	234	\N	\N	2009-01-26 22:04:19	Kenny Coane	\N
4707	IMG_0086.JPG	234	\N	\N	2009-02-01 20:17:06	Kenny Coane	\N
4708	IMG_0100.JPG	234	\N	\N	2009-02-04 20:38:56	Kenny Coane	\N
4709	IMG_0101.JPG	234	\N	\N	2009-02-08 21:49:51	Kenny Coane	\N
4710	DSC05278.JPG	235	\N	\N	2009-10-19 18:59:22	Kenny Coane	\N
4711	IMG_0298.JPG	235	\N	\N	2009-09-07 01:56:21	Kenny Coane	\N
4712	IMG_0434.JPG	235	\N	\N	2009-11-18 18:40:30	Kenny Coane	\N
4713	IMG_0437.jpg	235	\N	\N	2009-11-19 23:14:46	Kenny Coane	\N
4714	IMG_0438.jpg	235	\N	\N	2009-11-19 23:15:03	Kenny Coane	\N
4662	DSC05712.JPG	230	\N	Robert Mustacchi	2010-03-26 13:27:27	Kenny Coane	Hynes Convention Center, Boston
4664	DSC05714.JPG	230	\N	Jon Silverman	2010-03-26 13:27:40	Kenny Coane	Hynes Convention Center, Boston
4669	DSC05729.JPG	230	\N	Jeffrey Pfau, Beartato	2010-03-26 16:57:09	Kenny Coane	Hynes Convention Center, Boston
4674	DSC05746.JPG	230	More TF2	\N	2010-03-26 21:37:22	Kenny Coane	Hynes Convention Center, Boston
4678	DSC05761.JPG	230	Khoo receives an unwanted present in the Draw-A-Comic	\N	2010-03-27 13:44:01	Kenny Coane	Hynes Convention Center, Boston
4683	DSC05820.JPG	230	\N	Jonathan Coulton	2010-03-28 00:28:04	Kenny Coane	Hynes Convention Center, Boston
4684	DSC05821.JPG	230	\N	Jonathan Coulton	2010-03-28 00:28:12	Kenny Coane	Hynes Convention Center, Boston
4685	DSC05822.JPG	230	\N	Jonathan Coulton	2010-03-28 00:28:40	Kenny Coane	Hynes Convention Center, Boston
4687	DSC05832.JPG	230	Blamimation Panel	\N	2010-03-28 10:35:08	Kenny Coane	Hynes Convention Center, Boston
4695	IMG_0497.JPG	232	Well it looks like we broke this platter	\N	2010-02-17 22:07:19	Kenny Coane	Lounge
4688	DSC05836.JPG	230	Design a Video Game Panel	\N	2010-03-28 11:44:28	Kenny Coane	Hynes Convention Center, Boston
4689	DSC05854.JPG	230	Snake	\N	2010-03-28 16:01:58	Kenny Coane	Hynes Convention Center, Boston
4690	DSC05866.JPG	230	\N	Kadam	2010-03-28 18:23:44	Kenny Coane	Hynes Convention Center, Boston
4555	DSC06089.JPG	225	\N	Nori, Blanche Case, Robert Mustacchi, Samantha Scudder, Leilani	2010-05-02 00:01:46	Kenny Coane	Lounge
4691	DSC05867.JPG	230	Dinner on the last day of the convention	Kenny Coane, Jeffrey Pfau, Justin Kim, Robert Mustacchi, Samantha Scudder, Abbie Popa, Jonathan Silverman	2010-03-28 19:06:38	Kenny Coane	Hynes Convention Center, Boston
4693	DSC05869.JPG	230	Dinner on the last day of the convention	Kenny Coane, Jeffrey Pfau, Justin Kim, Robert Mustacchi, Samantha Scudder, Abbie Popa, Jonathan Silverman	2010-03-28 19:07:40	Kenny Coane	Hynes Convention Center, Boston
4481	DSC06001.JPG	225	\N	Kenny Coane, Robert Mustacchi, Ben Hutchison, Jon Silverman	2010-05-01 22:52:34	Kenny Coane	Lounge
4692	DSC05868.JPG	230	Dinner on the last day of the convention	Kenny Coane, Jeffrey Pfau, Justin Kim, Robert Mustacchi, Samantha Scudder, Abbie Popa, Jonathan Silverman	2010-03-28 19:07:00	Kenny Coane	Hynes Convention Center, Boston
4483	DSC06003.JPG	225	\N	Abbie Popa, Robert Mustacchi, Samantha Scudder, Kenny Coane, Ben Hutchison, Jon Silverman	2010-05-01 22:54:32	Kenny Coane	Lounge
4489	DSC06009.JPG	225	\N	Ben Hutchison	2010-05-01 22:59:30	Kenny Coane	Lounge
4491	DSC06011.JPG	225	\N	Robert Mustacchi, Abbie Popa, Ethan Cecchetti, Samantha Scudder, Half of Jeffrey Pfau	2010-05-01 23:00:56	Kenny Coane	Lounge
4499	DSC06023.JPG	225	\N	Nori, Abbie Popa	2010-05-01 23:05:40	Kenny Coane	Lounge
4505	DSC06029.JPG	225	\N	Robert Mustacchi	2010-05-01 23:11:28	Kenny Coane	Lounge
4509	DSC06033.JPG	225	\N	Jeffrey Pfau	2010-05-01 23:14:58	Kenny Coane	Lounge
4513	DSC06037.JPG	225	MAN TRAIN CHOO CHOOO!	\N	2010-05-01 23:15:48	Kenny Coane	Lounge
4518	DSC06043.JPG	225	\N	Jeffrey Pfau, Tom Lawler	2010-05-01 23:21:02	Kenny Coane	Lounge
4521	DSC06048.JPG	225	\N	Nicholas Sinnott-Armstrong	2010-05-01 23:26:52	Kenny Coane	Lounge
4524	DSC06051.JPG	225	\N	Adam Pantel, Aaron Silverman, Lauren Kenney, Nori, Nicholas Sinnott-Armstrong, Samantha Scudder	2010-05-01 23:27:26	Kenny Coane	Lounge
4529	DSC06057.JPG	225	Pow! Ha ha!	Jon Silverman	2010-05-01 23:35:17	Kenny Coane	Lounge
4534	DSC06062.JPG	225	\N	Nicholas Sinnott-Armstrong	2010-05-01 23:36:35	Kenny Coane	Lounge
4538	DSC06067.JPG	225	\N	Samantha Scudder	2010-05-01 23:41:52	Kenny Coane	Lounge
4539	DSC06068.JPG	225	A Tail of Two Kenn(e)ys	Kenny Coane, Lauren Kenney	2010-05-01 23:42:35	Kenny Coane	Lounge
4547	DSC06077.JPG	225	\N	Benedict, Robert Mustacchi, Abbie Popa	2010-05-01 23:46:19	Kenny Coane	Lounge
4550	DSC06083.JPG	225	You can tell he is DJing because of the glowing lights	Ben Hutchison	2010-05-01 23:51:16	Kenny Coane	Lounge
4553	DSC06087.JPG	225	\N	Kenny Coane, Blanche Case, Jon Silverman (photobomb), Will Vinci, Andrew Ayer	2010-05-01 23:59:20	Kenny Coane	Lounge
4560	DSC06095.JPG	225	\N	Jon Silverman, Ashley Tuccero	2010-05-02 00:05:26	Kenny Coane	Lounge
4562	DSC06097.JPG	225	Tuxedo Mask returns	Nori, Robert Mustacchi	2010-05-02 00:10:24	Kenny Coane	Lounge
4567	DSC06104.JPG	225	\N	Jeffrey Pfau	2010-05-02 00:15:00	Kenny Coane	Lounge
4570	DSC06107.JPG	225	1	Kenny Coane	2010-05-02 00:48:24	Kenny Coane	Lounge
4572	DSC06109.JPG	225	5	Abbie Popa, Robert Mustacchi, Kenny Coane, Will Vinci, Mike Kossey	2010-05-02 00:49:28	Kenny Coane	Lounge
4576	DSC06114.JPG	225	Leilani has the cape	Robert Mustacchi (photobomb), Leilani	2010-05-02 00:57:22	Kenny Coane	Lounge
4578	DSC06117.JPG	225	Communist Propaganda Poster	Benedict, Leilani	2010-05-02 00:58:31	Kenny Coane	Lounge
4582	DSC06121.JPG	225	\N	Mike Kossey, Ashley Tuccero, Katie, Benedict	2010-05-02 01:07:11	Kenny Coane	Lounge
4696	IMG_0498.JPG	232	That is a lot of steel wool	\N	2010-02-17 22:07:23	Kenny Coane	Lounge
4697	IMG_0499.JPG	232	\N	\N	2010-02-17 22:07:30	Kenny Coane	Lounge
4698	IMG_0500.JPG	232	A shattered Ratty plate, with the glaze scorched off	\N	2010-02-17 22:07:34	Kenny Coane	Lounge
4700	IMG_0502.JPG	232	Blast crater	\N	2010-02-17 22:07:52	Kenny Coane	Lounge
4701	IMG_0503.jpg	232	That is a string of paper clips draped into a glass	\N	2010-02-17 22:08:05	Kenny Coane	Lounge
4585	DSC06124.JPG	225	\N	Leilani, Mike Kossey, Benedict(?), Katie	2010-05-02 01:14:55	Kenny Coane	Lounge
4589	DSC06128.JPG	225	\N	Jon Silverman (photobomb), Kenny Coane	2010-05-02 01:18:27	Kenny Coane	Lounge
4480	Robert.Andrew.Kenny.SanBrunoMt.jpg	224	\N	Robert Mustacchi, Andrew Ayer, Kenny Coane	2009-07-25 00:02:56	Soren Spies	San Bruno Mountain, California
4477	DSC05165.JPG	224	\N	Andrew Ayer, Soren Spies, Robert Mustacchi	2009-07-25 16:47:46	Kenny Coane	San Bruno Mountain, California
274	IMG_0932.jpg	17	Mixin' and jivin' in the War Room	Ben Hutchison, Will Vinci (MC Da Vinci)	2008-09-13 22:35:00	Jeffrey Pfau	War Room
4616	DSC05639.JPG	226	\N	Jon Silverman	2010-02-23 21:44:39	Kenny Coane	Paul's House
4627	DSC05651.JPG	226	\N	Jon Silverman, Robert Mustacchi	2010-02-23 22:37:35	Kenny Coane	Paul's House
4625	DSC05649.JPG	226	\N	Paul McCann	2010-02-23 22:08:31	Kenny Coane	Paul's House
4609	DSC05632.JPG	226	\N	Robert Mustacchi, Samantha Scudder	2010-02-23 21:37:54	Kenny Coane	Paul's House
4623	DSC05647.JPG	226	\N	Samantha Scudder, Robert Mustacchi, Santa Cthulhu	2010-02-23 21:59:50	Kenny Coane	Paul's House
4592	DSC05615.JPG	226	Paul held a housewarming party for his new off-campus house	Jon Silverman	2010-02-23 21:19:17	Kenny Coane	Paul's House
4593	DSC05616.JPG	226	Tech House's motif was "ugly ties," courtesy of Ben's strange tie collection	Ben Hutchison	2010-02-23 21:31:18	Kenny Coane	Paul's House
4596	DSC05619.JPG	226	"I Love Golf" and "Pink Paisley"	Jon Silverman, Robert Mustacchi	2010-02-23 21:32:28	Kenny Coane	Paul's House
4601	DSC05624.JPG	226	Robert's tie won "Best of Show"	Robert Mustacchi	2010-02-23 21:33:39	Kenny Coane	Paul's House
4607	DSC05630.JPG	226	This train had a derailment at one point, because it hung off the table at both ends.	Jon Silverman, Robert Mustacchi	2010-02-23 21:37:39	Kenny Coane	Paul's House
4615	DSC05638.JPG	226	Nyah, see?	Ben Hutchison	2010-02-23 21:43:11	Kenny Coane	Paul's House
4617	DSC05640.JPG	226	Slogged	Jon Silverman, Ben Hutchison	2010-02-23 21:44:46	Kenny Coane	Paul's House
4622	DSC05646.JPG	226	Oh there's something shiny over there!	Ben Hutchison, Nori	2010-02-23 21:50:27	Kenny Coane	Paul's House
4686	DSC05831.JPG	230	Blamimation Panel	It's called: You Guys Can't Spell	2010-03-28 10:35:00	Kenny Coane	Hynes Convention Center, Boston
4648	DSC05960.JPG	229	\N	Edward Tremel	2010-04-18 18:52:22	Kenny Coane	The Ratty
4652	DSC05964.JPG	229	\N	Josh Brown	2010-04-18 19:01:13	Kenny Coane	The Ratty
4655	DSC05967.JPG	229	Sparring	Benedict Landgren Mills, Tyler Mantaring	2010-04-18 19:13:46	Kenny Coane	The Ratty
4294	DSC05976.JPG	220	\N	Kenny Coane	2010-04-24 15:45:58	Kenny Coane	Basement
4314	DSC05996.JPG	220	\N	Andrew Ayer	2010-04-24 18:01:53	Kenny Coane	Basement
4517	DSC06041.JPG	225	\N	Anna Louie, Shannon Johnson, Aaron Silverman, Edward Tremel, Dana Mirsalis	2010-05-01 23:17:43	Kenny Coane	Lounge
4569	DSC06106.JPG	225	Phantom DJ	Andrew Ayer, Robert Mustacchi	2010-05-02 00:18:45	Kenny Coane	Lounge
4699	IMG_0501.jpg	232	Compact Discs	\N	2010-02-17 22:07:46	Kenny Coane	Lounge
1634	peg022.JPG	69	Pikachu opens door and finds. well see the next picture....	Pickachu	2001-11-15 00:00:00	\N	\N
4796	PB020012.JPG	69	\N	\N	2001-11-02 22:33:38	Clara	\N
4797	PB020014.JPG	69	\N	\N	2001-11-02 22:33:53	Clara	\N
4798	PB020015.JPG	69	\N	\N	2001-11-02 22:51:46	Clara	\N
4799	PB020016.JPG	69	\N	\N	2001-11-02 22:52:05	Clara	\N
4800	PB020017.JPG	69	\N	\N	2001-11-02 22:52:13	Clara	\N
4801	PB030018.JPG	69	\N	\N	2001-11-03 00:19:54	Clara	\N
4802	PB030019.JPG	69	\N	\N	2001-11-03 01:35:52	Clara	\N
4803	PB220009.JPG	69	\N	\N	2001-11-22 15:11:47	Clara	\N
4804	PB220012.JPG	69	\N	\N	2001-11-22 15:12:00	Clara	\N
4805	PB220014.JPG	69	\N	\N	2001-11-22 15:36:19	Clara	\N
4806	PB220015.JPG	69	\N	\N	2001-11-22 15:36:31	Clara	\N
4807	PB220018.JPG	69	\N	\N	2001-11-22 16:37:52	Clara	\N
4808	PB220019.JPG	69	\N	\N	2001-11-22 16:37:58	Clara	\N
4809	PB220023.JPG	69	\N	\N	2001-11-22 16:47:54	Clara	\N
4810	PB220024.JPG	69	\N	\N	2001-11-22 16:48:02	Clara	\N
4811	PB220033.JPG	69	\N	\N	2001-11-22 18:41:21	Clara	\N
4812	PB220036.JPG	69	\N	\N	2001-11-22 18:43:42	Clara	\N
4813	PB220039.JPG	69	\N	\N	2001-11-22 18:58:37	Clara	\N
4814	PB220042.JPG	69	\N	\N	2001-11-22 19:06:14	Clara	\N
4815	PB220045.JPG	69	\N	\N	2001-11-22 19:16:32	Clara	\N
4816	PC010003.JPG	69	\N	\N	2001-12-01 15:17:57	Clara	\N
4817	PC200007.JPG	69	\N	\N	2001-12-20 14:47:17	Clara	\N
4818	PC200008.JPG	69	\N	\N	2001-12-20 14:47:22	Clara	\N
4819	PC200012.JPG	69	\N	\N	2001-12-20 15:05:41	Clara	\N
4820	PC200013.JPG	69	\N	\N	2001-12-20 15:05:54	Clara	\N
4821	PC200016.JPG	69	\N	\N	2001-12-20 15:08:46	Clara	\N
4822	PC200019.JPG	69	\N	\N	2001-12-20 15:11:06	Clara	\N
\.


--
-- Name: photos_gallery_id_key; Type: CONSTRAINT; Schema: public; Owner: photo; Tablespace: 
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photos_gallery_id_key UNIQUE (gallery_id, basename);


--
-- Name: photos_pkey; Type: CONSTRAINT; Schema: public; Owner: photo; Tablespace: 
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: photo_galleryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: photo
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photo_galleryid_fkey FOREIGN KEY (gallery_id) REFERENCES galleries(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

