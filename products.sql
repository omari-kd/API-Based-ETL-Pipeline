--
-- PostgreSQL database dump
--

\restrict ncB2eqhYN7JomFaY3Yc3RAqWjLOHZcOPBTwq2mCnfYcDc6DumMHQVrJifAY0sMf

-- Dumped from database version 16.10 (Ubuntu 16.10-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.10 (Ubuntu 16.10-0ubuntu0.24.04.1)

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
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id bigint,
    product_name text,
    unit_price double precision,
    category_name text,
    rating_score double precision,
    rating_count bigint
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, product_name, unit_price, category_name, rating_score, rating_count) FROM stdin;
1	Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops	109.95	men's clothing	3.9	120
2	Mens Casual Premium Slim Fit T-Shirts 	22.3	men's clothing	4.1	259
3	Mens Cotton Jacket	55.99	men's clothing	4.7	500
4	Mens Casual Slim Fit	15.99	men's clothing	2.1	430
5	John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet	695	jewelery	4.6	400
6	Solid Gold Petite Micropave 	168	jewelery	3.9	70
7	White Gold Plated Princess	9.99	jewelery	3	400
8	Pierced Owl Rose Gold Plated Stainless Steel Double	10.99	jewelery	1.9	100
9	WD 2TB Elements Portable External Hard Drive - USB 3.0 	64	electronics	3.3	203
10	SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s	109	electronics	2.9	470
11	Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5	109	electronics	4.8	319
12	WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive	114	electronics	4.8	400
13	Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin	599	electronics	2.9	250
14	Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED 	999.99	electronics	2.2	140
15	BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats	56.99	women's clothing	2.6	235
16	Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket	29.95	women's clothing	2.9	340
17	Rain Jacket Women Windbreaker Striped Climbing Raincoats	39.99	women's clothing	3.8	679
18	MBJ Women's Solid Short Sleeve Boat Neck V 	9.85	women's clothing	4.7	130
19	Opna Women's Short Sleeve Moisture	7.95	women's clothing	4.5	146
20	DANVOUY Womens T Shirt Casual Cotton Short	12.99	women's clothing	3.6	145
\.


--
-- PostgreSQL database dump complete
--

\unrestrict ncB2eqhYN7JomFaY3Yc3RAqWjLOHZcOPBTwq2mCnfYcDc6DumMHQVrJifAY0sMf

