PGDMP     /    /                x            rtc_db    12.4    12.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16636    rtc_db    DATABASE     �   CREATE DATABASE rtc_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE rtc_db;
                postgres    false            �            1259    16668 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16666    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16678    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16676    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16660    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16658    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16686 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16696    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16694    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16684    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16704    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16702 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    16764    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16762    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16650    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16648    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16639    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16637    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16795    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16842    tablas_booking    TABLE     u  CREATE TABLE public.tablas_booking (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    phone character varying(30) NOT NULL,
    tripfrom character varying(30) NOT NULL,
    tripto character varying(30) NOT NULL,
    "time" character varying(10) NOT NULL,
    date date NOT NULL,
    pax integer NOT NULL,
    message character varying(255) NOT NULL
);
 "   DROP TABLE public.tablas_booking;
       public         heap    postgres    false            �            1259    16840    tablas_booking_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tablas_booking_id_seq;
       public          postgres    false    230            �           0    0    tablas_booking_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tablas_booking_id_seq OWNED BY public.tablas_booking.id;
          public          postgres    false    229            �            1259    16807    tablas_category    TABLE     �   CREATE TABLE public.tablas_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(255)
);
 #   DROP TABLE public.tablas_category;
       public         heap    postgres    false            �            1259    16805    tablas_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tablas_category_id_seq;
       public          postgres    false    222            �           0    0    tablas_category_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tablas_category_id_seq OWNED BY public.tablas_category.id;
          public          postgres    false    221            �            1259    16908    tablas_logins    TABLE     �   CREATE TABLE public.tablas_logins (
    id integer NOT NULL,
    lname character varying(100) NOT NULL,
    plate character varying(10) NOT NULL,
    valid integer NOT NULL,
    date date NOT NULL
);
 !   DROP TABLE public.tablas_logins;
       public         heap    postgres    false            �            1259    16906    tablas_logins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_logins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tablas_logins_id_seq;
       public          postgres    false    238                        0    0    tablas_logins_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tablas_logins_id_seq OWNED BY public.tablas_logins.id;
          public          postgres    false    237            �            1259    16872    tablas_members    TABLE     �  CREATE TABLE public.tablas_members (
    id integer NOT NULL,
    queue character varying(3) NOT NULL,
    area character varying(30) NOT NULL,
    title character varying(10) NOT NULL,
    fname character varying(100) NOT NULL,
    mname character varying(100),
    lname character varying(100) NOT NULL,
    mobile character varying(100),
    address character varying(255),
    plate character varying(10),
    unit character varying(50),
    orno character varying(20),
    crno character varying(20)
);
 "   DROP TABLE public.tablas_members;
       public         heap    postgres    false            �            1259    16870    tablas_members_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tablas_members_id_seq;
       public          postgres    false    232                       0    0    tablas_members_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tablas_members_id_seq OWNED BY public.tablas_members.id;
          public          postgres    false    231            �            1259    16815    tablas_offer    TABLE     �   CREATE TABLE public.tablas_offer (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    description character varying(255) NOT NULL,
    discount double precision NOT NULL
);
     DROP TABLE public.tablas_offer;
       public         heap    postgres    false            �            1259    16813    tablas_offer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_offer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tablas_offer_id_seq;
       public          postgres    false    224                       0    0    tablas_offer_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tablas_offer_id_seq OWNED BY public.tablas_offer.id;
          public          postgres    false    223            �            1259    16823    tablas_product    TABLE     �   CREATE TABLE public.tablas_product (
    id integer NOT NULL,
    category integer,
    name character varying(255) NOT NULL,
    price double precision NOT NULL,
    stock integer NOT NULL,
    image_url character varying(100) NOT NULL
);
 "   DROP TABLE public.tablas_product;
       public         heap    postgres    false            �            1259    16821    tablas_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tablas_product_id_seq;
       public          postgres    false    226                       0    0    tablas_product_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tablas_product_id_seq OWNED BY public.tablas_product.id;
          public          postgres    false    225            �            1259    16900    tablas_tripboard    TABLE       CREATE TABLE public.tablas_tripboard (
    id integer NOT NULL,
    queue character varying(3) NOT NULL,
    lname character varying(100) NOT NULL,
    r1 boolean NOT NULL,
    r2 boolean NOT NULL,
    r3 boolean NOT NULL,
    r4 boolean NOT NULL,
    r5 boolean NOT NULL
);
 $   DROP TABLE public.tablas_tripboard;
       public         heap    postgres    false            �            1259    16898    tablas_tripboard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_tripboard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tablas_tripboard_id_seq;
       public          postgres    false    236                       0    0    tablas_tripboard_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tablas_tripboard_id_seq OWNED BY public.tablas_tripboard.id;
          public          postgres    false    235            �            1259    16883    tablas_trips    TABLE     �   CREATE TABLE public.tablas_trips (
    id integer NOT NULL,
    queue character varying(3) NOT NULL,
    date date NOT NULL,
    sacrifice boolean NOT NULL
);
     DROP TABLE public.tablas_trips;
       public         heap    postgres    false            �            1259    16881    tablas_trips_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tablas_trips_id_seq;
       public          postgres    false    234                       0    0    tablas_trips_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tablas_trips_id_seq OWNED BY public.tablas_trips.id;
          public          postgres    false    233            �            1259    16831    tablas_vanrental    TABLE     �   CREATE TABLE public.tablas_vanrental (
    id integer NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    rental double precision NOT NULL
);
 $   DROP TABLE public.tablas_vanrental;
       public         heap    postgres    false            �            1259    16829    tablas_vanrental_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablas_vanrental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tablas_vanrental_id_seq;
       public          postgres    false    228                       0    0    tablas_vanrental_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tablas_vanrental_id_seq OWNED BY public.tablas_vanrental.id;
          public          postgres    false    227            �
           2604    16671    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    16681    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    16663    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16689    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    16699    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    16707    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    16767    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    16653    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16642    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    16845    tablas_booking id    DEFAULT     v   ALTER TABLE ONLY public.tablas_booking ALTER COLUMN id SET DEFAULT nextval('public.tablas_booking_id_seq'::regclass);
 @   ALTER TABLE public.tablas_booking ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �
           2604    16810    tablas_category id    DEFAULT     x   ALTER TABLE ONLY public.tablas_category ALTER COLUMN id SET DEFAULT nextval('public.tablas_category_id_seq'::regclass);
 A   ALTER TABLE public.tablas_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                       2604    16911    tablas_logins id    DEFAULT     t   ALTER TABLE ONLY public.tablas_logins ALTER COLUMN id SET DEFAULT nextval('public.tablas_logins_id_seq'::regclass);
 ?   ALTER TABLE public.tablas_logins ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �
           2604    16875    tablas_members id    DEFAULT     v   ALTER TABLE ONLY public.tablas_members ALTER COLUMN id SET DEFAULT nextval('public.tablas_members_id_seq'::regclass);
 @   ALTER TABLE public.tablas_members ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �
           2604    16818    tablas_offer id    DEFAULT     r   ALTER TABLE ONLY public.tablas_offer ALTER COLUMN id SET DEFAULT nextval('public.tablas_offer_id_seq'::regclass);
 >   ALTER TABLE public.tablas_offer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �
           2604    16826    tablas_product id    DEFAULT     v   ALTER TABLE ONLY public.tablas_product ALTER COLUMN id SET DEFAULT nextval('public.tablas_product_id_seq'::regclass);
 @   ALTER TABLE public.tablas_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226                        2604    16903    tablas_tripboard id    DEFAULT     z   ALTER TABLE ONLY public.tablas_tripboard ALTER COLUMN id SET DEFAULT nextval('public.tablas_tripboard_id_seq'::regclass);
 B   ALTER TABLE public.tablas_tripboard ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �
           2604    16886    tablas_trips id    DEFAULT     r   ALTER TABLE ONLY public.tablas_trips ALTER COLUMN id SET DEFAULT nextval('public.tablas_trips_id_seq'::regclass);
 >   ALTER TABLE public.tablas_trips ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �
           2604    16834    tablas_vanrental id    DEFAULT     z   ALTER TABLE ONLY public.tablas_vanrental ALTER COLUMN id SET DEFAULT nextval('public.tablas_vanrental_id_seq'::regclass);
 B   ALTER TABLE public.tablas_vanrental ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �          0    16668 
   auth_group 
   TABLE DATA                 public          postgres    false    209   \�       �          0    16678    auth_group_permissions 
   TABLE DATA                 public          postgres    false    211   v�       �          0    16660    auth_permission 
   TABLE DATA                 public          postgres    false    207   ��       �          0    16686 	   auth_user 
   TABLE DATA                 public          postgres    false    213   �       �          0    16696    auth_user_groups 
   TABLE DATA                 public          postgres    false    215   ;�       �          0    16704    auth_user_user_permissions 
   TABLE DATA                 public          postgres    false    217   U�       �          0    16764    django_admin_log 
   TABLE DATA                 public          postgres    false    219   o�       �          0    16650    django_content_type 
   TABLE DATA                 public          postgres    false    205   0�       �          0    16639    django_migrations 
   TABLE DATA                 public          postgres    false    203   X�       �          0    16795    django_session 
   TABLE DATA                 public          postgres    false    220   ��       �          0    16842    tablas_booking 
   TABLE DATA                 public          postgres    false    230   '�       �          0    16807    tablas_category 
   TABLE DATA                 public          postgres    false    222   �       �          0    16908    tablas_logins 
   TABLE DATA                 public          postgres    false    238   ]�       �          0    16872    tablas_members 
   TABLE DATA                 public          postgres    false    232   ��       �          0    16815    tablas_offer 
   TABLE DATA                 public          postgres    false    224   A�       �          0    16823    tablas_product 
   TABLE DATA                 public          postgres    false    226   [�       �          0    16900    tablas_tripboard 
   TABLE DATA                 public          postgres    false    236   R�       �          0    16883    tablas_trips 
   TABLE DATA                 public          postgres    false    234   ��       �          0    16831    tablas_vanrental 
   TABLE DATA                 public          postgres    false    228   ��                  0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    206            
           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);
          public          postgres    false    218                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);
          public          postgres    false    202                       0    0    tablas_booking_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tablas_booking_id_seq', 2, true);
          public          postgres    false    229                       0    0    tablas_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tablas_category_id_seq', 34, true);
          public          postgres    false    221                       0    0    tablas_logins_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tablas_logins_id_seq', 3, true);
          public          postgres    false    237                       0    0    tablas_members_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tablas_members_id_seq', 1, true);
          public          postgres    false    231                       0    0    tablas_offer_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tablas_offer_id_seq', 1, false);
          public          postgres    false    223                       0    0    tablas_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tablas_product_id_seq', 147, true);
          public          postgres    false    225                       0    0    tablas_tripboard_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tablas_tripboard_id_seq', 15, true);
          public          postgres    false    235                       0    0    tablas_trips_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tablas_trips_id_seq', 1, false);
          public          postgres    false    233                       0    0    tablas_vanrental_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tablas_vanrental_id_seq', 25, true);
          public          postgres    false    227                       2606    16793    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    16720 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    16683 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    16673    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            
           2606    16711 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    16665 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    16701 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            "           2606    16735 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    16691    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            %           2606    16709 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            (           2606    16749 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    16787     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            +           2606    16773 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219                       2606    16657 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    16655 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    16647 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            /           2606    16802 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            :           2606    16847 "   tablas_booking tablas_booking_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tablas_booking
    ADD CONSTRAINT tablas_booking_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tablas_booking DROP CONSTRAINT tablas_booking_pkey;
       public            postgres    false    230            2           2606    16812 $   tablas_category tablas_category_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tablas_category
    ADD CONSTRAINT tablas_category_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tablas_category DROP CONSTRAINT tablas_category_pkey;
       public            postgres    false    222            B           2606    16913     tablas_logins tablas_logins_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tablas_logins
    ADD CONSTRAINT tablas_logins_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tablas_logins DROP CONSTRAINT tablas_logins_pkey;
       public            postgres    false    238            <           2606    16880 "   tablas_members tablas_members_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tablas_members
    ADD CONSTRAINT tablas_members_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tablas_members DROP CONSTRAINT tablas_members_pkey;
       public            postgres    false    232            4           2606    16820    tablas_offer tablas_offer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tablas_offer
    ADD CONSTRAINT tablas_offer_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tablas_offer DROP CONSTRAINT tablas_offer_pkey;
       public            postgres    false    224            6           2606    16828 "   tablas_product tablas_product_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tablas_product
    ADD CONSTRAINT tablas_product_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tablas_product DROP CONSTRAINT tablas_product_pkey;
       public            postgres    false    226            @           2606    16905 &   tablas_tripboard tablas_tripboard_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tablas_tripboard
    ADD CONSTRAINT tablas_tripboard_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tablas_tripboard DROP CONSTRAINT tablas_tripboard_pkey;
       public            postgres    false    236            >           2606    16888    tablas_trips tablas_trips_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tablas_trips
    ADD CONSTRAINT tablas_trips_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tablas_trips DROP CONSTRAINT tablas_trips_pkey;
       public            postgres    false    234            8           2606    16839 &   tablas_vanrental tablas_vanrental_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tablas_vanrental
    ADD CONSTRAINT tablas_vanrental_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tablas_vanrental DROP CONSTRAINT tablas_vanrental_pkey;
       public            postgres    false    228                       1259    16794    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    16731 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    16732 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    16717 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    16747 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                        1259    16746 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            #           1259    16761 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            &           1259    16760 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    16788     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            )           1259    16784 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            ,           1259    16785 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            -           1259    16804 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            0           1259    16803 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            E           2606    16726 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    2828    211            D           2606    16721 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2833            C           2606    16712 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    205    2823            G           2606    16741 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    215    2833            F           2606    16736 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2841    213    215            I           2606    16755 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    217    2828            H           2606    16750 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2841    217    213            J           2606    16774 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2823    219            K           2606    16779 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2841    219    213            �   
   x���          �   
   x���          �   o  x���Ak�@����%S��ڲ驔%�&������%#�)���V�xf$��t
+����Ӣǧ�_/������x�����\����:�S^�]�M�"=�I�-�����8�u;ޖ�k?���|����9�3���{ZDi�E�r5�W����7�u3�F�_o?|��;��wc��I����}	�+�������	h�X��%��G|L`C!CГ@) �Hdz*(`K�����Kî*�ǆ=� t����p2���=���@x�-�h�6<cN�O�j�������>3.ٌCϥ�M&���1{�q؄9L�G��}NN��O!���d<\�J�?��r�VOyt�X�U��wr�{fA�Z�>I�<@��'P�D�x�>��6�ݮ�u3	;!� pU�?,�������D�S�(������!-����Z'��@�jyN���q�7�-�X��y[7�Ux��	������:� �����@� z��w�rHx2����|��t�S���3����1��^Y�^~�[3�鍁�z�zc���v6��c�[;���o{;��&a�[}�'�#�{����]/|���-ou��Ϫ��t���	^3�!�$Y���JX�jz}����"|�x�۔�߼ص�p�F��
OI�*P�O)�@����(�7��;l\uj���/� l���܇*P�O) ��
��)�wJ�ͯ��G��n ��'��;�������@�h~�������fݤU���y7�HX/Up��B��H!<	@!�^��K(�"V*���	H��\\�P���j(�2b��+� J�p_���o�p�KYuB	����F(��w}`|�%=��C웛�l      �     x�=��n�@��>�L���ZV�iR�hC"���2�"ka���֧/h�a&_��g� �����W�l���Mh�,j4��P$*A룪Z�A�Q�vBH�H7%�:�@ݖPp��j�+_�+�D~��!M/q-m�@ͣ��'#�1[n�!��W��Hg@-֧�a����^�+6��<�O�{_�:ފf�nƭ�,ݑ������������aq|��S<���2D�K�k1�r�;l�i]5�7H
!;�6�� qR��2��X���խ�؈0��q)1�	�G��^�s�mF      �   
   x���          �   
   x���          �   �  x���Mo�0��{?E�K�F-?�߽�4��4uS��2M(%��A8TU���6ɺ�x�KB��rB~1������lrq�5[�n��+��j^O�b����z��.�q�ϚE]M�Ūg��]9k�����\o�7�Z��q6�>�����6��A��jʪ�6���i�n[nQv��������	r�gܞ��@{%���I���Ixڇ�yS���}��a�(�n�x8΋�,�}����3�5��ǣ�!e�~���0g���o��؅�wT���*��<�'�ޞ�v��Ξ�1�����q�ԋ,��&�?�M^]�ʗ�9,A`��BE�E:5T���PA���B�~��<�Ҁ�B%*uT(8�T��P�X(p�4�� �+�t�N��Ri��}��KMj�H�*ˤ�A`�R�Z��/��yj�K��C]j��
U�I��#jੵ@
jwL?�RjD�H�#2!u�A��$ ����L��׈� 5(!%�dZ�.*AjVK*�h3'z�CDK�������27��.Aj^B�K�c8�Ű��&&$Ĥ�P��0�2AjfB�L��[5f8]#j��؄���1�7?F؄��		6� �b'F؄��		6/4C5,-�֖Rcl��"6�5ajjBBM6l����	SSj�S��0FԄ��I�V�m������*�&v�?
�y�ϭGG �wo      �     x����k� �{�
oi!���c�z��nנ�Z[�5���3��Ȯo7����{
և���D��郸��>�+�
�l�66��$�iQ�\c��"i�����k$3Z���N�2-�t����kQ������eН��A���_y����}�O^'�Q?��2��m�8�1���&T�����׳��p>c^���vD�F<�>'52nX���P� �.2<���a֧�� &��p�V!����dǥ��&��S���90/vYB�Y�(�_��/�      �   7  x����n�8�}�B���T��M���E`�閠-��T���y�9��4���g#İc8��S�����_������̆�	����u�޶���n�ބ�.s�p�u���?���ٗ����ç��e����|7M�o�5cl��\3�挳w�|�ue%L%Y^�c����7�$�?�ӷkeY�����]+0�X �M���6����-����7IFђTB�HȰn?��ڸ������5rƈ��/'�?���=;�i��ؔ	F++�Q��5��v��8l�Gۺ��������2�ie�R&e�/�u���JZ�Y��K�|9���hĩ�$���ƍӼ.��hȁ�
`����!>'����m����.��5�vS�SM��h[?������b�+/&��ă$�.�K�Y��ZY�2��{�b�VQ�B��*�������/�u3[�I˒�r	��x�rA���G�k ��̠BJb�\��a��6��i�,5p��.bYn+����T!�ￇ�i�ć�A�o&�_g%��)�TLV����F��֨U�27�#S�~Z��#k-��R(�@KQ)�X�E��F��9h���TS�@ڝ�˚-2�3/
�E�(R�Y̤��6�����4-�L@xH־�x]�b��@�.�1i�����Bjj�H{��)�a<_w��uʙ#[qL���	�-���FF@����T��瓶/��dN��������M�sõ�֤��)�Ϩ5�C%X��2Ԝ�A���#%7B�;�������I���&�
o�hOF�v.���
sd*��.�A77�i�ޱ      �   x  x����n�@ �{��[Mlu�4˜��	�c��ah��6�پ~)#M> ���Pu����s(�pL����I0S�\o^��:���xި�#�����=������^޸�M�<�;��c�q���N;�qZmI35?�Q�S����B1�T�wxb��2�Et���m�j�6��l���B��F8�r�MBۼq�(�,sNmkR���C�� <��>�5s(F�!	[֘WǾ"@��K$�R�"�b	4e����9k��m�
Wɷ�����=�d�[b'�L>��4Z�m�����@�#�e�����W9;{�u��&�dm��M�`�	(H,��Td�_@x~���� ~���7b��i�'<�����-}�J����_�TL�9�
��M��Aɵ-��r�N�c�C� �t�R��/R�� �84E��A���Q��)���[����	�@��c,���?��5'U�==��]�c���u��Μ,�de��4y��/tm�f��L�^f�5]d��	1��38�lq�W�ǡ�*6bý��C����3<�i�`a�W����b�g�-$�*nfw+���w�v�O:��9~����������״��/�y��(�N�6���W� ���2�ӇD%��"���z��q�      �   �   x���1o�0F���K@2��@��K!���vR�Ďl����{٘�O�<^T��#��X�xkzuy����΍1W�;�+A@� 	��FO�[5�����W������s���Y���`��w�Tp���yV�Ӓ�l�����PFw��c����P��>�etI7K��,���oZ{R��L+]�����h�Oy)N�k�p�����vK      �   >  x���AO�@�����Ic0���HR�X����cݰ�mf�&�{w�g���7�f�[�������ڮЪ��Xht�%z�-a��6�@E�d�ze�>��n���.��3zO���X��l��[��<�d�^�:��Z�L��yjD��[�ltWˎ>���T�u���=�h:�6X�^t�*7Uy*�o��_���o�>(�æc���e�ѥN�C��I�9�2�ȍ���$���ba���~e�uZ,�QV%^N�	�����@~�l���sB^�??�*�Bf�ɱ+����pzrZ�|}���`W�&��������      �   �   x���v
Q���W((M��L�+IL�I,���O��+V��L�Q��K�M�Q(�I,Re�9 � GS!��'�5XA�PGA�,3''1O��KI1624 2A�FF��F���\�Բ��� @�ς���ڗ�mh`d��J.. �c:      �   6  x�͙[o�8���+�����'FRl���rP�e�4�"@.�\���(Ŗ����z�C�F��sΜ�C�,ꆅ��������ϯ������_�׷�/����)�������m�o7������?n��{��WO�w���������)�}�y������){z~|:e?���]�rU,�g8e'K'����_o/�w��2^�ob�n��ܯۿ����US,}�'w�������VeIOWy�x��*,��b���� �F�ە��*�O���)��8D�!���c3_�r]%��Y<�HŔLk"���(��v�RY'��� ��+���,C"!�ĺ)�
X&�J�97�������Ҳ�b�!HrPd�"�@��MQWq��E�}Yˎ7�I͜rz@����!9 ���тK��G%"����gE�-�ɦ�iX��f���шWR��[��
�� q��`�#0|�:,w���2�&}������=�,��q��H%�ҷ �ND1&!1G�ԑ��>��Z��r|��u#�3)�N��\�L�i�:6���>+�ZT*��� �r"`lc��Y�:���U����/�Z��%�0�zX+>��L8���N]����`�w��,{-د���F1�|�&^Tډq�	��l�m������ѥ�C~R7�:�x�*�u_��Y�)�&C/YY4j�K� �\w=QpA*R�B+���͋�d�������gs_�u�%�I����e�ë@D�����J���
��k�X�d�I-qQ�^8 �T
&f/����Ja�H$��h�J
��L���^�Xz������W�,}����T���&�߀5�CQ�G�;ۥZ���7�\)�±ܚ�lW{o��W���#�(&�޴W�4ҍƠ�R(��J�l�ک�H���VO!�����2�WeVr��%��8Ǚ�f�����h���N�&ã��;�7wO��6���e��.ꯩVҕp\��/����E]���ǊU��ڡ�pL��y���{��C��&�&4q��*���t`P2�j�_VW�f��N@��4�mӾ�ؾ㲉�Ȗ�����n�~b�8�́6�%�`�+��]�E�h��r*��%(�_g��x���y�_��;]PFGg��B���p������|ۉ�hJ���O<�A��˂���{��B��if�B�F�i��!}b*� �C ��������_���b�7S�S��T����ߦr�ڦr�p1��B!sP 9��I�R�V�3�%Y��o�����M�������&��:|�~�d�e����34��ƠG���%Md�eA�<y�t�,������L$�ᲨCJ�ۃ�u�M��0K6!��٦'�0�A��m؝SR���D"�h#g�f��p,|�a/=���o#Z3��F��X�>
*���n$��N)\M���9�`�W����0��|;���"y�FF�2�\�b��|��~޵�)Wt�A"ŧb�)p���yY4�p8�V)���DE`����>���AA�� ����R(L��,.|�w�\��h�O|�n�<�|�~a)<��T�[�6�7��
����x|��/��4�      �   
   x���          �   �  x���[w�8���S��$}�����'l���6^ N�_�`[����å;ɧ���q��<LOTY��TRIB0�X�i�pb���._�E��u���_Ƌn��+,������W�5�
��/�a�/^�_;/�G�_`��tn寠~��o���r���W��%�+������6/7_��ǐBI!�~�"���⟛��F]~5-�x��/�ҮV�Ż�G�PK��3�x��������PO!�|�b.�nD�;�uv��&)�Eί�x��k� ��v�����H\�n�VV����ԧ}!�Kԥ�i��Yq�?��UjY(�Џ|�G�x������IM�>�5K�uڐU>B��x�v�	�􆤍�ufW��v?�uP�J
�{,x�H�X�������<�,�!��j
h���=���?�,@6� �o�c�R�A�^c���7a�T�0�cz�A)k��n)/X�C��@�����ɡ)�=0L�nġ{���ޞ)��Ú�`M�<��W�(`����}_�'o�	E`��ZM�;�~�'�L���!���tu�0O�Q��t�9��;��X����"BC謜�k����Ҡ���1|Yg��|������$��V<^Ó�*Zꑈs�����1��D|���ǘGa<�ኃ�c�	�g�6$��j4[`�>c��k�v�8x���sP���gļ9c=e<(���)N��C��#o��Q��s��hҢ���S�-}����Z/h��}r2�M�n����02&�Ѱ�C�0F�Ć�~����D��Z���esrp�<xۍ�PFI�j\���o~H;h �����3�a�w/B�r����1u��ʗ��v/M�X�c+6��� D|�@�"�����h�4�-�%s���ܓ�ϕ'j8�"&�E�Z��.��{�K������,��8�2A��e��[Cύ�U!�E/r�2C�<�G�%k�xn����M0%�w��ܘ��F�X�-Ĭ�6v�gw�,4������Bݓ��I/`����x|���5ak�N����()~����/���^�&�3�1_~��`�~A�YTl��a-�y�+g����>�#BN�o��Fe�ѰC�hfۘ�+�]�����ǐYD�g�4�ʅ�,������A�%�~l�t�I ��jX�^����v�21��e��\�H.��c�Ћ�[џ���3L�{*-���#����<و9��w�\r=��6�q� +�;A��y���0?`��"�l����O��EL��~� {����S�!Us�e��)�X��"�+U�l-��N���������U:+����,)��	�:.s��_Y'���j&°�g�"�	�C�8x}<�^�'j-�蓡e��;0&]0��~h��Z��ʧq/R��)98�,Y����Y65c�6`�b%$F�ݖ���v�/�&s�/9��n�BĶj]���h���S<�����;�cw�2�ۆ�����r.�
��2�1h�sB��H&K���hZ�*6�,9'����FNG��fq�^7aPŚ�p��e�a�()�G���i��'�C�^�]1�3��a�;��¼$Z���3�gr��`�{�7u���N貸����j�r�J����X6c�t�S���
���fCl�X��2��lHeh�]\^u� {�䗘�����p
���]��A!\ބ�P����z~�����\���+0 o�j������I��d���Ȍ���#���������L�G4���;�/����99y=#���'���6p\��8�S��y�6r����ea:b��%�6#'mf�㡁�8�4U��*�����s��uƐ��[��Î����Z�.ug]h�S�	9�ZDXo֥�}pkA���fk�m�Wp�i9�,z?��.��(��m0�M�1�1�=����O�nN��
y���۬�[��_���p��+�c�;3An��9���qR�H\UJSrb��p4��=|f�����Qxt�a�i����0�����[>�]�G/�RZ���N�Zʚ���M�0��⌊S�䒚�%�h��c�_�g�G.����#���'�Q���9���>b�+&6fҚ�$ἯΑ8�DK�;D����t�F����.��3L�a��������m�7ҭ��<�Hr��-9�r
�6����a]�>6&�95i�[�.H��{���%�����NȖ���il�p{�}�T�Vn��q�e�_�I^	�m%�񰣍���͂���S1x�mxԞ��=��99z��3ҵ��IA�,x�1�d��(�ƹ���u0�8k�G��p�ن�]�O��"�<+dfNK�o-��U����p�]�b���m>X���<�k\-�8%x_�_`y�/���:>ΌH�}�E�Ra+`G���=�b�=�@�/�[�ѽxP8�����7蚺x���&��7/�����X�P,�0��'�>��c������������j�����]$a�c���i(��ʟ05[Gڙ8�٢!�j�Ï�����c��350�~�˜�8=��%�d�$=)�w\�H.g��ǆ�iL�.�"۸���US�}r�m��b��$v���.s��x��N�������=9�6�O.ސg0��� Y�Y+g�������!9�6�[�s���ǟ1&���[B���0!GT�t5=���v���a?*���D�%�m�	N���0�Z�9���t�1�8u�Oa������f��J�U�M��N���7�j�)9R����������x�7��+I?��\֓��k�Y�{ag�S�Z���������an�E�ȟq�Yӓ7��W�����dR~f��$�I��/Τ�[RX�+�~qQ�p�HAn�=e+�l��(Y�Eb����>=����μ��!�JmvHWt���6RF�,�~�-����<!��f��[��5��s�	��O�x��d�8�-�>
���s+�t�ii���-�Y�az��x��u:�({r�{���\�}�{��]�<�?��y�����W;�G@R����J�+�K�aė�D������.:��jd�L|}\ى�P�'ۯ��愹)J{�@kf��M�G�JC?�	�$�:�</YӃ�r�H��P�J��3�GWs�{���ο@���"�
����06F��K���X��t�OƊ�0�o!�� �P�Z@��|`}�������;��2��cE�OqJ�%7z)Y����K���ݽ�Mz��1V�N.F��8�C��_h���ݠ�_P��2��f0z���Y�1}�I���s���d�v4�E�
�>��S�򔆉]P���E 	
)?�ܽ�gZJ5OiZ�>���6�W]�p��:�_
pO��S�s[���^���n��:w�ϋ]0%����@��'X���8�v�9oJϬd���	^��j�+�-�nѷ=&��M$}b0�R̙�o�Z�2u�n��媳���ZY	�{���t׺Ȓ3��zIY�7s�St�G/�q(���=��&�s/7ln����@+�D/��ʘ�@mE8��$�Ӿ7zE�ᶳb?�eQN�U��rZ��t�r0^�U������v��̋�[�R*d��C����\u*�e�Q���VE�k͊\k�ZNn���G�!�������D��l�%��㇠���O;�s^�#�Π��s�����"w���u����űԶ�,Yrn�Uh@�W���]d��,u���Ӟ���Aɝ6�hL�];�m�dy�i6<��8�y	�ȇ^E�*J�z�?C��T�F[��<��APX�ѰcL0��������_�X�p      �     x���Mk�0�{~�om��8�`'�����g��2�5�@�ui�����u�0�A(�˃d��zU�B�ډ����ݥi���r�S�ٌG1�K�5uS��G�m�X	V��a��󤼘㯙��[�l�<��[3�����>��oIȒ�l�-)Y�0��V���%#�����09a�+��)>Ɋ$� 1ڃǧY�fޮ��+�e(;(��%�����x�2�bd���\�8I�+C�B��5����ו
A�{���{mXFe��n��Ĉ�����u2Q���tG      �   
   x���          �   D  x����k�0�EnmA��Gײ������v�*��ؿ��m�$��wK0��K��e�|�Q��T�ɵ�pV�\8t�7�
8Y��'�d>��N1��z�`E����>'K�Źҟ=Ny	z�=	� X�z�S��߀��pC#<�R�\�h��Ŗvl��J,+AҦv��An�HQɺ�*���ɡ�*p;ǽ�d�%�!\tD����E�0�-]�7�8^�z�ǄcƮi��%3�����C�������o*�=R�*��gtG��v���#J��7�Ԡ�)D�,48����+��G9��}���լ�{��	�.     