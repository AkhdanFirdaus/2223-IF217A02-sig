PGDMP     *    9    
        	    z            ikp    14.5 (Debian 14.5-1.pgdg110+1)    14.2 !    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    44200    ikp    DATABASE     W   CREATE DATABASE ikp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE ikp;
                sig-user    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                sig-user    false            %           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   sig-user    false    3            ?            1259    52420 	   kerusakan    TABLE     k   CREATE TABLE public.kerusakan (
    uid character varying NOT NULL,
    nama character varying NOT NULL
);
    DROP TABLE public.kerusakan;
       public         heap    sig-user    false    3            ?            1259    52427    kondisi_ruas_jalan    TABLE     y  CREATE TABLE public.kondisi_ruas_jalan (
    uid character varying NOT NULL,
    survey_uid character varying NOT NULL,
    kerusakan_uid character varying NOT NULL,
    keparahan character varying NOT NULL,
    jumlahpanel integer NOT NULL,
    densitas double precision NOT NULL,
    nilaipengurang double precision NOT NULL,
    tanggal timestamp with time zone NOT NULL
);
 &   DROP TABLE public.kondisi_ruas_jalan;
       public         heap    sig-user    false    3            ?            1259    52406    laporan    TABLE     #  CREATE TABLE public.laporan (
    uid character varying NOT NULL,
    pelapor_uid character varying NOT NULL,
    deskripsi text,
    foto character varying NOT NULL,
    alamatlokasi character varying NOT NULL,
    koordinat point NOT NULL,
    tanggal timestamp with time zone NOT NULL
);
    DROP TABLE public.laporan;
       public         heap    sig-user    false    3            ?            1259    52392 	   permukaan    TABLE     k   CREATE TABLE public.permukaan (
    uid character varying NOT NULL,
    nama character varying NOT NULL
);
    DROP TABLE public.permukaan;
       public         heap    sig-user    false    3            ?            1259    52399 
   ruas_jalan    TABLE     ?  CREATE TABLE public.ruas_jalan (
    uid character varying NOT NULL,
    nama character varying NOT NULL,
    wilayah_uid character varying NOT NULL,
    permukaan_uid character varying NOT NULL,
    ruas line NOT NULL,
    ketinggian double precision NOT NULL,
    panjang integer NOT NULL,
    lebarrata double precision NOT NULL,
    luas double precision NOT NULL,
    awalkm integer NOT NULL,
    akhirkm integer NOT NULL,
    asalkm integer NOT NULL
);
    DROP TABLE public.ruas_jalan;
       public         heap    sig-user    false    3            ?            1259    52413    survey    TABLE       CREATE TABLE public.survey (
    uid character varying NOT NULL,
    petugas_uid character varying NOT NULL,
    laporan_uid character varying NOT NULL,
    ruas_uid character varying NOT NULL,
    catatan text,
    tanggal timestamp with time zone NOT NULL
);
    DROP TABLE public.survey;
       public         heap    sig-user    false    3            ?            1259    44201    users    TABLE     ?   CREATE TABLE public.users (
    uid character varying NOT NULL,
    photo character varying,
    name character varying NOT NULL,
    email character varying NOT NULL,
    password text NOT NULL,
    phone character varying NOT NULL,
    role integer
);
    DROP TABLE public.users;
       public         heap    sig-user    false    3            &           0    0    COLUMN users.role    COMMENT     K   COMMENT ON COLUMN public.users.role IS '1:SuperAdmin,2:Officer,3:Citizen';
          public          sig-user    false    209            ?            1259    44210    wilayah    TABLE     ?   CREATE TABLE public.wilayah (
    uid character varying NOT NULL,
    parent_uid character varying,
    nama character varying NOT NULL,
    area character varying NOT NULL,
    level integer NOT NULL,
    luas integer NOT NULL
);
    DROP TABLE public.wilayah;
       public         heap    sig-user    false    3            '           0    0    COLUMN wilayah.level    COMMENT     X   COMMENT ON COLUMN public.wilayah.level IS '1:Nasional,2:Provinsi,3:Kec/Kab,4:Kel/Desa';
          public          sig-user    false    210                      0    52420 	   kerusakan 
   TABLE DATA           .   COPY public.kerusakan (uid, nama) FROM stdin;
    public          sig-user    false    215   ?%                 0    52427    kondisi_ruas_jalan 
   TABLE DATA           ?   COPY public.kondisi_ruas_jalan (uid, survey_uid, kerusakan_uid, keparahan, jumlahpanel, densitas, nilaipengurang, tanggal) FROM stdin;
    public          sig-user    false    216   ?%                 0    52406    laporan 
   TABLE DATA           f   COPY public.laporan (uid, pelapor_uid, deskripsi, foto, alamatlokasi, koordinat, tanggal) FROM stdin;
    public          sig-user    false    213   ?%                 0    52392 	   permukaan 
   TABLE DATA           .   COPY public.permukaan (uid, nama) FROM stdin;
    public          sig-user    false    211   ?%                 0    52399 
   ruas_jalan 
   TABLE DATA           ?   COPY public.ruas_jalan (uid, nama, wilayah_uid, permukaan_uid, ruas, ketinggian, panjang, lebarrata, luas, awalkm, akhirkm, asalkm) FROM stdin;
    public          sig-user    false    212   &                 0    52413    survey 
   TABLE DATA           [   COPY public.survey (uid, petugas_uid, laporan_uid, ruas_uid, catatan, tanggal) FROM stdin;
    public          sig-user    false    214    &                 0    44201    users 
   TABLE DATA           O   COPY public.users (uid, photo, name, email, password, phone, role) FROM stdin;
    public          sig-user    false    209   =&                 0    44210    wilayah 
   TABLE DATA           K   COPY public.wilayah (uid, parent_uid, nama, area, level, luas) FROM stdin;
    public          sig-user    false    210   Z&       ?           2606    52426    kerusakan kerusakan_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.kerusakan
    ADD CONSTRAINT kerusakan_pk PRIMARY KEY (uid);
 @   ALTER TABLE ONLY public.kerusakan DROP CONSTRAINT kerusakan_pk;
       public            sig-user    false    215            ?           2606    52433 (   kondisi_ruas_jalan kondisi_ruas_jalan_pk 
   CONSTRAINT     g   ALTER TABLE ONLY public.kondisi_ruas_jalan
    ADD CONSTRAINT kondisi_ruas_jalan_pk PRIMARY KEY (uid);
 R   ALTER TABLE ONLY public.kondisi_ruas_jalan DROP CONSTRAINT kondisi_ruas_jalan_pk;
       public            sig-user    false    216            ?           2606    52412    laporan laporan_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.laporan
    ADD CONSTRAINT laporan_pk PRIMARY KEY (uid);
 <   ALTER TABLE ONLY public.laporan DROP CONSTRAINT laporan_pk;
       public            sig-user    false    213            ?           2606    52398    permukaan permukaan_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.permukaan
    ADD CONSTRAINT permukaan_pk PRIMARY KEY (uid);
 @   ALTER TABLE ONLY public.permukaan DROP CONSTRAINT permukaan_pk;
       public            sig-user    false    211            ?           2606    52405    ruas_jalan ruas_jalan_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.ruas_jalan
    ADD CONSTRAINT ruas_jalan_pk PRIMARY KEY (uid);
 B   ALTER TABLE ONLY public.ruas_jalan DROP CONSTRAINT ruas_jalan_pk;
       public            sig-user    false    212            ?           2606    52419    survey survey_pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.survey
    ADD CONSTRAINT survey_pk PRIMARY KEY (uid);
 :   ALTER TABLE ONLY public.survey DROP CONSTRAINT survey_pk;
       public            sig-user    false    214            {           2606    44207    users users_pk 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (uid);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pk;
       public            sig-user    false    209            }           2606    44209    users users_un 
   CONSTRAINT     J   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_un UNIQUE (email);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_un;
       public            sig-user    false    209                       2606    44216    wilayah wilayah_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.wilayah
    ADD CONSTRAINT wilayah_pk PRIMARY KEY (uid);
 <   ALTER TABLE ONLY public.wilayah DROP CONSTRAINT wilayah_pk;
       public            sig-user    false    210                  x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?     