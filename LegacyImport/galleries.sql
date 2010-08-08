--
-- PostgreSQL database dump
--

-- Started on 2010-05-24 05:19:04

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
-- TOC entry 1468 (class 1259 OID 16386)
-- Dependencies: 6
-- Name: galleries; Type: TABLE; Schema: public; Owner: photo; Tablespace: 
--

CREATE TABLE galleries (
    id integer NOT NULL,
    title character varying(85) NOT NULL,
    poster_photo_id integer,
    date date NOT NULL,
    title_url text
);


ALTER TABLE public.galleries OWNER TO photo;

--
-- TOC entry 1469 (class 1259 OID 16392)
-- Dependencies: 1468 6
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: photo
--

CREATE SEQUENCE galleries_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.galleries_id_seq OWNER TO photo;

--
-- TOC entry 1751 (class 0 OID 0)
-- Dependencies: 1469
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: photo
--

ALTER SEQUENCE galleries_id_seq OWNED BY galleries.id;


--
-- TOC entry 1752 (class 0 OID 0)
-- Dependencies: 1469
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: photo
--

SELECT pg_catalog.setval('galleries_id_seq', 238, true);


--
-- TOC entry 1740 (class 2604 OID 16481)
-- Dependencies: 1469 1468
-- Name: id; Type: DEFAULT; Schema: public; Owner: photo
--

ALTER TABLE galleries ALTER COLUMN id SET DEFAULT nextval('galleries_id_seq'::regclass);


--
-- TOC entry 1748 (class 0 OID 16386)
-- Dependencies: 1468
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: photo
--

COPY galleries (id, title, poster_photo_id, date, title_url) FROM stdin;
1	The Gong is Born	\N	2004-02-19	the_gong_is_born
2	SpringsGiving Dinner	\N	2004-03-31	springsgiving_dinner
3	Project at the Gate 1	\N	2004-02-14	project_at_the_gate_1
5	Project at the Gate 3	\N	2004-03-20	project_at_the_gate_3
6	Project at the Gate 4	\N	2004-04-10	project_at_the_gate_4
7	Project at the Gate 5	\N	2004-04-24	project_at_the_gate_5
131	Workbench Legs	\N	2004-04-23	workbench_legs
33	Recruiting Events, 1999	\N	1999-02-01	recruiting_events_1999
34	Spring Semester 1999	\N	1999-01-27	spring_semester_1999
49	Picklemania! (February 4, 2000)	\N	2000-02-04	picklemania_february_4_2000
50	techtime 2000	\N	2000-02-07	techtime_2000
51	Drop Night (February 10, 2000)	\N	2000-02-10	drop_night_february_10_2000
35	The Tunnel of Doom	\N	1999-04-01	the_tunnel_of_doom
52	La Bastille!	\N	2000-04-14	la_bastille
53	Commencement 2000	\N	2000-05-31	commencement_2000
9	modernsmoker, batch 1	\N	2004-03-21	modernsmoker_batch_1
10	modernsmoker, batch 2	\N	2004-04-02	modernsmoker_batch_2
54	End Of Year Dinner (Spring 2000)	\N	2000-05-15	end_of_year_dinner_spring_2000
55	JavaSpook VI	\N	2000-10-31	javaspook_vi
11	modernsmoker, batch 3	\N	2004-04-14	modernsmoker_batch_3
12	modernsmoker, batch 4	\N	2004-04-15	modernsmoker_batch_4
13	Ultra Heatsink	\N	2004-04-10	ultra_heatsink
14	Epic Farwell to 2004	\N	2004-05-31	epic_farwell_to_2004
61	Campus Dance 2001	\N	2001-05-25	campus_dance_2001
62	Commencement Weekend 2001	\N	2001-05-25	commencement_weekend_2001
70	Recruiting Season 2002	\N	2002-02-01	recruiting_season_2002
63	Commencement 2001	\N	2001-05-28	commencement_2001
64	Beca's Early Fall	\N	2001-09-21	becas_early_fall
65	Early Fall 2001	\N	2001-09-15	early_fall_2001
76	Commencement Weekend 2002	\N	2002-05-15	commencement_weekend_2002
85	Recruiting Season 2003	\N	2003-02-07	recruiting_season_2003
66	Mid Fall 2001	\N	2001-10-15	mid_fall_2001
67	Java Spook 2001	\N	2001-10-31	java_spook_2001
68	More of the Spook 2001	\N	2001-11-04	more_of_the_spook_2001
56	Spring 2001	\N	2001-01-27	spring_2001
57	Spring Semester 2001	\N	2001-02-18	spring_semester_2001
58	Spring Weekend 2001	\N	2001-04-21	spring_weekend_2001
59	Reading Period and Finals 2001	\N	2001-05-04	reading_period_and_finals_2001
60	Senior Week 2001	\N	2001-05-19	senior_week_2001
71	Spring Break 2002	\N	2002-03-29	spring_break_2002
72	Spring 2002	\N	2002-04-06	spring_2002
73	The End of Year Dinner 2002	\N	2002-04-28	the_end_of_year_dinner_2002
74	Senior Week 2002	\N	2002-05-08	senior_week_2002
90	Bellydance Night	\N	2003-03-31	bellydance_night
8	POW House	\N	2004-04-12	pow_house
95	Semiformal 03	\N	2003-04-26	semiformal_03
88	Spring Break Dinner '03	\N	2003-03-26	spring_break_dinner_03
86	Spring '03 Techtime	\N	2003-02-14	spring_03_techtime
91	Spring Weekend 03	\N	2003-04-03	spring_weekend_03
92	Project Glory	\N	2003-04-15	project_glory
75	Campus Dance 2002	\N	2002-05-24	campus_dance_2002
37	Orientation Week 1999	\N	1999-09-01	orientation_week_1999
87	Mid Spring '03	\N	2003-02-20	mid_spring_03
77	Commencement 2002	\N	2002-05-27	commencement_2002
89	Techno House	\N	2003-03-26	techno_house
26	Lasertag Guns	\N	2008-05-11	lasertag_guns
27	Fall Barbeque	\N	2007-09-03	fall_barbeque
30	Pre-1998 Photos	\N	1997-07-01	pre1998_photos
31	Fall Semester 1998	\N	1998-09-01	fall_semester_1998
32	December 1998 Events	\N	1998-12-01	december_1998_events
38	Ratty Chess!	\N	1999-09-01	ratty_chess
39	Miscellaneous pictures	\N	1999-09-02	miscellaneous_pictures
40	Halloween 1999	\N	1999-10-31	halloween_1999
41	JavaSpook 1999	\N	1999-10-31	javaspook_1999
42	The Ropes Course	\N	1999-11-01	the_ropes_course
43	John's Birthday	\N	1999-11-16	johns_birthday
44	A Fall Barbecue	\N	1999-11-21	a_fall_barbecue
45	Birthday Party for Chris, Chris, Mike, and Ryan	\N	1999-11-22	birthday_party_for_chris_chris_mike_and_ryan
46	Steve Wozniak Visits Tech House!!!	\N	1999-12-09	steve_wozniak_visits_tech_house
47	The End-of-Year Dinner	\N	1999-12-11	the_endofyear_dinner
48	Spring Semester 2000	\N	2000-01-27	spring_semester_2000
78	Summer 2002	\N	2002-06-29	summer_2002
79	Orientation Week 2002	\N	2002-08-30	orientation_week_2002
80	Early Fall 2002	\N	2002-09-01	early_fall_2002
81	Bench Removal	\N	2002-09-24	bench_removal
82	Midfall 2002	\N	2002-10-15	midfall_2002
83	Javaspook 2002	\N	2002-10-31	javaspook_2002
84	Late Fall 2002	\N	2002-11-15	late_fall_2002
93	T-Shirt Designs 2002-2003	\N	2003-04-19	tshirt_designs_20022003
94	Hair Dye Night	\N	2003-04-23	hair_dye_night
96	Mutants & Mammaries	\N	2003-04-28	mutants_mammaries
97	Armory Upgrade: Project Death Ray	\N	2003-05-01	armory_upgrade_project_death_ray
98	EOY Dinner 03	\N	2003-05-04	eoy_dinner_03
122	Movie of the Week	\N	2004-02-22	movie_of_the_week
123	Drop Night 2004	\N	2004-02-24	drop_night_2004
175	Lego Night 2006	\N	2006-01-26	lego_night_2006
124	Blurry Indoor Paintball	\N	2004-02-29	blurry_indoor_paintball
125	Around The World	\N	2004-03-02	around_the_world
126	Serge Comes To Visit	\N	2004-03-18	serge_comes_to_visit
36	The 1999 Spring Semi-Formal	\N	1999-04-25	the_1999_spring_semiformal
17	Dance Party	274	2008-09-13	dance_party
23	JavaSpook 2009	435	2009-10-31	javaspook_2009
22	A typical evening around Tech House	376	2009-05-09	a_typical_evening_around_tech_house
20	The Hit	322	2009-03-16	the_hit
24	Blueprints	458	2009-12-13	blueprints
28	Drop Night	530	2007-02-27	drop_night
21	Spring Barbeque	356	2009-05-08	spring_barbeque
142	A Collection of Finals and Graduation Week Photos	\N	2004-06-17	a_collection_of_finals_and_graduation_week_photos
25	End of the Year Dinner	469	2008-04-27	end_of_the_year_dinner
29	Javaspook 2007	565	2007-10-27	javaspook_2007
19	2008 Group Picture	291	2008-11-17	2008_group_picture
69	Late Fall 2001	\N	2001-11-02	late_fall_2001
154	Stuff Night II: Judgment Stuff	\N	2005-02-11	stuff_night_ii_judgment_stuff
155	SPAM Poetry Night	\N	2005-02-15	spam_poetry_night
162	A Brief Packing Peanuts Incident	\N	2005-04-08	a_brief_packing_peanuts_incident
127	Jane's Goodbye Party	\N	2004-03-25	janes_goodbye_party
128	Eric's Hair & Static	\N	2004-04-19	erics_hair_static
129	Semiformal 2004 - Lou's Louau	\N	2004-05-01	semiformal_2004_lous_louau
187	Javaspook 2006	\N	2006-10-31	javaspook_2006
156	Blow $417 Up Night + Things You Shouldn't Microwave	\N	2005-02-23	blow_417_up_night_things_you_shouldnt_microwave
181	Hall Party!	\N	2007-03-01	hall_party
182	MAME Construction	\N	2007-03-01	mame_construction
185	TH Thanksgiving 06	\N	2006-11-22	th_thanksgiving_06
178	Zombie Apocalypse	\N	2008-02-22	zombie_apocalypse
99	Some Games	\N	2003-05-04	some_games
167	A Second Floor Hall Party	\N	2005-10-02	a_second_floor_hall_party
157	Drop Night 2005	\N	2005-02-24	drop_night_2005
158	Stuff vs. Things	\N	2005-03-04	stuff_vs_things
159	An MTSR For The MTSS, And Miscellaneous	\N	2005-03-05	an_mtsr_for_the_mtss_and_miscellaneous
160	While Playing Some DDR	\N	2005-03-06	while_playing_some_ddr
143	2004 Group Photo	\N	2004-09-01	2004_group_photo
144	Ethernet Cable Making	\N	2004-08-31	ethernet_cable_making
145	Ambush Photos 2004-2005	\N	2004-09-01	ambush_photos_20042005
146	Setting Up The Macquarium, Round II	\N	2004-10-10	setting_up_the_macquarium_round_ii
147	techtime 2004	\N	2004-10-15	techtime_2004
100	Some Weapons Practice	\N	2003-05-04	some_weapons_practice
101	More Glory!	\N	2003-05-10	more_glory
102	Senior Week 2003	\N	2003-05-17	senior_week_2003
103	Commencement 2003	\N	2003-05-24	commencement_2003
104	Summer 2003	\N	2003-07-15	summer_2003
105	Activities Night 2003	\N	2003-08-30	activities_night_2003
106	Setup 2003	\N	2003-09-01	setup_2003
107	Ambush Photos (misc.) - Fall 2003	\N	2003-12-15	ambush_photos_misc_fall_2003
108	Bola Tag 2003	\N	2003-09-05	bola_tag_2003
109	Early Fall Barbecue	\N	2003-09-07	early_fall_barbecue
110	Techhouse 2003-2004 Group Photos	\N	2003-09-08	techhouse_20032004_group_photos
111	TechGrrrls Night Out	\N	2003-09-12	techgrrrls_night_out
112	Spoofers	\N	2003-10-01	spoofers
113	Ninjas	\N	2003-10-25	ninjas
114	Javaspook 2003	\N	2003-10-31	javaspook_2003
115	Javaspook IX: The Alumni Invasion	\N	2003-10-31	javaspook_ix_the_alumni_invasion
116	Thanksgiving 2003	\N	2003-11-27	thanksgiving_2003
117	EOS Dinner 2003	\N	2003-12-13	eos_dinner_2003
118	Super Bowl XXXVIII	\N	2004-02-01	super_bowl_xxxviii
119	Hanging Out	\N	2004-02-02	hanging_out
120	Ambush Photos (misc.) - Spring 2004	\N	2004-01-31	ambush_photos_misc_spring_2004
121	Recruiting Season 2004	\N	2004-02-05	recruiting_season_2004
130	Regime Change	\N	2004-04-26	regime_change
132	Spring BBQ 2004	\N	2004-04-25	spring_bbq_2004
133	New Officers	\N	2004-05-19	new_officers
134	Late May	\N	2004-05-21	late_may
135	Crazy Lou's Crazy Barbecue	\N	2004-05-28	crazy_lous_crazy_barbecue
136	Campus Dance 2004	\N	2004-05-28	campus_dance_2004
137	TH Alumni BBQ 2004	\N	2004-05-29	th_alumni_bbq_2004
138	WaterFire	\N	2004-05-29	waterfire
140	Commencement Day 2004	\N	2004-05-31	commencement_day_2004
141	The After Party	\N	2004-05-31	the_after_party
148	Couch Scouting (Colors Are Not Actual Due to Lighting and Browsers)	\N	2004-10-22	couch_scouting_colors_are_not_actual_due_to_lighting_and_browsers
149	Fall Firecream	\N	2004-10-22	fall_firecream
150	Rug Scouting	\N	2004-10-22	rug_scouting
151	Firecream	\N	2005-02-03	firecream
152	Stuff Night I	\N	2005-02-04	stuff_night_i
153	Hallway Party	\N	2005-02-07	hallway_party
161	Lens Testing	\N	2005-03-27	lens_testing
163	After The Ratty Dinner	\N	2005-04-09	after_the_ratty_dinner
164	The Budget Review/Housing Lottery/Presidential Nominations Meeting	\N	2005-04-11	the_budget_reviewhousing_lotterypresidential_nominations_meeting
165	Tech House Semiformal	\N	2005-04-22	tech_house_semiformal
166	2005 End Of Year Dinner	\N	2005-05-08	2005_end_of_year_dinner
168	Commencement 2005	\N	2005-05-27	commencement_2005
170	Weekly Meeting	\N	2005-10-10	weekly_meeting
171	Stuff Night II	\N	2005-10-28	stuff_night_ii
173	JavaSpook 2005	\N	2005-10-31	javaspook_2005
174	The Knife	\N	2005-11-28	the_knife
179	Ceiling Cat	\N	2007-03-01	ceiling_cat
4	Project at the Gate 2	\N	2004-02-21	project_at_the_gate_2l
139	A Militant Wing Graduation	\N	2004-05-30	other_commencement_2004_photos
188	Awesome	\N	2005-05-18	awesome
189	More Late Fall	\N	2002-11-15	more_late_fall
204	CS32 Project Planning	3970	2008-02-24	cs32-project-planning
177	Painting the TH Logo	3716	2007-04-14	painting_the_th_logo
176	Beer Appreciation Night	3710	2007-04-14	beer_appreciation_night
186	Spring 2007 BBQ	3788	2007-03-18	spring_2007_bbq
183	Sketchy 009	3754	2007-03-01	sketchy_009
180	Colin's Rampage	3737	2007-05-01	colins_rampage
184	Tech House Bar Construction	3769	2007-03-01	tech_house_bar_construction
18	Pwawty Cloughb	281	2008-10-11	pwawty_cloughb
172	JavaSpook Setup	3577	2005-10-29	javaspook_setup
203	Random Photos	3990	2007-11-08	random-photos
200	Skating Band	3940	2010-02-13	skating-band
196	LAN Party	\N	2010-05-08	lan-party
201	Robert Shaving	3953	2008-10-23	robert-shaving
192	Abduction	\N	2010-05-03	abduction
190	Eurodance	3809	2008-02-09	eurodance
197	New TV	\N	2010-02-26	new-tv
195	Hallway Bridge	3891	2010-04-11	hallway-bridge
199	Recruiting Fairs	3921	2010-01-28	recruiting-fairs
194	Firecream	\N	2010-02-02	firecream_2
202	Star Trek	\N	2009-04-24	star-trek
193	Arcade Machine	3860	2010-01-26	arcade-machine
15	Semiformal Dance	227	2008-05-02	semiformal_dance
198	Paul's BBQ	3909	2010-03-24	pauls-bbq
226	Paul's Housewarming Party	4621	2010-02-23	pauls-housewarming-party
216	Photos in 214	\N	2008-10-03	photos-in-214
230	PAX East	4683	2010-03-26	pax-east
205	Summer Hiking trip	\N	2008-08-16	summer-hiking-trip
219	End of Year Dinner	\N	2009-12-13	end-of-year-dinner
233	Will's Door	\N	2009-11-04	wills-door
208	Pyle Driver Speaker Retrieval	4072	2009-02-17	pyle-driver-speaker-retrieval
234	Around the House	\N	2009-01-26	around-the-house
222	Ratty Dinner	\N	2009-04-05	ratty-dinner
228	Being Goofy at The Ratty	\N	2008-11-23	being-goofy-at-the-ratty
229	Ratty Dinner	\N	2010-04-18	ratty-dinner_2
235	Random Photos	\N	2009-09-07	random-photos_2
218	Midwinter BBQ	4285	2010-01-29	midwinter-bbq
209	Activity Fair	\N	2008-09-04	activity-fair
211	Alum BBQ & Dance	4169	2010-04-17	alum-bbq-dance
206	Tableslip Cutting	\N	2009-02-23	tableslip-cutting
220	Wiring Project	4303	2010-04-24	wiring-project
207	Spring Thursday	\N	2009-04-16	spring-thursday
225	Semiformal Dance	4551	2010-05-01	semiformal-dance_2
217	JavaSpook 2008 & Preparations	\N	2008-10-10	javaspook-2008-preparations
210	BBQ	\N	2009-04-25	bbq
224	Summer Hike with Soren	\N	2009-07-25	summer-hike-with-soren
232	Stuff Not to Microwave Night	4700	2010-02-17	stuff-not-to-microwave-night
223	Semiformal Dance	4400	2009-05-02	semiformal-dance
221	The Fetch Quest	\N	2009-04-07	the-fetch-quest
\.


--
-- TOC entry 1743 (class 2606 OID 16405)
-- Dependencies: 1468 1468
-- Name: gallery_pk; Type: CONSTRAINT; Schema: public; Owner: photo; Tablespace: 
--

ALTER TABLE ONLY galleries
    ADD CONSTRAINT gallery_pk PRIMARY KEY (id);


--
-- TOC entry 1746 (class 2606 OID 16479)
-- Dependencies: 1468 1468
-- Name: gallery_unique_title_url; Type: CONSTRAINT; Schema: public; Owner: photo; Tablespace: 
--

ALTER TABLE ONLY galleries
    ADD CONSTRAINT gallery_unique_title_url UNIQUE (title_url);


--
-- TOC entry 1741 (class 1259 OID 16410)
-- Dependencies: 1468
-- Name: fki_poster_photo_id; Type: INDEX; Schema: public; Owner: photo; Tablespace: 
--

CREATE INDEX fki_poster_photo_id ON galleries USING btree (poster_photo_id);


--
-- TOC entry 1744 (class 1259 OID 16411)
-- Dependencies: 1468
-- Name: gallery_title_url_index; Type: INDEX; Schema: public; Owner: photo; Tablespace: 
--

CREATE UNIQUE INDEX gallery_title_url_index ON galleries USING btree (id);


--
-- TOC entry 1547 (class 2618 OID 16412)
-- Dependencies: 1468 1468 1470 1470 1468 1468 1468
-- Name: poster_correct_gallery_insert; Type: RULE; Schema: public; Owner: photo
--

CREATE RULE poster_correct_gallery_insert AS ON INSERT TO galleries WHERE (new.id <> (SELECT photos.gallery_id FROM photos WHERE (photos.id = new.poster_photo_id))) DO INSTEAD NOTHING;
ALTER TABLE public.galleries DISABLE RULE poster_correct_gallery_insert;


--
-- TOC entry 1548 (class 2618 OID 16413)
-- Dependencies: 1468 1470 1468 1468 1468 1468 1470
-- Name: poster_correct_gallery_update; Type: RULE; Schema: public; Owner: photo
--

CREATE RULE poster_correct_gallery_update AS ON UPDATE TO galleries WHERE (new.id <> (SELECT photos.gallery_id FROM photos WHERE (photos.id = new.poster_photo_id))) DO INSTEAD NOTHING;
ALTER TABLE public.galleries DISABLE RULE poster_correct_gallery_update;


--
-- TOC entry 1747 (class 2606 OID 24621)
-- Dependencies: 1468 1470
-- Name: galleries_poster_photo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: photo
--

ALTER TABLE ONLY galleries
    ADD CONSTRAINT galleries_poster_photo_id_fkey FOREIGN KEY (poster_photo_id) REFERENCES photos(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2010-05-24 05:19:04

--
-- PostgreSQL database dump complete
--

