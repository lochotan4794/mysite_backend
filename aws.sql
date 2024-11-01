PGDMP  !    (                |            NEW3 %   14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)    16.0 �    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    16385    NEW3    DATABASE     n   CREATE DATABASE "NEW3" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE "NEW3";
                ubuntu    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            ?           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    16386 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    ubuntu    false    4            �            1259    16389    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          ubuntu    false    4    209            @           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          ubuntu    false    210            �            1259    16390    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    ubuntu    false    4            �            1259    16393    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          ubuntu    false    211    4            A           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          ubuntu    false    212            �            1259    16394    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    ubuntu    false    4            �            1259    16397    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          ubuntu    false    4    213            B           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          ubuntu    false    214            �            1259    16398 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    ubuntu    false    4            �            1259    16403    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    ubuntu    false    4            �            1259    16406    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          ubuntu    false    4    216            C           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          ubuntu    false    217            �            1259    16407    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          ubuntu    false    4    215            D           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          ubuntu    false    218            �            1259    16408    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    ubuntu    false    4            �            1259    16411 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          ubuntu    false    4    219            E           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          ubuntu    false    220            �            1259    16412    blog_appendix    TABLE     �   CREATE TABLE public.blog_appendix (
    id bigint NOT NULL,
    text character varying(200) NOT NULL,
    "indentLevel" integer NOT NULL,
    link character varying(200) NOT NULL,
    post_id bigint NOT NULL,
    previous_id bigint
);
 !   DROP TABLE public.blog_appendix;
       public         heap    ubuntu    false    4            �            1259    16415    blog_appendix_id_seq    SEQUENCE     }   CREATE SEQUENCE public.blog_appendix_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_appendix_id_seq;
       public          ubuntu    false    221    4            F           0    0    blog_appendix_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.blog_appendix_id_seq OWNED BY public.blog_appendix.id;
          public          ubuntu    false    222            �            1259    16416    blog_citation    TABLE     �   CREATE TABLE public.blog_citation (
    id bigint NOT NULL,
    text character varying(1000) NOT NULL,
    post_id bigint NOT NULL,
    previous_id bigint
);
 !   DROP TABLE public.blog_citation;
       public         heap    ubuntu    false    4            �            1259    16421    blog_citation_id_seq    SEQUENCE     }   CREATE SEQUENCE public.blog_citation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_citation_id_seq;
       public          ubuntu    false    4    223            G           0    0    blog_citation_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.blog_citation_id_seq OWNED BY public.blog_citation.id;
          public          ubuntu    false    224            �            1259    16422    blog_comment    TABLE     w  CREATE TABLE public.blog_comment (
    id bigint NOT NULL,
    name character varying(80) NOT NULL,
    email character varying(254) NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    post_id bigint NOT NULL,
    reply_to_id bigint,
    user_id integer NOT NULL
);
     DROP TABLE public.blog_comment;
       public         heap    ubuntu    false    4            �            1259    16427    blog_comment_id_seq    SEQUENCE     |   CREATE SEQUENCE public.blog_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.blog_comment_id_seq;
       public          ubuntu    false    4    225            H           0    0    blog_comment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;
          public          ubuntu    false    226                       1259    17197 	   blog_html    TABLE     �   CREATE TABLE public.blog_html (
    id bigint NOT NULL,
    content text NOT NULL,
    slug character varying(100) NOT NULL,
    abstract character varying(1000) NOT NULL
);
    DROP TABLE public.blog_html;
       public         heap    ubuntu    false    4                        1259    17196    blog_html_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_html_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_html_id_seq;
       public          ubuntu    false    257    4            I           0    0    blog_html_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_html_id_seq OWNED BY public.blog_html.id;
          public          ubuntu    false    256            �            1259    17190 
   blog_image    TABLE     f   CREATE TABLE public.blog_image (
    id bigint NOT NULL,
    image character varying(100) NOT NULL
);
    DROP TABLE public.blog_image;
       public         heap    ubuntu    false    4            �            1259    17189    blog_image_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_image_id_seq;
       public          ubuntu    false    255    4            J           0    0    blog_image_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_image_id_seq OWNED BY public.blog_image.id;
          public          ubuntu    false    254            �            1259    16428 
   blog_index    TABLE     �   CREATE TABLE public.blog_index (
    id bigint NOT NULL,
    "position" integer NOT NULL,
    type integer NOT NULL,
    id_type integer NOT NULL,
    style_id integer NOT NULL,
    post_id bigint NOT NULL
);
    DROP TABLE public.blog_index;
       public         heap    ubuntu    false    4            �            1259    16431    blog_index_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_index_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_index_id_seq;
       public          ubuntu    false    4    227            K           0    0    blog_index_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_index_id_seq OWNED BY public.blog_index.id;
          public          ubuntu    false    228            �            1259    16432 
   blog_order    TABLE     �   CREATE TABLE public.blog_order (
    id bigint NOT NULL,
    kind integer NOT NULL,
    kind_id integer NOT NULL,
    order_id integer NOT NULL,
    post_id bigint NOT NULL
);
    DROP TABLE public.blog_order;
       public         heap    ubuntu    false    4            �            1259    16435    blog_order_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_order_id_seq;
       public          ubuntu    false    4    229            L           0    0    blog_order_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_order_id_seq OWNED BY public.blog_order.id;
          public          ubuntu    false    230            �            1259    16436 	   blog_post    TABLE       CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    thumnail character varying(100) NOT NULL,
    abstract character varying(1000) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    created_on timestamp with time zone NOT NULL,
    status integer NOT NULL,
    total_visited integer NOT NULL,
    lang integer NOT NULL,
    eng_ver_id bigint,
    pdf character varying(100) NOT NULL,
    video character varying(200) NOT NULL,
    next_post_id bigint,
    previous_post_id bigint,
    topic integer NOT NULL,
    ava character varying(1000) NOT NULL,
    features character varying(50)[],
    "modelLink" text,
    static integer NOT NULL,
    "currVer" double precision NOT NULL
);
    DROP TABLE public.blog_post;
       public         heap    ubuntu    false    4            �            1259    16441    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          ubuntu    false    231    4            M           0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          ubuntu    false    232            �            1259    16442    blog_relationship    TABLE     {   CREATE TABLE public.blog_relationship (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 %   DROP TABLE public.blog_relationship;
       public         heap    ubuntu    false    4            �            1259    16445    blog_relationship_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_relationship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_relationship_id_seq;
       public          ubuntu    false    4    233            N           0    0    blog_relationship_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_relationship_id_seq OWNED BY public.blog_relationship.id;
          public          ubuntu    false    234            �            1259    16446 
   blog_style    TABLE     �   CREATE TABLE public.blog_style (
    id bigint NOT NULL,
    name integer NOT NULL,
    "indentLevel" integer NOT NULL,
    "fontSize" integer NOT NULL,
    decor integer NOT NULL,
    "fontWeight" integer NOT NULL
);
    DROP TABLE public.blog_style;
       public         heap    ubuntu    false    4            �            1259    16449    blog_style_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_style_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_style_id_seq;
       public          ubuntu    false    4    235            O           0    0    blog_style_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_style_id_seq OWNED BY public.blog_style.id;
          public          ubuntu    false    236            �            1259    16450    blog_tag    TABLE     d   CREATE TABLE public.blog_tag (
    id bigint NOT NULL,
    title character varying(200) NOT NULL
);
    DROP TABLE public.blog_tag;
       public         heap    ubuntu    false    4            �            1259    16453    blog_tag_id_seq    SEQUENCE     x   CREATE SEQUENCE public.blog_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.blog_tag_id_seq;
       public          ubuntu    false    237    4            P           0    0    blog_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;
          public          ubuntu    false    238            �            1259    16454 	   blog_text    TABLE     '  CREATE TABLE public.blog_text (
    id bigint NOT NULL,
    content text NOT NULL,
    link character varying(100) NOT NULL,
    role integer NOT NULL,
    image character varying(100) NOT NULL,
    "cssId" character varying(100) NOT NULL,
    post_id bigint NOT NULL,
    previous_id bigint
);
    DROP TABLE public.blog_text;
       public         heap    ubuntu    false    4            �            1259    16459    blog_text_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_text_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_text_id_seq;
       public          ubuntu    false    4    239            Q           0    0    blog_text_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_text_id_seq OWNED BY public.blog_text.id;
          public          ubuntu    false    240            �            1259    16460    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    ubuntu    false    4            �            1259    16466    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          ubuntu    false    4    241            R           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          ubuntu    false    242            �            1259    16467    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    ubuntu    false    4            �            1259    16470    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          ubuntu    false    4    243            S           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          ubuntu    false    244            �            1259    16471    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    ubuntu    false    4            �            1259    16476    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          ubuntu    false    4    245            T           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          ubuntu    false    246            �            1259    16477    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    ubuntu    false    4            �            1259    16482    polls_choice    TABLE     �   CREATE TABLE public.polls_choice (
    id bigint NOT NULL,
    choice_text character varying(200) NOT NULL,
    votes integer NOT NULL,
    question_id bigint NOT NULL
);
     DROP TABLE public.polls_choice;
       public         heap    ubuntu    false    4            �            1259    16485    polls_choice_id_seq    SEQUENCE     |   CREATE SEQUENCE public.polls_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.polls_choice_id_seq;
       public          ubuntu    false    248    4            U           0    0    polls_choice_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.polls_choice_id_seq OWNED BY public.polls_choice.id;
          public          ubuntu    false    249            �            1259    16486    polls_question    TABLE     �   CREATE TABLE public.polls_question (
    id bigint NOT NULL,
    question_text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.polls_question;
       public         heap    ubuntu    false    4            �            1259    16489    polls_question_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.polls_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.polls_question_id_seq;
       public          ubuntu    false    4    250            V           0    0    polls_question_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.polls_question_id_seq OWNED BY public.polls_question.id;
          public          ubuntu    false    251            �            1259    16490    users_userprofile    TABLE     �   CREATE TABLE public.users_userprofile (
    id bigint NOT NULL,
    phone_number character varying(100),
    avatar character varying(100) NOT NULL,
    user_name_id integer NOT NULL,
    accept_email boolean NOT NULL
);
 %   DROP TABLE public.users_userprofile;
       public         heap    ubuntu    false    4            �            1259    16493    users_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_userprofile_id_seq;
       public          ubuntu    false    4    252            W           0    0    users_userprofile_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_userprofile_id_seq OWNED BY public.users_userprofile.id;
          public          ubuntu    false    253            �           2604    16494    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    210    209            �           2604    16495    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    212    211            �           2604    16496    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    214    213            �           2604    16497    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    218    215            �           2604    16498    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    217    216            �           2604    16499    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    220    219            �           2604    16500    blog_appendix id    DEFAULT     t   ALTER TABLE ONLY public.blog_appendix ALTER COLUMN id SET DEFAULT nextval('public.blog_appendix_id_seq'::regclass);
 ?   ALTER TABLE public.blog_appendix ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    222    221            �           2604    16501    blog_citation id    DEFAULT     t   ALTER TABLE ONLY public.blog_citation ALTER COLUMN id SET DEFAULT nextval('public.blog_citation_id_seq'::regclass);
 ?   ALTER TABLE public.blog_citation ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    224    223            �           2604    16502    blog_comment id    DEFAULT     r   ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);
 >   ALTER TABLE public.blog_comment ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    226    225            �           2604    17200    blog_html id    DEFAULT     l   ALTER TABLE ONLY public.blog_html ALTER COLUMN id SET DEFAULT nextval('public.blog_html_id_seq'::regclass);
 ;   ALTER TABLE public.blog_html ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    256    257    257            �           2604    17193    blog_image id    DEFAULT     n   ALTER TABLE ONLY public.blog_image ALTER COLUMN id SET DEFAULT nextval('public.blog_image_id_seq'::regclass);
 <   ALTER TABLE public.blog_image ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    254    255    255            �           2604    16503    blog_index id    DEFAULT     n   ALTER TABLE ONLY public.blog_index ALTER COLUMN id SET DEFAULT nextval('public.blog_index_id_seq'::regclass);
 <   ALTER TABLE public.blog_index ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    228    227            �           2604    16504    blog_order id    DEFAULT     n   ALTER TABLE ONLY public.blog_order ALTER COLUMN id SET DEFAULT nextval('public.blog_order_id_seq'::regclass);
 <   ALTER TABLE public.blog_order ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    230    229            �           2604    16505    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    232    231            �           2604    16506    blog_relationship id    DEFAULT     |   ALTER TABLE ONLY public.blog_relationship ALTER COLUMN id SET DEFAULT nextval('public.blog_relationship_id_seq'::regclass);
 C   ALTER TABLE public.blog_relationship ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    234    233            �           2604    16507    blog_style id    DEFAULT     n   ALTER TABLE ONLY public.blog_style ALTER COLUMN id SET DEFAULT nextval('public.blog_style_id_seq'::regclass);
 <   ALTER TABLE public.blog_style ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    236    235            �           2604    16508    blog_tag id    DEFAULT     j   ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);
 :   ALTER TABLE public.blog_tag ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    238    237            �           2604    16509    blog_text id    DEFAULT     l   ALTER TABLE ONLY public.blog_text ALTER COLUMN id SET DEFAULT nextval('public.blog_text_id_seq'::regclass);
 ;   ALTER TABLE public.blog_text ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    240    239            �           2604    16510    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    242    241            �           2604    16511    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    244    243            �           2604    16512    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    246    245            �           2604    16513    polls_choice id    DEFAULT     r   ALTER TABLE ONLY public.polls_choice ALTER COLUMN id SET DEFAULT nextval('public.polls_choice_id_seq'::regclass);
 >   ALTER TABLE public.polls_choice ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    249    248            �           2604    16514    polls_question id    DEFAULT     v   ALTER TABLE ONLY public.polls_question ALTER COLUMN id SET DEFAULT nextval('public.polls_question_id_seq'::regclass);
 @   ALTER TABLE public.polls_question ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    251    250            �           2604    16515    users_userprofile id    DEFAULT     |   ALTER TABLE ONLY public.users_userprofile ALTER COLUMN id SET DEFAULT nextval('public.users_userprofile_id_seq'::regclass);
 C   ALTER TABLE public.users_userprofile ALTER COLUMN id DROP DEFAULT;
       public          ubuntu    false    253    252                      0    16386 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          ubuntu    false    209   Z@      
          0    16390    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          ubuntu    false    211   w@                0    16394    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          ubuntu    false    213   �@                0    16398 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          ubuntu    false    215   �C                0    16403    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          ubuntu    false    216   HE                0    16408    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          ubuntu    false    219   eE                0    16412    blog_appendix 
   TABLE DATA           \   COPY public.blog_appendix (id, text, "indentLevel", link, post_id, previous_id) FROM stdin;
    public          ubuntu    false    221   �E                0    16416    blog_citation 
   TABLE DATA           G   COPY public.blog_citation (id, text, post_id, previous_id) FROM stdin;
    public          ubuntu    false    223   �G                0    16422    blog_comment 
   TABLE DATA           v   COPY public.blog_comment (id, name, email, body, created, updated, active, post_id, reply_to_id, user_id) FROM stdin;
    public          ubuntu    false    225   �O      8          0    17197 	   blog_html 
   TABLE DATA           @   COPY public.blog_html (id, content, slug, abstract) FROM stdin;
    public          ubuntu    false    257   $P      6          0    17190 
   blog_image 
   TABLE DATA           /   COPY public.blog_image (id, image) FROM stdin;
    public          ubuntu    false    255   �z                0    16428 
   blog_index 
   TABLE DATA           V   COPY public.blog_index (id, "position", type, id_type, style_id, post_id) FROM stdin;
    public          ubuntu    false    227   �z                0    16432 
   blog_order 
   TABLE DATA           J   COPY public.blog_order (id, kind, kind_id, order_id, post_id) FROM stdin;
    public          ubuntu    false    229   �z                0    16436 	   blog_post 
   TABLE DATA           �   COPY public.blog_post (id, title, slug, thumnail, abstract, updated_on, created_on, status, total_visited, lang, eng_ver_id, pdf, video, next_post_id, previous_post_id, topic, ava, features, "modelLink", static, "currVer") FROM stdin;
    public          ubuntu    false    231   �z                 0    16442    blog_relationship 
   TABLE DATA           @   COPY public.blog_relationship (id, post_id, tag_id) FROM stdin;
    public          ubuntu    false    233   ��      "          0    16446 
   blog_style 
   TABLE DATA           ^   COPY public.blog_style (id, name, "indentLevel", "fontSize", decor, "fontWeight") FROM stdin;
    public          ubuntu    false    235   >�      $          0    16450    blog_tag 
   TABLE DATA           -   COPY public.blog_tag (id, title) FROM stdin;
    public          ubuntu    false    237   ɚ      &          0    16454 	   blog_text 
   TABLE DATA           b   COPY public.blog_text (id, content, link, role, image, "cssId", post_id, previous_id) FROM stdin;
    public          ubuntu    false    239   �      (          0    16460    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          ubuntu    false    241   R�      *          0    16467    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          ubuntu    false    243   ��      ,          0    16471    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          ubuntu    false    245   l�      .          0    16477    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          ubuntu    false    247   ��      /          0    16482    polls_choice 
   TABLE DATA           K   COPY public.polls_choice (id, choice_text, votes, question_id) FROM stdin;
    public          ubuntu    false    248   \�      1          0    16486    polls_question 
   TABLE DATA           E   COPY public.polls_question (id, question_text, pub_date) FROM stdin;
    public          ubuntu    false    250   y�      3          0    16490    users_userprofile 
   TABLE DATA           a   COPY public.users_userprofile (id, phone_number, avatar, user_name_id, accept_email) FROM stdin;
    public          ubuntu    false    252   ��      X           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          ubuntu    false    210            Y           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          ubuntu    false    212            Z           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          ubuntu    false    214            [           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          ubuntu    false    217            \           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);
          public          ubuntu    false    218            ]           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          ubuntu    false    220            ^           0    0    blog_appendix_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.blog_appendix_id_seq', 275, true);
          public          ubuntu    false    222            _           0    0    blog_citation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.blog_citation_id_seq', 74, true);
          public          ubuntu    false    224            `           0    0    blog_comment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.blog_comment_id_seq', 11, true);
          public          ubuntu    false    226            a           0    0    blog_html_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_html_id_seq', 11, true);
          public          ubuntu    false    256            b           0    0    blog_image_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_image_id_seq', 6, true);
          public          ubuntu    false    254            c           0    0    blog_index_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_index_id_seq', 1, false);
          public          ubuntu    false    228            d           0    0    blog_order_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_order_id_seq', 1, false);
          public          ubuntu    false    230            e           0    0    blog_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_post_id_seq', 89, true);
          public          ubuntu    false    232            f           0    0    blog_relationship_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.blog_relationship_id_seq', 77, true);
          public          ubuntu    false    234            g           0    0    blog_style_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_style_id_seq', 19, true);
          public          ubuntu    false    236            h           0    0    blog_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_tag_id_seq', 34, true);
          public          ubuntu    false    238            i           0    0    blog_text_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.blog_text_id_seq', 1518, true);
          public          ubuntu    false    240            j           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 286, true);
          public          ubuntu    false    242            k           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);
          public          ubuntu    false    244            l           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 57, true);
          public          ubuntu    false    246            m           0    0    polls_choice_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.polls_choice_id_seq', 1, false);
          public          ubuntu    false    249            n           0    0    polls_question_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.polls_question_id_seq', 1, false);
          public          ubuntu    false    251            o           0    0    users_userprofile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_userprofile_id_seq', 5, true);
          public          ubuntu    false    253            �           2606    16521    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            ubuntu    false    209            �           2606    16523 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            ubuntu    false    211    211            �           2606    16525 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            ubuntu    false    211            �           2606    16527    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            ubuntu    false    209                        2606    16529 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            ubuntu    false    213    213                       2606    16531 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            ubuntu    false    213            
           2606    16533 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            ubuntu    false    216                       2606    16535 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            ubuntu    false    216    216                       2606    16537    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            ubuntu    false    215                       2606    16539 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            ubuntu    false    219                       2606    16541 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            ubuntu    false    219    219                       2606    16543     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            ubuntu    false    215                       2606    16545     blog_appendix blog_appendix_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_pkey;
       public            ubuntu    false    221                       2606    16547 +   blog_appendix blog_appendix_previous_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_previous_id_key UNIQUE (previous_id);
 U   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_previous_id_key;
       public            ubuntu    false    221                       2606    16549     blog_citation blog_citation_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_pkey;
       public            ubuntu    false    223                       2606    16551 +   blog_citation blog_citation_previous_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_previous_id_key UNIQUE (previous_id);
 U   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_previous_id_key;
       public            ubuntu    false    223                       2606    16553    blog_comment blog_comment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_pkey;
       public            ubuntu    false    225            _           2606    17206     blog_html blog_html_abstract_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.blog_html
    ADD CONSTRAINT blog_html_abstract_key UNIQUE (abstract);
 J   ALTER TABLE ONLY public.blog_html DROP CONSTRAINT blog_html_abstract_key;
       public            ubuntu    false    257            a           2606    17204    blog_html blog_html_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_html
    ADD CONSTRAINT blog_html_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_html DROP CONSTRAINT blog_html_pkey;
       public            ubuntu    false    257            \           2606    17195    blog_image blog_image_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_image
    ADD CONSTRAINT blog_image_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_image DROP CONSTRAINT blog_image_pkey;
       public            ubuntu    false    255            $           2606    16555    blog_index blog_index_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_index
    ADD CONSTRAINT blog_index_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_index DROP CONSTRAINT blog_index_pkey;
       public            ubuntu    false    227            '           2606    16557    blog_order blog_order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_order
    ADD CONSTRAINT blog_order_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_order DROP CONSTRAINT blog_order_pkey;
       public            ubuntu    false    229            +           2606    16561     blog_post blog_post_abstract_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_abstract_key UNIQUE (abstract);
 J   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_abstract_key;
       public            ubuntu    false    231            /           2606    16564    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            ubuntu    false    231            3           2606    16566    blog_post blog_post_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_slug_key;
       public            ubuntu    false    231            6           2606    16568    blog_post blog_post_title_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_title_key UNIQUE (title);
 G   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_title_key;
       public            ubuntu    false    231            8           2606    16570 (   blog_relationship blog_relationship_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_pkey;
       public            ubuntu    false    233            <           2606    16572    blog_style blog_style_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_style
    ADD CONSTRAINT blog_style_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_style DROP CONSTRAINT blog_style_pkey;
       public            ubuntu    false    235            >           2606    16574    blog_tag blog_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.blog_tag DROP CONSTRAINT blog_tag_pkey;
       public            ubuntu    false    237            @           2606    16576    blog_text blog_text_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_pkey;
       public            ubuntu    false    239            C           2606    16578 #   blog_text blog_text_previous_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_previous_id_key UNIQUE (previous_id);
 M   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_previous_id_key;
       public            ubuntu    false    239            F           2606    16580 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            ubuntu    false    241            I           2606    16582 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            ubuntu    false    243    243            K           2606    16584 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            ubuntu    false    243            M           2606    16586 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            ubuntu    false    245            P           2606    16588 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            ubuntu    false    247            S           2606    16590    polls_choice polls_choice_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.polls_choice DROP CONSTRAINT polls_choice_pkey;
       public            ubuntu    false    248            V           2606    16592 "   polls_question polls_question_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.polls_question DROP CONSTRAINT polls_question_pkey;
       public            ubuntu    false    250            X           2606    16594 (   users_userprofile users_userprofile_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_pkey;
       public            ubuntu    false    252            Z           2606    16596 4   users_userprofile users_userprofile_user_name_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_user_name_id_key UNIQUE (user_name_id);
 ^   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_user_name_id_key;
       public            ubuntu    false    252            �           1259    16597    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            ubuntu    false    209            �           1259    16598 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            ubuntu    false    211            �           1259    16599 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            ubuntu    false    211            �           1259    16600 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            ubuntu    false    213                       1259    16601 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            ubuntu    false    216                       1259    16602 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            ubuntu    false    216                       1259    16603 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            ubuntu    false    219                       1259    16604 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            ubuntu    false    219                       1259    16605     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            ubuntu    false    215                       1259    16606    blog_appendix_post_id_bb5fe989    INDEX     [   CREATE INDEX blog_appendix_post_id_bb5fe989 ON public.blog_appendix USING btree (post_id);
 2   DROP INDEX public.blog_appendix_post_id_bb5fe989;
       public            ubuntu    false    221                       1259    16607    blog_citation_post_id_8afe2920    INDEX     [   CREATE INDEX blog_citation_post_id_8afe2920 ON public.blog_citation USING btree (post_id);
 2   DROP INDEX public.blog_citation_post_id_8afe2920;
       public            ubuntu    false    223                        1259    16608    blog_comment_post_id_580e96ef    INDEX     Y   CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);
 1   DROP INDEX public.blog_comment_post_id_580e96ef;
       public            ubuntu    false    225            !           1259    16609 !   blog_comment_reply_to_id_85855897    INDEX     a   CREATE INDEX blog_comment_reply_to_id_85855897 ON public.blog_comment USING btree (reply_to_id);
 5   DROP INDEX public.blog_comment_reply_to_id_85855897;
       public            ubuntu    false    225            "           1259    16610    blog_comment_user_id_59a54155    INDEX     Y   CREATE INDEX blog_comment_user_id_59a54155 ON public.blog_comment USING btree (user_id);
 1   DROP INDEX public.blog_comment_user_id_59a54155;
       public            ubuntu    false    225            ]           1259    17207     blog_html_abstract_7a4aa0cb_like    INDEX     n   CREATE INDEX blog_html_abstract_7a4aa0cb_like ON public.blog_html USING btree (abstract varchar_pattern_ops);
 4   DROP INDEX public.blog_html_abstract_7a4aa0cb_like;
       public            ubuntu    false    257            %           1259    16611    blog_index_post_id_01a319c1    INDEX     U   CREATE INDEX blog_index_post_id_01a319c1 ON public.blog_index USING btree (post_id);
 /   DROP INDEX public.blog_index_post_id_01a319c1;
       public            ubuntu    false    227            (           1259    16612    blog_order_post_id_222484a2    INDEX     U   CREATE INDEX blog_order_post_id_222484a2 ON public.blog_order USING btree (post_id);
 /   DROP INDEX public.blog_order_post_id_222484a2;
       public            ubuntu    false    229            )           1259    16613     blog_post_abstract_8a0f05e7_like    INDEX     n   CREATE INDEX blog_post_abstract_8a0f05e7_like ON public.blog_post USING btree (abstract varchar_pattern_ops);
 4   DROP INDEX public.blog_post_abstract_8a0f05e7_like;
       public            ubuntu    false    231            ,           1259    16614    blog_post_eng_ver_id_c00a59d0    INDEX     Y   CREATE INDEX blog_post_eng_ver_id_c00a59d0 ON public.blog_post USING btree (eng_ver_id);
 1   DROP INDEX public.blog_post_eng_ver_id_c00a59d0;
       public            ubuntu    false    231            -           1259    16615    blog_post_next_post_id_2b07c80f    INDEX     ]   CREATE INDEX blog_post_next_post_id_2b07c80f ON public.blog_post USING btree (next_post_id);
 3   DROP INDEX public.blog_post_next_post_id_2b07c80f;
       public            ubuntu    false    231            0           1259    16616 #   blog_post_previous_post_id_fe01c535    INDEX     e   CREATE INDEX blog_post_previous_post_id_fe01c535 ON public.blog_post USING btree (previous_post_id);
 7   DROP INDEX public.blog_post_previous_post_id_fe01c535;
       public            ubuntu    false    231            1           1259    16617    blog_post_slug_b95473f2_like    INDEX     f   CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_post_slug_b95473f2_like;
       public            ubuntu    false    231            4           1259    16618    blog_post_title_adf2f203_like    INDEX     h   CREATE INDEX blog_post_title_adf2f203_like ON public.blog_post USING btree (title varchar_pattern_ops);
 1   DROP INDEX public.blog_post_title_adf2f203_like;
       public            ubuntu    false    231            9           1259    16619 "   blog_relationship_post_id_61d8b27c    INDEX     c   CREATE INDEX blog_relationship_post_id_61d8b27c ON public.blog_relationship USING btree (post_id);
 6   DROP INDEX public.blog_relationship_post_id_61d8b27c;
       public            ubuntu    false    233            :           1259    16620 !   blog_relationship_tag_id_8b891d96    INDEX     a   CREATE INDEX blog_relationship_tag_id_8b891d96 ON public.blog_relationship USING btree (tag_id);
 5   DROP INDEX public.blog_relationship_tag_id_8b891d96;
       public            ubuntu    false    233            A           1259    16621    blog_text_post_id_7f426c9f    INDEX     S   CREATE INDEX blog_text_post_id_7f426c9f ON public.blog_text USING btree (post_id);
 .   DROP INDEX public.blog_text_post_id_7f426c9f;
       public            ubuntu    false    239            D           1259    16622 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            ubuntu    false    241            G           1259    16623 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            ubuntu    false    241            N           1259    16624 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            ubuntu    false    247            Q           1259    16625 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            ubuntu    false    247            T           1259    16626 !   polls_choice_question_id_c5b4b260    INDEX     a   CREATE INDEX polls_choice_question_id_c5b4b260 ON public.polls_choice USING btree (question_id);
 5   DROP INDEX public.polls_choice_question_id_c5b4b260;
       public            ubuntu    false    248            b           2606    16627 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          ubuntu    false    3330    211    213            c           2606    16632 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          ubuntu    false    211    209    3319            d           2606    16637 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          ubuntu    false    243    213    3403            e           2606    16642 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          ubuntu    false    209    216    3319            f           2606    16647 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          ubuntu    false    216    215    3332            g           2606    16652 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          ubuntu    false    213    3330    219            h           2606    16657 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          ubuntu    false    219    215    3332            i           2606    16662 <   blog_appendix blog_appendix_post_id_bb5fe989_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_post_id_bb5fe989_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_post_id_bb5fe989_fk_blog_post_id;
       public          ubuntu    false    231    3375    221            j           2606    16667 D   blog_appendix blog_appendix_previous_id_a24fcade_fk_blog_appendix_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_previous_id_a24fcade_fk_blog_appendix_id FOREIGN KEY (previous_id) REFERENCES public.blog_appendix(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_previous_id_a24fcade_fk_blog_appendix_id;
       public          ubuntu    false    221    221    3349            k           2606    16672 <   blog_citation blog_citation_post_id_8afe2920_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_post_id_8afe2920_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_post_id_8afe2920_fk_blog_post_id;
       public          ubuntu    false    3375    231    223            l           2606    16677 D   blog_citation blog_citation_previous_id_c005cae3_fk_blog_citation_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_previous_id_c005cae3_fk_blog_citation_id FOREIGN KEY (previous_id) REFERENCES public.blog_citation(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_previous_id_c005cae3_fk_blog_citation_id;
       public          ubuntu    false    223    223    3354            m           2606    16682 :   blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id;
       public          ubuntu    false    3375    225    231            n           2606    16687 A   blog_comment blog_comment_reply_to_id_85855897_fk_blog_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_reply_to_id_85855897_fk_blog_comment_id FOREIGN KEY (reply_to_id) REFERENCES public.blog_comment(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_reply_to_id_85855897_fk_blog_comment_id;
       public          ubuntu    false    225    3359    225            o           2606    16692 :   blog_comment blog_comment_user_id_59a54155_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_user_id_59a54155_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_user_id_59a54155_fk_auth_user_id;
       public          ubuntu    false    225    3332    215            p           2606    16697 6   blog_index blog_index_post_id_01a319c1_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_index
    ADD CONSTRAINT blog_index_post_id_01a319c1_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_index DROP CONSTRAINT blog_index_post_id_01a319c1_fk_blog_post_id;
       public          ubuntu    false    231    227    3375            q           2606    16702 6   blog_order blog_order_post_id_222484a2_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_order
    ADD CONSTRAINT blog_order_post_id_222484a2_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_order DROP CONSTRAINT blog_order_post_id_222484a2_fk_blog_post_id;
       public          ubuntu    false    229    231    3375            r           2606    16707 7   blog_post blog_post_eng_ver_id_c00a59d0_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_eng_ver_id_c00a59d0_fk_blog_post_id FOREIGN KEY (eng_ver_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_eng_ver_id_c00a59d0_fk_blog_post_id;
       public          ubuntu    false    231    3375    231            s           2606    16712 9   blog_post blog_post_next_post_id_2b07c80f_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_next_post_id_2b07c80f_fk_blog_post_id FOREIGN KEY (next_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_next_post_id_2b07c80f_fk_blog_post_id;
       public          ubuntu    false    231    3375    231            t           2606    16717 =   blog_post blog_post_previous_post_id_fe01c535_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_previous_post_id_fe01c535_fk_blog_post_id FOREIGN KEY (previous_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_previous_post_id_fe01c535_fk_blog_post_id;
       public          ubuntu    false    231    3375    231            u           2606    16722 D   blog_relationship blog_relationship_post_id_61d8b27c_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_post_id_61d8b27c_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_post_id_61d8b27c_fk_blog_post_id;
       public          ubuntu    false    233    3375    231            v           2606    16727 B   blog_relationship blog_relationship_tag_id_8b891d96_fk_blog_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_tag_id_8b891d96_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_tag_id_8b891d96_fk_blog_tag_id;
       public          ubuntu    false    3390    237    233            w           2606    16732 4   blog_text blog_text_post_id_7f426c9f_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_post_id_7f426c9f_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_post_id_7f426c9f_fk_blog_post_id;
       public          ubuntu    false    239    231    3375            x           2606    16737 8   blog_text blog_text_previous_id_03084c1d_fk_blog_text_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_previous_id_03084c1d_fk_blog_text_id FOREIGN KEY (previous_id) REFERENCES public.blog_text(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_previous_id_03084c1d_fk_blog_text_id;
       public          ubuntu    false    239    239    3392            y           2606    16742 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          ubuntu    false    243    241    3403            z           2606    16747 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          ubuntu    false    241    3332    215            {           2606    16752 C   polls_choice polls_choice_question_id_c5b4b260_fk_polls_question_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id FOREIGN KEY (question_id) REFERENCES public.polls_question(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.polls_choice DROP CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id;
       public          ubuntu    false    250    248    3414            |           2606    16757 I   users_userprofile users_userprofile_user_name_id_8cc5a256_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_user_name_id_8cc5a256_fk_auth_user_id FOREIGN KEY (user_name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_user_name_id_8cc5a256_fk_auth_user_id;
       public          ubuntu    false    3332    215    252                  x������ � �      
      x������ � �         �  x�]�[��0���U��
�
��Ƒ�\�I�����&s�<���=���n8t����+/k?!����e,��ܻ�-�;ʕ�]�#����*�������Z�Z�.����P���F�1���\�9���A��X<��!��%�l5�1���HG�d�,IRJ�e9PS��)��~Y�/�=݈����$C����$i�F5
�l��6��)� 	�N֏��F��Z1BB�Gua 4�����94 �/c��M]:�k�pL��Gc�$y����{ʡ�<�־�js�-��yι�m�=����&�x�'�*�.�ʐ�`.󊑞`&�
�� ����4���Gg�Iډe�y�6+|�y��7�,|���r��j�qY�6-�yn�X��s��$.�L�C܉�Ğ������_��f�p�C+|��q���!�/`�ߛ"��}+�yn�.�L� &�܇㱫I^�[H8��e�]���G�}�]���{߄��x��Ӵ����?i˽�B��l�b��������K��'H��d��iO�ff=��P��ye�O~V	$s����Q��|B�9��$�%b4͗~��or�c�2m1�%ے�&�ɷ�PN(My7My���!��:6.�#;%]�-IvJ��[��W0���'*�8�"��%@Rĸ� �c^� B}}�p͛'No(b�ށ dA�K�0dA�ɺ`A}Mw��n�>�P��%[ �@ƥZ� �d-Z`_�|_��P�h����R�mR@¥�	@¤��p<t�~��G��F         �  x�u��n�0F��Sd�.ٿ��H��Vm��hs�4Q�	!��
)O_ȢM[{��w�1GJ��� w!z���� !��L�����Rc����	сt	uq��X6�a��o�0��E��5
�9+ާ+�r칾Gߞny��	w��T���kYM�I=��e�Z(�,��Ӈ"<V�{s�wM�~���!�C�ԤZ<�{���κO��j����M���RD���z�m�i�'�qVG�g��e�?��o3p1��Ϳa���0�i ��ßa	��8@���{�>=��G����0lX����c W�������<.ԯ�L�̡d�o���L�y��{��ٳ�>�w�L�Z�Ń����^���� an���������b[�%Mv�1-�Ĝ�K����| oE�H            x������ � �            x������ � �         �  x�}S���0<'_�$�[%n�G( VlQ{܋I�i�W��e��yv�l�ph�y~3��fb%���v�a<=�)�0�)E&D&�]mr|@-������v���\�e�z�ԩ���E$�A~���CN��\K�i�rE�Sp���(��ޔ�?|,!�>:5��y�摔��qd�Yn�}�ѽ�a�zz��a�ͧ�>�����#�4���:�V��Skf�[%]hu]WSE]u���2�v�vԎ�/Q0o��d�>�쵚h�EyL}9582f�W�Do���~���������'�r"/ھ�~��"�n��rH2j����Sh6�:֍�yyY0�I��������҈�(22���f7ʩQ#����ȃ�}���h����"�q���rد�_%&�'1��,��TP��DCd�5��I�K·�w�{�z��/-.SNk��,��B>��4{�s	ì��}�ß��5���7|����f��*�u�����د
`           x��X�n�����b.�EP�R
�(����ױ����ň��vf(ž�;�����E�Gț�Iz�P��`QlQ�?k��D�s��}�W~2�A<X^���؈�炑L6F�Ug�Ҕ<� t�9k:��?��BB��ŵ���� �ܖ��T��y��e���))�i�s���n�R��M�?Ҷlg����?-|#�\���~&�����Z6�;����w�{r]1c�_�ܟL��ȗO~ɴ!F1ш� rM]�Jeȏ<��5�J�pM:�7h�ǎ7F����Gj��Q�{f��˧�ѐi�eMO���j8��M)sMF_[��L�q:H�l4x�'�)�L-�^l�=k2Ys�*�'C{d���y�������
<��ƀ�E�x&�5W$p���59��m%2��v��\+�q�����|>wH�R�G�O���0�ߓY�6���2w������18paQ��S�XBM�9ֶJ�K�H��2$��J��[`�H��?��8O5�ɺ� q�e�5{���Q���^r��j��<=�Mg���S�����z��0L1̖�V�t)k�Cn�+C��C��E�D�a����G9d��ZRDv.;�X 2�yo'|-d&8R��%��!�Q!��M��c�,���Q~�4��t���O�fjV^��=� �6'�Ks�vRV����:��*��{�i�!2���ol�|[ҙ�zT����C��v;*讥���y�Z�\?��d�6_S2�@M�sD�+X���a:�|���K��qe�N�9x�zQ�[
��4L�>"A�*=�pex����� wȥl �JY� ��XU���-����d����|�i{
�y]�i���u�
��7��R� y1l�G�����^/��}��Q^Pх������}p)Ǔ1���Q���U5$�-��)Dx��$:q];�v�iޖڞA�� :dh�+H��!}�X+Y[�A��O����hx�ս�_�gW��SCn&����0ʹ��`0id�$�(��F���sc�߁��G��J�CyI�k�S�=����Te��K/�Y��W����s��rA�y�Q��������[���[���mF?2�]�8A	Bf�M{hp#;� Ҋ5E�͢�`�/�ڋ.I	.�r(<$�{��c�Enq���`?���'ɾ���`	9�.}(c;�a�X����J���#�Xߡ��6s���b9�,C�U!�0�6N��Ŗ��i�b�-��s�=-�J�K��M=w����=����N��������` �F���4�:�e�S�Z�j!��C��ȓ��Jʍv�g]��p��|�-P��p� �F��0���±�d��oE�V�x��uݯ�3�������?��CN�z-a�5��rq�[�kh�S�D�?���f�Z���#\����:�\<�H���8���c+�+���ݣx�a�r��	H����Լ���` ��Vj
>�r����]��^��@��	�� �����FuꞓVVw�h������_b�T�fD���<���ZT\#g��ŋn�2I�G�p��y�$I������[{��9���xb'��Im�r�t�\>;�*�x�sV��W��V�J�����#e8]�a�c�f�VVkx{RYɞ��$AqOP���uEY��8�9����a�OX�G��1=�a�nu���Я+��af�b�W\������nv�g��Gq'�;"jp!�w���Y���=a����b��P�ɛ��=h�uY+��5P	�2+eŔ�Z3��N����a�F~�c���F�dp#a��EĶ#�ە5��J��x�o9$g���n�3g0`U�}�AO�rD�bee�f��c���q[�tz��⥌X�wf�ϪJبq�à�)�_Ɖw>��{Я&ada&�0���9'�����a�T��׎�Cp˄�	Xh~�hK���-��2�!{���(�p�&�0�{�!̳��0�W.���!l��<W��<~	.y!��GS�����n�Ў5�b_�񨓪���egˋE�b��̮�X�F��@x �� K:��>Q         f   x��̻�  �����@�#�Q9��Y�	�B���Pib������a)ǖݼ `d�(�bC�$$�N�K�"~b��������cv}H�%���w=9c�['Y      8      x��}�r�ƶ�s�=VM��	����V,�R|ێ��c�l��rX �$a� �iYS��y:U3���>0�/�u�R�D{������z�{��{�=������/�D�ݜ�qb�Cwa%r�����+^E��J1��{�����~�޸ۣ
P^<�(tg���r�R/�$��bN���:b���~��p(������1qc/�Nx�H8�+bo8��F�@�1<m�a	9w��]1�|��"��}M`:R�N�Z����2��I�_��#�7��8��$��+M���D�@���C�T�����	N����d1�0eF^2��uzz�d���,�NZ�U
?����f
C���t#�h�@��b^0��D@�x�`cI&���t���8��� v*F��C�?�z�ƖT�)�8`�1�^��ыwkT=>nL��w>��0�7��&�s�%>�����x',q�?��λ=�
4+&��N���\�0r���n�$�xw{����D�raKw����W�n�;��;����8:
�
��ZyA"#�H2���!P�����x��8�����1�	�Lq�zlq`��r=X���R��fSP)��.^L&+�mh\�: ��}"��vaa�������#������6���0����z����5�BKmq�&ZF�;�~�����XFR���f�u����I0���aj�� �I1D&L������{ɢ�&2��'�$�����!
����:�^�X&��rP�S��[`<����k|���G�5���.�pC �s/N��`@-�[b�}<�A@xz|�;����#�4x&���/�k_Ƴ�8.j�P�j·�/s@���~��Pʈ�Ѝ[�����A{�N�N�2��@^�,hM�#d{FU[�G!1�Y"K��I��"��gn���ܛx�Hti��E���N���;�`�/�m��H"sESdis�kw���?���|��'��ᕺy�*r�x� /HF�:��x�S$��8 �#� ���S����W"6"�G�#@ a��+8���.��sD���]�iqpH0��	@���( E���	0V��4�ĬA�;,�R�\>�"��ϖS!�"i0�p ,��@���$���K8M�Hy6m�砄�\����!q�����R�v��l����i�,�=8�����{���P,�7�]9�ƻ�.��R$ٶ��'v�@���)A�1�F�U��׻��ۢ��=�� ����5o���� �?�����$"yx�E��!Qf �al��m#襗�F��О�6�W��	E��jJ�fO��T ��z0!Q�aL"j*#D?@���Qa��#EYaކ@�(�Þk��Fpi���+~���Xt&����A�\	-�x6��QB���b�E�Q�)��Y�����L��qg>~���I[Q_I���8Е��h,I�b��cT��� ]<`Sd��I��,"�ʍIl9�P�FΚNK��7
�	@�9�D=f�ȟ�l�uNb���<@(T�Fɼ��I�uSh�KԃA�� NK�({5��(L�-���K�մ� gx�a*; ����z�b�(s���l�
Y���O�\X�W��y�r����64c������:��aK�cT�ۼ@�n�mp�F<v�r���ni	�h�����(��UO�n=®4�V�a�?��$4�4�댡��EZ͙�*G�o�����c��&��8f"��gq"��h���_Q?BTtΐ`�In0[�3�cw�~�%&#�nz.
6��U��z��{�F-aY����fSl�n6g0�E�`a��3tұ�e�� �p�Лƃ��|J�>]���̧�M��x�&�����~q6�|�`|����g��ߔ��=����%�����f��1Kl���N�����s{O߶D��/��A9`Da5�����(�@�V���A��("[���M��KȀ�,P�N�9�t�:�`��>�pK�-3���F�����ȈR
k_t
+��}�f9���ct�Ų	�k���P&wq�H"L��Z|�/Z��%P�`��r��07����oNS�/z�-q�w����~��0D��z� � @�ݪb4��r<}���D����e˵�(aO�i6Ww�lە�Ld#{�K�晥���TU 2�u��7+A&�X���r���u��)vtp��f�K�������_ʻK�b�E�hQ+e���)�^��e�SA+�P��RA^K��$�m��R|�
qU�Ug9���`�3I�֭������*�D}$�J���u�,Z-�
ݩ�- +34��Lz�F�;�K�S�%�2#�(��@��-��" ~&�]y~q�F��I���" X��kVK]ۙNA�lP	=[CEz���H��f�5�3Ϗs��@Ō߹r) ��]�@�^�g~����IC�:�����Xt��8��jm�����	yAx*}�HeZ�A�ͳ�IC=#1;��,�,�#�f�K��t�VY`�@P��x�Lj�]H>9�Dh�O�Oh�ݰ��Q��Rٝ��d �(����ݖZD�	�g���?����P�p�'q6g�Y1��Ќ �@�2pL�3���A�>U �Y^��Ȼ� ��\/}�U�0<D�F�s2K�l��Ţ�E5� /f�ݦ�}�T���v��NZ�xA�1"��x	�a�ͦ1ˬ-XM������s��R���5=�ft���n�a/�g�vV�5�k�\p;��ɗ��g�I�/2�ֵ�A��`IM�"�DM`(�oZ�e=��S�n밖�n���g�]��E���7�Ǎ����K�ƉE��q"^�m$���9Cv�b�⼕D{H�%{$�h�MS�x�m
��=n�Q�y��ټ۪���y�[�M��t/����}��x�[��s��q-B�{SǋȌ$�;�>���"8/�6mU6���u����>`m�<������gKǳIc�ɿÿ���J��>]�M'�
�ݜf��i�w[�P܁UF��i�y̺ug��O6�n���ɬ�Ŝ<5z9�zYP'�IIY�,�^o����<{��X�<��y|ڤ�k��#4KΡH���o8;r�3��T�S�m4I�I���j�/����g-�u+���M7o����b\ �P��"ȍ��3&�h�M6)��7^���^�	؁P+ �r?����v/����+����%V�n	�ƀ�J�, 7���7��c�[U�2Rr|P4�,���Fq�� ���A�`�w���-C�H(��A�|�}9p@��Mۃh�N�y���{h���!�G���`��(�d�{�4
�JVZJ�B�����B�4����`A�㛖�i&|X�7߀�|-cX�:FB��<o�ĄAaa��қ�� �";� ` ��b���d�G*��s$��/��z�Y������dd����KG���������hM��Aw���ؠ}
�,����)J/ގ1�7�b{��'x>�!�)��ѭz�3���# ċ�ۥͧX�d��ӏ�����T��'�>nw����C[e����bևpK0�(�T�"���A��&�D3��
��
�����@=��s�R/�u����_X�]�f��	�+-j�������L�9^!y�ƭ��?��������YA�H��B!$�wN�#W13)�AW0ݢ��,�� �)4_R����f���&�)
�t�_�$�Fy<(�����"q<��+���1~9���\f}�<?�A�wxpw[�vZz��2v;-���PG����@k�K��f����n&�jia����_��?\���� ��@�,
W`�h߉�X��8. ��߆�P*���S�x1!,�VL�Z؈W�jnsL�c�'�
k�euVU�e ����1R��nҖ;�{��'o4���<����ER�׹�g`Wz��?[�m���j$:>��cX���kB"�itٌ�bl��W�a�X���hS:���<�ĉF2i������    k�m~6�!X��9�uF͛�(ŕ�(I0%Q�h�o`2�6�P�
}��p�ŝ��=ޢ� �ў:�}�_~(�ɰ� ��A�f᥮�{c��>����m1�\	�Z�^�-��9ӂau�J�[6B�-�X	5�0?tP�E�������nO��+*e����
:؁����@ݬƏb|�ڔ��Ȯ�ƙI��NW��)"�CHU�R`/�����!g�����f+#��j�<^���}��C��b�f!>���鹛I�r>L���6�/�G��I��s��6��$�P��.��	���۹P��XkY�z_m�c��Q]]��m߽���:߫7���4��]
.X��~i�Wn�gi�WnϪFo̲&�gs�^����l�"̹JX�`����RhֈZI�kŸ��N̗��"�0�(L�hP��p5�#�l2-��]�A�M�ǡ��θ�G�=�h��SQ��<D,�kblK�m�Ӭ�v�
�+�����a[�B[F�j`м��qc�w�i�i(�UƷ�g��9�x��� 9���O�0͵�#���~L�=�F���#��UxpG�5�R<�:"QUTS��	h<b����S\_I��V.��+Vʤ[�c10n�5D�TZ��QnfSո��X�Z�þ�E�Ɵ����Aq	�� ����X:���J����[��KŽq��Y"�d�n�ԘL�f�n�5e:��Р�����C��n�ν�OV3���ґš��zҭ��K1���IuF'2y���^"Ϗ��G���v��N���-S�hi񏢑%&��G�)z�5����4,���8B�e+߳��Q*���f7��Y}�Ds0
�R�<����)-�y�0��k�
 >���7����.Q���D1�.?��%�P��uv0�	8������"� l��i�Q�d�0��_���̼�3���{���&"��vx�%�� ��%0�� Gg�̳1��g��5m$�i�?<ȱ�%��8�I���pɛ5Y[W:ڒ3i��~�����|� ��*�q���R�uY�yѦD�j �����ʪ�5��J�7���>c��Y�m�LEW5>�l��M�S�k7�{�4P����(��#�5���LC�Xl}#���Z�xj�;h�U��@i�V�.�M\~r�pa����pf���s���a��]ɃOC�tȦ�t�R#��cJ�����=�S���0V�;O�J$���[R�=#k�h�ѣ2)���)e�٨�5�]����ۺ�����j�^y��[��K)�}�L3[�J;}G��̥���K�~x��X�lUJΠNBQ�&�X�ҍ�(��Z��n�_\��+�/���YO����%����HDr�h���v(��O.R�W�V:�b��N�M_��e�S_;I�d��KZ�Hm�`./0�8�����c�#	�%�LZ�����B���K0
#���5�FEJ:@7�:R鉶�� �{�_�镒>F�
���f{��R%}�y<�0�k9G������=����d�Ɂ��ɟ��v�Q�ʜ` ��D���r�"<M~>��}�C���	GN��8���*<�%&��VI�"q"� f Z'��ML'��5"f�/11&LE�9��I�B��-���aE�L=;�<�< ��d�d����t?���y����w~�����.]'�a�^��e ����5{��e�
/y��ֽ��1��V�\ğX%x&lCD��߷[x6Aem�g�9�*���NP�{<���a��7��cJ-|�9�Bei��Q*^�6����H2 pwV(u�Nn�%=�7��1uvZ��*����[��Ί��Ї�3�P�ޒ$Βd�5唇��C�\өN@���঎>��K����{�j�k7�ϒ,C�r��G�,Be+G#I��VE�u0�0�Cx2۪]Mi-�(av�*�C�Y���"5���5B:�ɑ]�5'��w�7�6P�+��C8�$Z� ;��|e)f"Ɔ���o-�o�p������!d�m��z�ǋ�:�[|-cw��sg�fg������J�Lkט88>�JZJ��f�nk�X�D����z`r>:��0J�kU[���۷�q2���Oe�Y��d�X9lh���,�CV�~��M�Y�	�-��o�(c��W7vpH�&R�M��9c1�U�+�7)��̉\�?^�r�sn��^^~����;��:3�����^�\O����o�#Ѫ��)n�>�zY�T���j!~=,�/9��-���>vQ-�M��͙ܴ�;�<��-�dT������0;���=�.�W��(��]u��	~"�Fc�ܹ�w�`7x�i�s���PT�(X=y����²h�ϕ� ��������*A�D.�!�b��8�;�U8�\�e���;�����{�ZY�A]�J���$f�/��^�T�}E����FqT:����' �K<�kh�T�*���z�e!����6"�VE��6� W�[� Z���!�����pJ�y�gDt<h�6W����2S�̭~^~%��J���li<�&�˖"5�&�v�*e�*y�TO�!��H����JQ��4\�LA| �B��D���P9�#!J��R��9�U,�Ԇas���oeY!�gḙїə�A�K�3���� l-֗����P�`l*GU�4���ט��vx����ܮI���.}�J�;�����3�m��1��b,5��5r���<����2D���ʨV�N)Tć�/`|b�����R���B��̪9�q8S-��\5����:�e,ui�uJ�1��K���� ���
:��˂ѷ�(���KÎ�Tf.�CU����4Ң�u������P���@K��U���G?V���^C�/�{MU������U�m	9ǻ�ر����,�=�-}���;�X�fg�����W�
�)�ª�}{�\�!�j���\�H�ѻ!�R��k��nɑ�_�6X��m��>����-O�Rvɍ�8�鿜���5�9&����2�r�P��R��~�<_Ǉ�O2v�������f��#�gN���.��S/*��e�����ǴT/�[�F���^��Vj��wu��2Z]A4�U m���2{j=��!��&��"����"6��1�ҡV1��Jn�Iً��Lܱy��
6='$3�M��5
��&P^Y�Lb������'Ol���8��w�^��z"t�o��b��J�<�ƕ�b��n�@(���J�Ш��?W3��k8���zP��^v5s����@UZc�U�j-��-5�U�v��1�=�N9~�Q�3��ɝ��Q�Wa%L���&��wm��`�l�p�e��k�C0w�
����9��d#�keIu��҂� �i^R�������c��>L"W�����-4Z>]�m߿_�Ѓ�T9�:S8�7�Zûf�+��U�9��
��<��k����:C��+ZFND75�̡�������UXh\H:{T@Sz@��YV!�Y�
�2Zu�"�!���H4[�و�����>h�M���N��§���s�l���/uh �-:&'��X'��W�H�K��4'0��%g��1�E�[�zǉJ�c��o�N=+���������g������+���:q�N�&����i��M�σ$��:7�����A���	�ۀs��S�"F?"�LQ)�����w�G�E�2g�|Ӕ�H���>zͻ��� ���oK��b��o�l[�H��fdGg�t�`�f!��>f����%7pW�����ؕ<�I!���+PPz�"�7�x�����AD�j��2&S��s�ꦾЈ> P��W	>Jү�PUO����p^P�� �z8�ZP�f ��q�3�c�x�Z(�7�Rq�F�>�
vk�����Cmd���������8��sӫA8�\`�����g�zl���|�f��|�ϱ�����X�~R���iO?礏gd�\p�������?���l~$W�Xi㸪ܡ�wlI���C;*�>���@e��U�mU*���9��1HX4�2�sb������M���r���^"5�i�gKn�D4b{A�Q��������;' D
  �td��x*�Z/��(�$�/���Q����A�/�h���q`�@���\e����^0#`a|y��YɓQ��cך�l�����ZKbq���8ϩJ�\uݪ�ġ�L�o��2�~�x�����'�]�9�j���~K|L}T
}��@�x[�X	��x{P�@_o��tzIa�&��VX'�&B��x�q=�b%�	�WL� ���Kg��U0V��*��|���/�j���'r]L%^"[�M��FC"��0�^]�T���LK��IC���)�m�{�����\�Z�)Pp����*qE�ˏ3�2L�����U�_���b�1�Р
�?՘�3�ϸ4H�������m^����x�8*]l����-�J_�y�^2I��
.4�=��q{���]�`�B������C�;�)�k|��Mfz|��(�$MV��0�%_Q�
lV�qK�]�O��]���w����"�a�UM~�����D5�J
*U׀Ewh(����C:B�wÕ�)W�K��S���Ra�ϿҕH
�P��T��&Eb��l4%m���D�L���])��^�Ђ~"��;����觮�RWֈ�NS��:6�o�m*_	MJ_-3��X�H옒P��i����8�%��gux�&�a��0=�&x�v"7�y���(�Oi��Z�a~9������4��c���-4|R�_S�D����V��� U�D�������O��մ.4�/m���n�b���+�-��/h\rI���Zɢ7�U�e��Đ�����&G�t�k�����u'�%H�évU��+��V�6�H�)��1�B���V��u�g�,����y<rW^�VC�1��,L�c���o�H>�d~�b_��wS�R5�M��C=���o���?>����t73���x{ ���z�
5?�=���ÅR�ܖ5��tk8/��8(��6-�=��RU��Ƌ��i��@��y��G�4)_�..�W��f�J�ꆏs���~��#�Hx�<�ζm�1Wm�f�����J��ό՞���#������+�ԛ�t�e{5іQ���b1~Nf4SA�XwV�k]��%� �DrꃭLE1�;�E��Y���7�Eq������C#�)��8���;�z|�k,_�Z��'ʔZ���߼�}��_4]��\s�[��01RBp=g�V��Z8<ðo�5�l16�Е�+�Xq���l�?��v�&'��͊&�뻒*8��-tJI+��0+�"Xu��ƍ�M��D8��r�<�Ъ����|��\�܃oD�e;tz�A1�4����f)(���C�0gcw��Hŷ����|�&��nÜ��{���=�#I��i�}��"��~�Sw�����~�@��%]���@�EbhJ��Q,j��S{)u�,��<�DOYì���b��
e�pBAc�oLF��B/Y��U�d���b#��g\R�T|�sf��1 X��a���6�\*Lnh^d��r���@�C�ĩli��&��Xwwʹ����U�,B�\�an��[�lNR@�ݗ���CS���q�
������-
���~L�	&#i XT��P
验�����,�O�] 6�1P�ʌ��>�1֩ǏA���{@(��»'|4���5�=���,(U��Puط�	{¨HĴ�;�H'h��� `s(I`Ƽ��3J�nt�>k��� un6�˷*~��%�P��tC���:���9й%����	d|�~W(@|h�rA��Z�����N:-G��y+Ze>�ppR�,�t���B+Ɂ�)�=��0R���{R1HY�CF"�g� V�1p��Rˑ�^i��7d��<�Q�jT�k�nF������|H�J�|=�&k��W��{k�"�.�z#r���St�}�N�s�!�"��+�+�_�Uu-�h��>����9T�PAc�́+�O@p�Idʠ4�)��á?�r*VɄU�L��?�QQ���P_��J�患�D.�K�m��vX�V��+2�����C���������a�^#�>-��:-v/�ݚF�Z�-�w�3�r���g�a�#`��JO�A�����ouڬ8>���5�y�K6橑�`o���i�*��rU�[����LS������|�>^�D�(꾩hΟ�֥� J�2G���Gn��T�{��1R>�/f~��;���!u_փ��Ӌ�%�{I}�Ӯ@�w0�w����/*zk��i )z�N*���0���uJ���T��5����Y���!�����"�:*qU\prrH����V�!�o�[*~��/�_����
��ٹ�\�7:��|wl#����#����qe��A������u��]���x!���\[����|���_���w�O��y���S1�����E먍�����%��`��D� ����J?}�������j��=`����r��p|O�@������l��з��.��6�Du�x	�tj���?�����2�v;m�Ӿ��n��;?����<�{�ރ�;v1�{������*ě����8r��\Z�mMSPo�����7�?j��1      6   -   x�3���MLO-�740�+�K�2B0F0A0E0C����� �~F            x������ � �            x������ � �            x��\�n�H���~
�Ƙ�C@a�e��i������@�HJb�"Y<,��;�}�y����$��Ƣh���G�_)מ\�uSl�J�'�m�7a���}��k�[�&	�I�Qk���G�Gu��LأJ���I�/����u[&�SZ'�f�J��VS�e>&�RVI�F4�2ć��f����k�u�Q�,�f�$����*��9>�;J
�+{J����P��X�5�e����J���F�#��}��m�M��ɮ{l�WºN׹��٦�!q�<	��n�U�6`�2��)W�.�2��;\R�-��L��e��I�C�8�"���RKxybꦭ�j����g�X�k���Q��SK��pÞ���65�s���O���?�z;���O�l���g��n�Ӣ0�P*U�I2؀�i��I=�5U)�k�7՝i�&�����rM��+ל�)�G�>���p(ʷ�-�m��7ˢ�,�)��O�;x
pŅ
��&4>�h݃��x~xe�� (����ý��J]Di����)<��ͪ� }?�C�LP�eQ��~J�P�v[Ï(K�G:�]�D���܄�c��a����yѤ�4bgó�S\�he���_ �}�#l4�t(Y�ipPj��RI��q�)-���[��cY~��'00����!��(�V�6`s�	�}�)r�C�a*�73���h���=�4wf�4�6M�4�>����am�5,�]ji1E��jw��Ұ�\��0Z�KXsq��B�L��^�����ИM��8�T����'ոR�ܴٓ�Q8��1m�hFG�@�9|p�c(_�����	.�mY���0ʾN�o0�$���6AٲI�n>�X)�EZ��Wpʂ���g���.iU[��*��){i��.F0�*	��g���E�Xv���ӼF�3�<=tOA�3��\۶|h�����K3�@�<�h�L%`i2Xcj���T��s�L�2+�͎i���ppti��or�)`4�����d�6`a+�A�������dU�m�vr��:B���c�q�f����#�@���=�����gV��.@��V�'�C,=�{������*h��Է�C@J�c���WfJ`�h��A��1��x5Q'�	Y,���Pu[A����l��u{-�L'�bC�s�A��Zkv�vM^�l���M\������7��|�'����)���G�"X^M?Tl%��������R����Z���5^S�k�xM����drsr�!�\,�}�s�Q�ׯ�/m�Z	'� ��UF[y̋]��kfη!���F5ߑtx8�+%�*�R��5xV�(N�>�e箎D��Ֆ���<l�=tSx�1���T
�E��8��Ӣ�
�4��j��I�Ε��.��,��g�G�1)�O��*K?[5,E�~��y����TC�t�i�������|��3���;�Uɚ,N��U�kp�Aq�Z�Sݚ��w�[�ś*L��q���Lz�z��#��)<�"�{�uG�� �>+��<އp����]ǫ'��P+h�G�9G�q�5���a��qԞ�O&|L?U�S<��3�"܁�Y��\�1P�j�>ET�IKbp%�ӡ8ZNha��&Krb��]���"��_a�Oi��p�uS'�X=�KN�@ RĬ��?����֔,Y����5��b��Xi͝[}
�4�πT	�yp�QQq5B������Х�*O}�=�� �`I̦�ԏ����IU�j+4Ӓ��U%��]Q�#	��N�<���:d�&�Sub~H�|� �a�t�Q�k!�$�_@�7���1��ۦ�: d��/$"��w64����燢)܃9��� /p���^�E!y>TI2�(W7��Z�o�Q����M��7'��� �`�vI����@m������d�@ f��p�����J2�#n�ש#�m���:�H��)JL�gZG��p$�::���g��yz�{tLX��	4Ǳt���9��S]ە.��
n4_'/��0�bs*nNM��k�D�	�����������:{mt��t&��v��?�?�>�@5]
z|T�,��w�>5�004�`>�mp�07'f� ��d�>��E�I�.�dн1��&�'�$y��V�
�Sn9X	�+9>�.�u�Wk1���d"�"bt뎏Ҋ<C���Y	�;��U��ѥ+`Q�!�a~�/����q	�Q����y>���Q�~�d��s���"�W#Yj��{&�o�*ޡ~�� �%É���h\��L���:��*��P���u򎆧*T
�Ï��?xO�ٜ������sy4��25�0�	�����<&3O�u��I�K�!�zz��)���5�B����'�s�>�[�)�h'��?��"[�);�5LW�n�g��f�M}b�!�W8�GR�����������0K(�S�@���Ŝ��N�c\���´����X�``�k�^�8E��3 ��2�q2�	�*���L�'�>�P�����>%VMpI��8�铔D3��5B$簄uUm�D{)�+�ՠT�9�������W0�+`�	�j떡��n�I�@�!o0W�� [�;/T�u}#����<_u�$�Vql�v���9K����jk�f�J����M�{��|n�.��7�w��@_��O?���ó�z������Wa���}�J��QU��v�-�s_}y��x��d�Y/ 6i��}������;�~��O���$���&�R9jT��szK%8�`��?ߡ�g�+t�p^�y���o,"�0#Ͳ�m�Bغ\Ex�Ί,�끍D�º�I�*��2��$�Q�|Df���D��:@�}Xr2aV�&B�q���=ظS���
�|�7��Ss��M�5LiX<��D(��w �yc�->/�s��S~����(�ѓ^���D�to�璎�@� �F��eYT��	���*&ÓR�mVK���q�[͆Q�h��Lh~L}�d�`3�5�?n��c�K��-Xm	�q�c����%�!��*�@�Q�a�>�k'�.�-D�f�W̬�s&���%[tFXd�)�am�_Yȇ��(��}Q���?kP�,\"�E�`�83��\�s�!�]��n�_�|����_�`Rk8h-O�i�.3���iڎ�8��a������u��.�gڦk���@���c;�3��tuyu�^|y���)�#�u�\���ie-`JU��Fj�m�&St�.�ZM@ڠs�\S��Iz��zy��OY�k���I����]�݁���-x&)	��Ǭ9������p���qr1j�!�C]����B��Y�q&�E.:9��Y��h�M�D�)idEdU��+��S����ZB�1�c�1aw&�͊Yu1`��+{W|�RS���býx
��@3m�4݃D����i���U�>�X׌�]��zZ�گ�a�v�ANYv+���X��P-�M�ͦm��[@C�i���@�!kN�s��(��C�d���-��Q���t�?���$����y�n@u�T�p��IB.F�/��7�_�o>�
�*ܢ��Gp /��rx��Tnr�����I
14�)a��3�H!�?�Q�9`�)A�qڗ��C�G�Z|��췀ܖ��A��4���VC^
��4��0��G��تt�b��TQ�3���SRB�)��M��Ũ_��z�dRiИٞ���Z�ob�H��;���P��O��3��e[mb�Ԣ�hcp�yC>űVQ�� ��8\F��?�L�O��u�p��H��#�q�.s��ىf'�<�	�H2���G�)r��� �H`��"\PMG��D�`�r�p��.���L�����K"��)z�`N��bZ���~b��#�,7X�$G@�.D.TYb�*���+���3Z!�K�c�b�FɈ�0�(�Z0/�i�1��#�*�e���3p%�A����U�9U9U�rֽ3��Y�<�������8��Ը1Ӂ99����y����-/�%�d��HBa��Qo�B#�_{�n���{�A$�H��-B��̢^�C�2F�Nq�~53����Ã�R� �  ���0&P�P^�b���v����Q���G��;�!O�h�rd#�,�1��5�9'��H&<�D�c�+�u#�֝��H�f�bk�e`k�c���D%�]�g���n�\�ܣ��P�0�0B��cj/Yf�ZNlb��o#�Ұ�pV���)IwA�]�iӒ��hܷ'�&U�؇��w�V��~!�X��@���9v��o�fWT��ai�Hé6���pj����b���pjΆ]M�<>W�QJu�^G��a�+_�0��,���qP�V���x�|�↿����⌦'yX�@%��K4�So�y5lD���>�D��^���1 ���⠤J�>�bpT9p!�Q~ȟ�f�v��!3�Ǥ��cc@����8�e��2!,�t�!�
��n!d����ce����X�`�c�Sw�V��-��CD���\ߙ�TH҈��i�)�`��t�����q4��U�s=]��=���?.1XOC7Loa,���������ps}����rX��L�xU�F���?�.��P<���z ��#j��ո�B|�����i�6���_�;�&��}jJ4�J�x��G���R�
T��_� � ���h;?Y�q�����\����e���D�b��3mԙ�ir�W3�����/Q�5��:�}��35�cր�%�x�KS�Z�:9��t�@�1��fw&��6a�y���Ҕ��|P���eQ��R,�P��8"����:|Nk�����Q?6���+4�g�`�boc�$��8�#*�;#H&�������u�����Iΐl�.4����L��a梳�|�~}G�Ɯ�f[�k�r���1-���e�.O��I��9:0�.Y�I�\XS�>ư�Lx��.�x0�VP��2��Z����_��naRt���U3��|TuH��K�`�Qw���x.�k�:v����Z�~J>� %n������
�!e���j%��f?���_�jC#�������"zd!}���b�٘���JAa�%� ���� 	�/�3��Iz�1M֜�R0]q�3�}Z�I���Q�Rҁ�O2J�\@eEG�������xN��G�*866����'�f�����bZ�pF�:H�^�� �/Pn	���DN�G�h�n\���Ey��3��wTɽ:.�}(�w`����7mD1}���"�ѯөa���CK*w���k�.�x}>���G�/�*v������[�u"N`P�S�ߖ<�Y
z��Ieh�#p�(j�0����n��i�:z)y�.��T�M�r>^�@'ȶؗ_H�Jɥ=LZp��%��j�ͻ���z}��$chv0��-��{X2�����@�m���>]2עe�E���\��=3 ��)h�޲H����7��,�I>��>Q3D=J��|}�a@ҠwT��[7�M̀�b�������oϮn/���]|8���~��������۳˫���������gw��W�ޜ]����- }T�G��֭�*]>E_�|��Z���iX�S~,Hs&"+|	k>�d5G�r2A=�e�K0ĸS��'�	�� =�SR⟢�(�����Ø��9�͗�G���Δc��ؗ���3��E5j����5v*�X?�r������X����]I�b���9q����q4�s�`�LL#�Ĝt����v�S����%�Y溶f��tG�O_^�'���8x}��N���������������;7�����◟���^���������ЛT� �lIT��g�`	'.�T����ԟ�/ί�6�S���~Pv�N��$��b,l�
�r`��,��ЉQ:��Oi��kO��>�W��]��mm�A�Ԙ�����fm��t��͸��S(XKD�������o��c͍,�|�¸�����b��~T�����O���x��A�ig5�c71d�������EU�U�f�\a��{a�s(#��S!NIy�ˈ�D桇rg��Y�kY�MTC�O�Kܛ��xV��fX�:���NX�m�wk���f� �y�wC�vz�S��0N�����U�p�2P�<)�M��&�V�x$�7~\�F���0S�,e�I��lؑD޸�a�#��a�����ew���oF�:n�.������F��(v{R�+ذ�K�J�3է:r�2��v�^�� ��d{:x��N�m�z�V��0��� n�i�2e-i�V4��(]G��N~�ª�Lt�6Yq�O�l�;��6�#���O3�0l�e��bX����<���UT]:,�8���0�H�9�,`�m�$�/���� ����6���_z��
Ɲ�L4^Hy��<�'9n�!t��X��z,k�gnOD�h4���u-���B1;)�yzw"��(M8�zÍ�4���Q}�l�Y����98*�MH�6����9Δ~s�&����N�߯0���o�x�)�����t;>'�7bF$�}���;wIgu�����l�!qnݥ����R� �o�B���y:Rvr�f�tcz�ڎ�k&�95���L��
���� �@���X0p,88o�����X��kM)q_�M�-!^{
��B������gߚs��C�z�f?=�I��6��q������c\�}{��S�{U��_9��WE��یM��p���΋��0X�B�"S(5�b'��/�ӥ��9ܢ�эhH����8��?��>B��w�������&2I]<en����O#�dxE�kKMsPi9;Ͳ|f4��� ������������K,��c��n����8N��Z%�F�l��� =,׆i��!�d�1yƌ�m��m*��B�:�
���)0Y��K{���l|�Z��y�)��=�59�$��#��Qs���� ��R���Ѫ8��/�9�;��Q�X���˂���bn�u&���5�8�a��v�Ǻ廫cw��OnBP�g�J�,���᷒q7�y	�
7I\�dKCS�/�gj~+!ǡ�z0�����e���9l�d[J�6٦�~��K�sXh�0;�K�4�w���>����ߗ��P�e�p�}��,��oF๫-X��V�v����F��7����=�f����e?G�9��j�l���D�Վ|��}�ӭ�#߱}#0��t������G-�iLo�t
�-�2������A�O�:��&�$�����p�K*<'T������iP� ���^Q�����H�q3�	�<��U��Zs���oF�SD����y�1��u���K$�6��W�\�]&���s|�?�*!ԇ��`m%r�\x��&!p��ԾPH�x�</������L����� ��#K�~����B<^�w�E5��}!~��f;��X���^!�4��q���E��Fl/����w��O��ǋ͏qT����U}������~���2�]���?�T��o��S�gwY����l^��oɕ��tEuԃ�`��^�"&�+y�XO���]y%�K��{�T���� ؑ��r}��p������
�^"|�pZ�'�ە..��'���� ��s���u^Jb|��d� ���Q3�`_�F�<Fqi��R%�aq�ľ1��}�ֱ�;ҥ�o�+L�ق$֜[�^�.���L_�7�~�&|�SK����盼��_���.�e��㼒�MzQ-���?��`�������n<�ߦ�V[H'Q�������r��m�a��_������ ��tj          �   x�%�� �R1��A/鿎�3��q�c��{��r�3|@������`$�Ϊ�Ѩ��͂5s!s@���i�tȠ'�@C���v���E����l��"��)I�',�k��n���*�ʇ����D��Mzn�~H� ��'�      "   {   x�M��!CϦ����^��:ց��ҋ��(2����0�	�!0�QH���9�����y�I@�%>gI�D$LZ�S50�;��J��o�w�	Uڍ�W��Eg����ƿ�����$      $     x�]N�N�@<�_��*P֛��A8V�ǉKԚf�d�7��lR���g��h9�	>�`C�ɕJBqT:�D�H�a�1���bB�ՉOS\N]��	K��:�j�|�j�̭���κ#���9�7P/������:']˾���+������f�נ�R $wm��}/�mA>�!���k@l����!D�i1��x�<�����<���5�U'����=3����n����iԎ��E�0�@޸��Ts��d���.�g;m�\"��|�      &      x���z�F�/�7�8�:3TL�xW,�c�v��%^�'��,?�%X$�!@I�G�ۯ��8/���ԯ��ѸP����벳�$��Kuuuݫ�;���Ӧ����{�雽a�s^%gQ�ES���l�i��n��Q���A�觻�;��&����(�E��(>k�id��"����ֽ:����f�,W�4��c7�g��"�v��Ep�Z�������m�{��B�f��}C}Ӕ�IrbV���:�Ea��ϓ�r�M�vg�7��n�=N��b��8΀��}�7l�[��O�a�f�qOõ�>J�I��BO��,N��}�i�i�9�����^o�9}�8������Q�I��e������^��9'��*Yg���4K��k���ϯ��,�SwFC1�V��2�ѓd��6����v�W��>���sڀ�h�ҏ��yfWa��E��-�E�.� N�v �چ��mm��˘�/� ���{|�Qi�M��`=����3�,¥;07�Lh�3w�u�#w-���&\��&���m�M��[>��=��ӌ�k�[����M��u�� ��tOO���`9��;&\�|zJCf���>�7����:\0�`.
^��i�_z��`� �J��>�G4m M	i����ĳp8��	NW������C�k.h��7ֳ���ڽ��.q7�P� (u	g�'��O�t��>^�%k�~�t����=K�	&?�,T7Y,\�]tI��C�����b�\ჹ��К��o;�&t�|Nק�K��¹;�o��F.�M�����?�-��"9K�#��G�a0�V��$݈��Y�Y�]���/�����,��K��x�N�c�l�h�D�������X��� ��tJ3V��O1te�s6f�lҏI  2�i �6>S��6�q3��K�@&ݻ���H_�����W-8�m��>p�0���e�#yz��
���b�~[�om?jA������Jo�"I�z����*�g|Ri@������:�n�t�*�W�pM	+ZtUm�������4X�I��u���71�G攏���gDŷ��[W�&w Yi�{�N�9QwCk�"�I�ꆻ�.�!�hI�{����Xڏ'�-�{�/o��3�3M��s:-}O�:�3�Y~S�f2rN�dz0�Q!� �K�Q�|{Cj��C&��tp�)1
�4K�n�Lf!]t[�DIGC��2�B�{�3}@TwM�9��9�-_���f�	?�V��4���f�4�d���^����7NT!�Y��	Q��hE��g���d�4�4Y��N��T1�$���JA�A�X��xJxr}
q��q��[�`�� �X�{@V��إ��h�}��*7�dJ0����51!n��-`݇�ա�1.���n��}~w�KW�"�;a �POc ��E��:�Z#a^"L�ņ����H{NW%E���.vy���"o��d� &���6e��ťz:�-�|��|^��_Y��qz�n���5���7��܈�o�k�c߽�6��j���Gk�����Ĩ�����FV�'��K�{��w^�W�߉u���*�\���
��o���F\��X(}���љ+ �/�v2Q�9�#YG8].�]̠���*�>���i�а^!����T�W3N�:�2f�ӑ�g����H��	�����>_=��]P��B�M�A�	�K�%��О%����2�>haɜ��7�j��.$����=��I�\�T��P/����
=�K�Җ�M��]m֠������yDp�cOK����n��d`s3Cd�-���*��&!���c�K� �oRD<��I�Z�{��Ge"E�!��̢��[ҩ�e�5�DQG��T���%!���.�,IQ����=\k���I�ۉ׈�;�>�D^��ݐ8i+��"HcC� p�%�g,�Ҙ����i"�$���ׄ.:�� �m NCȒ�Z��eI�c����$��|a���2,���-7(��j(0�)�
��s�l�WtJ����,U�|�Àx����:�`uNOf�������f�#T&L�.2���u�}']&Iv�j��"!lr/	��i?�6t���Yv���"8�n4p@�3HF�3�K��4�-�t��׀��G�W�OW���61Rc"�\%��2���5�ѪŗH�sºL(JY݂"̠��+�$Qb,*c��tC�e{���̈́`�'�.L��v��"�i
�Xi�w��~��؈EtV���2�=z�k����k���>1�}��>I���e8� x4wo@0:���A7��U��|�rc�������ӔKzS,]���O ����f�5�?Q��$�����b_�鎟Ѓ3�`T�	�'�cfp�0�c��p}E7�k��ț�8���$��]5�W�#Y�����y8��Eʢ��Sl�%�S�L��ȍW-��,Z-�]��Y�rl.���1�VAR1b3��R���"��&�����~�I�Y�.�3�}��@Z="��u��Ue�|UI��J�ؼ����q{g��Uɘ�YAP�����1�ď���{~��+:�H����$.�Qz��׎�p`�׈�ũ5�[�O�r��ha��;�Rtg�x1�q늮�\�����GGcfk�Xjɛ���G�+�5f#�M�o�����qxR@���G���_pn[�s��8ppc=o��������!���`�a�DHݗ��4�b.�g�z<\��}�Qj�7�r�Mɕ~�u;�u���!���i�CG]�h�q�h5v*.&DJ�"]����W�}>�����c�w?�4���1�)��8̔>�	�E���!,�>�/ޘ1U�`qf�L.��7�R'�U�}�IA^g��;���+�<�˦��@Vn? ���eN��nY� Y���ۖ����P2  �i��-y ��f�|N7�ꌁ�]F�U*�H���	�	���fbft��g�{B�L�^��:��E�ȶ���6f���}��y���������LGsZ�٣�s��8��x�k��No@G>&��t}ϧ�-�w !2gG�u:��oW�D�(��}iF��It�L�Y��f�Ad���R�}�R:�)�X���_�;r^ [���x'� |i�}���M[�[�XŒr��V1���ֶ2V0�|����	X0�Q,,��E�d�a@A2-Z[b ;���0Z+�-`7W`��uL���9=�ox��O�n΂���<L��;�D���&��a�w��yn-)�<j-A"�u
�2̈́L^��D�&���T�.��:�"�ވ�(K��+��D�	��E��LJ�)#ACp���x��b̷ѕM�#V�k)^����I��L�"$@��e@#�(͓)�ޠ��6dr��V��!�K�d��&��0,D��L���1���0�6|�	�
�pZB�L����0Z����������O���`��٫g��~z̋�H�O���p͗˫ >��mN�Fi�h���3F:�����lj�41/4"��t�j��C�SB�D�UP~=�W��N�x:�
+�Ku��a^��Bv$PC��n3����y���6�A_Щ;�g�

�`�My�����	�q����m�IL�֘ɐK��$�ހm����2���-�Z�WI|v�̉<��0]�QH�^�K?@Cwu�-��'4���pJ�-��P��lo�%��8t�_�ω+þ�ﻍ���p��\u	+����Z@���SX��Tu��ͺ#�p����x* 4�Zwz�m;�ΐ�g5o@��HY�s_��ẻ���@GM�k��X헳6���Jh�-Cb[IZI6�\"�taV��P*ű�,5�bC���g��"��9ͩz����c��Ԟm.�g�B�poH��K��DZ�*D�7������h���G�����}Lw-�lݛp���0�
�H6
�e�ȻCG�B�B7*� �, 3��G8p�r�[��P	e%��,]�(^\�YBш|��9�媪�"�F��=�$Y"�V��������һY�_�}�}s�/���$�-Cc�Ǧ�R�M2��J@;4ElB�&8    �z��٨�@I�KDQ�Kuag�|mO�j:X���S}�|c��o��ׂ>�f�6������:����[L&����7��H�tk�.�kzȧ�	�S�3��H�M��8�����j(�~H����Q-�I���_���{<��&�V�X.7�MOC�/a]��xFg!�V����*z*��|3��F?Rz�"
)�Pv[f�@_|W�'D�wf��39j#m���GΖx�_,�߄].�Y����3�:����16mM1F
�m�B �+IBpJ�
97��rVUi�tPN�
X�����%�E��B��)�4�7�X^�/8�a��AI�핕We�4���� ��G�-�PîS4�C`�͹��93�y ǬΠ��	_�=e�e�`��Qs��ŊI��*L`�[$�DFk:
"�m����"$������l�|����J���"�0m����b��L7	�zXM��ϝf��8�&13LR��౱��'̭0<�T�<��;](�F���0ր�9����:��$?��/-I����Cgg\�.�`�)~%��2��@nġ��l
��Q�:�n��y4���$�w��ܬ��|��D��|���qms8]����� �t-��:F"�c���%\I_ׅ�T�Tk��Q۷��Y��M�9o��yR��c��?-|j}I3�;��Eל�g��Ύ�����'>$zQ����>��}^F1K�7m�c�>Iʝ��1���H
�����`�⢏1xE(�{t����yvM�������������m�/���o�IMWx2�ɇq.	V�XA�W�Ӟ9��ͥ-�y�}k�j껯"\�VZ�H���w[�M 0=	�aj�������N��������Z�\��DvAA�9U�z��r	�9�19�]���"I.�Jsc�3�DZj���r\�,��Fb��_>��k�Z�G�8olR<=]ӿ�':�[���4��:�쟞�"x�p�����\�&���<k���;��\nƟ�7�t\��)}��K�ӧ�i���u�།�����>3Xc^�<G�p��b,�MY�en ހ�0�S�h����mA��>I��u�t��a�RM��P�q�^�C��q�uj>�<��zCS&�vZh�e=���郎ӣC�X�:��[b䢔���Bhd��s�0��A��_��ܻ�&t�&iґ҅��(4������byb��on�����A�1��5����J3)�JH<8��?�KB���y>&��àym�z����y��u��ٽ{��$QJS:����o�Q�5��wԷ��D;�m�5Qu�Dq9gW"b��d�t�ጱZ,\��2W���j�n�)f|&�!�)g����!��L�ܔ��g��ZY��z�,c	�:�C��Ձ�������	��@�n����Ğ�@����-n�?ܧ�gzY��`�+�v���V2�\�ӧ5����VXq�&Nh���Yߺ]&ڛ�'ڡ�OI�dL������@�i8p�4�"˒#���pHM<P����������y��e~����YS�/JY����80�Ӆ�`���ܤ��v$4~L3�PI,6�10g�I]Y�7$�yD$��~��B���1t�F�"�|����h���e�GB�T�buL¬����#=�8�Љ~e.�D�%��~-��#Bt��'DvB�Q���,��3���ׄ��>m��>Wұ�u
Ө����Γ�x�Ɠh�E�������^���A0KFZ6.ctӾy��%��B�G�&zؐ�F�'��������.���ᧀ	z}�y8Əye�-�q�ц��K��b��I�f%Gˀ1e�����jV��Π�Vq��ޟ�S G�P{�<˭.BP����|_�2�B���g����O�ͣ	�ѣ�97*>ѶV���iw�����e�7,�a�:�AC�d���,=t�%;�����)tpZ�.S���H�R�@�'i9g�t���$\i�J�,�rǙ֗-	!h�t)N�r�^GDW� Qe�}���l�^�aZo[6O	����]����0񧘅��d�'�qi#�7���O�Xj�y:�/�R�����A��������Vm)o�����V_P�h��k�I<eb%vF�m��Y9X�_emz���&�M	����;=`Ǡ�V�)�4��V����-]�l�7����D)�)��O�}�ɷ����V��؃X���f@�5!Zc)�BsT��S�G6�k��˗)��Y�F��$���MY��y!ܢ'S�k�������Kd��������A����v�9�T���J��$:s�[Z.^kC�J�#8{i/�	+͕;��O�qƗ�a֚�D���I���J���m�sF����B�/�Q<VFcXD�H"�-�!5���zdl �!��5$��9%��P���K0�g�R���W���9R�j[<FFL��E]��k� �B	lBn�D��t�X$1��v�XNDȽqG�˘�4�YN";m�:�NEy�lc��@���$0�$��n����l/��?p�fU:a-vVg�T��tx	H���'�)4��!�gy�W-��X Pc������N�f�K�Zn�T�T�(YO����|j+2p�uAu3[	�t_Ƚ�� �<s��k*9���Xn�&/ֶ"���r
�;���_������rM��pTd+!SG!���)��2a��1A,P���a@G\��wXZ9t�O�X����`{׻�t�Ym]���DT���([I�z��ל8�/���X�a�e�QFV����OZ�_��T�LM*�i�yx��^>I4mpCt���'v[�Vф]��	�c�{%��N6h�Z��?�o���h{�uB�$���g�&��:0^t)�y�> �5�-�J�8�F���������А�тŖ�b�}�	�f[`7�\M̓����r�B�F�<�y�%B��ˁ�I�6����X�Ľ)�u^j5��OΏ��D������0�>1l��5�|�aL�-����Z�C��3����I�i��t���5��_E6F6��!��L�o�*ʠ�I��쏾�Σ�s�bo���Z�̱�|�b7fD�2�j���Afz}�^ہv�5Z�p+'�AN��PL�y��K�^Ϙ�ŋ7���kI�kٸL7��9o	��I�3§%��e���5�"ȼ���0~���K~~�z"��`eZ(79	��`m�b�[|qM�N��\f����¡��I}� ܊z���J���7���,\�����z�<��-Ͷ�������k����&$��Cou�M�f�dA���G���0[�7�����G>���c�9���g��sO����s������!��f��g�֠s�]��o���g�"��?����K��C�g�Z5����_x���˶�Ԍ׫{��=���)�Z�n��:<�u��8��ߟ56#:��I��T<�u�\lQD��҆��x���%�V�Q���58������ný���?{�����x/�T����<��ݚ����l�_xz��>��JNdYH#��!��n�t�����i7b�#�ȫ�0V�q�f��<\4+oŽ�5{v����$1.�B�2��Y����k��:��9=��չ��`-�%Ԓ�@ �Z��ۜ�RZ��:^׸�X�tZ�l�h9�U�P�k�(��պ2���i������������35��б��&�#��[$+��YQc+3w$�]�[�aaF�����1���Z�4/(�J@"E@E|)��s�����'�dߴ�S��d�`^������-�=9��I��K(Z�V+T���-�͵�hz�FzC���O6�j1�#����/��ho��H;��ձ�Jq�<�� �7�%$`VX���nQ���%����1*��Ȩ��r��21�F�hن�uBH�8��$����5Sfܧo��8Gr��5a��s��U�V�9T$`�����Y��8S�P��}�.oϟr�F��<��z�cv�b�z��Yj/�p��k/4�- .մsݏn���l
a�����C;%���+c ����n������y�ׄz�b������x�3͠��& �    q]�zu���@��I!��p��g+��P�Q��k.���?ĝ�=�l�o;�ͧ#㏜�$M��/�F�M���DE s���/T(.��C�^ jHQ4�S�`d��Rr�U�W��^����r�7!��	�D8%���us����(���A�}�y���������ry�d}�:���9�^.wFT.�ܓ	2�ZAQ�gg��f�o�o�%�~�[F�y�Z�a�t�Z�����<~�t�O�36%������Dg�T�j*a�A� y�.�V�8�:;�짷��l��過����U��;���LQ����Pαw͢�P0���?Q���:X��3V�u�N��Te�[�b��	P!��E��u���CL����c��H�b
Ś}�u�:u���Qv�E��#צּ��.�4�2�ӞPw ��d��	O�Og����q��o�?�Ao]X��찔��k<+��Ms�t�^��p#���slN��$@fA#��!�KH���q�%�30��F �ZD\��2��ǯ_5����AB�ۮ�)f���@ܒ�`��H�Ѯ�U�J��K�Jͺtܺt�r���+��H��nL��0r����/I$�y�lC	�ؑH3�'!�� �F�+?d����tf��΄�*�i������OĨQ����Z��G����yv�Pt�N'
y3��@��*"���Oi��	3J c�ޥ� ��	`dy�)"�rD��f��Mg��T�{(om0��J�=�¯;�FZ݁*�g�[z�Җ���]�A�WOs�o�v��_���lb������&�c�¤�L]�96������8�0G334#ӌ�-q`��h*VF1��.�}�Ѽ��Q�mWd��m��M	�ط?��H�{��`���I(�{=��,g9�Zf����{θ�%�w4&B�8/M�R���0Tkr��`;� �jbIu���8�J��!V�������<�7L��jf��+e���9�,�M'�twPIM☚��4���t�a6gXb#*x���74�i�~&"�@�l�'&P��������+H'�y[�l0ok:��r�U39��e��_�yӐs�gh���$Oc�v6��N/��b&'Ν��=r_���<ڝ势�Q����ޖ�
9Tx� �g�C�L)^��ڏ�M�f�h�q�����&Y�~���bx���^-���J��!���S޾#�Cc�>o��b_��\��R�E푣{\7���|��	��ŵ� �t�+r�������2��R�Hh��F��TǶ����_�͡;ʻ��>����W�t�o�LGT�'����aG�HS_�0v���BS�a�.��I��IafYY��L��vCAL�|���,q�:�E� �G�<�q�|$��,�TYI�AO	��q&��}��XR�-���{����B ���b�4�#�s�r7��Ό\���u�+�G�ѕ�p�$-��y*$��.	拄H��NZΙ4%��C�����e���urp�Ti��{��;����b�VS6��+�m�8�1���<-tѣ.NzN 9�4���>��Ԏ�? 8�waG�{�S�C�j}�>F���tk�jw����z�z`��w���s������p��0��S�y��ؙ�0N��P��c8���/��7�W~{o@��!^t�#�� �-�g�7l�3{�ߠi��t��C�x�%�p����nª+l��y��@;����Z�k�/B��N�Q�l��^1��0vrN�Ch8k�L����9�B��p����T��o��yS5�9���|uqhA���$�u'�'Ԕ��B�	#p��{��yￅ�=���6�k���$��m��OG�����3�H�`�3�d�e�v��jz����C��<,隮W��q\��L��#~��<��@�tS\�ع�|����1�+���1%���U�/��q]�>v�!�z�vL�4;H�Pk�s�hlNt��;��8��^�ݾ���#j�s$��C�ǟ�7��@����Я�ݑ[H�n�r��t����u:�ru��&Q��3�5�)���y��ƽ-њ=	Z�Q���/;���|ŝG��KVH]�nY��,��)��j�:�����L9e?2�2�w�������N>��Up
Y�j�=w�"����>ڡ1���nXTbz�(��K���>r=ξf����{�F�2�kđ�1�P�I4;"�pz��;G^�F���\�?*��V�o�o1�1gnA^]I��׹��-��*��O�}�y��tg�i���m�x�U��]] ���(�Ѣ�g��<Z�z��8���f��r+"T���)��8��r@�~u9~n�}����W��ȺU�����箪
cR�9�s�����d�`TnE_��S��}:%D(��/���U�h��%�K\F�iŷ���/�b~i�/���2�R��p�k����>-h��hm�Z���C�Q����M��c0��j
���V�t���eM�%Q3�)ģ�u�m��u�=:�'���n�,�ʖ���=k��"ܕ6�Z��}���V�� �YQ�Ԟ�&�f�����j�TEY��1^��v��.{`uq����V�aO����f	$��on����^U]����_�kՖC�o�b�TvA���(���w=VUu�:��(��oe�&��.�}��E7~�pș��aF�I]G��;�5�ϥ>i��՚/\ex���B�_V�
�>�g���s��M��/��!���;`ʋ��L-Lr<T`���5g�Ԃmb�|h�Lڝ+e����QC(��!{��?�]j����,A��XM�hV���:���$9Ey���e�gtՏɼ���40�����DUOC�w{���xK�z���3���֜s��N�d�'HJNF��L�&��I�t+�V���S*�.D�Z�тEi��W)Ԃb�3S�ŎW�����*:���*j������O���v2%d�i.��o����O�?��7l��Vo��h�>���bAѯ����d�p}Jּ�,��6±�kQQ� � !�M	w��s��y8�,İ���d�|
P� �����(+��s��LģA��(X6:J�Gt�.���_A^�)7���x�}���a���~�ͧ4��Z��wtFlq2N��b�Z���Io�vJ��l��{: ��z,!�8Fv�B/�U��ժ�	vm�#-C���z�ɀ����1�kTK�%���$oK�� H���;�G��V��Yp�W�S�B�,|β�y��r����L���D�-Ku�؄����o�Y���3��sО:�|�#L��k����H����BOF7����}+������v}`�J ����b��i�}��$���i��rz����!� �Jc"y-Z�Q��s�ibgy�W���'V$�o' ^��o��Vw��&Tk����${/�d(�v��&��2��k�نc{Ұ���:V���/I�}S��0M�<�VDf���P��;�t8o%Sھ=[I?;W�H�CH]�B�W��n���)�9zAaL7IE���)�u7V/C:C��blW&�ɇt�G��.�d$$_�%GU�[�#(�6{(�t�&�`Yw�4����Ɩ�����7Z���������\�(��{!mt�}�	����m�c%<���1wH�r�w
��t��IӇ�F:��8�����f/��7�{�_S]�<��4fw�q3�h%	�W���Y�	0L�O��GW5u��@|�
u�z�\�;N��������d�o���zd��JK��wj�!�	��5k��/<�H�
�بӗ�`m��>���=~l�WhG�(��Ml��8�
)��3���Pi�W�O/�+�]b��f��ŋ}S'�E��<o���t>S��7S�MV�⇆S D���m�FG0U�%�W�L2ꘊRB�_^�hY��i'�%��~�9Ӕ'�����s�v��t����+��Q�S�kB%*��_h��"R2����vxC�����q�$rp��C��i��j%���l˷ѧe��ڠOG���8���Y���)t��Z��JQ�    �ܓc\mM�SJ��@��&>��[���|Mt�����;�f��v�{G<v坾����*-\G2W{ź�e���DivU��9�4W�B�׷�EԪ8o�&T���/��7�j�?����U���9����悀��c�f����u� [�<�����`]P��+�h�'ӓ�F1
��Mi-���ټYP��a���_G��р��4><;qb�8!2���ܧ��Z�l^/����:�UQ�ƪ� �����h1�q�K�~E&m�5\'56 ��R�q��7��@��᫬@�c��ܲ�bY���6�sl�j!��.�h�F��)��m�\}8�DN� ?*4�t�Xr�텧v�����]U�%{l-L>�����V����7�znx�6	��>��`�?�Q���Wc��@�"�l�R��#ڨ,(%<����edT�T�T�������P��%��q�Q_wZ�x���Ԏ���*P��&�RP�����ӂ��\f����&2������d��w��e�v45��dR�\(GA�������U�w�(�@=	���H���s8�v&�+��"���@Z�	���P�j�B�nЭY��Mހ#i��T��o�[�2�~�8�m9�6����G�������ց�О��MJ�S�jt�n���ZwJ�r<���߶���LwY�M]�W��f�Q��p{��l�~yB�%�Y���&/�J���(
S��7�V�����Ch)� ��j�B?6���C1���Mվ�n
|�o�G�\Z��h�JL�o_��O��S.�$.�}h��伫�7e��:��ǩ;����*������ɻ��wm��c2���u�ɇ*��,rr�Z컘�H��hp�ڲ�2)���	�x��.��(��Ul�X9k�D�w=c��y�f�����T�/m�Lݚ����ڹ�V��Ͽ�5�E�߾�����%TE��p iȯ���g;�̶�R/���h{����댚n���|bu�'0k�6�����p۶m��n8��6rcb8��tL]6���G��[E,�|�fS�|�{�T�pz�h���VGyT�9��cO�c�G�U�GɝŬ�!�H���p�>9�9Ā�9��'~b�h�6͠��$F��y2MX��i�A�|�ǳZs����Ȏ�y9c^f��N�ݦ����%���ס|)�s��TOIOz@��i���� ��������X*����q�Z���+�E����z�5���#ݤl�P�.��rU~݁�)���r�9Z'Ǐ�`�P��� ���R*m��7fP.� n���O��S�>|�G��x��<���� �(l&�Jw�ú��PG��c&���xyちk��+I�қ 7���D�a4�M)6bm6~4�cA��c��=w`��&�Bդ3��ߒOɹv������Z�p&�Ip(�k͛H�hd�u��8T~8�����Ԭ҆�po�n;/�Vc�=Vi�m�֌���;XJ�t��*Ŷh6,�-�!�'����:���&�ݰ6��ʑ٦���67�Q6���\c}�_�\1�{ M�X�����s�M@>�M���#��� uj4�!�aQ�׺mQjW�`�ƲEG5�/�`�֗Z1�w4ʅl�y���m.�ی���6��ZY��7E̾�{�^!��Q? ؜���X�5�d?c��j��F�qM��<� q�u�b.4?�B�:Y���5Jp���Ï�GPV0f=C�=�ZRǱ&ι�pE[���έt[�Q��Yz>�%�o���3���xR��i�Р����?|���:��-�@�z��������u#�ֈ�2�r����!%�P�M�c"W�6�ˣ�׬{�F�,aE���MA�/m���'��JE�?輮��T!�h�Uj���"��?�����'��^�P:�_�����K{���3!���GQ���D`��:��4`:���8�Q4�.����V����[�Q�c��Ei�R9��t���,]C�U��(����r|��N��o�����)�@]��K�\��ρV&�0z	57��.����[nh^�3��z�ܽ��]�X{���Rլx�/7S��/��}�Cˢ����Us�������7�YѡX�{�v�����X�ql�'H�����u��@̎rw6"�Ҡ%Bb���򭷪�*M���
W]�I�:^��o�����$@e���g��\&S�8Q$�`�\͚���!��}O�@� �=T���A��/~Q1WG�i 鹪(�n�"�=��Cm������X����I���#��I�i���~^�WR!�۵=�i���2��ח�vL�D�T��2t�.H��qm�8ӌ�*�s~T{�8�?�����[vz�q~��y�&8$G�&YB�\r�H�:�{�4�U������ }2�.��@��$���D2f2��$n�$�y]'O꠿�<J쯯��Q�#�0��6s��ïo��#4�zT�6|V��� �;�V}�&��髺H����}�I�|��iМJ�EN�7.%��J�OHF�ihyJ۞�^�f7D��(N9gg���a�*wIzu�U��]!���-a�e8M�b���F��Yuæy:[�ns�]�mN1������:����R�Mj�XcY�8�i�%q)5����6�Ƨ�^ذ����ё(�8�gf�Q�	��%M`���Fް.ʉ�
�m�a��W��G���bCʋ�]N�7�}��YL�.8�VENa���B�P��
8%J4!�ifF5Sj���$P��,��(�CH"f�x�.Y�����qh��e�}�y�FQ�f>Q�WE�&r��}anT�&F�\�l\JU�@EDhܕ;�����g����硊&I9�Aޫ��D���1C�g����K`Bf��d��\��N���<Ko����7����U�x{��ND�];K����*i�H�=�l�g�ȓ0��m�@lց�g�#�S�oS���|�5������������;S��M<�w�o�Z�4��üKZ7��.g�<����l�ϔXQ+������Ф(���.���e��{�Oy������X}V��fd���:*�7��QY��!��r^��[[1k��VS$��s����/�(���˩ L7��lk�������^�`� ��7��hpX�=��5T�FZ%W��X����`�na�mU7b��b���F�޾�)�²|R�w&o�M���`v��N��RQ�~����pc��!�{�*��M�sYC�f�5k+�*�RD�r,�����l��I�]� �e�c9GMsWr�0 g�0:k�. ����5�T����T�*Xk�Ӻ�`6	At70
#?���Rկ���:����ِ6,Dm�H��R�T,��J;/�B'�_8�����;`c�Hgo1]���i�	��;,]��Ϲ�[�e���s��*�Z�}�XҎo�J��B2X��p���G��ԙL]�=��&�'CϽJ�U耍�\�YA��t�J-��f��Z�|��/�L���T"�t���!mA�a�X�.-\��~mY�"�uЮM� � E���U�n���J��eJ��t�#|�k->W}4��đ�ϏI`{�q�ik���Ϗ��������Z��bn��9A����|n�I�}��_ߩ�"ڊO��Tz�,!�C�0M��m+6�����F�0?C"��ƒ�T�m7���׮��:]�O�U!��$Q�t����ִz�5{rh+P�X�
��X�:O)�Ք�tk_h\d�a�4���U1x��?ٙp��uAz���G��{"ݫ�]TVf���A��\K$�$�0��ɦȀ���'�.�#j�a�Cc[%�v�8\5Mdbu��JWOi�;(��C�1�R+Y�����/���<�������,9L�����!�R�M����;�����Q!��W�[�K�+�e���ꅧ���u	��������!�#�nE�u�����'���~C6�>}n(;���+���8��r��|s�ۨ�T���6�W�Ѹf~V-¯��~+�������9���̡��*�������/@;�ϙ�p!�TD%(�r�'��dw����Y�0!BG��Sw�    ѿ��<�!"��u��F�k	o��+D:�rʺ����"��n(@�8S��a�{�<��{���?����~��.��Y��-u��^���xcGui��ͳٮ�?�����˞*�����z�&�l ;�s;nasYs���G~�Է�}�|�Uy�J�S
�Ė�����k��N���}T7��\(�f��.������d�>�z����� 5����[���Ř%� �Ԉ�ɗ�#�bk�ֽ�%����=~{�!�����<}#�a��;����&]f��P?������F��*�
�VL�`cm���WV�(n�~%c�gE�]���A�L���B�\��6�`K2���]x�#�Nd�Jp�K{�c|h�p��}d?��X����\O�B�3Y���Ku$&�P��j���ޠ��y/am��ؠ..+6u���*��b��f��NL�T�6*��Re"��{�?cf�֠'�2���n���	R�9��vP�pƙ��O�ά/�,
B�k�U�U�nR�T�JB�4X�SS�U�e�b���()��I�T�m�r��&�C��i�]�S"���U�O��Çվ#e]Qs_�p�9L��8�@1�r�%n9G5E���k��V��/E�ӥ�O���\N
���xUTdڂ��T���8ݘ���,�CC��2(Ź����=���q����2�^1��tTD�ğ̒�{������Ü�5i��9������K�"�����Sd�C��4G�JS��Wץ�)�8��KgPEeV.��h
�5����p��������d͐Q����d'���y�<c��t�*�&���!=��K~2�悕r�>�Q��T�Uu�s<o�z��Y��i�w bT�\멐^�0�>�s��Q�]E�s�#��2zv��`o�Y�8q
<+hS? �s�.���](���T�g����I*'��3l�����g�'o���{����� �Q�k�vȝ��+9_j}VP��c@��Z��4c��^0%Ngz��F������-R��v�Ή�.h��ė[����\UM��Z`���v����F}��´ӭiz�6�����b�
X�8�6&���|�G<��
K��
dyԶ��4(�#58j�b���X3���u�B��֬vU�"s!��UaF��s�p�83�X���^O壜�?��h_��ȨBE�(�΅�Ҏ?�\5������vl���v#�U;��u�P\�\�ش�y�����q�9N6���(����g_���^M'j���5;?�[�>��hsO�w�6k��+�#�IZ��ܙF��U����K�c����l�;6]'l%."�l�����]�⫰�Z�ED���BfÌ`�������g�x�on`>�7n����
�6���{�x��2mM���4���fM�3��/�u!k����D���ٙ��^�%�/�ɸ�n�+�Q�˞+g�`m�Hcq6.$E�QR���
�d?%�w�xWZ�&V�7r,�$����st�2\qaTH��P%b����yZH�����lW�V�Ay���6J8^W,�e$���3��T\9���R��	�j��3f0�����}�R�0��E���M{$����8���Q�~�o���yN��DZ�]�fx�E�>����	��RK�[>�B�3~ma�T��>qg�Z��ש��1�b�p��VDd��s�#��Ƭ���y���.�-�Zgq��������Rm�b�� �_��_X��t����9�P:�sOԶ����Zt[���	���l��W)��P���p�"�K�P��ߥ-֕�s�qՅK
qFv(vM��\��-,��^ۑ���Ѭm+z��~��6�����_q��B,���/�fVbs��Oź��k�7&�ڿ�Φ,��fYr"������j�̟�2�r#�1���3�������6»]9
���㈴.�m�ح�J.�-�|���k(���Sk]��V���	��~���:����He8t�7;�ȝ"AW������f�rڵ�;�J�}�-��;r��Er�sz�AaW��d�=�_�c.������s�H���rP�n)�eO��ft�Sg!�N�oh7�",�	N��a�����;h��[+Ɏ�F������`��lT���ԝ��g�)�PP��D�k�/����5]U���]�ͮ�ҩI�*]w�zw"��Ҙ|���P�H͞�uea��Q�iKR�����	F��� ��5�4����ƕ�$����J�f1�$������\A$\�r�°'�#Vf��0���4/V�����q�k�LCU�G�A ��(��H���#2Eh$)K��)2:���K��ٻ�/��S&8M��������')���r�!K��^�s�����VU�|�[�ПJ`�9Ц���k�|�y4tJm��HfZ��F�JU\��4��X�v`�p7!y~��Tu衲4�*V{a�x T�IAM"���d9[3.��B�W9�!T�{��,ZӮH��\��# P*��R���ZIĐ!�������P�n�5]��q0Y�q��mpgܩ����<��J����w$3�lc��Ԗ�*ý����MJ�aOqD]y��]���
���_���?܇nf}=$T��c�L�A�%p��a�Z�I�v*P����U'R�{�! ��s��U�9qOΓ4�u�)��4�H��=�5��ChU�Ȭ1B��������K���X�����&
�ͯ$ƛ�&��vⲺ�_ܒ6d��H3�J�ҠZ��D� "�2�y�>�y��.�w��	_i���}g�IR��+�P��T���yS�w��a��ygGH�������ݪS@'AXS��M�nk&g\��h���Չ�kߖAq������P_�Z�i���0]��Q�7=t���YW�2]70��Ew����h�я�v�h+{j�=�:��U�<� ���WS���l��6�k�_�JUu��p�ܑ���}uTØ�kn{
=��/�C,��X�R�\x�T����ēj�-�P�Qڔ����vȃ�__�D�q'_�@�\�\��L��Hu�WD�?�&P�)�;Nb���3O��9|a�Uo=5R]��LJ$�2�}~����
4ۯ�3��T��Eb���W]*ei&t��{+��Hj�b�\�`{�0.�R԰p眊	��o-K�ߗ]��J�1+�̝�L3�hڄ��b�A��5�*T�VEQ�����Wڽ�j4F�P��}�ݲ�c!�@�{�������wRhm!p�(m��
5��F��fm26�;Xn�����<d�߼�׼b�y�:��D6JȶU[G�����F}HЮ�'���ۂ�=��		L5H�E7j��ٜ]�p��c���n������۶�)O�_�N����j�_�df;��=D�sT}S�r���Q�B�l@�qt[�U��#���L\]�c9g�o&�b��FM}��v�B1[c�sY���P��H��x�P���H�u8����#b�U�l�'p:.���B!P��+�㟑��,�������1���a�N]o4�]���Q�3)�iB�r�Yeӭʈ#����&�y@] r�����>ɒ���Z�C[�ڈD�QN/p�H
�+�f��Z�I��+�ߴ⺐���d��!GpW����>a�ZyƐ�^X�]��W�$4���_q�]�y�p��%�� �X��M$�U�<�d"�O�"��U1������.�N�ب_H�nea���Sn������қY�po��E{�2�UDv�t���
�v�Cr^¹��U5<&ivL�8;��\39�-�0�~G}B}�>?�9��t+6_O}�0��hu�З�y��D�Z1���4�A�O�Т��\�y�>���P�@'!|R���#A�_?�u0�S㖾�����.�e~�r=�^��l�a�;��=�D�I� �TB��v����뵻V�Ț.;N��{>������h���胿ߥ��BXݹ�\���� �X�=�e,�a0�#���jO��*e�Bq�v� 3�(' �[S�A%Jc'�Q��g�'Q�C&�O�t�IS��Q��:NYu�r����i���t�#�7--�aY�\�fZ���6���\�QW	G�s�<Vr�F�&���Ȫs���N=VI�[w    �lK5|�a���3�r��/�T���'�_�پJb�8Owm��Ng��7��+J���a*��bg����S?}�͇�OZ5:bq��gEhʧ�����B���$y�`�����]��"��K}�j��
��|EW��'&ub�D5�:{mr�~�l.�v���;�u�����f`׆&�N�/ֲ�D���g��n�����Z�X^0�PUqLn�\�į~5���y]Z��' �/��uDYW|�%PV�ȧjri�r�ʽ�0�M`�P^%�b�����c���/��bf���rMC��̝�S�߭��ސ�Rd�<s�4>�Ę_2�!2S��d�Bpm��f㎲��3�=�Yo%����xm��t��,H���8X������Y�$i{��y� )�9w��^�]%+�0ݳ ~�
R���c��L:'�d�{!���Ea�%�ONв��VSq)�E2���<ru�Ǽڑ��7Ǜ%�#��Ζ��N�Y��䩵�1 �B�$�T.��#a�,���>�G����8Ol�פ��J3��A�VS�Az�y�W����u��\���I,�V>D��N��e�\[%�XΎ���U	��7�'�{ �9?E���p��.N0!�A��X�ϣU��ܰ��?/��Dl��l<(����%��X��[>a��2���`7�МBVN+�Q#�b�f�b��۫�>�"KNOipp������(�n�HuGΓp�Q4�U��s� fg�� h+SOx�ܰ����d	H=�dP��d�-⌑^�:x�L�	���]�H>���clMƇI9}�S����k�Vb�A�H��m
�T�s�m�D���foդ��^��6Q��7��* u'ˬ��^p�^���ϵj�R
Z+�8�Qt�L�Y��9R|����k���\��^�
��q��t�:�����Z���=i~�� |#&�n����9:�	�Ι�[������G�����0ş�z������Tdt�Yա�e��O��#�tW?�s��\e�n�����i]涯�%+��Yո%Π�i��;�	|C�JbePH݊�����]E���5%]��3�Z�ڦ�mm��oܿj����)o��jeID��z.�����ƹp��蕩Ϟ4E�����a�<-4�>(bI~�'��W����_��]��Q`�t�w��oЭ`ȃaw�Y�FՐ�QQT�A
��:nf�:����0�Zgx��E��X=����@���R��������J��N�E�U�u
	>�7��ҭJ���m+��M�J�0/�����G>˃ IjM8���[�CU��)��Ҏ�q�'Ս��{��.w�;�
� �����
�`=I�<�9=�)T��lhj�Z�-cT������?��DJ6:O+Ha'��4�~�eZ��p#]\ٙu�擊|Ia���X��P/R�Zz�������;�[T4ƗcE	]O�!8��l����QI��&V7��~��9�3o�]�ʛ��G}kfq�e�`y���=����q(b�%\lV�E������<��:��\�S��1��C!�7Utڙ/JE��uϊ����ga�~���ûU�Pji��{��^O��)��IQ� �H6�v���[tU��QU�b���v�����o)�R1�2ѝ�dT�u2w)���5���<��3����Y�d��������BL�Ue�F����'�g��۪�h�@U{_����p��i#%Y���d�G3�}�ˇ����X�����Xf�^�����p�+���u���aD�=��$4x�c�x_ˊX;�	���&��K�O^�%������iE�����!IZy]��*qҰ�I���N���B�9����|�AMݐ��M;��֖���JZ���kS�����ΙKֈ�1���8@�(�J9a<)�g��;�gm%۱S{}b��W��������v;�_%�k��iҴL)�54���8|�VCɼ�Ca��9¿!Ϣ���@�e��/e�2�G�3-��6���u�����wd ��-;a��0D�ZH���h���Y��谟V�tK�k�S�9�q���q9�T�J��2�:�I�����²xս�^��&)�E�4��LU�P�]�E�%����F�Q��zֻ{��:��{���͸��'K��k��K���i��&�}��(���e��M�w�;���\n���ȻqW�QyѾ�S��NZ=��m6t����-:
��Ē7h�U�+�K���[���2#�U��C/UR��0���&��5���O��2�lɑP� b��>l\s�����)ϧ3?�R=Q��я	۩���!�*�������S]�.d9V�%�����t�*e��	�x[�t*��Z�R��	�da��o�7�x!�hƞ�u��UC�5b;�w���o���f���͍�"m�گ�����dZ�-�ױ�\��q2��L)a�vR6U�Y�YUO�*6��M7�y���W�8�1D:���8ۙ�*�l��/��F�R���z[rU.��I�o!gu
v�-˕1b��Z��|�K�y�6O�em_������ۦq̲���k�I����c$�#��_������E)�)ݣ���[^��V�GNHax	��ɜld����|˩����l&R����'�ɼ��V�X%.�,�qM
ʆV�>0���j�C(��f�q��B����Z�!�Z���_�{�+d�G=�c��+�b5\M��P��s�E�
���A'do�k��N�iS�Z��yS_�b ��u��@82�����Tf�X�Rt��$S�tr���a�oHP9�i��1�%�&�����͵M�hi{�v��a1�RkDb?������G�?��L������_5�Dm��<��FӢqD6��5̸}m�1���{���ܪN�a���x�.���:�W� �!���W������I��<�[8"U�s�.D}u��#���K���|
���S��\�3�u�0:����24.V�V���$ �!4���$�w��T��m����o�����z�p[�%��:��0K0y�<Z8y��_�a�I/ix�<6I��>I��y��/�)z���}8ly}���l�_�_H���3������Er%��Ų�.j�r,w��R���C~��b.�!���d E2q3�\V�u	z>��+��l�07EC�Is%�􎢅�G��7{_�J��I,�e�̓)0F��6�}�U1{�<��ק�,�5�Ehz|�~]@�Dfh� '�Gd:*o��h]饤$,&����2���		�S�T:1���k�l���$��c�j��~��^������g9��IT�z��m���۠�1���.��e^4ͻ�	�pB�:�E ����y����m$lYW��8�)z�2�֩3TRI��@��s�E����&�μ����-�n�/������r�{5�?W-袈��}�;�)��������<8vAߙ�ӕ=s�v�\f̺��)6�&5�%Y�6c՚������ Zeټ�u�oOУ	vq�=f
�y;߮�u��/A��Q/D͖[q;���RY���}V��
΄�WY�#��h�
�D~B�k��}}h+o~z������$e��dX�O���|P�U9��;��o=f����W�2)����Pt��垒T���<v�[�["���u[�L9'n�36NE;,������tҡJl��J�HJ����=T�
i�?t>��|�k�_�����G�
!Yi��D�N7q�n���&xO*H��Ɂ`���-�z���`�w��V6[Jlݗ/�Y���:"�y�Y3GiO��f�T�"��Ƿ��P��XA�4pn&����c���E̾b��h	�p��t`�>���".�0��\�1���z���;*b(�P�j;:JO��|�u�:W��R��}P1��,�U����{���;�|���ϐ.Z��Y�{_5��~"m�CWS_�M���W&�p'u��aXv��@��<�V��W�E٬L[Q��Cl���`4<��l.�(�q�J�ԊO>�ҍn��}����w�@B��|Eu�������O~<���ڶ�.:��j�����E�4!�Yq�dʿ��y��	�b�b�l�b	jr��Ld��)    ��T�3ۗw\�+Q�A�Dq3�������D�b�Q]	1 �P�r�C.-�@ T���Z��c�����bÙaQ�$Q%T�p�[d�3p���d�J�؏\>��]�DF��tra��F��4Tbu�݄���'O!�IV�U�z}7��*�����)ƀ*���E�D�>E�K�,#�+֑}qE\Q���$c�;�S�4zKFU;<P�LFT�ggN�+P�t4���hYk�}����$��W�fZw	"f��ϋnL;�cwa�_�d��~'G�ԺYX��Htp0�lL�1���A�fZDb�D�D�m�"�mJ���|^���X�NO2IuOh��';��by��w�#!\�9r���W�_��?8��B�z���؀�ڳ�s8�.(F(ǩ�L�R��r�l�Un$@m���R<ڠ���F��ɐ�`���aJ�c���	P��f�f�|�5��9+XsC����kjS���+�F3/�2����Q��)�����#�&o�Z��I���:)��b�u�H�'S�g1�Ħ��P�Z*���l{�Em\jc�gv����e�ʷ͓K�q�}�&Y������[yg�4!�B�-��jȜrb��/+���l����ܵ|�aRF���m�%ϓ��­9�菔"#�X���J2%���_VGrwZ��Z�/�Q���>��فL�oR���Bj@n��c�N5��0,to���p;�#��9��Eh����0�hH����<��٣:G��ٺ���;d�]N#N��|�����8�w�"i��_՘������:O��[��l�̶�a��G0�S���2�Z]�F���M���2�.3���tZ�?~&�������(=kn�\�I��`�:������M�2�a�k��U���1���w���o\��^��F�t�y�L<}��Ҥ��يC�Ϲ��g�bB��JB�G-����,,�2��^P�rim5|�	�F��̄ZkwTd�A_��x����-�����,u��c��q���!��l"~S��������[��ྚ+��-���v����
+�C[��8s&���Q��/����VY������;���ܡo���~�]T6�5��z�`�!�+�0D�ź��PW�*��lU��q��v��M�n$eF���"6l�<�a�}��P��~�N����F����ð�R�7su���!��A����,)K+�� ��R��0����&o�F��"�Y]����Qjzj[�ɐd¡2�0߲YO���@ni��j�|�9����?}��ͻ� 7�H���S~�D����#�9hǗ��S8얞�Q���`f�y��Hh���o�`���>(6P�ʣ;�q*�QWHD����*�L��h���n��W����q��w��lJm�]Ө������V�*HsO��c��i�� %4�Wl&�?�Ʃ���0��i�ɾ+=#�yQ~F��(�ˏ���|�+���U��@�;=%�3"ʈ?>�_+vM�8��{�����?�}j�q�X&(dc8S�廭۲��,����uF��l��E2�g�g������E�-��wJk40�~�1K6t#��'\����_���>�i|��x?�PIH` ��F����
�]�o��u�P�$S���Z�6�u�h�;�qY�GA�l�M��S ���ܸ�@�+/�)��н�Z�-m�������O�'=����s0<���0=}�>��}����'��"�W:����������K����o��]��Soj��f����cU��<ݯ��$w��My�*��nC�d���������To���g����������Pͨ'z���5]���zoZq��NU�����VN����T��X�XT6�����֣W2�����{�z��מ���Vz��·�(����^텣�J���_۸�g����ݸ:?�F��o�>&��7lտ��K|� �1�zh�����7|�Ư�L��n����}�h�"����R����������̔P�������o�c�(�F�y��sת�W��g�$S��l��olb�]!W	S3��@^�H�y�Oȇ�'MwI�Vçڌ�����da�j	����!k�Uhv�(�?�����G�� ��[= ��&��,\��A�U�.7��Wȳ�/�?M̯c���mY���������^��-����	�Mw���6��<C'$$5R�hځ	�n�BK8Tc_7���~M�0�[�����g?�-���$ގ��/vu��x����?���
ͦu�����W���hȾ���??,?��P�&����woi�u4�2��
������w�Ͱ�������LP� �HX���^��~oO���7Ip����]0I4`��ᗘ�@��O/|➡k�=P�z�l-z���j/:��U�+#���G�m)|����_:��K�yp[m"��U�5���oTI�f�5x\����GFM��P:?�5z7��>`��<�q��8�-��t�gws�ϼ�`x<����`~�>�o'1(eh����\	�8E�oȲ�����@��dM���J1��1F4�۷x�=�ѬAw��EUN����F���TFbq��n�I�,�_p�=r�mh��|�������ۡ>�O����ڿ{���ƴQ���?\�y�<�i����W��/`�L@D�#�}ީ*=�0�֛�:]���V0��ި�1mY�f�ۖ�����T�?��Y��jz�9�}�-����Ç���c4�D-�~��~М
�V�����4��O���?�ڻ���n;6���֣ash	Ϫ2Z�3�a�Fzb'DV�52^�ԩ���(gš��:��b�,�����;�u_ٌ�S{�v�Y��������޻���d���Sd�kv��L@���T>T�-Wy���]|)H��P$X�]�߼ܯ�/�s���(k�����	H>tUW��!3·#���˙#�J;�wJvM0�㬮�@3����E���y�+�6l6ЃI�`��^!�!�(����q_\�#���mz*X�_O 4���
�ý{��F��D9��"�lm�j�]XM������_qY�DZ�V���S�j��*JS�)�3b2�!�y�=��O�>�坭�2:K��9�}hT���>"n"o>�e������<�+�-�	E�\�٪FGt���T~�<�~g�.S^�N�	ܵK��w�N^����\g&��e��l��\��	G�(V~IZ:~!H������B����#g��S��þ0*��s'�]m}�L������LR��xM�嵽��u�ފ���U��v �G�DL6���j9��͊4O��(�Ũu閵fif�n��m�H�^�[����������S�^l�P�pN��q�s������}��u�/��i��n7n��\�Gw�^��W�e
�_�/_�^p��0cUhؑ�D�-�<���E�0ڭ����Wm�2���ߟ����3�bU!�}�g{{MA��{���`��ކj��i-�œ�<
�ؾe�ˮ��]��q��c��(G!R��QV�����gU6��c'Z�=���8�ز�Os�����ҸE�l����
��v���m���a�1%˓w*��g��~�x�a���Ond��"zf6�μ�}JPΜ� �4��3�d %V��|9�-A�?��n�S#��v1�y�(?|��e������=X����$vkm�����*��e/n8x��2�?\��wʦ�f�	�0W�r��a3q�]H��b�}���@�n��p�����O6ʍ3U�p��3��½)Q����p���l��*�p�*��B�<�}��
��
;��Gh��Ν����
����od�h��Y?�]�xb�g|�:]��4��Mh�*F	A�e*�O���lZ�������Њ�.�p���Nш8AO
��F�=QG0N�{��}�2��Hf�%Y�g~��]�P�9L��y�B2���?i�w8�/��SU���R��հ�ft��N����TJƚ�J���{T��U�AT��~��Z˥�;�ʑOk�ł�'�`9���E⺬�z��+9�G;���-�I�1    l�[P���`<M�C�v<�G�dJs�ެ�̱pKI�ͳ���N{�<��d�e�:�+G\�ْ�뼎�>�+nӷxTp�*0*8�\f��LY��4���E�W�/�?\Q̽�~����8���2�_[H��O?�y��|.�	Sv�d�tKT��5��W0�*�c�lG�.o���M���6�Zgu����g��(�9���_%
����˼���Jׁ���n!pμ�M)�WO<�%,H�>��%���)HM�%��{��m\u��Q �GZ�B���>��'���O��Â��	/Y g:�'�aPϊr0�z&�d��I���Ca6)#T�G��W h-V3uaF�΅������񧧌&N���ͧ�Ós�L�s���),a����NR���5�;s\��Z;���Sٙ�u����B\��g�r$<��`�s��U���e�!,4,�"��#O�2�?E@���ά�޷L{��O��
q>T(�}�kQl�Ը{�qN����垫��yX �b�kJk$׎�:`ie��WT��\�.�(R�J&u�ORŢ>���i�0Q�8ȥ�*U��5���#q���A�6�R��k&���i�W:�W
i���Ю-3��;�9;�M�uZ8���럨ļ�E���T��r�n���5�嵥�)F�P�U�?��ӟ_u��)T�_M�mӽݫ�b�߄��4��{�[��\X�P�;Ei��PĦ`q8���Qe�a���14���-��2s�Lg(���}�2uH���~4gI4�&�i`�m�m��^��Ю��u�)�O�����#SECujg��w���͛ɭ5%ev��XOsee&��ل�3x��J3��X�fU�ߙy24ذ4���%� �c?e�x��^�F�\�3vJ��Ê�F���FOfA�X>�?)уB�Xll���y��]kU��Nf@�즉��l��+�kdr|o�$�-�L�N�����*{ܹ����+���TxFi�CHL���9��Ҭ;�箶��m�8������q���'/k$e��>I��"7����ƴ�ۻEQ�^ڴ9C��n�R �2������G?��C�\Q�vk2�X3��٭+h$�Z���)�X�[��4q���bS�
uh�Wk5�\A=��X���֕�du͖����/���܈�5f$@�:�v۟/��3�F�@��ݜʀ>��@���h"�(I	����u�z�s��`?�h��kB�]��������Wh!���М�fv�����6��Y�S B�mЖ�)$��.�!�b&������q�5
ZbA����Ǚ������^�Y�q�a���g��J�U8�&���- �H�3,h0|_bc������X�*Nnq6�Ǎ]l��I!V�;�u=�^#X�B�X���C��.��(O�؎�Bgp���d:�]rL���#�"����$�ӌ��$��eD\�9*²���X0�≎ɡ���ov�8�R�[p�+��|<J9��>OH�B	�A�m��� �@�ݞ"^7h0z~����&qc.���%qb�*L�S�a*J�J?�d�E��S��n�E5���_��^Yq�T��B�#���\�i�rnnmv ѿ"
Z�ɞ������P2?�<�����%����Sq�zfG���l�P�8l��ل8'�˂���}�jt�#'��ZP�/��":�-L�E��G��І�a��J# *h������`���J4��;>B��ۥƱ�{4m���+���5˽&ј6�y6�!��h9ٱz�E��V�E�%�A<!�Ӟ�Ʊ6�qso^�������ߊc�8����M�������C�1D��f$����㗞F4�{��������w="p�EWw��Yz>�ұ�L/8`�P�yNggjۙ��)ݟrpt���*�i�����D����a��|��s��>B\�����0>uZ�Q4�(*X5����:�%�b�	���x:5�nR��Z��;����Ѓ:��N�M�N�����ƥ�E-x�������Q*�a���^^z���ΉG:pB�ݏy��U���U!%�����^q)��_���q"'��ބ��P;^?J�❖�D�K3���v;��v�+¿����h�tԅ��a'3���i����`��.���ێ� ��Ԭ�*KJSh�n�X�F��ync�H��ZZ�_+��5��L̼�k�ƅ h�lw�\X��@p��htK�Jq����ۣ`����G��� �-rn �����r]b"TU���K^0�
���9�DD�#�-e(��y;w~�e*�θ���P�*[[�iTa%�7�
nP������׍��x�ޛ��H���
@����US6�/.�:�{yq��W��Pu���`ʉM��|I΂�`�U�: F�g��?KG��6Q&;�B�=��3ᭃ:�$#�E����	�h!�@�+]Y��f|�����8��O�`<=����eb�10�ģ��r���G�iy>��rDox���*?*��&�G�9�bq1*�D�)b�YQ�UNo	{:������9J��!���ϱ��G�.�%�A�_Q�T�`���#����$^��,��bp2�[ }��RG桑@�B�Y���Fۢ�Hq�jx]��C��H��v�f�p�Xǣ�S���^��r���ЎA'V�+Xt�X���kqQ�<�a�}���*���9<k�M��B����[�a���r_��
*�s<ߧA)�_��|`A�SX};�bݐ�0�C!�PoOQ���)O�5�:<���b���Ě��0��Tir��,d�:h��D��@��;�P˴-bZ2;Ι'�GMVsńI&6`D$���u'^��)	3�6ml9���!�	�:s�vٔ1s\JL�t�7+�t_�����ݓ�_��Zj&�0�D0*8���;�#�]nA�L�u,��co���Q���Q��U�egl�F[M�A	_ŜY�׌4ek�m�S�H_���]��vضU������J��Yjj��	�R��$�gR���u�:<��A�2r%�U#�����W��P�*�<���a�s�j~�K�X}d��AQ����%[8�7�%Nf.KHq�s/Kx���[�3!����m�$���ϒe=.��M��6�@�$��ͣ��Dۓ)�~�6�x�P��ЋWvmF�!�e\�K3=r��L���^|pHԞ��!�֔nz�\Ц�|�1@�q�^y"l�=�;jE���=}�7	����!��R�Q�R�Rz=ӲK�o�f�Q-��Jl$������K�^@L�"W-�����
�~�����!��xԜ�G"ψ��둝���D�o�z���n����*o�,���r2�=1�r@�ܣ��bN���E<Ƚ��+��g�C���/pş��P�Xsg� o�Ys���y��m�}�^��Y��٭CpF4�Z6{
)5�Ŕv����J�8�l�DF�5�{���4�u��M��N�
�{TvP*����=pe�"vZ����%��G�F�e礹�閾�кC=v8�DZ
�x^��/u�N5-��RS�Y;���ʰj�8�n��wh4;�U��	K�iӞ��ۖR��Pѿ��Ӫͫ��� �3�����Ni?�<��d��T�A���;[mi�|^��!;k(�g�Sz��?&�C�+8�ˏ�"��l��l��h+����D~9����y\���>��AI��:}�A���⎝Jm9;Q�N��G�P��2�U¤�Vt�dfE���͔�ي���D�{�:��Xs�^w�`#��2��ш��	"��(�����a�L~�+�H��.M}�/)���O��T���Kg�%f_��G�ުTn��}��5�5�?���ƫ��Y
�"f$���Hв OZM�&�O�]"Q�&˗�t\�����m�D���G����qi�t�L�t`LNG��"���?�63!N��!�8&��\��T�� ��+�Va�z�9,N!�����U�e�_���g-�P��e#���2��5�=�9���6k ��nd���.{b��2�DjV#��>4H��xu�@��KA�Y=�82��(��Pd�@���������e��7C�����kT���
0e�|��xX~o��~�a�#�ՙ�    @�@��(�u��қ��C��U/������`��.�!��t�K�����R5���N�kC5���0�@?z�q���_Kٚ�ƫ�,Ng�m�����8C!���/r�w����(׌0��?[��1�m���� lĪ��wv)זWV��Ppfe�{���ID�~H%^�ɩ�A�����F�,b���?�Ì�NW\UG�5���;Rw:�"�CG*=���3��x�V����o��+6B�V)lM�Z��N����3��DK�D�}��}�_�j
$���Mr��W]q$�^�nˣ�F�4���}��%⭵7��:�9�*�S�Zy�;Е1ɲ���
�7Y(Vy�ՙ�/��t��7�F�y���ԲxF�r�B�/�B�"Պ�V����9M�,�ܠ�!n�����J��n�Ԭß*��lqG������|9���BAe(���T�ۢ�;���;���j˵�:��p�=$Fzz��N�s\����_D�<��^��U4=x����~��1������>��q�a�%�x�(�@����~��N�����[6��G���\�Mףш�1�eY[LZ�w(y -ϣ���'��r3�?J����/є�z�F	�mK[�X� i{�6(�)�SP��7�i�()UϧTM�
g[� �XP����煒�
�e�/pP���	dr<�-��)�s�ޖJ��%���E�������xȎ����#�	ҡ�5�a��>*�i ;w��c��6I����k3�kg��~o���B}0f��/{�߀�m�v|��U�'zD+zMz{�?�����+z��l��2PD���0QD�x��$Kc�ܭ����桖���hF�Q`皆Ôe�z�nzK��
�NI9��;���kc@�a���z�}L��]�M;�O"���0b^r1Y��D�x�Gar�M��cF4r@4�qtU:�C�J�9�<U�����������o8�������}�K�t��-U�g�*A$)�����[Ӡ$���_���Շ�m�t��⚺ �)�a��B&�y�O4?ǚ�����+��P���`��3��������d[sc�����d��76�_�E76�76�76�76����I��Iv��&��&ٻ�I��I��I���&��&��&��&�L��Mr1�{c��q�nl�ol�ol�ol�ol�ol�ol�ol�sm��I��I��$��&%-X%_��'H��:���M���(Kez����8�"��̏�d4�{%d��l�c�1b8?�j/8*�~ ٹ�9vq�^�q"�g�ɮ1��-�t����
C���oς�ol0G�ο��8
E�`�u6JE�U��볂�4��<S:��pp�5���P؋��D�:Nՠ��H��8�
YSP^�!�`��>�]JDOm���ϼC�K�'���:�'G�_B�[�%���UY�/�ڨ��c�`#�Y>��38�ޥw]�֍֔zǤ6���V���pC0]5��i�t�)�Vu*�� 25�HE�E/��)���0R:"�29�k��f��1��3[����K�
�Ʊb��@��S1�e߯�����#fa�҄�E,��fPzDm�vMT������r��Q�ق�}D=�$�i{b9�T�*��&Gum������&�D%�]��3�uA���uV+��V�x𝈬�.ؾ��Z��5[�-���ex`��P��g�@���&l����U-���-�Īk>O��&Ԇ9j�h�uC5yiRfMpx'Eu��}���
M�y��=5�%���z�V�TcP��at��3��N���.;�8|m6����ֆ�m1^�i[���:��#��H΢����p�-��o��Y��ǚ�u�H�*z���d�(�@)u��kzB<#&)+c�紐ߘ!����1?�����8��������C��<.O"́!����8;�J��K	�o��Cl��I��t��w��~{���KN"hx����t!{��p����^����X��d���i5K~��?�$���iM���_~����9����Z��LϢ�Ж���SdW�F�?��YWtN��х
�~l�}����ٲvf͓��
Sǟ��z|t�Ǚ��~l�^�ղO�!"|���X�*�z&\�����F|��ax�����Kg���{�QM�9iԻdI�1�Š0S�x������w<���W��*]�\װ[�ؑ�aڎ�ѯ�Z:�?�����������S����X?�2y��Z�?����"��w�WT��u�!�tL������f�Y)ɛಅݖ*:���ŝ;=EfO�i���m^��-C���>�Q��ƫ*"bJ_,:��}��XĽ��;��z��e��BĬ-�˜�e�-�d���X��{�O�W�!.A}M�����e B���5�f��ϛ��b��;�x��zD&T��M�`��t�3�E�1
��
#"�i��Ͷ�.fe�����vՊ!��Or�xi��s5�J1S��r�zS����uN������i���E��A�)��2��U�&��ha=���A�iJ��v���(�80j'���2nXh2y'���߰!����R;�*�g�]խ�t:c)���j��1��:��MѲK��N�)����⵬JN���L<Ƣ��1��J�7_���@���x�I��������1�2(x�E�P�\c����wW8'���Y��K��R��k0Sl�-3����JK7���Ve	$K@Y@;FΙ�?��eUi�0��B�2��9�/�w�4MP�U��m��*�3b����n�l�{�j���W���Y�W��n�)���l��Yf0n��n��n��2C��w;���br�M���ӛL��q��b�_�m*{.޸J��\���tM�I�ι*�=e�?���U���yʔ��}��ݗL�/�j4l�H�jN���xU� +�+��������Z8,d)3Ԩ��Xځ#�2W����������1S+��x��fߕ/�߿�����fO	Ƕ��B�����7��r�Xi�����|.�̊����H�o<7~��W��p`���������gP㾑����`{�(-��0�:��E\x�|�E��h����*���`:�M�lK9�y'|�Hn96F�dk"��U�T�l%�1������#m!<��K��M0t�X���q��Խ^�[=ۆa[;����Ia��n�\�_"�"��/�-S��d7EN���]?L�ڭL��L /؀�/f�EE��ItZ�չ%���u��\QTsMIv[a �n��X�[[�q�<$ʛ�fl'�.��9��6,��;y�f�����; '��Y���I�� �v��l����[U>6K�W�����f�Ů�i\ͫ�������W����N`�����i���T>K�O��D��`���	,��ޞe���ʕI�+��,��!6�5�DX�Y��bd��R&�0��V���e;�b�w�N	]F��+�G�(�Y�)a�H��Tң��mb*��:��v���1����1�H?}�.�����BU��h`�x��/~#
([;W�h����B������2t�y���R�O_�T�L6Fihy�j/��E`̤б@t[;Ѕ�c�sZ�hq6��Ȟ/�y�X ���/K�@�� �/�r����t�S�1��M4ڹs��ѱ��uOɞm���}[�;uC���h}�^bgk��#3��v?���i�6��N�\����|���1���)k3~጖�9���u���O��-�%B+�����};r�=Ġ>D��������Πڋ(O�6���!]&���4�D����,��� [�+6LR<{g)��u��/Q돢d�ŀ��$9�.�A#h��?\�����ۍ�lr����u��[�lF����b��:��"g�K�_�32V$�}	�!��&�P��a�M���^�杠��è? p�u�'<!���y�ny��۴R�%���4�<�;�v��P�]u�]����lB�!��l�'�:��KbIS[�h���t�/��2�V�*DvU1E�z��.�U�����e؇C��#�t��C/����*��Q�nJvx��X,5�V���>�ʈ�X��W8�/h����xX�/��a�>D�\>j늌�fmN�7ʮ������&1    >ͽa���c����N��c6��V��DѰ�ȷ���<IR�ͨ�z\כ�E�&�DCf��=(��dc�׍*�h�_I5_R4�r�'��We�����h��`���lǎ�Xe�����|^�_������!���wA!��Qܟ,Oge~���X����B��?�;.n����a����R��l��4���Κ����N�<�zEm<�6zwɡ|����$�`������1�+�t�u"C��@�������u�m.�i�x�j�C4r}෯�V��A�5H�莑ݛ�,�3X�+z�v�^e�X�%C��	��#3`}Q��I97[�j�>�ڇ����_�P��
6��vŰ*���M�M�{}R�����#O�U�_;)r�&+Φ�
X1	�c't2���]>�0�������M��M�;��Vly����_+������oY΋��W�f�V�yW4qS���tVTMcugד�)U�?�����a�dc�z�V����\l�5��Ekb��N�k�
�f$��QQ�|R�=�݄u�ۂau�e�i]#����w+�rm�o/V|������xRV��󲮣Zs�T�����O�W�61����N��̠�-D������2���]^,8pu9Q�n�{��B���@�O#���\
�:]��
�6�mP8�P����F-��<ƃE9��t�U=L`wR����ME��E�S���hg���N�dյ�������/�۪�����jM��F��!1Xwi?��������J]Tm4�f�!=�*R�X��Դq�O�b�^*�u�Ux�/3[��ފ�X�6vm�|������5����u��R�U��zyuFIU���]�{��K$] R}vaX��ݢ�PE�p"/H��F��Y�h� ��0��E��Y�y��́����w:���#K�Y�������䠦d�D����Q+�2�T_�l�*7[b��8�*�"Xաu�)d��J�w�z`K�:� v��G��׽�xz�BR&���Hҥ�\*�?�Q��Hc��>��}?���g:���ͩ�N�����u��[2���l2��þo{ ��6�X��x�h6'Jx��v��F6�8�[v��u�R{��I���u��Qph+�!�?�~O�'j�"�ը��`���|���2��/��B��m��g���@%�e+(�jC����S�o�Ъ��/Đ���u[�ˈ=,�4�UP]��a�XD)�h7h�&�9tj���)eo'܊��r�5,��Q@K����i m�p<�gc͢����h<=�	��K��fr�����h����05E�=�(�+p��r8ף���`sw������15�C��0��%
�	ք�P��	��M��P�6Nu�S�4���a�w{i(^��b����w����F	A��� �v���C�é�C{>4��j�V�cp�@!U�:�Ԫ�X��2����A�x���3�viE�F���HT��K�g��ս(�0@'��͕��M�2Ѩ���񜊯�	0zi��b�k��́A�a@oC��=R=P�^��(�`u�-g<�Ρ�	�a,v�G�,��w@�ʔ54�2>�j�as��%L�_�v�3��V�B*��*�7����.���1$��h�+�<��� =;/��K�HE��3,r�Y�(7+��D_W5���%�Ʃj�y���H��a$;�P�W��H����@����'�3��>��N���Q��A�ö��A�MÌ�9�X�Ց@�J��İ�HN���g��J�%��p�6����<� �I1z�/�^�y�����/�ԥ`Z����K���+��e��� /PIzʭ��C�7�ϓهjp��2�R3�W���콻ܒ]��D����t}�0�MS�Qi�"�>b�����*�,OK:wswW��я��h�(�h�-�IF�vؕ�f��t	8��D�Q�JH��j�ž߉�C��������χ��jb���e˒��z1|���7���t��E-�[Rw}����|lm*��_��/
�I^�+�P<o�k`?�J��)�e�h�ϋf�=��Sэ��̫��<H��3몮�+�U*Y��}C���F��U���1��ez�oV�(�`���?�d�a��B�a��w�x���?!$Q"���i��w"����^��|P��m�e5���Kɞ���ٿ��wF�Y�~�In���B�T@՝ν�0m������ �De�l�$I����x���-�#b�W �
���R�-b$89GO�yN31���F՝�s�h����[�Pq�d�eN-�V܋�o��	G�%_2�'n�8�i�ʡVc4�d:Z��ь;�����l(lb�����>N��<��8���9���f�.���9��:�4��U������{��X~��˥����Y�����j�.��ٕm�0�>�?�&�⃱�<�G��aQ~�,�������
F�-����+cFa##C#4��܌V���R2Bm��|n����*�ZdtP��AIKm[��K3�;U�J�zE�R� =yU!�9��O��WY'I�Z���t�l�{'�+V���8+��=.U�zVq����EYmJ�=��L��}��7����(*f0SƧ�V����V�_��D��߹:��������/3RPm�=�z�6��?�E L����q�_����Xr��A=��r7`l{�4���nb)*�3��y�F��)�@4(�xj(�	��.�q�. ��AD�^IF^ܣv���z�h<=��E<HU���x�t����[ ����_Xp���t��ht�0�����/�P!0��~�x�A>��d)������g�67��]����eJU2&�1ֽ�H���3N����T�#=��,����X�G��7o���uI4d��n���%4R)������bvw{��4�f�I8>�����$��p�5�������?>���RIm�ʄ�Vt͆&V�m�+|�V߰�7l��`�5O����7l�����m`��M�g�"!�
����	���|1�@�}�A�)E�ܧ�6 ���@'k�`q=����$:��8����qOح[�����8�����)���L!��R^���<�pX�<�Y���"Ě�J{c��CǊ���OX+o�P��ˬ�/ w���~n8ԫ9K#m�����_�|h&���:cn[o�
b�a?n?�� ������� �� ����A&f������W�,�:��Uݴ�f�q��֕����`UX���ft�DK���m���Y�d��;{���?-�4�oK�ma6�&�U��]��f@�}�/��X�tI���=R��.F����[�gU�j�ߦ��i�3#X=�G��t_Z��	;�׋�X<I�RehY�^D��[���l�b�f�a�
Fc.H�����K[�%��r������0�sk�(���d���3�;A_���5�g�[�Ra��J�����;����YDM�)�s.�UYD�1�k�z������Y�nq����(v}�𝉗���nY>���)$ s��d��l{4uo��A���NI��\k�j�\�9�@���V7��4���� �.�0$��M�Rp��׵��=̔k�um	�x�^i�x9�O;���M<E�y^��9;FT`��G�����ײ�����R4��B��n�Ch�7t�t<S�3��}�]�sz/]��>�q�0�N�y�����i�
��K��� PڻK�$$l�%+��̛-/T�k��g�����&V7m�y|΢����`rm��p~�-��m�J��j?Pu�I=N5�D�~I�8@��rBrJ���N�(U,��건�E3�\��f�$X�i i5���6�9̲����Lw����Iöig��	2=*j��q��d$N��vl"�#�S���{��埾x(7�+,���Qz���/��T�5YV���B�٘��������G��!�
=��=C�Cd)���_�L������K�`�H��3��u��"���N�� �|\�u�I�Iv�Xi �#�v�a�(S�    �?>#�u�ѷSV�c�_c��v�@���dg���"x�9_T�E�h�	0d��V��Fɝ/!��~5�KrG�ޡ��;O���i���S66q�]ȗPpx��{|��6�I�"�#��)L�̛b^��G��Ni�F���nЉ
r�.4;%iF_�ݕ�f֓z,�dNvl�f��Va�Nf�D��Ě%�]?�i`�bj�����^	v��r��j�4A��'v뽈]���l�V�t@5�����cB�`��w��{�嗨[�S�^�A�����7�V�0��LJݘ�mF�Ns��^�ĎG���Al׈��<z;����[��0��gx �a�_�{<�4z�r�4����r6a��7ZN��OJ�[�� �� ��G�Sm ����#HewO����b4��Ni(�.H�H]��<	��G��b�e߰~j`�[�_��8�^`�G��qB�U�h,���$�,;��ɠ�ৼ���8Ң��n���Vz&>�R �����%[c�NP˸��63��C̰˞� �� eh���v<]�*�^G��)`kd���L�.�~B�S������o��:�cK����gdMJ-	��W 3�s��K�׉�����:�)�����b�3�x�@"�L�=�YIld�<�u�J�=��~�r���p��+�M�y� �<=�Fɵ��b�g3D�lz�s�-.���R�6���V]n�e��/c�k�ZQ'�q%������\{U ߨ,��%��/xs��_��9�t=�uL۲`��@���k '2e���nT�'������ݱj�J���COi��͋�{g�_�9�#_�kYQgB�D{�7+���`�Gӕ�ԙ��R��(��,+-cf�)�����,h���������=}[�X��b��/��Z����j��u#Us`��;_�C{�Y���r��o�A�Ȯn�^v�d�<�����е�^1W��9ڻ��5�-`ʅ���Tx��_Q_Щ�9��=�W9��h(�����v=�w��w�ӃKH)mM�ePF�G�
\a���(��",��6[�@I�.�R�Y �,]����s����Z��ZY�j>���x�Jr�g�E@��9��J��M�Qf-D)��:A%O[z^Ԗ-�%�S��]6�
D�!Ń�Ft��U3|ݖ=��	�t��\C%t����ה~eml�J�	t��]�,S�/@��-����)��)�cڡ��,��pdgGKx��HvHWAtE<�EFH�H��ޣ�R�1#Zea\RYrŢ!V@��ё��
�9+�4:��q]�]ydUk�d�T-�Rn*<�,"���$j�Fkb�Vp>S��}V�s$<���5b�6̖�Aĳ�-=��G6܁�p�T43�g��%p�e����o!8R��4^.$D�;��r�iNNٝ]E �>�*�c�yd�[mJ��F��I�)
V��R�^ �� �>���k����5B��$g-�F����d�<:f����<,��	�<<Z ,��Y:kN��u�j�qA��A�{��L�I�I*��_I2��ܲ�h���#�:���7�h�����ZN��b���I3�w�9|F䗋`�)��U���� ��yg� ������L�̵R�bq�Kb�:J�8\r�;ݮ���m)� 8�w��H_�� :��i����D��iK�D�3D-U�j���g#�p�@���+�t�H\��܌�7�Q��14xd��yjë������r@p�!�*��p�{c� {C��ޏ4���gp�$����H2�r_�,�s�,·��؄�1푆T����6�|\�^��@�n!�n�h`�������m�h�R�V�"�h<o�`!��'ᝣ{����%2v�׉�lO*�A�N��=i��ҭ	���� &
�E�V���Nu�=V�/OO�> �N�ئm�,-�<��?\x����LK�0-_�i��"F!��`@5v���XFU�����i"�s�r'0J��5�`R�5���?�1]f��3����{!9�
x$ar>$�,���]~A�e�u��SU�);;5<fp�֘PNfC�x0MMO*�������Nj�$qY�����d��%i�,������q��7��s��sG�.��(I�3�C9���,t�"g	[S��2��jP�l�s�h�y_���\=x���^�C�$��1�,[��	�R��r�@�h�"��«���-r�^X�z�Q:Ze
�%�jI��g���gl�bw�޽�:�?�������m���}mS��$���8Ԣ���ee�X5qe��I�ku����"��s�{��(��c��y(�l��Ǹ�|g�_%,Я�db��]GuT�	�4�W��DE��lR���H����.��b���M=����7҃2��C��l���Ԝ�2�V
��*J?|O�x�˃A���Ւ�[�XE6SD��f�����*2�����+#���̪V#b
͸7d��tj��[3�*���������ǋ
�n��]�e�l��XHHjTGC�p�v�PKA]JB��'�t���-�
JrE��[�*�rtN�RXH＾�b�ڸ8(X%�Jg��Gn������i'dw�ݧ��Oq$*�@�KD�c�7o�B:�Uk$X�g�?�ҩA��cJV�//?>ٺɔ�-P�C3�~^���`�Ŗ��_4��eO��,d��S��x��8�#�I����9�B�$�a
��9���?����?��L'�To��r�KX���eRkLN2�gtO���f��c���2������*�Omp.~�x��\����7�lzC��Aj�ș��w;BSyk���Ug�[��nJ_%f�ܵw��h҂����7sŻ�B�lv�"�PQ2�R�e[���.�8T �r�Z���!*�{�9�G�+��j���k�ر���p2�y<YO������A���6	Sp��Q�&#.k�����8��ͮ/K*����C���+�t1��G�7Ě��"���,g�K{�(R���G�;Ʒä�֑D�����ۄ7���f׮�dw�
{�6`~m�-��{���}Nǔ ��U����� j�۞��~���.�FX]����0N"��)f:e��pl�_cj�W�������%.+z'�]1�#l�e|պ�(� O
L�zH�8qYu ����N@���1q�b)X�f@D�s���
.�$N��}Po��}s����3���]L�фx�
��>f�����*��� �)՟G���5�#ٱd֞Y��o�����u](k� �������u��Y���z�h1v`ɐ�v)�Pq���d�GH(u7.ysf|�y+ȱ��٭�i1������ˠ%){8y�@p�S���]��;�ӣ2�V��Vv�D?1��E8�+�����͎���fm��i?�l�eώ�tML1��wGdv��zK�aZ�ߢ��?P�$qꩶJ�2mD�`fа �Sצ��[�nWz�q��e��K�n�@����@���iM?u�Zs��1��W ,ʠhO,^Ӗ�'��g(��y.t���P��|�e7�5�7�fF�#n��4ب�t�r�Ǭbc��ͼ�����������x4ZШ�7b��
�gmaBf!�	���D4����S�4��+�cw;bh�Ô����$�L̵�Fɶ�<G�g`%8'��qCA�g}G�0�jd���Ҏ{ދ�i$��U_��D`GLx����C��aԮ���)q��qm0�N�o��s�XH�m��:ht
���7�/� �*sA���~�����щ$)2�3�~��x�� �i+��jA&5�Bӻ� �Y��n�DS2v��WZ��PLoKNY�ch?[_Z����+��v�
���T���X�|3���g���b:S,�3�-&^�t��R����o�&L
Fm�{�R�%�(g
��ߴ)[I�D�\G�E���%���Ej�R.�J�1����9�_��`*��H����$N��σ�(��.��?�y�ߟ�qdԚ��p�(h��"Y��_��t�{�8n��k�^��}�K,���e��[�۩?���I|nTq3U��z����zY @0�P��1�8N><    �˻�t��؝�ʟ���K�"��{wLz�5��dʉ�r�w�t�p��%�BL%���*�w�c?sB������%�������p�/��@g o	5�)t�D9Fݞ��a�![!p�)P���%	r�UNӦ4m�>0k���ɨ���%��gfl.���,8}��Ɍ��L���wu��F!�|3cG��!�G���ǜҶ*�IJ�Ӱ)ȄB�X�1!��i4J�����,����b^�\��{�4~�M?�%��$�����y��T�"��.j��������5�w��,��H�qMs|�(��W�(��U�dc�{ꊷ�u��о���ꈶ���77�Ѹ^#�!�
��;f����+5�1�nL�6�UxsvS���L�O��q�I�|w��	�Y�/��7��xj�K.qD3���h9������q{J�&X9�C[�j*b�+#�!UV�x���ð�
:��h{[����t�d�d:�ލ��x��hl����J[�Q��n�U�d���+>�w%�*�͸�~��G[�w��}��A}���w��)�e@�� ��i�����I�M^|�/`�S.&���x��Ih�?</�z�*��q�l���.pÐ.X��R�L>�t�sZ��l�Bf��3���'X^�}_\f���ܨ��%&��Uy:(�2�I�Y	Y�<.y��-��y찝��D�� zg�F�_�
J�k�ҹ�����I&,�-��
�zr;��h��5.��܄c����%�S3l&�~A�h&7��ݔx2��#�{e�D-������0�$�fC�x��E*��xv��w�!��tZ��Cc��T@�(I�K�i��>}����q[��T�gg��ɢTř ��pf��AK@�ќCV1��O�$����S��4��RWw��Ⱐ@nf�����w�S��?T��)]�Uu^���8��.c��� ������"���tK<L�������%u�Mc^F�'9��NO%��7��x	�(룬L8��[����G��I9B�/=V���j��4�V��� -�9�qt���$n�͂ƴ�ź@|�9���+�p'�C������?�a��g�a��D@%4��6[�k+�F���iʿ� 89d���Ǥ)2N*2OBi���Sq��M�t�SkvQ?�o���s�|�c�$�{�R;5L.�S6E��X���8����YQ�H\����p M�nfH�a�� �������c�^�!�W!�eA�W~v�̩l ��>Aʮ�V����$6�B��fn��0��9(�E�
��fG����
j�Vs2���4"�s��e�E�i���[��2�+/����xK>+m��aG���|����_7�r��0��>3 �����G�P L�
�
�Vy��=�!�Y�D�J�k�/��dQƂ%�7W����E%�jyՇ�֮Z��)5�ߠ�|��|[K��Jt=���m0���7��YZp�͛3�A�?�>*X6�e�T;�iWG�1��v�?a-��/A� �=�$tC�� ��m�O�
ص����i�a�I��==j�҈�;bY��~<Kh�<��N!��\}p�k�Y�*rlk���7%��<�0=_Ŧ�č���\��Ұ�v4�jj�H]�x3д��F��J6�/���!hs,�j0�4޵��a��r�*F4��U�))��Л-���(��b>	��D�`�FBn�l�$�e\~��;��2�XУ�a��L�(M+f�|�j=�m�.�t?GL�rg�"|1a�a,}���ҵ�f�5NU8�,���$9���X��F"���:p�C��.��e<�,��hu]�ޅ��3�Rzc;Duj�#�%�����ؙgJy�OЙ�}yr�x気�؆�Lψ�����ե�b��1�3D��G����:�h���Bg�7�S�"�fv�g�b>���i��������g����9o�߇��t�Zn�ɽ�>�����2��A�<������0~�t���{@w�5���{�����4f���K?�M�P�����E�Ģ�_�E���A����5�6'��o��u>E c6��Ա�|�h`Xv� -
�9<t�X�ld��Ԭ�$�P����&��@�͠�(����c'8�U5�g�*�s4��l��v�0�>��}���\���:���u��� >�uσ)��]M���?}�������4;u�˫_��x�Y���{��G���7�y���F���u��u[WD�Y�\a����m{�[�1�}���4��"kp���"��m-���Mj�Mr�Y 	����G
vw��к��2��؛�É�N��|�`�(2�a��P�GK�N� h�l/�A�P��8M�];�xz���A��̤����`�J���$b�:��z�xIތ� �$*���C��xL��M���]�9�j��^<~��f�W��-.3Xa���w����K�m����ja�W,@��a~� ��4O���q49Z+�P���~�S��2�@���-�(��a���K���Pg�"���+=ۭ�ȑ�t�Qqx���Y�cP�S .%�̤mR�T|@�v�,�&0y�`�'�p<;��q5Q�9�*F����B��*�I�+���蜶:(��hQK Ӷ��=���tǝ�`7�@jv�M<��Ҡ85��LS��f�R�M�Z�Vs��=�ޭ��BϘr�����u�Y���ޮ��0J��o�Vd�JK��N 3�/�RG��E�X�����K�hӔ7DN�k��U��Ivv82,����G�M'%���G}HǱ�R�Q�L�(�`��5�����mP���yj�	и��<��ws����|�0�as�<-�+=��L]3z��O��XjP�F^�_��ـ%3�eN[��*��
������!�!�8�c+P�`�����A�9TFz��h� Z-��1<��T��چi;lt�(�'�
:����_��޼��@�
(����'�8� ��������K�����v�Sfp˦�0��D�9_���y�20/l���5
��%#H8T�#�����t<R����>L��������y���]���ۧ��~�O�qtQ������~M���<N^̢��ݺ������Њ1���ڟ	a}P���E2���
_'��f�\�9�� xY{l'1�!HĪR7���L�)'��|�4e��23�ғ��	���۾�p;���?��{�C?��?~8��	@,��89�5��ʜ���V%)/އ��1Q��*{Uܒt��6ͭ�`�Ԋ�Խ��#�:�T���5��.S1��q���n`	t���+��e��C���yW�FW�j}	�����j���w�����O��7`g6��X�rs:0�m�$��)�BdD	� Q!�U\=2�����
��!-�C\e�cxZ�oO�����"ߗbB�ld"D�E��}6y�Rz�G~艽5� o��E���2h2����{�Gy��B�L�<d��ѳ��~���[?S\���܀�1�|��g�My����6�+la�vۻ���<Eڍ6��T�Z�mY��ؼ�\76Ƅ��>��,˼��8�++!e�*�*�zOuV`��]�^�v=e��v�H{H���:b�������"���_�r?�io�U�a��-�2L��k&��w=wd�U���[vAGR;E���)n{�S")ޣ��$^�.*�׃%����s�N0�p=cS/_��l���L�{tW�S�T�k��i��j�q��w���E�5*p�x��8�s��J�5�2وk�ŨZ�y~�:p�{ T��op�� �7��f��G���`J/qw-���/�^�J[P��a�ˣ�l���S���s�2}�]�z����(<�Dv���Ƅk�шӘ��T��ȝ�GosS�gw�N�S�,��l:+#a>(�S�[ V���q�[��%���L��Q�hJz�p�
l/?^{oյ�s�[�w�������i���ݿ�v�%[�b�K�/�	��0�:{�:�Ve)�^+ֳ������\ϟ��
�U�J�����
U �<o�e�W�0�W_d��#T�.ȓh5��9(���    �n�>��Evo���l	z�=�Ԧ��/��F�X{L�2p1b?�ᔤH���O�\� ���"��%�¢P��ʿ��c�E8���Ig�S��9Ihd�%��6R�M�V�)��8C�jrD]�9q8���5n���0��z�����!ݩ��,��ꊪ�?S^a��ɒ��F*�#�Nw�ļT��� '~"�ƐW�7'9���<�'�B��(%LW �W���2��ä����J�C�+�K	A�_|)��jeT:ܠl_��`|�`p���ZEC�R@&������{�����V �q��-��s�OMp<���Ϛ��LN�d��̃�ŝ���^�w��L�#����QM��:սML��f��鵶��bM�-�,�Ś�)'u�nu�n�`��+�z�/�J�bw�V	K���ix.ܕ���~�����_�����O/�Y#��e���{%�ޙ����f�E5�����Q�r+���{_�U����;�{�q�:r�{��U4�H[^�k����$���eMZQ?��IYŬ�k�ucL���zX��ge<����[c_؎�ށ���X2S�����x�׽�ץk8��(�D~�慗��*GB��R=���#��5Х�����ξo��lc�!:L����@�t4ס$�}E@m/C��G�Vo[1p��m"b�A��e1��Q5"2n7Q���j� H��>���~��9K�~a� �`Y�MҡV�%*6e_l̋3H�S�2��T=����O9�Ø6�DԦiĆ,�{L�.��?�"8��-B�؃7��W��8v�hC�(���9�b������eI�@ڃV�Q������۝�V����X2J+���B����3A,�s*��4K�Ȯ֨�Y{�hpt:V�8G�(9Z��bb��%^��G�<�ƌ.�ST�nI�#	$@�
��L鑁��0���~xE�:@��zȥXuM:��_Z�5�B���tx浺͒��G�t��]i,�D��v:�"����;Ji����^��.��]o�9���![m�f=�H��p2 F
�c�������V��P������Y,�"�S���ߕ�Ӿ� �𷦳}@�󬺃�=�o�F�z��^	���TV���O_q��2?X��Em��Sy�B��T�A�����Z�Zէ�n8���4K��X�#����)-�� e�K2-/0�JحC<���I�t<�q�$���Fw{F��Hi��ZK���^���V����g���^'�-�!���(��ҕ�_X��K���>���B�Kh48�ٮ�j�l�xnjP�l�C틔�#�T�'�����O�g.�i�����2�(@k�\��!�ǲ�r�[7j���u�xLo-��H��q�4�| �OIx�9wا|׆3�S�Ϊ�.���;N��h@kg'�����`h�OzS��:[�~J�vr��m�%Ʈ�����xp�!~FԄ�쵎�Q$H��#$��D��^e����
Y,��P���4�0��б{KL�M�V�.�� #�c�A��ÿ����W����JfI$�^S_<�E�w�E�%/����dy��{��E�G��[>�v/����������6޵X�0w�v���~鹰��)�����'��D�2����씸Þ�Ю���?�ץ<�1�j��N��������=�S��>r�_?<�~��B�J�o��=�b��;3䴅qm�g��k������l9�J�hzO t�Q,�V
Q��M��"��̨  ��Y83�Uގ��S����%��Q�[���F���x���]�D�"�uh�:��&���Zc9�V�麓�f
:�k��n��wU���`K���r`$'0d8M'Z���8v� �����
�B3�X����VU�>���?�)�\���>u� {�	g�M��/��R���;���M;T��`�0�~yNV��eƭ@W�=G��6�>�f&�^��V[/ؐ����_^T,�"5T�J'�n��c���T��`7^���t[*�͊ 34��~�:��q�����Ab�c�W*}4��P���6{�`��$򗶄��5�H�	P��9!��|,h�$��U&�i\J3#�4ףzU�+�b�zʒ�ER���9�x���P������z���/�=�(O��xw���'H�#=�H����vս�%h|�
�H���ʞ��|ګВ_�P"OCM���� д`(�n0(�Z��!�mn{Q���, n��@"��\♐��TV3C������R���՜MnE<,�6`�+P<�P˩�e�s6//���X@�^�Q�Gϳh��K�%��,�����*�BӘH�k�+Z=��l�^�R��cWY�	���L�5=���ʯ-8�a����y�*�Ł ��c^��(������\�N�׹�:�h�X��kƊ�$�A��z����,bCv�w���=����X��	l�p����ie���l[�ʙ�2Q���r5DXFu=䖘�/2/���0D�mB�Pe��C
��hRu����D����mt&��.'�6�+Xf����񠩞=w������ϧyY����m[l��\n�3����`҇-�*_�i6�jZv�1�<�(��B�1{�Uj��L|k��*j�"��N���~$Mw@�4���\r�ƍ�2Q��!�4x��j�u�ƀ��BZG0�f�����ﬁ`|q��Zl[dx��Ǒ=n�t���:b����tfFW���\#�Y�JS`;� �nh��v�;͕��;_���:�A����(a��rT?"^��s��l1���*Z�.�.'9�Ǔ%�?T����Q�6�?���G�z7��^?�	�!����2��W�wĻ��(���,����f�Dm��͏��Qh�	GEɉ�&���/���O�m/�R�F�(MNdr.M�����P����#Ő�[�/��@9����P��2�]��'aT�(��#�<+�ɱ4�#?~����/YJpQ�Y	���Z�|�Ш�zTA~����"d�&��F����N���n�KbO0��}`���z�â���:�����?Ž�><�!v獱z���r�.�ke[ݤ'�N��Tزc&�?� v�1 �-��Y\��$,�R
ᾘ,j����D��A�Y��������RW���x�c3sc���H�H���/�Q�I�<�v�^L�}�i���wr	���2���E��tA�/'��.S-���WU�j�������ܾ�|N���F��a����4�Sڱ/Q�.��#�@Z��EŃ6Z#^��ʖ.I�Ɵ����Mx���S�hJ�u��,�[����j�����+�eNVo�zE�j�X�rd�jd��R��Q���O�yj�X�<Y*z��g6w��ꖺK?)5�x�j���j�n�P�5�����u(=9����R�'�n��
��|���g������n���P>�P��'�T����F;���2{8c�&�Kw�&K%>��SkHM���sKg!�p`ɎBڑ���?0}|�f����	e]\ze�֢grS&��&�+d�#�.VL���L�XŰ40���D��1#�4�U�*�*Ը�C�������d��r�����B�Pk6X�� �3�TQù�W'k�HH�!��_M���&��ʟ�k!�a�ّ9�$�p�ͅ���I�f`)�+MS���s�$V
�lh���˖&j�
��,v�n�H��U�w("�D?�[����2GTo*f-ݱ[C��^�u��{�`n���.��ӡIܱ��<���'�:���/���q���3�u,����,�`��^��^c8�[���vIܫ�Pܫ¹��:Gp�0S��l} o`��X�S����q�x#6�-G�t>	�C��g��(�Σ�
�������P41-SaR,�!�����B6��{��~g:#����D't����� X��>��[��"`P��ZH�v%�6辕��鋜?e^@O�� ��H2�H�m+�F���p���܁����83Vj�%���"���/�����d2
G�]    ��<��4�����}�-?�9B�(��#��^�M�h��;��18��<)�t�
c���9M���5ZF���Ӡf�����}!�]Q��x���j�����CWw�lhӡzFS�e5�Ni/��Qѝ�,�Z�tS�t�'�E�(�AlEC��׽��*��d�o�II��i�4WgJ7�f�x�=�A��n�p^𺎦!_R��R���*�qAx�m}*D��J'��|�Q�\����"o]�L��Jxgu]E�37�Y��/����;����j�HK$��>�!���*L�'9s4,����$Jt�,z5m�z�����s�YV@]����'�I��T�/+��J�E"�X�r���M��^�����ӿ��?.�谌�JZ�	�fͯ�=�&*�zGm��m���~�����(X)�����ݶ�Fqc�"�����o��?9��.{οu��ls��B*B~��u�>�q4X��1�v4�gc��Q�L_�x2�9�}�f��mϕ�UQ��{��9{g���j�ݛ�JtW`���+ �Ox��%s��1x�4�����ۏd��,+i�N�
x��\��`��x	I|7��$N!����Y"K�Sv#��P�t�\GD���̶qN@G�k�)��x�����_���Ŗ�GD���ʚ��(��X,x�o��4�tu�Q��b����X���VX 9�5MS��/~��G,'�ۄr�^r��1��N\s���&H�zMVh�Ou�^�t��\AO�����P쎱^�Sø8Jl]�-�/a���� ��k���*t2c	�����vX���HW͉p�����Ay��Va@�� �|NWҠ�j�D5�(���<�h��#-'�gyR�b-�ʸY��Zn��{}�J�n�
�p���/u������% 㾿0!�\w�s�0��-z}�;�q_�5�z�I)K�,�~�u�y����v�NY���s
�`A�ې�c����LB����k>l*��5�)���d�/O����
/�Q���֌��0�c6�N
��V㮥Bu�wZ�"�?���{�u�*���c�B|�e],�Z�����R[��V�Y���Hd��GR�U�<���j"~�ϩb�k��h�Q�܅kѝ�&"VO�2��������ͩO)���;�˻��0'�#$��?�y�m�D
�H�<��W�`bY �
��ٶ8<�J+�1� �z�"@75V�?��W�1CNb�������F�$�8��R,R��k�V���OS�Y�k����e,Ȗz�g�Y��o?��[U��{�_8�V-�yٹ97�:��7,Zk�@W���Ǒ��['��[��;�7{jӶ�ZN�|8Ð��DX;@��2[gs3�`�K`����;����͆\�
4�:L���?�!�"g�U���g�nx�p�>`��F�p$snn>x�.t]���S�N��ʷSv�t�0��qb��OA��j�)�����%�>/\LO�u��c܌�:����oe�9���-�[�u�V{^t��K�tw6��pr�;��=��BueS�nj�sZ��N�ۖ7�V�ʇ��,�4K�%��S*y&t�S3�5�TX
YM�Q.bb��22��8!>��Mc���q:5�*׾���t��=VP���HQg�vvDם��}%�k��.3��B��|8-�⠘}dm�H�R���2�Gb5m���#��Q 0Ǖu���qs��ysUڌ�bc*���n����6��j����
u�v
�W�~% ՝B8*g'��M���C}A),$�'�Dڥ�N%B�3�D�V��^ZU<*�" �Fk�W��"�[=�s�>^7����3��&�^Tڧ��E����s8������)�#��U�:�3(���L�����A��a]Sy�J�\uv�=sa!�[V��)gNČ=~���l��
�N��_�90x�h���Jp �F��}��_D���;A�׻�|��Њ57���ƹ�7�G>C�h��#l��.)�����w�a:h�m����]���l����>���6��g�BSp�_�[�ȩr�/eW�B���88��U�z�RY��>M���I7�q6�J��m9�z����!@���C��M��9�qK81\��y
�iCb2���Ŀ�~�,-���BK���F�C�*�Mtnhԕ��������W'Ѽ�)*��)�X�[Og�z1��ޅ�^+����8;��>/��;\_8�Q>��>L+�^|���k�ɓ�lD���/:�T�G��H�#�C%Z�2s�=e���+(��~M�d�}�-����t���� ()42�7�;��JًU�����cm�Z���������)��HclO������Ц���G�鑠z�5�j�)7���h)���~B��q� ��e�M����м�&�Ys�6��ئVAvy>�H;��Ԅ���tO��Ƅ�h��*����4��x��(}tp����J)��@�kK��0�{W�Õ����>�Ϯև�? �'�A��ʶ)��8� ���DW���d
��D�_[�]��/N���HL���}���E�QM*B��a\���C�٠]�o��C�����`��:~��̇O���Tv�4�q�w:	$����R�7���u�(����X���0]s�(���i�|��;s� v4��\܎�N��8b�aB�~�SM���H����xq����R^lډ2��� ���b�� ��
5�<�l��j�����u��8ƈ���
�Т��͘�*[f6.5.�`lj�NI�T�)'?�7	H/J$�)�O�m�c��Ѫ�\�ΤN� 3*�	)���HFB�8&��K j�z(������'q�
p� {�!z��)�ű?�ܘ�|;H�+����wt<N!����e�{Y���y�!��׍��6VK������-/|@�x�������yo��p�r�w��,����]W�ҟ�7A�������]�nG�M?E�!r#2�IQ�j[�z˛ 6�|ci$��C�a�V�:�8�L�_U�3�C�60��X"{���ꯎom+r0(�A������FJ�ҡ
�֥1��O�����O��~��B�\We=��� ʒD����+��o��+����T8ڑ6��<,��N�3Ե�ש��j���[}7+)�(hq�u�SUN��f�j�0n��W����O;�F��r4���;���9:���*9�E���g��v��}�z���|��š��%�mPX�m)�J`��ϊ�-_:;��H���]Ы�D���V~�%���.h;|܈�]�z�<�gh��QL���5�!�$���
C�#T��P�=jgd�A`��V�z���Oc�iӹ��(��v��E�Q�>q�b��;��w�5�����i�"@�8H�$PZ��C�~GĠK-���E��kk��2|�>2q{�e�f7��4Ao�r�����d����6��H�A8��5 ��5A2��i�:��?� SqGA����d�PM�We� �Rg�	o�R5ywM��Y��B��F��]/�i��dS����<��6d�2

�hdz����F�_Ц��6��r�X �R�bP@8�m�d�h�<�h=]��%a��T�I�lu�;��ZB��6;���0��H���	�7LFy�x�1���������]�������P-�/��6���o#[�}���D%{m}yk�ܩ)�L ���+8_&��Ę�_d �Z*&�3�zDA�,|�i*B��ߋ��I�;���\WK��1��/��(98Z�Zm���)�;`��_Ћ�Kб���g��t�w�K�\ rYp��c�,���G(���@��T����f�kOܦ.	��T�U)P��v��W�
�y�j	��I��.0�(*K>Rދ��(���:!��h3h�>j��f�����OGF�U]v"F=݊��U�Q�3�z�g�un��ٺ����%���N�#]����>���ԅ���udʥ��-T~��qQo9�ܥfC
�[��FS�w�V��KQ�
�h�`ȉ:��ִ��I�Jў��fs��*��x�t�]`n�1���O;���~>`����'ȇ�|�{�c�z   �f���#cm��3��8�(��e!s��2�J!�E'�c�ھ����=P.S�E�!�������iTd?���΢��yj��D�L�[��{:����}��#N7�}��J��P�s$��mÔ7�
�J�@[܂H��V>l�l��&Fu'J�ԓϡS|�����b�ZA��$~I��ٛ����sp�~tN�5D񰣣��O����˨b�n+_�<�/�_���a�\�5�����Ő%z	_}��&oF�J���y�hH���&¯�j*x������<�w���\��ܟz�Y���pT�5:[�߽���l�G�_��\U��sQ��)�e#}��b�X�3��-|�[�ٗ��Ƕ.���vK�+���a��`�
�'���G�l����B6$�'�F���+��7��}M--��7%=�θ�\ ���8��!k�Tvq�djw@��Ϳ~}���J���m��r������C=p��h�W7���)�nd��v:֚��%,�g6�ɷOeK��1�:?.d12��L���XuWA���q�����D�����.+�kwwU��b:���X�9 &U��F�̃Œ�����)��!:A/�����Ḏ�F2���Jn���á6n6&mas�V���̯&���sD9s�y�yj7��w���v���n�m.�`2���;W�'ī$��gq�s�fT��Iv��gH�W�&�O2�vi�[�$���=��wk���@��yc|�~���浸T�]���&���aݍ����I�]z|ɛ��o�����f�W�
w�m�QMd�'��ZKQ߾I	���]�^ 
���HDe��w���!{� c���"�9�ǜ5y>2lm$'#�G~���ͼ����s�Kc��?R�P���4%Hi���)A�ƶTsE>c�,���}����3U�c��柕�-����N�}��������0������=`;E���&l�a0�G�;�GbSR��ڵ�'(�,�,�U�[��H8���U�Sg��t�&o�-����2H�$��Zlƍn�l���aa�raE����Q@���xa�y���;���	2�.ҙ�6E�;1�� 7��%��P9D�p�z�9���E@[����?��oɗ����"U�� �V��1����V@��*Ӻ�[ߌ,s#wB�K�b��/#z|>|��8��aT��5L>�	ј��?��_/����E�3-�L���$0�0���by8W�K�Mo0�Q+`@]���~�� T�]��i��"�l���{�;�
N�������u1���Xܽ�+!q'=V�#�Ns��-p_ף;�߾�@+�4Ѫ`dl3��טz)�k�4<z=\��f��G� ϔ���e�,b_�K@z��e��%��1w��L|�5?�ky�{`�E$q3f�7A�58��b�*���A �ĭ�<&1�|�����6b�%�Z�S�n�y�@)>-<
���Va�ϳ��%�k��u+ �݋��24{��+�w�F)'����}�V,C��en!cx�������=��v��ƺ���Y��3��'^�fm�-�Qi���!�N��������/�����ڇ}7���_]��M�用j��q������8TD�]�����&�x>�.{S���Xz=cN�_��~��/$�,4��z�����t��P?�RT��8F	��?zڄ�)k�S�������'��n��\�'�cA�2�5d#w���q."� B��.@�j�@�SCo�0 ���cT��sNz����/����GS$� ����3�#��B�Œ�ӈ�~ �;C���a)�tz�W�WZN��Pϒ�|zY6��_�OI'�n�na@�lt:��}�1!&�'K'Ӏ�.ԡv�l̀u�d*�:N.�%� CK�]�U0�����,
�� ��p��v(R��W͆���e
`w��=�m��"�E kB�Tϑ�w>Tߍ�4��>F�z�$���s�p��:O�f���[��DB]�WO�"��Edez/0�3�2"=t�#G��&� �+s!&���̆��t�����\Y=#ܣ��1�۽=�<�y��0�\V���4���/�G�
�ͬ|��#K�Ch��>�FO�q�)�b
���JΑ}ahV6u+�M�7�E�&4G�0A$t��oo^.��@���lB�Wۖ����ڕT`��(F`33��w�~��n��ڋ*_��k� �Ť��=����y���5"z�?��-�׫<I������P�!��)���"N{��(���ۛzMsu���fG��ODo��,��/L�b�@/�{s��2^J-pR��ە��������ϚC��Tҏ�B4I�L����A�@d���'�Ě�d+t��*.X���	a�J&�z��gYB�̢���ӳ�i6��|jOQ<�PĎ���uǆ����(�i��YБi�o�s�Z�eS�4�,ݟR�ul�3��+�WrD��~>]f3�ąF��2���Z)�����ҥu��b�Y�?>�*��P���Q��b�J��`+Z�0��u��B��B8y!r]m�~�a�w�k/����9�B�u��c�w>Җ�(��EQ�#<�N/ ����^C}���0�d Q�l��-���)����g�d��)#���ɭ��)q���!m��E7�bg��[ZIs�Q#h�j�^E'�������H~1ؓ��T�W��B�k
��z�����<��z{����$9��~FJ4� `��_�,[ꯦ�>��K_F&�.G�Y(ŗ�,�*Ѿ��]���E�,��_�5�Κ�Z~�H����{�n���F)]&�G�[ʧ�ED����(�P�,M�aI�7���� 7UTE3�Z"���o94O�������s|�E	���*;,n��?��\�s�4\�<_53���*_3:��~�nFl��\�����g��j�h��FrwCl���r�o<��V�´��J�[C��a�����tp����N���Ý�Ӌ�]���{���V��j��B�#=��§T�:��rJo����Oͳ�tf�w6�u5�Uҷw����^X˕%ϗЍ�����i�L+��o�{l�'.�K�{���ʟ����W�v��
r����܇�}�H��g�U���Fc��b��l����7�]�e���yf�D�@b���r�j�l��Փ§P%�5�E	��Z���	k�|� ����!?s2�ʌryQ"�6�URc�^��F��.VDp*=��u��~�U�^4n���n��l���p2�lH AMF3�>f���f ��<vZ,��G�H��o:z���u������;      (      x��\�r9v��<E�o��X]����fgSq��l�'5I�s�&[b�T��nZ�n�U�$ϑ�<I�$� h6lX�Tr���#K�� �� 8 ]0��17�T,����C5�+BtQ}Z���ӛj���o�ş���_~�K��--�����&�7mu_�7o���n���7o�7�O�Z�z�)-��X�w��޿95����$Jve;�,���+���~[�-�IKr��R�Rim��)^��ǏGBj�����i���ت�Z�*(_R�d��Jc|����9#0��k�tC�v��ЖN�-��
����7�<#KJKM8ɓ���T_�t�8p���%��yN��l��}��ڻ����u����O����/'u �� �%�z�)�A�F�$Z��9�SĲs,�a�z�@Y,���RpÉ�5���X�b����p�|�
@�So�1L��p*��wݺ[��9��^�Rà���C���f�v�f?�������_��Gg���a�KB 8�nx��>qǯ+�52�;%�F(�"�����6p��Gqq��1?2��F�K!J��2޵�"F�,@g ��bT9�� Y��u3/� � MB����R�,��@C�H3@�RF��	Z������fp&�cJ{�� m��H3V��1��~f��3~c��G3f��1F�3����D�iƌ<�8η�1#�9���)'cF��+�[52V����{��0�qX-����+����C}_��w���銮�\�X��\���m�o�bhھi]=��]ݻ7�����ǲ��6UW|���a�� ���a�P��p���4d��{[<l ]�ű���Z��w��EU�U�m��z�)�|�Oc�7XM	��H����&Ey����fw���?a�˘d����.%/���$�A[?�l/輼&��)�?#�e �R� ��W�� �a���0rF!I)�ĕT��Kr�'�i!'��%јT2+��y�]x���wG�_��o��k5��j��~X?D����'��R�����q��|���d��ҤGؤ!�"jJn-��?�	 ��̤)�,X�ܢ �����k��0�j���9V_Gˀ��$���C��0|C!�p�&Ff	}�Dʗ"b\:���*��  �9�q��ݱ�i)ܠ@P(��z:Wϴ�xԀN0KJJ�5Q�u�b��4�K���%eR���~�͏�q���q
�v�%�����$�ȹ<7�aF
�RS����	�FH����=�gl^�R�x��\�f�M�9�`�Zü��WE[�髫�C?��l��b�X<��&�� �����8���2#/���5��U*y�.q��ޤ�b���K���J[��3�7.�����ܧ��"��B3�
�.��DG��؉�Bĥ�b�d:�� /����aI�t�&~UjӇ�j#U�W���ҙ�s�h�t��tD���|o�C���� ��~��+jD��g������z.=����HP����,p�{d�v��6�� ��?�,�O'�!	@�.�w�������~3b�<F�O�(���q׌�AP��z����3��ߝ�1jĈ�K��Q�<F�����W$"=f����`�!A�c`�=>��eR���>?"��T��N0`���e2��&u�bxP��1�l��%:�!8�8�ڜ#X�C�� �o�������M��f�B2� �?�z:6�
�����m�F�ɸ���o�@�!��m����Y:1�Nٌ��"��Ngb�1�T��&(r������a���CIju���
�<�HF@j�`��e)�ɧ��0`�#�����S3�Cw�ӑ|j�A��x���G⩅qX�Bw�BF�y�0=����S�R�Txz?ʧ��(<����5��&�s�Q�N�k��.��v�6���)��W���g2����<��?xR��<�px�i�E*ϖ�������Б�����xo`z2\�gé"�G�:#��7�{G�&�8\ˈ���l�{�74L����gg��V����F��Rs�E��f�z����ؼ�"���0�IxF�Q���y�6�.K)� ��^͆�k/�����
�J^�N����5��&֍��u	L�JF�L�tۊ��v0>��ũ
�t�BqD浸��.��p���e�;����b�3�(R�P%#L�P?�I���J�O=e)^8����pt�;�����P��e����	����_'�{!|�Ë�Æ���ǣ�0��F�2��z�Ww���>�R~����h����|�`�&�J������5�T^1�ϦSLt�?������cy���T�I�FG�y�Q�0޼E�4#O�_��B�<��s=��L�yF�u�>�N�EF^��x�R Z��;��@��135�/T�����2Ɔ�ѧw�N�'2�f�����Bd��
��tb<�16cZeM�'3�f�#/?1�����[2��e��rM�ȟb���a���Y,��5S���$8e��|�;������B&��9��@&�)3��Dw �y9�e�;��Ke����
|�_��y93!����T�r>�؉yUƼ\�ۉ~TƼ\�P�ۧɦ�����,,:t1�R�*cd�������::�*cf�!���ǳ�ʙZ�P�g`wKO��!_rZ2 _Z�.i�|�H�#��$F�,:�Bm��2,��z;���Y�<�%&T����YD��Գ���Yd��������YT��(�Ȱ��EgX�0!�ϰ��dXB�	�p���f8̰ϐЈ�d����ǥ��y��dX)3;��w[?��J��j5�N�Ec<��Ga�1�0��2%rG�X��ݔ�O�X�aY�&u��"D�&d�e�Ú�a�'����g�h6u؁E˰��T;�m��%Cޖa����2^PS3nU���X)��Zտٵ���C���ƌW=i�S1*��ғ<K�a7mq�W��
w���?'�T���Z�g��sR	����;/�Z�M*'���L����դ꜔�spz�N�9�%lRm�$�F��TZ0�dCQ�.hSR���F(�H�B䪉!�`������y0M��,)%��b~'��4�R�%����J���t�]�m���Ro#u02�%�B���Jzi*�)q��dv���P��r,@��pm�u�9��A�o���3u�f̡u���R����A�8z��eA-V*��3��J:����W��D���\�,�,��T|dă8I��K���(�9%��Kp�I�ϣd1%Cv6�xTs�&3^��{^��A��o>����[��V�d���WzO�ifb�y>%7������RA�7�B/�v�P���C���?����f��i�4�]{�u狿�V�����uuh�v��7ů�j�k��~K�;,�ۇ���������V��6���ǏG��VC[�������wEw�ǣ+�[��?����Z�0ʻ���u�e����29��5�����ҲZ<i�5xA�ڮ���W��e����?���W���ڭ��M�E�)�7����5Z��b~���蘾���^��_���߳���~�tE�w��ھ-wG��æ�RU�;|F�EuE�z�껦-���o���Z���}��X㼰�#�}��A8�z�I��������`|,�� ��ڵXW��M��9v�d08%�e���Y��JG޵��j����m1|ow����頯����ݓm�M����ٲ����j�򙭂��b�;�����QW_��<zy�8n��5!4�}����v�u���X�������u��a����������s�f���?x��	���V��V���g��xCZm��!Tn>=���O^���x��0��\�kk�f[w.�Q)�U���=�5�kT�z���� ƨ~y#��J����v��Sk�~�}5}Woo��#��S=x�9t��]��� S*�w_���w�>C��E^痀��0G��	-����>����ԝ���r�3�kݱ�O�ڵ�s�B�ԽEG+��C�O�����5���]�$������G�zT�sS�}�3g�cB���������H:��79<��O0��2s -  ��YH���)�NI5��Xj��mnN�0��]�I����]��+��P����;��~.�P����
��GWOi7���h��" ��P*�P���NE5�O��&�(N��ك�1+Kp�ژ���/��P�s�3��H�	xJ�9M��7�&rp��P�Cy�p��uJ�p���D�p�'��r�!��n?J�؂�>�E��U�II��|�ˮ�ء.(�J,�
뎌V����H�¡��c-�R�'�O1+MXV1�Z�~����x�Pj���#s*�v�{)3L\���i+��������3�P�4ᵥD��μr�r�uPS
�A_�m��*$��g��q=ao#8�JK��H���2))Lk�K�rȧ��fY�9+�%ׄ���*�9� ����k#XД�}��V����?K�RR��C�V*���L���r��B^��~3�"eXI���]��LyN,d���W�u�mx0j\Q"Ƿ"�  ~<C�E���ܒC\��q:�=��]�P2F�����<A\�b�\7w�~2({N�ui%����h#�^RYBW�z	-Mh9q��Fs�Z��Jw�%9�߹����=���t�����d�V$���{8� �/�Li)>9��I�%�Z�/Hx��dlf�uJ��s�{�/�q&��jW�55C�ƙ�D����\wU����H����7[�=Ui��'�Bhzy�=C�ƘT.g�\�7�Ѧ1��fĐ_G;�1J�Gh)Ȭ��^��*y��!r1�b�:#U	)sOq8����{n��I������(P&���YP������lJj��
;���4gV__�o$
�\KI�n|�[�sp:�k��%D<e�;�/���ڽ�5x8a�À�-�su�k/O�n�c�A����T�$i��"mB�n�SJ|��+4!ϛ�������婾�3���\͵֗��t[����I���_��Z�a!F٫'_:唐�I�V_�U3Ě�!̅*~<%l�!�{�oĤ���@LV溥հ����P��e�uf���r	i����؈�Tb�±�����2�U��n��KMH]�&N@Vv���������2l�      *   �   x�M��n�0Dי��j��_��"���H��$���|�yL&'����,�R�ЅqInd\����Ƨ���WcW]L����5e.i͸7X�fLQ�M����4§[��N��5���<�>ͻ^��DA�@t?FC#孎.�������G���5qL!��{g�����3��m�gR��+�j�����;3��k�������o$      ,   
  x��W�r�8|v���[���эo�*�c��Z����w$a��8��lw3��Ӓ����CQ�W[�;!��ʺʼځ 8{ ���J�*���(�_B��.���#�!X���sY!�������j޸��+�s�Qd��&�O�m M�B�8S0,ˏC���k��e���<� �TܱϥWj���������ئR)�a&� ˫�貶��e���<>;�YU�o��m*�"�d'*�.=�缬�e�NF���BK��i��<YO!�ġ�U�^��;�Tf�P�00)'������$o�=�= ����=�X�G^��|h�>L�躦��E��o��B/q����|#��JY�hbr+���T.���TR�To]si��A"t�FO42��,Q��]���p�}��f����M��ݳ])��*��[����$��	r}�P|Y����g;#���T@L�C
K.Rȉ�~Da�!�L�++�,oۢ>��<��l.l�����n;r������]�T�)o�	���b���0IB�$ ��x�|�;��1��.|-+��h�h�$
(�̤����kdpa���!��b6��!�P�蚪�$�Jɥ�	�3q-a��5+>aڦ&$��p)�&��a@8��M�_A��Z�TC���>��7eA?|U!���G֞^�?�h�}��Ɨ2U���gV��l�ൗ"2���o�{֖t�d5։�ͮ�c�zHq�2H�JhAAX�	{]Ҳ>�c����0��=���$�z�X�Qx�J�[���R����Z�u�ԫX��o�憊L,�^PJ6E� j0Q
�*xS���ݗ��`��M@���Che�д����V��V:EL�H�ݟ8��ʃ��e�U�Ȁ�`S�)Qb5Ht%����߯~��Z7�ك��b��8LHr��~,�P@p�w{^4�n�E"$���7�t��"�d��e2��s
.�s�,lߛ��}9�*�m*D3R�LE?�b/G I���s�A�N葊Nx�E��H/ď����ߢ|{N:N9����>dT���:����	lJ� �a��P��H<y��/.rNۄw@ǋ��3#"E��-c� 0������¥+��?7�������G����p� 		e\�Z�$�ܡ�s�)�/1
�4����n��Y��g,7ˣ���36��i��<F����v X#P�{��`�K�}D��A@��@��bD��-���ah�0�,	���x�Pz����\��7��"�*�"��,����<�̎h�5N����������3      .      x���ǎ�ښ ��=O��-J+{�3��h2�%�s�ӷ�v�sn��HH5*�>��'/��T別��q������Pm�}�����������|�� B$�1�mf�h!b��Dv��ܜǡm����]�E�Q[OV�rvkP6���|��yðT��0_��d&�w���<�1ڕ��F�~9��&34j6��
���þ�"ez��8��V�/���&�z�O�]���Ҏ��̏��y��*�6�9��{�kύ��0�jǐ��_ 4 � �_�HP� �9A�� yndWQ��ׄ��X`�@Ut5}��-8ݤ4w�Q���ҫ����ܺ~P�F~]�<�NϷ`�1B����_T�/#�'�`�u��c� Q���͋"��4�'M������a��Ev,���=�C\�͙ݦ���k@�������"		�/.(����Q����j���i��!.8���F�Rդ\|��N=E��o�n�:Ak�sm��p��,C��K@���A	1	�/&rD^D�,�<Т��2JT��1��
��v�%�,.zt;n��x`�&"���a��&o�K�:�<<����:?����`Xx9-t)����$>�� ��Q&����tdo��x�V��d��v�L4s��b�Gxr��AE��rm��1B�%$H��FH��iy���X7���A� H(Mi��s,ұ=�f��<����ڰ�_E���jп��]ꍏ�`���ˈ0��/QD���J�B�AYX@MĽ�������B��̔��.�c�L���K��y�&Ε�n60d���r��6�\�Q�� ����WGL`������Ts�J#��|�m!(6&iT�r"�~]*�cX	\�wyX?�>�h��o���C��'BB&����_�����Hz��P�4è���j)*K����o��F�ɮv���|�Q2nd�����������v1��ė�Jk��q������r3N����[�z��^MÝ��p~����V�o��gMW��ZMn�xq�6/�ۻ��c0
��Z��2W�C�ݩ˥z��zR\��i�Ύ{�����������&SC�Fa:�����9��v"�5���_��b��/�Gz��,u�# V5�܊��xF��ՠHSS�@��(9�:9�������u������-b4t�:�9'?}��/~�����N��6��a���^K�0�e���5��RZ��RY���񨦋x^<�����5?z�58o����m��G���s��1t���Jn�T��'E[4}5,k�L>1|vi�\Lk�p�T�]z�=��?G��l[���8~���\i�>��K8&�RvZ�Zi@��
��Q
��&���l��i̥wJ3U�s�1ח����h�c[*��|�[�Ϧ� ;��>����O�~���ۇ��ST���F"�@�\#hc@,~��|���}�q���Ь�=y5>R�F�r�Z9U/�����`Q��K$���4��7)�۠E�w��F�f�9�V ���Τ6���L/�b��݌�������Iw��]���ٸ{���!�����{�Q���0�
���6t9.$�( ���ܐE&������,������jĐ�V����SGW��J��?}�|1� ��Q#˨gD��M��[4z�k��Q�U�����yaLAa����^�5��˵Gv����^z3a|φ����?}�����w];�/�e���P=P��T��zE]�}6i�xzu��9��#3�T.^_&��9�j2��}�{y�?}D	�/���[!����Z�����8IS�!4�� ���(��[Μ�������R��v~B�y�h+^�Ot�]�&����_���>"x��jQ��n�"�]�VBS5�y�</�V|�m��N��LVO��\���	�@��F:V�Qh<��1��A���/��Kx�����8�Tu�vk�0�b
M��%�@�H�D��ɪ��a9]�����<9S�l��� ��}��O��aQ����WA�)L��p�6�ld��}��b K�J�WfF��)U;\�6W=t�c_�����b{�.[���C^�G����%y�U�0<����U#�⊥H�?�n$��Y�����w���r_����%N���*(��,�r��ӏ�P�;~�8�|�q��L��N-t5��u��8<�@$K��I;y�!��:ڊ�d<��+�?4m���҃q�?}�{� a���Me�_�}8�Y�,A  �ʪX����Y�s�vA�gܬ��w�y�� _�y��j�9�t�Cp���_�a���x���U�m�eg�HwR#-���l4����0A������);��"����N��)V�x&vcD�5h���?x�kB�����f��3v��״��j ����SR��%�M��]~�����ō�|`#z(��lT�M�4��n��K�|Q,~?W�,X۩�����>cA[����X�����r!����N�%g�.�U2���8��\k��tz[���|W�<�H�|�2xO_�2��jkF�ꑚ�YW�V�Q#�[���?u���9�o΢9����������}�A���`n��R=�ɿ}j�P����9���<����0�k�T�K��k�����o�˷����x�|��w�e���۲�k���%��G�^���4�-_�Necc0�[��%]{A�� �jZ���]��[A���|�-b����^l<}��m�8%�Y��L���Vc�ne�߄��;���7�IZs��`;�V
	��g��J�t��p��:9���h��O��\SQ�n+�J���US�F�ջ��8+l����1\�9���g��M����DY)W�!�<�#�N�¦:�;{��y�QOt���@�Y
Wj�v�5�E=Q�"b�3ndc@�ІJ�.�9���f�O2���]�)��C���ǹoA��(�|0�jt��o"����͢]����J ��$���[�hj�n�P�3���D�E@|�>�XTq����W;�(_�r;�����Ⱥ���t�]e�
��<���6�u(�xc�p�`v,rW_������Bf�@��z�g�%��9X�K���S�Wd7>>�k���4r������~vZ-s��#�XLI,�6��O�9����vߞ��	G�)���V��̌���_Ϧ��}JZ�g|~�������0m>s�1��_ ��/ȿ"~o2�M�	��)�6	D�� n!h�h�Fm0zeyu�����VJ�����I�n�{�w�_���1��WD��:0	�@(PC\��*������|�$��~�3�����T�EB�8�K_O�.:737��c�>���\��K(���ם	�0��l�G�qB��-�u��[�p[��g��������Ǥ�����8;.�A*/U0~����Y<�7�w�� ���n(�/L!�Vö:�
�,`)�y�;Cwͮ�.zV~�U���W���q�>6/e|7��sH뭇��@d�5�X�Ukq?�m�b�Տ�}7���a
߅� ��y��$�=�:����
M�Ȳ5�=�1�LU�9傲v��Q@vm��5�2�^�'ԭ�u~̾���N�K���G�ĮC���6�#^�Y�Ю���4:m��48��ȣ�\�G33�}�ΖA��L�ma�M�@u&�W��� ������d��[�I�s�:�DE&���D�C��@��Q*��c��mR>�pu��j|TB�ۤqP�6�l�oF��AR��EQ �8j4�
5/mi��B�ƶkd��[G�y0�
�����:Pn�G2Ԏ��]�Q_���}���|s�6��ɓr��� z�����-$!���R���R�
n
���!-#褬,�O4J����-���&,�'�=��xoǣ|��`zt��|d� �F���H@�ܷG��m6����-)2+�u�s�AM�t���W��¨�H�u������"R�>Q�A������_���Eݹ]Aj���㈼�b}� y��al36Q�u�+zQUYj�
�(��?K��2:&����� �iK98wxݱHVi�X�"�^��N��#�c����ۈp���شY�j9�f"���x�O �  (�EA�uit��Jz>��-�*/�zq��6��ڷ�F|��a�Р�;��Q��� ���}un@pt�6N#�f�.�$ԉj���F�D��}�l�x9�m�!�%����O��%W��ZN��ps}��6z���|��>j6��#c�]M�u���D3����J��$�ڵ,�>m����S�ذ�wy��P����1��H����N~]M���_-$�8����U�Bƻ4G�$*�r:bބ	�H�$CH:�ut��H��2���:;�4��f�]��7��v�M�!��Uy�{#�~�"���0���&iYeC�t��d�Z�D�lue;)��0]��e���N��b���T~����8Y���y8~�k�5�B�*k��Ì�]��x�Z�[o��8�;��-��U��yֲ���~@r78^��#X;nv��`>��2?���}*5��NG��=�A�*k ��{\�x^�2��X(�z���SA[3��#G�,ʍ�-�l���"�y�z�{��rwiP�+Ƕ8��~z��i��C��N�o�)�n!����ì�m�tY��*�|�d�#r��#L$w^*�S���l��j��fU��:�Ŵxܴ�)0�oFPB��ƿ8��a+��O�Y�(O#��yc9�ZU� >��IJ�^呷GV썀.k�h���X�~$i}2�vjGs�$���F}!����~���_��!@f      /      x������ � �      1      x������ � �      3      x�3����4�,�2���=... 8L     