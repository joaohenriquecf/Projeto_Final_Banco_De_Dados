PGDMP  )                
    |            postgres    17.0    17.0 ,               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                     postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4892                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16504    carro    TABLE     �   CREATE TABLE public.carro (
    id integer NOT NULL,
    marca character varying(50),
    modelo character varying(50),
    ano character varying(50),
    preco double precision
);
    DROP TABLE public.carro;
       public         heap r       postgres    false    4            �            1259    16503    carro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carro_id_seq;
       public               postgres    false    4    220                       0    0    carro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carro_id_seq OWNED BY public.carro.id;
          public               postgres    false    219            �            1259    16490    clientes    TABLE     �   CREATE TABLE public.clientes (
    id integer NOT NULL,
    nome character varying(50),
    email character varying(100),
    contato character varying(100)
);
    DROP TABLE public.clientes;
       public         heap r       postgres    false    4            �            1259    16489    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public               postgres    false    218    4                        0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public               postgres    false    217            �            1259    16536    fornecedores    TABLE     �   CREATE TABLE public.fornecedores (
    id integer NOT NULL,
    nome character varying(50),
    contato character varying(100),
    email character varying(100)
);
     DROP TABLE public.fornecedores;
       public         heap r       postgres    false    4            �            1259    16535    fornecedores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fornecedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fornecedores_id_seq;
       public               postgres    false    226    4            !           0    0    fornecedores_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fornecedores_id_seq OWNED BY public.fornecedores.id;
          public               postgres    false    225            �            1259    16529    funcionarios    TABLE     �   CREATE TABLE public.funcionarios (
    id integer NOT NULL,
    nome character varying(50),
    cargo character varying(50),
    contato character varying(100)
);
     DROP TABLE public.funcionarios;
       public         heap r       postgres    false    4            �            1259    16528    funcionarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.funcionarios_id_seq;
       public               postgres    false    4    224            "           0    0    funcionarios_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.funcionarios_id_seq OWNED BY public.funcionarios.id;
          public               postgres    false    223            �            1259    16512    vendas    TABLE     �   CREATE TABLE public.vendas (
    id integer NOT NULL,
    data_venda date,
    id_carro integer,
    id_clientes integer,
    valor_final double precision
);
    DROP TABLE public.vendas;
       public         heap r       postgres    false    4            �            1259    16511    vendas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.vendas_id_seq;
       public               postgres    false    4    222            #           0    0    vendas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.vendas_id_seq OWNED BY public.vendas.id;
          public               postgres    false    221            l           2604    16507    carro id    DEFAULT     d   ALTER TABLE ONLY public.carro ALTER COLUMN id SET DEFAULT nextval('public.carro_id_seq'::regclass);
 7   ALTER TABLE public.carro ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            k           2604    16493    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            o           2604    16539    fornecedores id    DEFAULT     r   ALTER TABLE ONLY public.fornecedores ALTER COLUMN id SET DEFAULT nextval('public.fornecedores_id_seq'::regclass);
 >   ALTER TABLE public.fornecedores ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            n           2604    16532    funcionarios id    DEFAULT     r   ALTER TABLE ONLY public.funcionarios ALTER COLUMN id SET DEFAULT nextval('public.funcionarios_id_seq'::regclass);
 >   ALTER TABLE public.funcionarios ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            m           2604    16515 	   vendas id    DEFAULT     f   ALTER TABLE ONLY public.vendas ALTER COLUMN id SET DEFAULT nextval('public.vendas_id_seq'::regclass);
 8   ALTER TABLE public.vendas ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222                      0    16504    carro 
   TABLE DATA           >   COPY public.carro (id, marca, modelo, ano, preco) FROM stdin;
    public               postgres    false    220   5/                 0    16490    clientes 
   TABLE DATA           <   COPY public.clientes (id, nome, email, contato) FROM stdin;
    public               postgres    false    218   �/                 0    16536    fornecedores 
   TABLE DATA           @   COPY public.fornecedores (id, nome, contato, email) FROM stdin;
    public               postgres    false    226   70                 0    16529    funcionarios 
   TABLE DATA           @   COPY public.funcionarios (id, nome, cargo, contato) FROM stdin;
    public               postgres    false    224   �0                 0    16512    vendas 
   TABLE DATA           T   COPY public.vendas (id, data_venda, id_carro, id_clientes, valor_final) FROM stdin;
    public               postgres    false    222   <1       $           0    0    carro_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carro_id_seq', 1, false);
          public               postgres    false    219            %           0    0    clientes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.clientes_id_seq', 1, false);
          public               postgres    false    217            &           0    0    fornecedores_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fornecedores_id_seq', 1, false);
          public               postgres    false    225            '           0    0    funcionarios_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.funcionarios_id_seq', 1, false);
          public               postgres    false    223            (           0    0    vendas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.vendas_id_seq', 1, false);
          public               postgres    false    221            s           2606    16509    carro carro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public                 postgres    false    220            q           2606    16495    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public                 postgres    false    218            y           2606    16541    fornecedores fornecedores_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fornecedores DROP CONSTRAINT fornecedores_pkey;
       public                 postgres    false    226            w           2606    16534    funcionarios funcionarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT funcionarios_pkey;
       public                 postgres    false    224            u           2606    16517    vendas vendas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_pkey;
       public                 postgres    false    222            z           2606    16518    vendas vendas_id_carro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_id_carro_fkey FOREIGN KEY (id_carro) REFERENCES public.carro(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_id_carro_fkey;
       public               postgres    false    222    4723    220            {           2606    16523    vendas vendas_id_clientes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_id_clientes_fkey FOREIGN KEY (id_clientes) REFERENCES public.clientes(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_id_clientes_fkey;
       public               postgres    false    218    4721    222               Y   x�ʡ�  ���(�L�b�0d���91��J�
f�����T��
�SJI���rDw�c�M�ДqXW7�i�	&i��#�|gYc         �   x�U�1�  ���Stԁ&@����88y �������w�^L����I�!���u�5�J����a�\��#,z���Y/�q��`�����7*G�x�9�����X�Qۜ.���S���?�MꝔ�3w-">�=1I         e   x�36173���IMJ-R�*-.����԰0ִ�4���53577��΂H8��&f��%��re�M9�J�2��2S3���5A��t�M��9���YH�b���� ��!+         �   x��1! ���+���,�9�AAS��p�������3z��j*MF����	^�#�Ra��!tge���h�oZI>)���ʕsg��<�GT:ؿ���X�\hۇ�S.���N��;*h��}B� �$�         F   x�-���0�7�BeLB�.�������1�`�0�����}�����l��C~,��?d�k�0H     