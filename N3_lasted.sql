PGDMP     
    &                {            NEW3    12.14    14.4 �    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            6           1262    16402    NEW3    DATABASE     [   CREATE DATABASE "NEW3" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "NEW3";
                postgres    false            7           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    3            �            1259    16403 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16406    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    202            8           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    203            �            1259    16408    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16411    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    204            9           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    205            �            1259    16413    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16416    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    206            :           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    207            �            1259    16418 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    16424    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16427    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            ;           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210            �            1259    16429    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    208            <           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    211            �            1259    16431    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16434 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    212            =           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    213            �            1259    16436    blog_appendix    TABLE     �   CREATE TABLE public.blog_appendix (
    id bigint NOT NULL,
    text character varying(200) NOT NULL,
    "indentLevel" integer NOT NULL,
    link character varying(200) NOT NULL,
    post_id bigint NOT NULL,
    previous_id bigint
);
 !   DROP TABLE public.blog_appendix;
       public         heap    postgres    false            �            1259    16439    blog_appendix_id_seq    SEQUENCE     }   CREATE SEQUENCE public.blog_appendix_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_appendix_id_seq;
       public          postgres    false    214            >           0    0    blog_appendix_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.blog_appendix_id_seq OWNED BY public.blog_appendix.id;
          public          postgres    false    215            �            1259    16441    blog_citation    TABLE     �   CREATE TABLE public.blog_citation (
    id bigint NOT NULL,
    text character varying(1000) NOT NULL,
    post_id bigint NOT NULL,
    previous_id bigint
);
 !   DROP TABLE public.blog_citation;
       public         heap    postgres    false            �            1259    16447    blog_citation_id_seq    SEQUENCE     }   CREATE SEQUENCE public.blog_citation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_citation_id_seq;
       public          postgres    false    216            ?           0    0    blog_citation_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.blog_citation_id_seq OWNED BY public.blog_citation.id;
          public          postgres    false    217            �            1259    16449    blog_comment    TABLE     w  CREATE TABLE public.blog_comment (
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
       public         heap    postgres    false            �            1259    16455    blog_comment_id_seq    SEQUENCE     |   CREATE SEQUENCE public.blog_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.blog_comment_id_seq;
       public          postgres    false    218            @           0    0    blog_comment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;
          public          postgres    false    219            �            1259    16457 
   blog_index    TABLE     �   CREATE TABLE public.blog_index (
    id bigint NOT NULL,
    "position" integer NOT NULL,
    type integer NOT NULL,
    id_type integer NOT NULL,
    style_id integer NOT NULL,
    post_id bigint NOT NULL
);
    DROP TABLE public.blog_index;
       public         heap    postgres    false            �            1259    16461    blog_index_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_index_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_index_id_seq;
       public          postgres    false    220            A           0    0    blog_index_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_index_id_seq OWNED BY public.blog_index.id;
          public          postgres    false    221            �            1259    16463 
   blog_order    TABLE     �   CREATE TABLE public.blog_order (
    id bigint NOT NULL,
    kind integer NOT NULL,
    kind_id integer NOT NULL,
    order_id integer NOT NULL,
    post_id bigint NOT NULL
);
    DROP TABLE public.blog_order;
       public         heap    postgres    false            �            1259    16466    blog_order_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_order_id_seq;
       public          postgres    false    222            B           0    0    blog_order_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_order_id_seq OWNED BY public.blog_order.id;
          public          postgres    false    223            �            1259    16468 	   blog_post    TABLE     �  CREATE TABLE public.blog_post (
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
    "modelLink" text
);
    DROP TABLE public.blog_post;
       public         heap    postgres    false            �            1259    16474    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          postgres    false    224            C           0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          postgres    false    225            �            1259    16476    blog_relationship    TABLE     {   CREATE TABLE public.blog_relationship (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 %   DROP TABLE public.blog_relationship;
       public         heap    postgres    false            �            1259    16479    blog_relationship_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_relationship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_relationship_id_seq;
       public          postgres    false    226            D           0    0    blog_relationship_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_relationship_id_seq OWNED BY public.blog_relationship.id;
          public          postgres    false    227            �            1259    16481 
   blog_style    TABLE     �   CREATE TABLE public.blog_style (
    id bigint NOT NULL,
    name integer NOT NULL,
    "indentLevel" integer NOT NULL,
    "fontSize" integer NOT NULL,
    decor integer NOT NULL,
    "fontWeight" integer NOT NULL
);
    DROP TABLE public.blog_style;
       public         heap    postgres    false            �            1259    16484    blog_style_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_style_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_style_id_seq;
       public          postgres    false    228            E           0    0    blog_style_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_style_id_seq OWNED BY public.blog_style.id;
          public          postgres    false    229            �            1259    16486    blog_tag    TABLE     d   CREATE TABLE public.blog_tag (
    id bigint NOT NULL,
    title character varying(200) NOT NULL
);
    DROP TABLE public.blog_tag;
       public         heap    postgres    false            �            1259    16489    blog_tag_id_seq    SEQUENCE     x   CREATE SEQUENCE public.blog_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.blog_tag_id_seq;
       public          postgres    false    230            F           0    0    blog_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;
          public          postgres    false    231            �            1259    16491 	   blog_text    TABLE     '  CREATE TABLE public.blog_text (
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
       public         heap    postgres    false            �            1259    16497    blog_text_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_text_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_text_id_seq;
       public          postgres    false    232            G           0    0    blog_text_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_text_id_seq OWNED BY public.blog_text.id;
          public          postgres    false    233            �            1259    16499    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    16506    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    234            H           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    235            �            1259    16508    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16511    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    236            I           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    237            �            1259    16513    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16519    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    238            J           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    239            �            1259    16521    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16527    polls_choice    TABLE     �   CREATE TABLE public.polls_choice (
    id bigint NOT NULL,
    choice_text character varying(200) NOT NULL,
    votes integer NOT NULL,
    question_id bigint NOT NULL
);
     DROP TABLE public.polls_choice;
       public         heap    postgres    false            �            1259    16530    polls_choice_id_seq    SEQUENCE     |   CREATE SEQUENCE public.polls_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.polls_choice_id_seq;
       public          postgres    false    241            K           0    0    polls_choice_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.polls_choice_id_seq OWNED BY public.polls_choice.id;
          public          postgres    false    242            �            1259    16532    polls_question    TABLE     �   CREATE TABLE public.polls_question (
    id bigint NOT NULL,
    question_text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.polls_question;
       public         heap    postgres    false            �            1259    16535    polls_question_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.polls_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.polls_question_id_seq;
       public          postgres    false    243            L           0    0    polls_question_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.polls_question_id_seq OWNED BY public.polls_question.id;
          public          postgres    false    244            �            1259    16537    users_userprofile    TABLE     �   CREATE TABLE public.users_userprofile (
    id bigint NOT NULL,
    phone_number character varying(100),
    avatar character varying(100) NOT NULL,
    user_name_id integer NOT NULL,
    accept_email boolean NOT NULL
);
 %   DROP TABLE public.users_userprofile;
       public         heap    postgres    false            �            1259    16540    users_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_userprofile_id_seq;
       public          postgres    false    245            M           0    0    users_userprofile_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_userprofile_id_seq OWNED BY public.users_userprofile.id;
          public          postgres    false    246            �           2604    16542    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    16543    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    16544    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �           2604    16545    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    208            �           2604    16546    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16547    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    16548    blog_appendix id    DEFAULT     t   ALTER TABLE ONLY public.blog_appendix ALTER COLUMN id SET DEFAULT nextval('public.blog_appendix_id_seq'::regclass);
 ?   ALTER TABLE public.blog_appendix ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16549    blog_citation id    DEFAULT     t   ALTER TABLE ONLY public.blog_citation ALTER COLUMN id SET DEFAULT nextval('public.blog_citation_id_seq'::regclass);
 ?   ALTER TABLE public.blog_citation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16550    blog_comment id    DEFAULT     r   ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);
 >   ALTER TABLE public.blog_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16551    blog_index id    DEFAULT     n   ALTER TABLE ONLY public.blog_index ALTER COLUMN id SET DEFAULT nextval('public.blog_index_id_seq'::regclass);
 <   ALTER TABLE public.blog_index ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16552    blog_order id    DEFAULT     n   ALTER TABLE ONLY public.blog_order ALTER COLUMN id SET DEFAULT nextval('public.blog_order_id_seq'::regclass);
 <   ALTER TABLE public.blog_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16553    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16554    blog_relationship id    DEFAULT     |   ALTER TABLE ONLY public.blog_relationship ALTER COLUMN id SET DEFAULT nextval('public.blog_relationship_id_seq'::regclass);
 C   ALTER TABLE public.blog_relationship ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16556    blog_style id    DEFAULT     n   ALTER TABLE ONLY public.blog_style ALTER COLUMN id SET DEFAULT nextval('public.blog_style_id_seq'::regclass);
 <   ALTER TABLE public.blog_style ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    16557    blog_tag id    DEFAULT     j   ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);
 :   ALTER TABLE public.blog_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    16558    blog_text id    DEFAULT     l   ALTER TABLE ONLY public.blog_text ALTER COLUMN id SET DEFAULT nextval('public.blog_text_id_seq'::regclass);
 ;   ALTER TABLE public.blog_text ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    16559    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    16560    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    16561    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238                        2604    16562    polls_choice id    DEFAULT     r   ALTER TABLE ONLY public.polls_choice ALTER COLUMN id SET DEFAULT nextval('public.polls_choice_id_seq'::regclass);
 >   ALTER TABLE public.polls_choice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241                       2604    16563    polls_question id    DEFAULT     v   ALTER TABLE ONLY public.polls_question ALTER COLUMN id SET DEFAULT nextval('public.polls_question_id_seq'::regclass);
 @   ALTER TABLE public.polls_question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243                       2604    16564    users_userprofile id    DEFAULT     |   ALTER TABLE ONLY public.users_userprofile ALTER COLUMN id SET DEFAULT nextval('public.users_userprofile_id_seq'::regclass);
 C   ALTER TABLE public.users_userprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245                      0    16403 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    202   �.                0    16408    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    204   �.                0    16413    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   �.      
          0    16418 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    208   �1                0    16424    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   l3                0    16431    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    212   �3                0    16436    blog_appendix 
   TABLE DATA           \   COPY public.blog_appendix (id, text, "indentLevel", link, post_id, previous_id) FROM stdin;
    public          postgres    false    214   �3                0    16441    blog_citation 
   TABLE DATA           G   COPY public.blog_citation (id, text, post_id, previous_id) FROM stdin;
    public          postgres    false    216   �5                0    16449    blog_comment 
   TABLE DATA           v   COPY public.blog_comment (id, name, email, body, created, updated, active, post_id, reply_to_id, user_id) FROM stdin;
    public          postgres    false    218   U:                0    16457 
   blog_index 
   TABLE DATA           V   COPY public.blog_index (id, "position", type, id_type, style_id, post_id) FROM stdin;
    public          postgres    false    220   �:                0    16463 
   blog_order 
   TABLE DATA           J   COPY public.blog_order (id, kind, kind_id, order_id, post_id) FROM stdin;
    public          postgres    false    222   �:                0    16468 	   blog_post 
   TABLE DATA           �   COPY public.blog_post (id, title, slug, thumnail, abstract, updated_on, created_on, status, total_visited, lang, eng_ver_id, pdf, video, next_post_id, previous_post_id, topic, ava, features, "modelLink") FROM stdin;
    public          postgres    false    224   ;                0    16476    blog_relationship 
   TABLE DATA           @   COPY public.blog_relationship (id, post_id, tag_id) FROM stdin;
    public          postgres    false    226   �P                0    16481 
   blog_style 
   TABLE DATA           ^   COPY public.blog_style (id, name, "indentLevel", "fontSize", decor, "fontWeight") FROM stdin;
    public          postgres    false    228   �P                 0    16486    blog_tag 
   TABLE DATA           -   COPY public.blog_tag (id, title) FROM stdin;
    public          postgres    false    230   sQ      "          0    16491 	   blog_text 
   TABLE DATA           b   COPY public.blog_text (id, content, link, role, image, "cssId", post_id, previous_id) FROM stdin;
    public          postgres    false    232   LR      $          0    16499    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    234   >�      &          0    16508    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    236   �      (          0    16513    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    238   M      *          0    16521    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    240          +          0    16527    polls_choice 
   TABLE DATA           K   COPY public.polls_choice (id, choice_text, votes, question_id) FROM stdin;
    public          postgres    false    241   �       -          0    16532    polls_question 
   TABLE DATA           E   COPY public.polls_question (id, question_text, pub_date) FROM stdin;
    public          postgres    false    243   �       /          0    16537    users_userprofile 
   TABLE DATA           a   COPY public.users_userprofile (id, phone_number, avatar, user_name_id, accept_email) FROM stdin;
    public          postgres    false    245   �       N           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            O           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            P           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    207            Q           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210            R           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);
          public          postgres    false    211            S           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            T           0    0    blog_appendix_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.blog_appendix_id_seq', 275, true);
          public          postgres    false    215            U           0    0    blog_citation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.blog_citation_id_seq', 53, true);
          public          postgres    false    217            V           0    0    blog_comment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.blog_comment_id_seq', 10, true);
          public          postgres    false    219            W           0    0    blog_index_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_index_id_seq', 1, false);
          public          postgres    false    221            X           0    0    blog_order_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_order_id_seq', 1, false);
          public          postgres    false    223            Y           0    0    blog_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_post_id_seq', 78, true);
          public          postgres    false    225            Z           0    0    blog_relationship_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.blog_relationship_id_seq', 55, true);
          public          postgres    false    227            [           0    0    blog_style_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_style_id_seq', 19, true);
          public          postgres    false    229            \           0    0    blog_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_tag_id_seq', 25, true);
          public          postgres    false    231            ]           0    0    blog_text_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.blog_text_id_seq', 1173, true);
          public          postgres    false    233            ^           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 286, true);
          public          postgres    false    235            _           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    237            `           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 52, true);
          public          postgres    false    239            a           0    0    polls_choice_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.polls_choice_id_seq', 1, false);
          public          postgres    false    242            b           0    0    polls_question_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.polls_question_id_seq', 1, false);
          public          postgres    false    244            c           0    0    users_userprofile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_userprofile_id_seq', 5, true);
          public          postgres    false    246                       2606    16567    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    202            
           2606    16569 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    204    204                       2606    16571 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    204                       2606    16573    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    202                       2606    16575 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    206    206                       2606    16577 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    206                       2606    16579 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209                       2606    16581 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209                       2606    16583    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    208                        2606    16585 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    212            #           2606    16587 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    212    212                       2606    16589     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    208            %           2606    16591     blog_appendix blog_appendix_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_pkey;
       public            postgres    false    214            (           2606    16593 +   blog_appendix blog_appendix_previous_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_previous_id_key UNIQUE (previous_id);
 U   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_previous_id_key;
       public            postgres    false    214            *           2606    16595     blog_citation blog_citation_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_pkey;
       public            postgres    false    216            -           2606    16598 +   blog_citation blog_citation_previous_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_previous_id_key UNIQUE (previous_id);
 U   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_previous_id_key;
       public            postgres    false    216            /           2606    16600    blog_comment blog_comment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_pkey;
       public            postgres    false    218            4           2606    16602    blog_index blog_index_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_index
    ADD CONSTRAINT blog_index_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_index DROP CONSTRAINT blog_index_pkey;
       public            postgres    false    220            7           2606    16604    blog_order blog_order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_order
    ADD CONSTRAINT blog_order_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_order DROP CONSTRAINT blog_order_pkey;
       public            postgres    false    222            ;           2606    16606     blog_post blog_post_abstract_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_abstract_key UNIQUE (abstract);
 J   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_abstract_key;
       public            postgres    false    224            ?           2606    16608    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            postgres    false    224            C           2606    16610    blog_post blog_post_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_slug_key;
       public            postgres    false    224            F           2606    16612    blog_post blog_post_title_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_title_key UNIQUE (title);
 G   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_title_key;
       public            postgres    false    224            H           2606    16614 (   blog_relationship blog_relationship_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_pkey;
       public            postgres    false    226            L           2606    16616    blog_style blog_style_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_style
    ADD CONSTRAINT blog_style_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_style DROP CONSTRAINT blog_style_pkey;
       public            postgres    false    228            N           2606    16618    blog_tag blog_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.blog_tag DROP CONSTRAINT blog_tag_pkey;
       public            postgres    false    230            P           2606    16620    blog_text blog_text_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_pkey;
       public            postgres    false    232            S           2606    16622 #   blog_text blog_text_previous_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_previous_id_key UNIQUE (previous_id);
 M   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_previous_id_key;
       public            postgres    false    232            V           2606    16624 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    234            Y           2606    16626 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    236    236            [           2606    16628 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    236            ]           2606    16630 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    238            `           2606    16632 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    240            c           2606    16634    polls_choice polls_choice_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.polls_choice DROP CONSTRAINT polls_choice_pkey;
       public            postgres    false    241            f           2606    16636 "   polls_question polls_question_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.polls_question DROP CONSTRAINT polls_question_pkey;
       public            postgres    false    243            h           2606    16638 (   users_userprofile users_userprofile_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_pkey;
       public            postgres    false    245            j           2606    16640 4   users_userprofile users_userprofile_user_name_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_user_name_id_key UNIQUE (user_name_id);
 ^   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_user_name_id_key;
       public            postgres    false    245                       1259    16641    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    202                       1259    16642 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    204                       1259    16643 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    204                       1259    16644 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    206                       1259    16645 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209                       1259    16646 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209                       1259    16647 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    212            !           1259    16648 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    212                       1259    16649     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    208            &           1259    16650    blog_appendix_post_id_bb5fe989    INDEX     [   CREATE INDEX blog_appendix_post_id_bb5fe989 ON public.blog_appendix USING btree (post_id);
 2   DROP INDEX public.blog_appendix_post_id_bb5fe989;
       public            postgres    false    214            +           1259    16651    blog_citation_post_id_8afe2920    INDEX     [   CREATE INDEX blog_citation_post_id_8afe2920 ON public.blog_citation USING btree (post_id);
 2   DROP INDEX public.blog_citation_post_id_8afe2920;
       public            postgres    false    216            0           1259    16652    blog_comment_post_id_580e96ef    INDEX     Y   CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);
 1   DROP INDEX public.blog_comment_post_id_580e96ef;
       public            postgres    false    218            1           1259    16653 !   blog_comment_reply_to_id_85855897    INDEX     a   CREATE INDEX blog_comment_reply_to_id_85855897 ON public.blog_comment USING btree (reply_to_id);
 5   DROP INDEX public.blog_comment_reply_to_id_85855897;
       public            postgres    false    218            2           1259    16654    blog_comment_user_id_59a54155    INDEX     Y   CREATE INDEX blog_comment_user_id_59a54155 ON public.blog_comment USING btree (user_id);
 1   DROP INDEX public.blog_comment_user_id_59a54155;
       public            postgres    false    218            5           1259    16655    blog_index_post_id_01a319c1    INDEX     U   CREATE INDEX blog_index_post_id_01a319c1 ON public.blog_index USING btree (post_id);
 /   DROP INDEX public.blog_index_post_id_01a319c1;
       public            postgres    false    220            8           1259    16656    blog_order_post_id_222484a2    INDEX     U   CREATE INDEX blog_order_post_id_222484a2 ON public.blog_order USING btree (post_id);
 /   DROP INDEX public.blog_order_post_id_222484a2;
       public            postgres    false    222            9           1259    16657     blog_post_abstract_8a0f05e7_like    INDEX     n   CREATE INDEX blog_post_abstract_8a0f05e7_like ON public.blog_post USING btree (abstract varchar_pattern_ops);
 4   DROP INDEX public.blog_post_abstract_8a0f05e7_like;
       public            postgres    false    224            <           1259    16658    blog_post_eng_ver_id_c00a59d0    INDEX     Y   CREATE INDEX blog_post_eng_ver_id_c00a59d0 ON public.blog_post USING btree (eng_ver_id);
 1   DROP INDEX public.blog_post_eng_ver_id_c00a59d0;
       public            postgres    false    224            =           1259    16659    blog_post_next_post_id_2b07c80f    INDEX     ]   CREATE INDEX blog_post_next_post_id_2b07c80f ON public.blog_post USING btree (next_post_id);
 3   DROP INDEX public.blog_post_next_post_id_2b07c80f;
       public            postgres    false    224            @           1259    16660 #   blog_post_previous_post_id_fe01c535    INDEX     e   CREATE INDEX blog_post_previous_post_id_fe01c535 ON public.blog_post USING btree (previous_post_id);
 7   DROP INDEX public.blog_post_previous_post_id_fe01c535;
       public            postgres    false    224            A           1259    16661    blog_post_slug_b95473f2_like    INDEX     f   CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_post_slug_b95473f2_like;
       public            postgres    false    224            D           1259    16662    blog_post_title_adf2f203_like    INDEX     h   CREATE INDEX blog_post_title_adf2f203_like ON public.blog_post USING btree (title varchar_pattern_ops);
 1   DROP INDEX public.blog_post_title_adf2f203_like;
       public            postgres    false    224            I           1259    16663 "   blog_relationship_post_id_61d8b27c    INDEX     c   CREATE INDEX blog_relationship_post_id_61d8b27c ON public.blog_relationship USING btree (post_id);
 6   DROP INDEX public.blog_relationship_post_id_61d8b27c;
       public            postgres    false    226            J           1259    16664 !   blog_relationship_tag_id_8b891d96    INDEX     a   CREATE INDEX blog_relationship_tag_id_8b891d96 ON public.blog_relationship USING btree (tag_id);
 5   DROP INDEX public.blog_relationship_tag_id_8b891d96;
       public            postgres    false    226            Q           1259    16665    blog_text_post_id_7f426c9f    INDEX     S   CREATE INDEX blog_text_post_id_7f426c9f ON public.blog_text USING btree (post_id);
 .   DROP INDEX public.blog_text_post_id_7f426c9f;
       public            postgres    false    232            T           1259    16666 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    234            W           1259    16667 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    234            ^           1259    16668 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    240            a           1259    16669 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    240            d           1259    16670 !   polls_choice_question_id_c5b4b260    INDEX     a   CREATE INDEX polls_choice_question_id_c5b4b260 ON public.polls_choice USING btree (question_id);
 5   DROP INDEX public.polls_choice_question_id_c5b4b260;
       public            postgres    false    241            k           2606    16671 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3858    206    204            l           2606    16676 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    204    202    3847            m           2606    16681 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    236    3931    206            n           2606    16686 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    3847    202            o           2606    16691 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    208    3860    209            p           2606    16696 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    206    212    3858            q           2606    16701 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3860    212    208            r           2606    16706 <   blog_appendix blog_appendix_post_id_bb5fe989_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_post_id_bb5fe989_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_post_id_bb5fe989_fk_blog_post_id;
       public          postgres    false    224    3903    214            s           2606    16711 D   blog_appendix blog_appendix_previous_id_a24fcade_fk_blog_appendix_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_previous_id_a24fcade_fk_blog_appendix_id FOREIGN KEY (previous_id) REFERENCES public.blog_appendix(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_previous_id_a24fcade_fk_blog_appendix_id;
       public          postgres    false    3877    214    214            t           2606    16716 <   blog_citation blog_citation_post_id_8afe2920_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_post_id_8afe2920_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_post_id_8afe2920_fk_blog_post_id;
       public          postgres    false    3903    224    216            u           2606    16721 D   blog_citation blog_citation_previous_id_c005cae3_fk_blog_citation_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_previous_id_c005cae3_fk_blog_citation_id FOREIGN KEY (previous_id) REFERENCES public.blog_citation(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_previous_id_c005cae3_fk_blog_citation_id;
       public          postgres    false    3882    216    216            v           2606    16726 :   blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id;
       public          postgres    false    3903    218    224            w           2606    16731 A   blog_comment blog_comment_reply_to_id_85855897_fk_blog_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_reply_to_id_85855897_fk_blog_comment_id FOREIGN KEY (reply_to_id) REFERENCES public.blog_comment(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_reply_to_id_85855897_fk_blog_comment_id;
       public          postgres    false    218    3887    218            x           2606    16736 :   blog_comment blog_comment_user_id_59a54155_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_user_id_59a54155_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_user_id_59a54155_fk_auth_user_id;
       public          postgres    false    3860    208    218            y           2606    16741 6   blog_index blog_index_post_id_01a319c1_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_index
    ADD CONSTRAINT blog_index_post_id_01a319c1_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_index DROP CONSTRAINT blog_index_post_id_01a319c1_fk_blog_post_id;
       public          postgres    false    224    3903    220            z           2606    16746 6   blog_order blog_order_post_id_222484a2_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_order
    ADD CONSTRAINT blog_order_post_id_222484a2_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_order DROP CONSTRAINT blog_order_post_id_222484a2_fk_blog_post_id;
       public          postgres    false    222    224    3903            {           2606    16751 7   blog_post blog_post_eng_ver_id_c00a59d0_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_eng_ver_id_c00a59d0_fk_blog_post_id FOREIGN KEY (eng_ver_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_eng_ver_id_c00a59d0_fk_blog_post_id;
       public          postgres    false    3903    224    224            |           2606    16756 9   blog_post blog_post_next_post_id_2b07c80f_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_next_post_id_2b07c80f_fk_blog_post_id FOREIGN KEY (next_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_next_post_id_2b07c80f_fk_blog_post_id;
       public          postgres    false    3903    224    224            }           2606    16761 =   blog_post blog_post_previous_post_id_fe01c535_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_previous_post_id_fe01c535_fk_blog_post_id FOREIGN KEY (previous_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_previous_post_id_fe01c535_fk_blog_post_id;
       public          postgres    false    224    3903    224            ~           2606    16766 D   blog_relationship blog_relationship_post_id_61d8b27c_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_post_id_61d8b27c_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_post_id_61d8b27c_fk_blog_post_id;
       public          postgres    false    226    224    3903                       2606    16771 B   blog_relationship blog_relationship_tag_id_8b891d96_fk_blog_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_tag_id_8b891d96_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_tag_id_8b891d96_fk_blog_tag_id;
       public          postgres    false    226    3918    230            �           2606    16776 4   blog_text blog_text_post_id_7f426c9f_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_post_id_7f426c9f_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_post_id_7f426c9f_fk_blog_post_id;
       public          postgres    false    232    3903    224            �           2606    16781 8   blog_text blog_text_previous_id_03084c1d_fk_blog_text_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_previous_id_03084c1d_fk_blog_text_id FOREIGN KEY (previous_id) REFERENCES public.blog_text(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_previous_id_03084c1d_fk_blog_text_id;
       public          postgres    false    232    3920    232            �           2606    16786 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3931    236    234            �           2606    16791 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3860    208    234            �           2606    16796 C   polls_choice polls_choice_question_id_c5b4b260_fk_polls_question_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id FOREIGN KEY (question_id) REFERENCES public.polls_question(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.polls_choice DROP CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id;
       public          postgres    false    243    241    3942            �           2606    16801 I   users_userprofile users_userprofile_user_name_id_8cc5a256_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_user_name_id_8cc5a256_fk_auth_user_id FOREIGN KEY (user_name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_user_name_id_8cc5a256_fk_auth_user_id;
       public          postgres    false    208    245    3860                  x������ � �            x������ � �         �  x�]�[��0E��UdE�g��mP��Hl�v���+��3�c�`x�Lp?�������;��0�.�T�ʥ/��=��5�o�+���3n��7�U���?M��05[��p�� ',|�� bZm��s&���W�xN�S���JI5�>����HGȠ�4IRB�9P�d�9.�a]�?dz�J�5\kG����4(xj�e��2�gW�$<�p�~�Oj�\�UFH��,. j6x�qq쏾0�.���5t8*�Ԇ����<�[�i��ѵ�g|���M��s�5on��s��[3�YI�q��ʗ&�'c&�c*��#���i^���3�+O����:T�j�����*^͙�Ǝ[�<vf%��n.m���ٗ&����$&���q'*����]I��}�a����L��D�d��<>dT����a_n���"����W&�M
H��g��P��}8��䭻���;=��D����o�K�|��W��.��$�K|v�O��fp=�w�6y=�$d�0�=~A����#Җn��z��Rp��}��/vW1�{����Q��~B�9����%b$ͷa���\���ɴƲ�&ٚ�jL�|k嘒�w��~�v�|�}cҮ1�Ҥ^�d'�J���N(��ҧ����
ߚ�� Icn3�C��L���Vc�'no(|k�dA�I>3dA��:`���������o      
   �  x�u�Mo�0@�ίȁ[����H��Vm�|��c�D�V$��B*R~}!�n�mg�s��G�
v�A��2A!��AB(*|��[)����?$�6=6��	сt	�	���X��0� �6q��<���܌����F����ҷ��S�>kҙ�NRY)jUM�I=��e�Z�N>XB�%yp��W��
�L��ML�H�I�x��x�ӝu�����Z��7Y܏j"�������KN�*̷���|����ۦ�|���y�͘�!o�%(�#��f�e����=���-�a��@�l=����Ș�����s�@���4�*6|pgx񸞪x���W�Nd��߽�2�Oh���cK'�Ȩ� �aq�(PC��op��q��AvI�]ئe��Sz��bt:�s��X            x������ � �            x������ � �         �  x�}S���0<'_�$�[%n�G( VlQ{܋I�i�W��e��yv�l�ph�y~3��fb%���v�a<=�)�0�)E&D&�]mr|@-������v���\�e�z�ԩ���E$�A~���CN��\K�i�rE�Sp���(��ޔ�?|,!�>:5��y�摔��qd�Yn�}�ѽ�a�zz��a�ͧ�>�����#�4���:�V��Skf�[%]hu]WSE]u���2�v�vԎ�/Q0o��d�>�쵚h�EyL}9582f�W�Do���~���������'�r"/ھ�~��"�n��rH2j����Sh6�:֍�yyY0�I��������҈�(22���f7ʩQ#����ȃ�}���h����"�q���rد�_%&�'1��,��TP��DCd�5��I�K·�w�{�z��/-.SNk��,��B>��4{�s	ì��}�ß��5���7|����f��*�u�����د
`         �  x��V�n�6=�_1�bȴ)ɲ`Q������qv��#1�Ԓ����=�z(�	��|I��c�{襗b8�%��޼73�I���~��[�ŝ�x&�JZ-�k��!�&�Q GL�L? �����0V���Bsc��6p�s8М�T�i��m�����v�$���D�Ew�2���ʫﭰ���m��T���-�Q�h2]�K�>�~�8DQ�^�i��E����F�=xy���V3!�\���y]UJ[��Sd	�,ͅ�j�����
V�1n)��CeE)�E ���o $��%�)��럸��s���@��3δNZ�Ѓ�[���#��}�{}�P���PiLO���E1���ye��
n��PZD�!"≒7\sxĚ�0����
��&�g8�*�Y.P���t@U�q����G�@��~�"��I��4�f�>pB��?�bx�ܳ��c0#9M�*�X,�)��v�����lnS��I���sW��*��"��]��\su[�V�{��J�;��7���d29��%�H<�aC<nGg�K{.�M.4�"�3u͵%���Ư0ϵ�wl�}�9/�VN�2c�(��Z;.�L��L=���N��*ܥx�
�a R�(�œ5���L�}�#���$��A'�	%n1�׽�7�{$D�GΊ�����*Ќ��}G�X�Y�W������c~���<�C�oV������W��|ؽQ�d�g����A/LF!����4<�0����v�G�vL}ɿW\;��浆)"wQ�3�┒��Gd(�V�}�+s�O1�e��'Jb��j�M�Uq]��xj�<�%��dj�a�+�F4�Oqj��Ɖ�.�y�\9|S���q�R8Gy�m���F`��^#������bk���J�[���a4t����q�xuΊ��7EI2�o�㵈v`;h�ݎ =ë��3ȴ&�=������x@3$n�*�Ш���.^c�7\,$/��vϧ����qw7P7UJc�A#t2n�!Xg�� �T�o�����[��gn��*�Be�D��ĽE<2\Ut�:U���#>Pn�S�����?0#nx���O֙=�U���!n8'�}�Cv>1|wY�W#lA.3̗=��-A�����Raئ}�+/&�!��86ȸ�ۙ8��\��??n��u�I��!4��k!�K�%�1t�/I���shbS         f   x��̻�  �����@�#�Q9��Y�	�B���Pib������a)ǖݼ `d�(�bC�$$�N�K�"~b��������cv}H�%���w=9c�['Y            x������ � �            x������ � �            x��[�9���~
Ώ�v��Tއ cV��QhW��r�h��2)��Tf:�Ri�;�}�y�� ��c��N�]%+�d0�E�����nw�?�/�rj��	��-�haG�ey��dY�S;&�������oy��O-Æ���3�,��E�OEҐ�E�3�׼zb�(rr��g��/��7�'�ƿ~�87J5�nq$���4F�G�T���4&Q�"�d�j��=g�$��yE�5y]u���lST���Lr�X��8ik������#o�Yٱ�@ʪXe|W�s�"�
XCN���K)k��AX�3'�$)Yɫ!7d/�&�}���ؕ0�E�d�n��)ae	"��4���ä���h��'7�]j�Զ	�k-��t�ȷ}��ԡ�O,w�?6}ߵ�H���i�z1��ܗfR����&[�o��kI�"o`S��
��sXŞ������Q��^S�,�͟A+��Uh���\�^�u��V�򌫶n����
S���r��~�֣W4X�_1ԫ$��]^�`8�6�[8�'�'?�Ď=��0����
<Y�G�G���Ahr�=�9a�m�h��:r*XN��A28�~%<Yx?%(#NZ�!��x�����z��hK@'9�����յ��
��ݦ�)q����f$�����أH=8��{4
��
����X�<����2};��`@���C�/<ǌB߉]�>/����~o&,�P+��6 �'vl��9�T	�ȳ¹��K�;X�0�̯�F!+4��ERd��OLQ�6�E0f�pu�rU���wƺbmJ���7Z�	L�����A#f8l��p'����Y���.=�[ E'��](Լ1�G����� <�y3�cݿwE
���w�[v���8�&�\)%w���"bY��٦Gq8��yE�7m+��X�'�@�Um6{��HT��~���mZ���������&@��o»���o�~�3���r��f�**coATRo�=��E[��or|��LM:�c�f,E}�);�r�",#RHR��P�&�K�~nW�՗E�,�I�� l����[ɣ���5�V�`�[V=��l�.�a^4b-e�"9X�c�FV�A}&tN���m�&V�� פ�~�T�M+�(8�|wG~8�另|������YЯ��f��Z[-P��8����Xɏ���θ�`�X�jl�q�������َ�dkn@�ve�b�x�i�*Ԩ��\�Zd*�`tS8�{j����4�Uz#mYUC~ہ�U���D+9D�J{�Z�OrՔ�0>*�'��'^y#�8���r�0ں�z�x����@<�D���D|�8^�Z�F�~�<ZG�,L����:���]��V��td��
 �d�0�68_&%ԓȑ�7��d�V�k (��9kpv�c�m��8�'�DΕLwϲ=;�I|k�Z��\ >k��q4�����h#4��'m�";' [������(�#�>ŵo/��=7�=M����N�Ԅ(��[�(K`��׶�Ȳ� �i3;��[�ϙX��V�3-�})�E��6�?�~]��������={[�����oi�~������3����M�J��%�Ϋ����+��W��,�5@�B��+�d���*�5;��@}�V)r���5-�4�w�
ߡ���)�Yv�Em�VY����ֽ�C@��n����[)�"JU����C X?&���f�f�ל���_�D`�T0�A�R�3�wɇK�� |�E:HӁ`.���J���ɻ�_&޴� m�.;�.g������	��d��>�Ϡ7�dBQ}�����k��t{ELFˌ�����~h����c��9�cۡ6lx��DZH̛g3?�)?ݠ.y:�� �@�B���5�AG��Zs0����Q�7)��oRM���/f7�	�� ?�C�ID	\���1�TD��6�Z��V��~=T�tf#	6y>e��ҢH��AV\I�2@bX;ow+u��+w\!�!C��{`6"�2��sL!m����(r�32\خ�D��v�1ŕ���<�WR0$���:�h�?:;��=���ϩ>p"ֹ��C�q�L�TH�p��!I!��{�^�ʦ���i7E�S�w�iJ�3�!H%sM��\NI���<��I;$2C3z���~�I��#�c	iybY˧n�G��K�~�X�y�G�"|7�t#
aGe�A��yVt�հ��[�견5�̢o?�ч��"� ~5&������U�rg�?'�s� $���+�-�s��+��E��m߀}I[K`̱]�t�%�wG¤F�d��Ʌ�췬Q�M	$e}Ny{�q��
�E�0Q��9Iզ��rOk�+�0+gK��V��㲔cq1��(��ңmca�r���}ӏ}׎����L��ަ�H-ٿ({����k�<��9��@~|ێ��l�G��F��_D��xh�'~@�Xwt���s@-V�Q�aH~�at=d�F�a����Y#O����7����QY ]��qSI3z̋}�Ӎ
�_Ik��Q,)���v�������@��Bhy�({�qZxՈ�9/�����i#'c�@�k���e��;ǚ�����ײ^��R����+ҹ�L~����RHy̚2V�)����YA�{c�p-b��]�>0}��;�o��@�8�=�s<�L�0>���w����Q+��PT��+8L� o+�?�����[����L<�������b��\�d�IM��]�d{���3I�[/�qm���e��Z�O�� ��vd�#���ص� xE�%��q�= �Q-K��s�+��I`P��\g@G
I�&����k���O䂹/����I��
�$���с2|IE����
�ڲI�d��6��l�~���^8>rmςl2P ���K6
�gű��c��u�:����ܱ��q�x�'�.�{��]V�@��[�s߫oD�*�g�jM��<��m�<t����1}!	�|*��-}�}�&W���)���aֵ��y+棪B�ݐ��9H:����x.mG%	r鞳Io��QO�>�_j!��o������i,.��qr�bs`�I3���q_�)��2�r�JUj2̭+ N�S6jNzs���u�y#ń��+��yU��2�ӧSc�8)���	�C�E���9�Lre�kB�۵j/����bd��=��v� ��7�AX�֞I����7��Eod�C�n
p�"ǽ^k?y���[����+w����TyW�(*�k��{o<`k��T��W�.�~��0�N�
�])Tw��2P�:,v5�#� ֬��I�����$[|�����8�نF�c�A�)��V&��F}� � �.��C���Q!����a��G�ꊹ~�9���ؙov���;��������+����?���ɐ̢�����_o�f������������44sh���~9)Kx��1��|�$\ON��(!�׿L�FRG���1�Y^(����Ks�"Eה�V~�d���B���N���pv>�̛��s�@Ե���j�	��������{�R�F���O��g�3ˈ��p6qr�S��F��7����
���^����ېL��ǂ�SY9Ze�f\F�������[P�UA�q.��E*�K-�V��[Ũ��o��~x����|.�<�
��a�MvY=��=/�i��\�:������A�|�GY�?=*���.�"��7�EҞ�)"{G2�zR�� ��U�y��t}(�iZ8�_ɪ�i�x��A����<@�T�����G]l��G�S�~W���{�3c+� �I7-�t;��#�;��w~d��E~�n~��w����y3/�U���;��G�o���9�/{�|X я�(�?�����Ӱ"��|ן��zs}��W�\/)�-����~�ȓ�LQFU=��]�5<Pa��j�A�+Y������%2ހ���������ρ��\; *�y�𲩀�s=K+Oc��-�]?�����L����&�q���e%�X� �  �m%5@�
0�ɸ�$��L���ڤ�*�����{�l]@������)���P#T�߷��jZ�VI/ƅ�=Г-�GvZ���
"u���Bx&�%	�F&�����T�Qf>�D�gR�0x����P���� ��JJ훾廖{L���cH��(�oG��c@m֬�̊�pn��u�
f��#e5��vWG�X���$oy��Z,r��n�u���ǱsZN
7�d����-�ҝ�����Q�fB����}i���p�Qw�t-yZb��I�
=y�7�v�*t�a���V��؝�� �9�2������S�Я^:el����<��eC�%$kZ�#id�(�h��a�+W�
����Jl������̻�U_F���st��L�ٰ	��K����k��@�`Yx��	��'6c˲~�p=3�K�8[q��g�j�m�9f�m
N(odp��u��<�0斗��m�UG,t܈�n�A�36��[qj��7�/�AΒ.�6&)*��C�L�����Tc#g��qLf��_�u�ә�I 	7��=Ndi�4��zČ��4e>��R�tg㎖nM�t���Ǧn-�{;�M�n�g�O���V��G��xi:�����^*^L�}n�f^�%ρ�O@�sUB�������/�Ȥ�f���<g;@C�m�G�����q%{q ;+*M�V�.�!�WwԚ�ƨ�Zy��a�$Kj8��@�h�é>�x5����.8�j����7抸�{����.�q�XBt���'$����[���0�\���L</$������1��u�f��� CQ���YB-`3x����}�S�����85;�f]� c�NQ�K?���mY�'�[3��b90���UQ��H5���6��[+o!�$9������+/��D'y��_����:£�<B�#����͙\N)�/��A}��N���l�~���'w����]ͳ�4�����N�B�o�����T�9�Z��嚞�YA��x�a�S����J�i�ԝw�c�W�B[-O:97�%������{u�OG�f�_��!�Iꡢ�q����SweQ�m֓�ˇ��c�$:����%��?��?�4�b��ꓳ���|��,F�oT�����v�^���{�
ȴx>�g o��c�v^FT[�h�LRjmOo�j���.Gղ�����MW��fA�:�"E�e���s�2�;$�ey�����78�d��	��f Ys�Ħ��o���	o �l��q��$�l�3|�H4w!�d3��w��d����Bˤ+��-v��T�q���v��w����_fW������>�Ζ��̮of��׳���g��?-?�|���}x�����^�5 ��֏`��6��J���o4ߛ̬���8g����x���ŋ�lr��         9   x�ʱ  �����Jw�|��(AAGC�P	%���,�;�!��\	�         {   x�M��!CϦ����^��:ց��ҋ��(2����0�	�!0�QH���9�����y�I@�%>gI�D$LZ�S50�;��J��o�w�	Uڍ�W��Eg����ƿ�����$          �   x�]��j�@�Ϛ����b��_o!=����bb5Y��fwmpK߽˶$P�4#�a��-���`B��c���q���)�\S�Q'��I*���e�m�j�^5��X�On�\ѓ�u�8k�\��_������.�s)[���Fu��ڂw��+��;k�6>�!%	��e�7�M0���RE� 5=O��@b�"���uKNw      "      x���z�F�/�7�8�:3TL�xW,�c�v��%^�'��,?�%X$�!@I�G�ۯ��8/���ԯ��ѸP�����=[}����{�|'���9m����9�o��]�y��EiMݟ³u��Q�Q�FqF�Y8��eo�y�L6)�<=���]��:�⳦�fA&},��:Xoݫ�hz�n��rL��:v�xƿ/�k�^gᬅ�8N��x��ް�9/��nv���7�7M)�$�!f��߯�Yƙ�<Y/7�����kw�zC����$�.6X���m�wz�6���Z��di��4\��t��)-��4
����w�Y�����A�:���F��ǎ�y�鈺��t�\��zk����۞s�Y��u��N�d��V l���z�͂�0ug4h�N.�=I6�j��A�oW�z�蓫(;����ѯ!��>�9O��*cw�Ҵ���e�i��\PېV<��¢�Wx�V�e`w�r��1*M�����Q�Ѷc��E�t����	�{�N�n�a��e��: ؄k���~�M��;~˧����x��vu����B�I��~d�����i��t,'��~�	>��ҐYp�����龻���4���W2�bZ�KO~, 5CI���G���)!M�غ�x��a:��*Y_`��=�|H}M�~���z��=Z��w�%�f5� �.�,�dp�i�N����Y���M����ݳ�a�`���Bu�E�¥�E�*:1�(,}�,�>�ˡ�����MaB���t}��g�ݱ|36�4�p1o��4����n�?��,u����tZyF�t#�
�g�g!wي��'����Y�����|�,�8��: �������!fץ�:�A��tJ3V��O1te�93V6�I  2�i �6>S��6�q3��K�@&ݻ���H_�����Zp��=|�av{?2�rG��N=:�_��������~Ԃ�_vwS�)ȕ��E���do�U���Ҁ_��7�`��=�V�8^��Y4%�h�UEd��gB�?���`�'���!�/��t�S>�S�s��*bo]՚܁dY�����;m�D�I��#�'}���o���t�%���"�ci?����ｿ�����T�4�N���u<��X�dd��M�;���9ɒ�y��F�L�H/�F��]�Q�):�k8�����(l�,Y�ul�2��t-�m%]��0
-,�w�\�Q�5�d�栶|�R��E&��Z]�'��"���Ҭ�uKt�{�����L8P��g.'D	ϣ����Fo��{�4�dI�;�SS�TL���;`�+M_D�c����)��YH�)ĽF���n���R`)�Y��c�����<�Unfɔ`����kbB�@_[�0���C�c\:}G���������E�w�@¡��@j�!6��ku&�;�F¼D8�4:�AW;����J����]��3�Eަ��fALhal����K'��tN[��������߲hI��4�,ǟ#j��Ao>l�����6���˾{�mx��>�y�ۏւۃ=b��Qu�^'����O�F�x�~��p�p�놽tU`�".v	|Z��@?���(k�P�j�ϣ3W@��|@�J��D1����8���r��b����MU��i�](M�����	m�4ؤ¿�qp����0���?��,DJ�wM���l���� ���R�zo*��Mx]b-����,(5ח�AK�� ���P�\t!Ql�78��ON�䂤��" x� t%,hW�	^򔶴ljd�j�E$d����#�{ZB�Lw�'��� ��o	odW6	�l�]��}�"�MOB�J�C$�<*��(��|gMLߒN--S��%��8�oߤ��.	I_�Uui�fI�"�=&.���ZX���N2�N��F���!'���>�t0��I[ᷘ�@��k/>c�Ɯ����O�'9��5�&t��-F �mq�B����M/K*>'W�'d糈M�aY0��No�Aq�^PC��O�U��cf��S��Fng��w8�+`�{@�����sx
0c�G�l�7�Ei�2�`r@w�9�$��p�;�2I�sV#4	a�{I�N#8�Y��{-�ϲ�t��iv��A2�y_��	-h��sE����=b�B}�������Y�"(�v��5�A�V-�D"���eBQ���a5\�� �`QKΦ�-�3��l&=�ua�s��LS���JC��4��W�F,�s�:�4�a���{^��wHL^�]�!�C��I��-������{b&���g���쮺�OO��������m>���DXқ�x`��� ^}a�5��7[��t�Dm����s4wo\�}��;~BΈ�QM�'�鏙�-Ø�	���� ��V"oj�x&���v5�_}�d��z�����")���N�y�OM�2��#7^�˳h��6Ht�_g	˱���ǈZIň͐��J	�?�?�`�_�t�`��'�f	�6��]�i���/�!W���UU$��*�c�(��j�V%c.fA�n_&,�Ơ?&b�6������#�N~l$q1���#o�v4��ӾF�,N�Y��/}╻�D'�ݙ���8;�#�)�[Wt%�4?Om��=:3[3�RK�<$�>"\a��0l�-��{Þ���+��)Y�p�Y��綱�_W��7����n�́�(�����P�VhA��}��O�,�B/q&����9ܗ���}�+�ؔ\�g]��]���B0���;t�߀f��Vc�r�bB4 ��*!ҕj�P+ze������k;?�|��H�Z�#��ڈ�L�s�`_D�M�B�#��S�
g���"�kyC�!u�\��g��uf!��ߔx\��y�X6����p����-s"h�8t�����,ض���W�� pL�l�1X75��s�yUg��2
�RiHwDg=N�L�D�5�3#��#�>��Bd����2t���q.�G������0[�7�} �4�k��OO�>�hg:�Ӣ��c�Ʊ��CnXS�vz:�1���{>�mA?"sfq4 ^�ü��v�K4��ܗf��ȜDg�$��m&�Dv��-A�'.���N��+�5�#�u��U�?�w"���v����\�d��>�����Q,)m�_0�im+cC��
h��s9���b�XOV$Ӓ���%��;���e�"�vs�)Y�t���ӳ������d��,��>�Ô��Lt��`���~������b�bͣ�$B]��+�L��5@M�h��A�颛��+�A써��$Y���pM�0�\���d���24'���/� �|]��<b����:@
�d��n�D/B4
\4"��<����oC&��:mŚ��M{m���Bj���>��ӎmCn�W�����%$̴=��<��Ki1]�;j��}���O� �zv��Ǽ�a����ο�|��
���Dh����耯�0c�㹼����O�B#2��L ��Q)=�>%��@4Yu��3Q~5Y��s��⸰T����,dG�0tz�6��O�͡{�w�o�4����3 {���۔�Z1��zM��g'�߶�Ąn���d��L"����6��.�i0��bˠ���g?����	�����5��4tW�k�"Q|B�.,!�
�$�B����f�[�z�C��%n�2������H����J�U����������>��`|NUw�ެ;�8 ��gN��B3�u� ���ݶc�ixVP�t�ш���P1��\Ɯ���p�D��O��~9kc+�������2$����d��%�Nf�.��Q�@�R-6t���y��.�ٟӜ�G�Q:*9FnQM����|�-���$��0@�M����A�{�(ښ��k}t)��{���t��y�ֽ	7k���W�E�QP.�E�:Z
�Q��g��@t<�a�Ӗ��r߇J(+1�f��u@������F�3��i/WU=��7"��%�����8�߄Ƈ� \��������K|	�V')m�<6��n�٭Uڡ)bj60��    ���F%�JJ�X"�r7]�;��k{��PӉ����ޟ��(��3U��5�	H���wO�I�]����`2�gؿI�D
��XCwf,\�C>-�O����Y�wF�o��Ɇ�� �_�UC�C����p'�j�L����������7���r�!lz	����3:!��7/W�S����7��:ЋQHYH���2����<!*�3�p��aPiӸ�^w8r����b��&�r�rE�6Ȟ��i�F���hk�1RhnC�XI�S�Uȹ	����Jk�[�r�(W��WE��h/q.r�exO1?������BW|�#5Jjo���*c���$F & hm�8�l�~@�v���[lν=͙q�9fu=}O�B��)s7,����{.VL�p�Vas�"&2Z��QYxh�m�!��e_('��}4�:��+!�g�d´�O̖4��70�3�$0��a5�b[<w���#�d���0H�ǂ���z�0����R����t�9 7 {�Xf����g�`{������`$�F����ip	�\����)a5�靘r#�dSP��:��wk�ϣaH�'Q���fu��G'*����͍k���2n�v�0 ��%�k�Ζ�i0��=x.�J�:�.\����Z�=�ھux������h���y��Γ�����i�S�K���q�/��<s�V�tvW?N�>�!ыj ̌��čp��2�Y���h+�K��IR�����FR��������5��}��+B�ޣ#��`��ͳk�@ϭƸ�G$7x��`=$lmC}���~L�k�O>��pI���
��p����o.m��{�X��PS�}Ằ��jE2-���o��I�S�=ͽ�w�w�M$w'W������'b�
Bͩ���]F�K �)ό�A��IpYV�ӟ�%�Rk��V���d�,�5#����_+g��=Z��y�`���钘��>�Aߢ�������g��t�È��`�����6���Y�@}$ݹ��r3���٧���O�5�X:0�>MgH��u߭�8�m���`���?=����f�9���c�n�
,s�\�����E�]�_n�M�I�d8����xF(s�j���B���FO�Ȉ���P���`���2�<��B�,��7 Lt������t�#�|U�B#�t�{,��z��*��ޭ7��6I#���.<~�F1�������[��DsK'����������TgV�I�WB������A]"���1��ks�+� �|�c��/�{����K�&�
P�ұ45�}����ﾣ��]$�9l;���o%��9�ˏ � ���8g�՚`�T��"D�W[�tSMA0�30�9`O9����A%eR�䦌��8+�00���D�#dK(��z���_��G�/nH�=rw]t�(�'&��Z-��oqˠ��p�Z�m�eM�˂I���ە�Z[�D<sYO���*n{[aũ�8���f}�v�ho�h�&J<%Q��U0��oH�?��GX�������,K��C:�!5�@�r�VK�>j;/Dg��ջ����v_dMQ�(e�{��q`L���`���I!^��Hh,��fL��Xl�c`�z�0���oH�7�H0��8e�0?c����="D��JU��t?���@�&���<��YA��IGz�q�A���&\���K8y�Z�G��$���O��&�b�蝱-(X(�xg4a��	G}�:�}��cu�8�Qo�㷝'!�^�'�,Z�H��!@?��]�޷Ճ`���l\��}��Kᅶ��M��!� O����@�]8=�#�O���#�p��ʴ[���qO���(1l�@�J��c�"2G����82"��A���i�?��@��#���y�[]�,�-k����e���Wτ'Y%+(�5�"�G��G?�ܨ�D�Z��^��q�����9�0���5K�x0��E ����-0��$b�'�3���i#�L��c�#�JyU��圙�҉? �p��*����	sgZ_�$��ӥ8!\��!zm]E�D���az��{I�i�m�<%��{w%"J
�ğb�_ �)�ƥ�@���>�b�i��t��K�JV&uHG�G :.
��Z���y>�
�[}@�7�!�'�1���Y��g�`	���m�n�p7%L6G������Z��d���.Z)��f�tѲi�h��[�D���?Q>��&߶z��[��bb5V�-ׄhi���
I�Q�:@N���3�e�/_�Hb�f%�D�/7e��lp��L��i2�g�F�.	��z*r��gW��z��|�R��7+9�����ni�x�u�*��쥽�&�4W�Lrp<��_��Yk��'Q
�+������ݷJk�aZ�`F�X�Y`-#�ж<�tԄ6"0둱��Zאȗ�8�C-�[.�8��J��#^M�*�HY�m�}11Ru�a�0
%�	�)P�/�c��D���b9!��!.c�Tg9�촡��:兲��m�c��LH�@G|�9k��\.����U���Y��Rm���% �"k�8��Lb�̟�m�_�̂bE @����&F*:���J,!8k��R!Rݢd=Q��n�������l%`�}!��F`�����(:�c���Xۊt07�)�����~�?V��[
 Z��5MTȓVh�Q���L��+�� ʄ�v��@���{�q:�ai���q>MpbmTgj˃�]�&��f�u�V��Q��l%iF衯_s�Ŀ�
�c݇��90FIYї��_?iI�A'SE25�$�����z�$Uд��a���m}"XEv�d'؏E�H[S8qؠQjq������϶G����	����N��g:l��x9Х �Q��@�T��+�'�\3��S�R��+BC�F[�7����'�m�1�Lr51O�K��ˑ
���1Lx��c/�'����Oc��~�I0x���?9?r��Jƫs��H�İE�֌�Q��1Y�f�;jY���h�VX+'٧=p�ӡ"��T*~��$�D�3ſ%�(�Z'M�?��;���ŋI�	��h2ǂ�A$�ݘ�ʬ�u>2V���izmڡCx�hm�EL�H��9��C1A�
H�/-z=c^/� z��%�e�2�о�%$Z,�'M���l������0 � �V~k�?�����V.��m�ο���i���$����an]��5�;��r���c�"�;�'�-�p+�m��+y&8�C��[i�]�G���d�^��7!y&\z�kli4s'���=_·�����W������h?6z���mV?�$H�zA?���ܼ��#"�������t���k=��S������Q�ú���4�?d~֝T3�Ы{��gȼl;J�x��g~�C���u@��=�ó�_7+�Z{�>fD'}��?�r������-��T|W�P��r�����j�!J�]�����Z<����]�����g�~��y��
�;���^�[���-�Oo�@X��]�ǂ,Id�V�{�ډ���u�^4�F��b$Wu�J�#�Ԭ����f�8o���N ��U &|��CƁr,��.qsm�@���cA��z
ցY"+1"�u���y)��!���u�C��)�����Ou쒽���ZЊO�	��h�f`�-=��^�y�����?S�gJx��K�����E�b���2s�Ab���u�!Q��;��l^ӑ�i%�Lsz"�$0D����>ޯ�+����y".�M+��?��ď߿�rݓ�p�x@|�9|����B%g���\[l�G�7t����qaS�j1r�
����t���6Y�,S�XyH�W��x�YB�eu�[�<���-����$��3F�y%ڛ@��0v��:C��k�"@�1�$����d�w*��>}˞�ǡ���FX�	�����ծ��͡� �Im��|�Z�Ǚrs*m���py{��#�7:y�qE���
�u��(\�R{��~_���Fh�n���kvt;E�R[�4����)�S��X�=,�p�K����^�Dk�&������7��+�i]�4���ԫ�t�O
��    �c-=[��0���j�]�,!��Gg��L��5`{�|�؁l>�<'Y�]yI6Zo�,�G'*���u�}�mi���1A��Y�#� ���r��
'�z��������L %�%!U����#�~EI�l���x��W?�՞���o����Y��9#��x�Z���P9�rO&,���Zh5�"��I.�-4\D�Y{��Xx%o�^U�@��H�]k�b�:����I��>I��,�lX߿LЃ3Ptz�q�Oi���5Yr �1��Z1?�q(:tuv:��Oo��{�:I���׍���vL뙢v3�F���c�$VE�`v)&K;�nѫu�b�>f�"놝0h�!�ʖ���D��B8k/�(d��t�x��C��N�9!&�h�j3���u������=��'FV[�.�]r/h�e�=�� �J'�<+�����I{�>���r&,��ݺ�RC�)Y)�wV�1\�����f��X�F:D:#�؜V�I�˂FB4��qQZ�K�f`��@�9�v��:C���/�_�j���?�l���G�]�S�:%ˀ8��.ӑ	�]�y������{��u�u��p�V<Sq|�ݘ�r]�T-
S�_"�H��"ن���}���:f6:B"����V<~�c�����,�	b+Sl����ac =:t��ɢ&�Oѭ������V�2��<�ҡ�v�>N�b0��"U�Cm%[�T'f�@>�6&:xK�8R�7����SD������:���-�;���P��`�{��z&*�_w$I��U��:���-�C����������� b\-���D�?�q��M����I���~s0l{C�Wq�A6}"ff&fF�Q[��V��Tl�b$�]�� �yM�;�^ۮ�"�ۀ�6����<~�Ww ��5;��/h�&��@ ��$�����jE�����9���јao�4�H�Ή�P�ɰg��F����i#ML��u��*=PE*�S�N��v��/	ݫ�������J_�g���B4�$��!#5iajB;��jBY��7or��F�_N�4&�?�U:��G^1��z��/�����������_)Wy
�m����k�p��};T	��U���u�n���瀚��o��Gj+���o�RJjl��7���~M�%F������ŏ��}q�q�)�K!w�G^�ep��/js��'�S��`�y�l��R�Z�!'�1`L��h�(�5~�V|��tm��3�T>ʻ��>���3>��r�ER"Z��E+Elߑq���'���y>��Ba�'ʣw�XEe�Y������]7�6ߪ�.�+ʩi���g= s2�y���b��Se�L$�=$`��S<~�����H9��W���:+w��$Z��m���ϑˉ���-tf<�:�����.x�b�HL�?#Qc1��y���*"�I��pCˡ��D]��uڡ̸>�8�N�N0*MR�cv}G��Xlng�_C��5�8�q����B=�b���C���.�s�K�8�Ё�@NPX���hv�}�q�X����r��9�n�^�N ��ùQ]�.��*.�Fl�m<m7���m�����(�p�>��� :���3ŧ����������aDE�WݨH��i3��x��p��mx��.��ֽH7�q�#>��P�	W1RXݗ&�r�j?A˗��j}���V���Ex�Rki�$���o�+&�w�N΃}=]g-�I<�?�S�wάڟ��-2oJ��3��8��-�4����d󄚒nW�0axq��B���0��r�xM�ޛ�~l�(����&Y8�� z3Xhu;fs���l��^�s:'���5幦��d��2U��9�9�y=�4�7#v�<ߦ�d8PoL���&��(LDun�GU��r\�_D�S���kH���h�l&���<����5�ο&����o��¿�����������'P�yy�k~w�����42]�vr����z�F�I����Z�r��}���ĿqoKNfO�VD������D_6_q�Qksy�}��-k��%~9�آ�v,_�s����)��G6�B���^��u�;��r�N���wϷ�7��2vvhL��؟�6
`��\�3�Yk��{�������q�b���u͎��'�#]͑׮7����J;����[Lt��N��V���a�~����`+�n��Eh��Ĵ��P�E<�*�Ю�.���kd�hQ�M{u-�=X����:��r��R�J`*λ��N�_]���x���C�\����)�nUu�~����*���yc΄�( �~�<v�[�������O碄��B���1صJ�L�\ �$�va��(6-�������^�/-�f���Tj��a}�=���G�̀��,[�8����s�}��+?y�&�s�1��~5msyo�p��L߲�򒨙u��ъ��:�6�غ���I@7soeKv|~��5�|�Jb-����~+�z��XQ�Ԟ�&lf�����j�TEY��1^��v��.{`uq������aO����f	$��on����^U]��Q�_�kՖ��o�b�TvA���(��w=VUu�:��(��oe�&a�.�}��E7~�p����aF�I]G��;�5��R��J�jM�.�2��p!9�/�W�
�	�3�L����&��Q㋐�
��0�E�C�&9*0����3D:�61p>4{&U͉��1ϔ��!�t����KE���_ęu
դ�v��@��u�G��q�$�"Ik������3�i&`@M�1Չ�8�&���z�	+��^�7�4R�$�9�¡���d�4����1M(�;��V(@�v!4L�!�]�˵ ֣��@u�ҎŊa�ȉ����5ItNc��n�4b�[�f1���dJ��\����;m��?��7l��Vo��h�>��X�xO٣�����L@�/C�4��rR�F�z-*J� ��)!b�M0<g��������|��� ���\tKd�p>�s���	\9ʦ<���(��%\�R��経�F-��峕��A
��D�;l��9�_<�J��3B`��q2����t<Hz��Sf�0������{�5	��12
z!���V5M�kC5�h�U���M�d�h׉�4X��(/)�,y[�6@�`�|C�1="Ĵ���̂ӈ����d��m�}���d[�����2�gu�,��b��7��pf������\���+��'B
�X�i[]�_���)	�$Ώ$-W!�y����9CR۔��}�M���bN:�m��,��lRY�X��Z'�P#�r��,V=�j��o��ܸo�'����;'���*�ins2u�[nJy��$�J�i�r�����!c �Fc"�-ky����s�I`gyZW���'V$Ưo'u^���o��Vw�H��C3:��i����K6ʵ�c�������lñ=i:j���\G�;�un�o*�h1٥�q��ӊpo�R�q �m�[Ƀ�o�V���U����"������y�[�f
t⇞@���DM��o�@wc�2��;���"N��8�;�~Q]��HH��K����G�H~m�PV�0�M	��I�2��:E�o�v4ƃ����=~r��4�s:�9��с�,.X�[�ű��n�;�s9�;�II2��$�C�"��L�����Y����=篩./�ҝ�����i����+b��,�����k�����:�O >d�*p�`��'X�w~wo�q�ӷf�c=��X%�W���������B�ܗ�u$�`���K]�ڶ[k���w�?6�d��+���R�o�&6�i�I��IJ�x>���4��Χ��.�J�31�j�b�թk�F3�
�g$��T���To��b����i Ql��y[���L�d���&���:����Bg����[�8}�	�@m��4��#�E���ܩ]�m2���e��`o��TnZ�P�
����ȁ��`������/,�'��.�!yJ���?+�ql�`�}Z&�ͨ�4p$���j��+\�B7�ЭuXP ��,9���t9a��h    ���G�g�Q˙��+��Y�K����]y�o�#=�Jב��^�.QY�[)Q:h��~:�U����*��m��
�(Λ���;�l�KX�/���O��*x���Nǅes�?��1_3j�\#�:X������rq�a�.(TK4�S��I|�N����Q��l�-������^G�Ҁv�tS<;q��qBd�%��7�O�˵4ټ��`�e���,�U��@�֓��Yѷ|��PR����k�Nj��!ͥV7�tu�<��WY���T��e5Ţ�S�K"���XPZ]rIp�"�Sd%�:��p����~6 ��<�Lo�RcɵV"���#��[wU]�챵0� ��L%��G]����s�k�I���i������u>{��r���8�@idS���!�FE`A)�˷�T���QAR�S�>���j؏�C�v�0�V�G|�i����R�4�k�@iB|��JA�*?6L��5j�J_��d���N�
���R4N�r����hԴ��ɤ�P���\���q������Q��zb�,!��=��?~��TۙЯ�+��Ⱥim'�>��C�����A�f�__45x�����ߺ�fe��bqX�r�mH��Ə*{m_�9-d��=	����|��4�N3���y�x?7�m$�C��� �꛺�bI���2��H��*:(�KR�*31M^H����Q�N�o�2''����Ч�A�y��~l63�7�b��}���%����؏���(�����߾�����\�1H\>���fC��yW�Uot�=�u:w�Sw8y�{U,�*[��w��ڔ;f�dn��@�U �����6^���2�Ρ�ඵE�eRA/^��]mQ��S�X�?�r����z��R��5��%���_�2��555�X�sg�.��'j`��}5��UK���_��@Ґ_A}�v�ܙm��^F�,��¯��{�5�����y+O`>�Vx�;�{��Vxۂ���p��m�0f��p@Ja�un1��ڹø�X����f��V�8.����nۭ���4sQǞ*�4�2����;�9�K@��q�v�qs�������SG3�i�'1zLϓi�
M�X*��$8�՚3��_�pGv�΋�C8+�hvb�7�E�D/Y��4�p(��KQ}�-�zJz���O��w�0dhm�FP �R9w5��3�}u�e\�(�T��6У�����$u`k��vA�������&HI�t;��r�<=9~�� [�"�����!\sRi{E�1�r91p;� �P}������?����;�ѮG��a3�P��g֭Ɔ:Z3ɍ�����_])g�_Ir�<�ބ�I삽&��!oJ�k��C3� �nJf���&I�h.T�9c�Q�8��z;�+<�� M�
���b"�M�ּ�4�F�PG�IC�1�*�%N�*m����Bl5VRc���l�(Y�h���Hq��y�h[�fÒ�Ѳ��>��;,V��dG4Y�통��hI��wަ�f� �Әk�o�k#�q�I^�JY�УG=vn�	�Ƿ)��UzD��ģN�;d�?,
�Z�-J��l�X��F�%�l��R+���F��������q�1:�Іga+Kv�����c�+�z6� �s���Q��g�0Tm��h:��e�� .��_̅�1X�]L�`��F	n�_\��x3�
Ƭg�:���BK�4�Dd��bkql�ù�nk6�5}3K�'����Iu���'E�&�.AE"��z���A��'aDq�w��>-_��nZ7�o�])�/�>��R��U��8&r%�(i��<jx����kd�VZ����� Щj�'QQʬT,�A�u=U�
�E�R�� ���������8�vW�j��!��孾_�kήϘi���w?��U�$� �� �A%��aN�Ʃ����ut�/���ԥ�:���-J����3p�Wd�:�Z�F�w�G�#!�t
��|x�<���hua�/�n<p�g>���h���%h�ܐVb�z3�o�	�y��h���s�.�gw�c���4HU��=X�xT�O�z0f���������
W�{|h:Ԋ����gE�b�ˎ�ڍ�#�c�Ʊ� =�JbTt�F�]�Y0;�1ۈ�J�R��M��*
����4IV2+d\u�&��0x����uzZ� u�.���m�LLy�D���r5kB��>MÌ`�P���A��E�\�H���^��q.��h��oY���[����љ���#��I�i���~^�W�!�۵=�j���Ң���vL�D/W2�2��.H��xqmy8ӌD+�s~T�8�S�� ���vz�a���y�o�&8)GP)Y��B�\|�H �:�{87˪W��s�B�>�FQv IzM&Y[]"i3�j�7aм����_�C5�hg�e�G'I6L�������[�����ի��&��_���U�uW���W���f'mU��U�:TI%��9�H�� y\�J8�����x��r���=�uo�"Q�r����� -�l@���(��B�k
�6�p���p,U�vX�J�M���4��8s���,�b>�vkA%_u�K86E����s�k,�\m��!.�$�q_�a�{*G�K~��9/�(�8�hf�R�	�<$%u`���Fް.(��
�mId�RX��GU��zBʕ��N�7�}զYL�.x�Vza���Be|��
8%�4��ifF5Sj���$����q+�CH"f���.Y�����qh9�e�}�y�Fݧf>Q�F�'rz�}�pT}&F�\�l�JU��@�Ehܕ*:�����������
~I9Bޫ��D��;3C�g|뼸�K`Bfb�d��ܕ�N���<�o�.�*7����U�x{�`QD	^;K�l���zi��I��=�l�gp��31��mAց�g�#�3�o����|�5��ҫ����������c�:e��@i*)G��ToV�U�Β#C#Iۘ�)٢8V6/˭�ɨ���L��^��ʟ�,g�볱��8LS����u8T�9nhã��D2��4%߶b��/��fTH��{*E_tT2�C�#�3�n�(�{��:�iG'45�3�*�8g�@Z�o ���{��!j���J��������2�º۪�Ĭ�e���*��}��%f����L��r����:"�0'�����f��˺�9B���U0w�����hͺk�V$zUҥ���Xn/�<s�(ӓֻ"A,�j�r����`@�Zat�(\@ck|�����:�U������l��n*`2F~��7KU?U�UՉ��Ά�a!j�F�Ek�v��[�y9�+x�����%��k5A:ٌ�j��Nk]�H�t�a��H?�e�2-�`�?�x���PQ�B�;Ēv|�Y������C��/>�f�N��z�7�Az�UB��jl!�"�
�n�Vr8h�O7k-���Kd}!�0uy��y��dui���bvii�2_��k�Z���vm��H (������J��]��@�KT�m.S������\N���&�<~L� 폓pN[#�l�~~|����Eh�KUs���	r2>G��s3O����N��V;D��[f	)↹r����h��юx�N/w3����1���m���[�v����R�}�@���
��'�:�lW���գ�ٝC����*�PX���y^q�����X�B�Hkۧa���
��7����x߸���-�>����^����H���9r,�ܘ<è�&�"aޞ��V��ц5�m�����p}�4��ե�*]=��k���DJ��Zۣ��{��s.B�D�X�o��D�{X賸�0a
���� Ȁ6��� �n��Gŉ�s%n��.�� �b������������'v���t�)��9�K���؄���x����#r��T�׮p���D��Q����n��R�����o��F��y������t�����;'N@ 2��֫h_���� 5|:ر~Nd��"*��@����<Iv��[��WΪ��	:r5����e<�)&ڻ5    j�Kxk%�"���3������fw�@jǙ�|C�;�4�{�-�B�����p��f�j����{u>��E����]��6�f���@��?��U��Ώ�;���M�)v(�v����;�����og��|�����"�-��1���(�՝�/#h���n@��P,�,j�������?��}��[YE+A(j\yC'�6���1K*��5�1�/�r����u�{kKޝ�/z���C&�O��
iy�F��Yw��/|�L��u�~j?6:�R^A���U���u���'V��VQ�D�J��ϊػ��?�B����I�ʹ&�n��d`w��<G������. W"����������~��#���)๞���5g������HL�bEՂ�ýA���t��XI��A]rVl����*��b��f��Σ�T�6*��Re"���{�?cf�֠'�=���n����R�9��vP�p�鬔O2Ϭ/�,�B�k�U�U�nR�T'LB�4X�SS�U�e�g�� ��(��ʙ�Tn�r��&�C��i�]�S"���U�O!� Çվ#�]Qs_�p�9L��8�@1�r�%n9G5E��$�k�W��4E�ӥ.R���\�l
��㌠U�ڂ��T��8�˿��,�CC��2(Ź����=���q���ղ2�^1��tTD�ğ̒�{������Ü��i��9������_�"�����Sd%C�6G�JS��Wץ�)�8��K'|E!!V.��h
�5R����q�k������d͐ ����ed'���y�dc��t�*G(���!=���~2�檕r�>�Q�郔�U��s<o�z��Y��i�w bT�\����0�>�s��\�]E�s�#��2zv�Q���H�pg��J�Y�fŁ)������JK3���5M]"�L�z�S_ESj��S�n��(�GUW;�(�$v�>�O�Mgf�*������"���ڎ��o����IpmM�KWt���D�{�*�	��U�=��=�C ��Kܒe��Y��8%�
�F�a}�(1�L{D{]���5+9U��\�2EW�m��"�4�L�S�C��S) '��y�7�s�$�����I}q�e��M�?������}��5��s�Ԫ��܂:1'�@.lZ�Ty�������n��ʛ��/�]C��5U���]�x�-U���L��'��V�5{�������$�v^M�@�}�c_���l�@����s�ҝI�G]K\2�r�SX�-�"�C�I!jaF��|z
O���3��77
0��7��|pBՈd���J��d���I_���H�����ˎֺ���jsz}�Bו��Zs��ȗ��$�M7�ϨǕƕ�Z��{��8�W�">$)�H�#�ܭ��)k|-hI��8ɨ�>��FW�C哢"T���=q3����(ca+[1ř�R^3k��ɀ��gk��,����+ʍ�*�z�n¡�*w�L5�`+E�Bߩ)�}Sѱ�Y�I�<�:N�kwF��a����xN��DZ�]�f/���>������oNK�Z>�B�3�la����>qg�Z�+۩��1>�p9�VDd��sꃄ�Ƭ�m������ްݩu���_�y�N����A)��-F�`�:P�\��\~K���E��f�i�3����x�պ�ۚ(�mM8$��A��J���"�E�%�kԮ�m�;��.ݬ.��k�SR�3���k�]�*naYI�ڎ�'�G�k[�b�#�,� ��^^`�*�{·�~�5j�+.u*�L}_Sى0�ֵmw6e�I7˒���=T�uTSg�t�A�Ak��(���l�u_h%��Jhn�G�un��n՛V)1 o����^Cqu�Z���v�,��av�r�������m��< w�]5s��Z���A˙ή��*������.��������Q�]���}�@m��.6�����"�::�AU4��R�˞����Sgq �NyKh��",�	N��`�A���;h��[+���F������0�،�lT����ԝ�Pg�)�PP6���"q����C�񇚮*5�	ή�F�]�$O�.uq�;�Y]����$?��]f�ٺ�0��@޴%������I�fA�u�+���x�q�$�����Cf1�$��+T��[A$\�r�°'�a�Ŀ
��8L�J�,P��Qp��r%�PU�Qz-5��|��=�G���L�I*�5�T�\�>��g}�%�K���	N��/#I����I*�4�\TG�ҁj����\�~��U2����7��Xy��
��r<"�a݅R[��3��ֺ��R��z4�(V���MH�_�/U�z�,��VX UhRP����(Y�����#~�*W\5D(ZZ��,R����g�9����(5X���DB���y����}X��A~��+��4&��6���N�,B)����^�O�P�+E)r0Cߑ�,#�"P[��ösw4)!�=�u��23v��C��g�C��>�p�����P}�;�Q�D!8��	�F�5k=�2$aة@��JF�H��� |b�y��W]��e<9O�0�ў�z~x�,l�#	���$��Um�o �6{����Fv��/}G�s8`�r��K4��dX�z7���j~K�0j۹��*�qKڐ��#�+!��(�UNN� �.���s������{���ᙬ�~�]��1I�cS���8F5Q7oj���3l�0���I�BV��[u
��$k
�T����m��C���?�:1w��2(�{�_�E�5�������{�C7��'�8�bb纁q<-���EGS�~䵛D�X�S����q����؄T����R�&M��Y_#��ĩ
�\��k4UC쫣4�^s�sPh�^�B���!
��{�j�e��o���MT�I5��n(�(mJ�ЍTF9�گ/&����/�?�Yn�K�5�&ii��z'"uڟWs���'1�Z�'^��'��o��.)�	�%r:���6H YX��W���p�l�"1�`���4�E���?R����#�8�^%��k�5l�9g?���[��-��e�q��|̊>s'2���/�6�)�j�}�� ��UQT���B���v�΅��/�x��:x�,,D�r-����Ct�U��N
�-���T���ݨ�ެMz���}Wؙ��l�����WlA1��A���8B�	�j�����gԇ��Z�b1]�-����LH`��A���sQ{���:��/�p-�v���lg�Mܶ�N�E�Rw�f�oW��X 3۱5G�Y���ږ;�~N��"g�G�c�*������=e���9+�T3�0�5jR�����	c��b�Mw���G:z��Z� ~wD"Ĩ�	��Ӝ��rU�>�3`�P�	��]]����dMݿ$/$dI���u�z����n�Z��>?����*�nU�Iw\(�5����{���5�I�L/�g�R<ڒ�F$r�zpz����GR�\�6�<��jO��h��X����b\&�&ϓ�A8���n�&������RX���J=SKBC�������5��G�Y��������mZΓI&r�Į*Z#�He?�9�*�$����\�V�sQ�"��hx�n�,��e��m�=Ⓗڹ��,���9��P�%���8ּ��l�n�`�����Qvt^���ƣ��*��'g���LR�Zq�/�fr�[�"Q{��$q����y�
�[10{��܆�yD��$�\���'_��<���)�xz���6���C���q}�":���
f�G�价17w�㖾(z{�J�K��Ŷ�{�۲�����ho��Ľ%$ap�RE��qF~w���ZY k��8��3����S֎�s�yX� �|�~��/.H|u�F��W��`���������r�=u�=����c�=�� f�� (oM�����G]N���Du��?���&M�OF]de�8e=Eʉp���\��R'n�E�f�*���A��3-e��ݛ��i��C�IW	�s�cr�F�&i��Ȫc���N=�WIr[w�Y5L�ẴD5�r	�/�T�c�'�9�y�J��8Ogm��Ng    ��7��+���x�`�6dgN���?}��w�OZ5:bٳ�AF�ɧ��������$��`���X�]��"Y�K}�j���
��|EWF� �xb�D5�:/or�~�l��vN���;�u�����f`׆&�NĜ���D���g��n�����Z��y0�PU�n�\�����5���y]Z���f!WH�d�D�_gv��"����Dڪ��ro#�d��W���X3x��#�4Y�]��Rj�����y��\G�P��s'�T���7���0�\�(��'I�zl�̔�Yv\[�ٸ��/�nOGB[bep!wT�m�2��6�ɒ�|����_=k�R+m/�8�$�/�n�뻫d��{�	[A���r�C]zI�V�ܑ��/$�|��(���D:��	Z6��b�:1.ռH&�\tG�n��W32s`_�x�$~d�ډp3�iUK��<u6�N�#`�뚜����x$̜�4��g��t^;�-k��p�Xi�*��"�
h8H�#��^5ݿN�4�3�2��e�ʇ����;�L�k������as����vD�;#�hvN|�	&D4AU�j�y����V�vf3����Ux����ՠē�b]s3+��UFU��������i�:i$Sl��Zlףq{���oU��).ӝ�X����+����y�1���J�cBp�����: c me�ϟ[��=�К,�G@��Ȟ�l��E�12G[��3�3�Ӱ���gݾs����0)s�`����aM�Jly��h,]�Ma��a��B�V�Ʈ����n�M�@���{�
<��,����"<�s�Zjm��z�ZE�T�-�hְ����i<q��7׹n�29'g'�� �T��?�V`��Oڃߥ* ߈	�������b���sf����c4����1R�摞���|cQ�џ��nw#�:��l6m�#<BKw��O����Uf��ѽ��%e�:õ���U-i�y:�ֿ�cL�7t�$0�ҭ`x���Ut��[S��j�1C	1�厩m�������V0�,נ�*�V�D�/�ײ۷ ��8��ɾ2�ٓ�Hr5f�"L�g|��XA���%�绻���rW>|�`��f��݇7�V�<֬C�j5Ԩ�?*� �U�V� l�Xs_�3�9�����I_~uZ L�V)�F|�����~���{'3��*�
�:��ݛa�V��Pٶ�_�&�Ua��T���#���$�&�M��-��*���lSni������޽�r��2}��p��~u��$O����D lhj�Z�-cT��	���?��DJ6:�N+Ha���4�~�eZ��p#]\��u�擊|Ia���X��P/R�Zz�������;�[T4ƗcE	]O9=8��l����QɃ�&V7��~��뀓j�]��u�8c}kfq�e�cy���=�����q(b�%\lV�E������<��:���\�S��1��!�7UOڙ/JE��uϊ����ga�~���ûU�Pji��{��^O
�)��IQ� �H6�v���[tUX�QU�b���v���J��o)�R1�2ѝ�T�u�v�m��5�H�<�/����,Y2�YUk~Vβm!&Ս* T#��Ύ����3�m�Ȁ 4DT�*������p��봑m���A�磙����CւFV�+���vw�+3p��Q��߸���$�\��j�8����Y�N�j���Q|��|��L�P�M{����:S�����%�Z�hjӡs��5BgLq3�9=�"��*I�OG*��o��L��B�d;rj�' v�~5W����o���T�x�&M˔�^C�@�O�c�j5��K�Sv�T"���,
Y��X��Rq*#x<Ӳxl��I���n�pG�\��&E]CԮ�o�9V)���=;eu�ɶ���?e���8���L��b������!� ��ڲ�*�W���u�l�Z4O�M�T���U[�X���An�}�}�g��ZX��n�:�6:�o�qM�?N������q6g�<EM;��Q���C����yvJ'��8�"͑w��C�E��+;�h�K��Щ�s{��(�GޠY��Wy�x�J�o�lF���4V�4�^�,ܙa�a9
L�k��&l-1n��e-ؒ"q�A�}ظ��ǧ�MS�N�y*�u����&l'
���w8���Nu��F�4X1��J?�f�Y��%&��m)0�y��j��S�瞓�Eb>ߤ�8�{��=<rW�Ĉ�8��gh�ÿ}>`�N����776���k�Z2k/�i)�`�ƶs�Y���,�2e�q
�IERm�T�gAT=��H�M6�6h�NK�^����К��f��(���㾈�uK��"��m��U�h&]����)ؕ�,W��5�k���i.]�1�UJ�}�rJ';I��1˂�z�MUl��nc��D��r_��r��S&�`4Uq�����q�Kn��*��	)�#�8s���ظ�o9��u������	�������r�*�����:�iAA�o��	~�rB!&6�����U�X�"n	�B�V~�޳�\!�=�q��\�3��"hJf�Z������V�\�:!{�^[]u�L�����Λ�:g�و�#�]��O}Х�O�2��"�z��'�B˥�}{~C���M���.�6y����n�m�FK����+�Yp�Z#��F����W7<���,f*"\�g�\���&j���55��#��E��a��k+XW7�+_efV%�dse�ǻ���pmf��V ���Q�}{A����ط���!O��@U�X���C_���ê���5����[gA{�4�3�u��9�r��24&z�qr6(	�|���#ID�]�T.��f�W�⑆�0+\[Ł%?�:��.K0y�<Z8S��߱a�/ixd6���>I��y���/��(z�2��}8ly}���l�_�_H���������Er%e�Ų�.b( ,w���Q��������b��w��������h��Nj����3[����qsS4��!WRcK�(~�){3��3�2�E:c%�̐f2ƈW�&ݰ���o����4���>�|�M��߯K�����@�$�LG�Y�+�����̸<>|E��=!!{�aI'�1�}�������(��>���{���o����)}���Z�Dy����ް�v꛹��jAI��(�P�E������pB�:	�E ���I����m$�kYW]��8�)z�2��y2T��~A��s�E����&�N����-rl�/���|���r�{5?2�R4�>ѻ�O�c'.E�ݶ.�>��.�;u��g.ҿN��όY774Ŧߤ��$K�f�Z����+Y	ҝU�����P���=�`�w�c��1����*\W8�,��� 0Ɗ��A��ʺ��Z�Up&L�Ja��NF�V�%Z�қX�EЭ��C�Xy������')�&�z}Zo���ʑ�ߡH�1#��㾂��OP�}D��3�����$�{�r�)Ȍh��Rd�9qk�����p*��`�d�=��U���VrD�P�=dW`�CU
����C�c�Ap.����%��~��2���L��t3G��nk"��8C���yY�Ҭ�<.6Nx7�ae��*��}�򝕇Z�c ����5s��t�h�N�*Rzs|[��TJA�ՃM��fR(�9F��\��+�:���:�JH��_�/�	��
 �1���z�;*b'�P�b;:IO�"�}���C���W�u�*������jv����o��=�#m��1�ҿE�U8+|����1�O�Mu�j�Kh�|C��ʤ���म�9�.1����g�*=|��*���(���i+��w��a� [��^���ͅ�!�^�Z��`]�����O�ޠ��$.�pw��m���C��1_�g�K!�J|�c��J�N�x�¿����-6�v�8�R��:�߿��T탔�	��	���>���ɏ'V�S������PM}k
��~�9]H�V��D�&����q^�x������%�XB����M�ccJ(IU��v��J�y�3!���Ì��/� �1��A�XUATgB    ��.ղ���$HU�5�V��ة�Ƣx��pZ)IT=�����s��ԫ� �#W�C�iW0��x.:w]���Qx=�X�k7�j���S��q�c�xA���x�"�f0��l*?���~e����Og����h�ʾ�".����$=�;)A�4zSFU<P�TFT�gN��K�t4��U�h[k�}����$J�P�fZw	"f�2݋nN;�cwa�_�����~'G�Ժ�X��Htx0�lL�1��(/�fZDb�����m�"�mJ���|^���X�OO2ɫOh��';��by���#!\�9r���W�_��88��D�B���؀�ڳ�s8�n(F,�y�L�R��r�l+a$Pmh�K)��Iڠ���F��ѐ�`*��aJ�d���	P�f�f�|�5��9+-����!"���ԭ��ڭ�����~{o��r~�����v�H��IR�I�wpR~��N�&��{��R��T�Y�/�i8)7Ty�J��*�^�hQ�m�����⁣��pٽ��@��b$t/�IVD`��7�|�VZ7M�u���E�L��2��Xu����JB�6[�`�9w-_q��Q�hm�	�4|�pk�z$�#U�+�"���LɈ���ՑܝV`�60�d��$�cyv 䛔�(�����C�D�S�3��;a-����}���t!�Fx�95�:+0�8��`��Α�a��}.���`�b7>���}~��X��W5�#��=�������0�$��oX��� ��zX�F��i#����v�w����tZ��L:��?��]f������5�?l.��e��[��d��V��&C��0�5o��*���^W�;Bx	�7.Yc/sn#f��c&�>~kir��l�!�����A1��I%��ߣ�D���R�v�dl/
9���>�H#fwfB���;���"�/a�<S\c��q�]b�:]�h�Sŉ�_C6�i��Y_�%�('��J%o�}5W0G[I��y�Vl����q�L@����_���[��F���W/�Z�s�����UvQye�|H֬Ө�1X{�M���P�80���.CQ�٪@��U	��E�oء7�����r��ذ���C�����H���:M>`����:��2J����	Po��vGQ:[���d,U��Ƃ��J�Q��Z`$��%���fu�-��BG��m	&C�	�ʔ�|�f=��G��Wt諡�M4���z��ų7��?��|#��JO��E܇"l<*>���_�O�[z�G��C����i6#�����u�I�~���@�+��0ǩtF]= mvx����c��Ḱ��������w�(��W.�W@ͦԶ�5�z���h���4�D�8mΘf0>RB�{�f��k�z����e�N�M�]��ϋ�3:?�GQ\~��o��EXy|���j��)��QF����5"����w�w��n�L\Rӏ+�2A!ÙR�(=�n�~V����
�Y��3L��b����w�~B�h��)Q���H���,�Ѝ�/�<p��ǯ~<~y2~���ɳ����B�"������O+x�տ��ץC�LU�n�j}�����]��ei5T_��6�O�� JY����W�^�a6"��{鵖[�JQ�e��ӟ�Oz���`xBs�az�}l����͇O�aED�t�޿�]��M�W��1���<���}���>�?*�2a$ƪ0My�_H�4ߛ��+T��݆���S�q����To��D�g�!�#�OO5ۡ�QO��W6j�6�u��޴�ީ�*"�}���j1H�T��X�XT6�����֣W2�����{�z��מ���Vz��·�(����^텣�J���_۸�g����ݸ:?�F��o�'��g<ت���K|� ��1�zh�����7|�Ư�L��n����}�h�"����R����������̔P�������o�c�(�F�y��sת�X��g�$S��l��olb��!W	S3��@^�H�y�OH��'MwI�0ħڌ�����da�j	��`����*4�J�/ej�Oԣ�p�Rg�������I�v� �*�?.7��Wȳ�/�?M�O�2�?!۲,}���ϻn��T�[�/u{ <��h��mj�y�NHHj��Ѵ��z��$p�ƾn�[���na�Q�@��W5�~�[���I�/&;_����Juө<��M�$��o'ٯ��'�ѐ}9�=�w�~~X~^9�?��N7��������hdef�v�Ǖ���n�a��-� #���/ P����}�BW?�ޞ�]�o�$� �9�/�`�h�
*���/1��	>�^��=C��{��R�Z�N>t_�^t���WFУ��J�R��߃�tTA� ��"�D����k.sߨ����k��~G������t~�k�n\G|*0*���y$����q�[��%��� ��_�y���x|�!."�1���}�NbP7+Д�ߧ��q�ߐe���%C���!)�����5�b�c0�hηo#��{�[�Y��ʇ���~{15�&�ש���ʿ�`�$Y�_p�=r�mh��|����ˏǷC}��xw�ӵ���;t�i�������1k�0�y�[�_a���Q2y��y���H�4[o��t��[�lF,z��Ǵe��=o[�j�޲R���f��������[�/��݇��c4�D-�~��~М
�V�����4��O���?��w�35;�n;6���֣ash	Ϫ2Z�3�a�Fzb'DV�52^�ԩ���(�š��:��b�,�����;�u_ٌ�S{�v�Y�����MU8+����R�	�ck��h��<���YD���[x���A\����ƐPd4�d�?�Ҹ?\�#���c~+���]kwG���Ŭ�oBw���8�d��I�����8�%��멾�� �e�͢��H�������S�o� �Lr���ٽ�t#��PF(ÏO0[9���j{��|�e����.#���CK�J<�αQ���(ԑQL)���p���揵xNǟ�}��;G=7;K��9��P����=d����|��*l̋�ۭ����|P,e�F�"�V�8>�6ݧ�O���'��|��b���4�����/��ݬ�]g'w�:���c�.�څ�H+K���_0����.�x!��E�G�+��J��C!�X|jw7�?���l������YqD;I�A-�����v�	�9>��'|��xO��F�P���YS���&D�nFҥ��
�L/�n��
-_%o�Λ�,��'�h�ss]�a�~��bJr�,N�E���_���>W���Ny/���q�fcy�һ���xG7B�?��]p�ʰ`�u�0+�K��y�u�1ڭ����M�.	�s��ϊ�a���P1������_�P���GO��&x���5ݬl��F���yp|�h�C�ݷ(.���~g��p4��B�l���+Sw�7N^5��cZ�;Eü8߱g�s���^G&/��M�z��Z{��3��/�88�dY�NM������F?yz�8��A�OfeFC���(:�R���@1u3���M����x�����s�nt����6�tz�����L|9Z���e�Ƀ��?=�1y�$�Ӻw�A��:�p��7\<�y����E��ˡ��)��p�Y�2J�Y=&�3à����\�i��=��W��Pnݽs�{%�8�8�����9��.���D��fz�}�[�)���� `����y����y�漓����g���4��L�r��]�F�h���g�o����ߧ��>M�rƕ'(a#�{���[���]�5w���	4�4��v]Ы����w�G��ĳ��z��]�Qܿ/����GT&Y�����c�*����0�eJBf�|���CB<8���۫��lyӑ%�ov�,)[!~���qo�'�Ա�W	7�yG�$-�Ț��"B�=�k����<�F���=�7l9�G����U[�Q|Y,e�j����E�=I�5l�[}Q�۬?�&��{g4DD�dJ�fx���Եp[j��g����x�}�>XQ���z�qEeK3��:    ��쩸C�����U��@P���
�ZfJK4�͠��U����&0V�����j�U�h��<������>�������}V9��j���0��N��n�J����{*��z?�7YWUwnB��Zo`u��+j˿����D�Ϲ�a�,�)�T��)�1�͛�	6z�_�B���K%=݋P�@DJOX��b.�pLK�`5�Y<%s�]"oc�����]i�b���qY~��������3�/�%+���@������� M�7��=~>x�aI��~��As��B�zf�.��ҽ0_�>#ِY�����"�����嚺�������2+����;�)J\�a���Sוk��KO,;�]��&}��n�Gb[<����9*���Kρ����E{ �4�>�3��g@�9�"![�Ǯ��޷�x�eo�|�8_*T��ĵ�;DJ3��8c~r��zϼ9�m{4_,yM�F2�8� wQ�|�&fF����g���>1�Eusg��*`� g>�t*��Ek�G����!嫔I-s��H^^���7��s���	�hhW����A�O`�b����z���{�}��1��0.W,��h�yye��Qc�p���,���?t���5�ofƶ�����l�Yfa���}z7~��`���'���U�!���8��V��R�0�wt��Y����`�9*�*�g�\�J�	I� ����Yz�	�D�8p;����)�_h7p�&ה��o�?��2c�yk���o���_&�W��:�`}�i+���&��!����iG�Ң0�����'-@C3�w�+������ �	\I:׌�z���ֿ���%��#���r̂A�xD����_m����eߩ��IO'� ���~V��k���A%g�� H�qjv���3j�Mθ�<[q�sIW?�4<���Ht����R����Xj3�l���?3ՙu���	�ZIA,�7	�Yd������hF���oy1��|�!�K��l�B�^L�����sU���ɔs�<��no`��*��i*ժ��F�7S�g�v�;�1��f��B����Eݩ��l%kj�N<�&�rm��ZU�0#�Ծ��4?^�����Z�@��]_J�>��@����3�HM	S�Z��j��u���?U���B�m4��MM�q���g!/��7N��^�j�y�l�5>j}< ��*��D���8D�Z�2�?�1N�BAK,H3�����8�Е����6�&��l�M��RɩL'�H�1~ b�?�,�U�/�1ޚ@�k1V���7oS�����z�HcĆ��K�ҭ��Oԉ�X�[�j�pH�<�sKr����''�10�Sb�g���t�)8���n@J\F�U�Ӣ"-��x>	L��D��Y�17���q�G̩��[$��K��l>LqC$��E���nsb��� *�v�x]��膅o�G"���[s����I��iz8�Kɇ�(2�P��5#,�����T�C-����KT�-+�l��n�ߑu��xi/ݲ@9ׯ6;����f&�i�aR#bB��'�l6˟�`���8#�^�h���g���uĉG�*bv�V[&Y��kfx{N�lϋ�a�Q�E_��2�߮�4=y�E����%kC�ubMFެW�1����ml��_���\#���7��HJ`�$�1Փ�x���s�]��W�(��m�J�?��F��������]�Zu�\�@[4�.����WF�έn+,<�iO���N*ę<�/
-تR�z��tJ7*��܎U�9�s�Դ+ըR��p�	�1�De��d�3,�Nn�UˢR���x�@� ��p[*D�q<��5,ö�	'Y�g
Yi�NY�t:�9q��u�N��h�*s��V��T���6��-|��9t��	l�����NB�}��I�|���'���:�]:�%�����btA[L Ӆh���5��3���ݪަo7<��Έ5�q�zb��村h�I�10�G&{�m:[�fN��2�u�ՂJ��<�1x�d�.?=���t���~�T�c��e�2+��b��A��tIj�6��g�J:��%*d�Yq�9�RG���|p�+�+;�/�0��i9���{D>�]4z�	}�G{�s8�ǳE&b' �;���e	�_y�Ø���f��7m�Q� yI�r�B���	q-RSt�e��=�SӃ�-�b��yJ��@�y��Z���'�t�0Q_Z�"d� ��j�q�U���UE��4/.d��"ٗ�f�.'V���e,jzƂ͖����{�=���̬���c�Jv����nX��Lص
�$C�]�2�' �3������gl�w��UV����(s
��D��^&:�cx��u�/^>x)R�Gtͣ�E�O��|&\�c�}�ϟ�Tw�>3���A\`.��x�V�d���L�=�Pϰ��ᆾJ�2��ˣ�iĕ�|^�Kԃ\��$�,ȼ�"9(_�|�_�Gg����*�n%�ӯD 'UZ	t,ċ�$��[<JP.�˔T�1�ԙǮ3���?V�c��/�QV滜�=|l�n��Js�D�y �kIQ���F�I�U�JT�r?�@O�l�\�&x1�\a�&"W�D��g�`-J�\��iQ<�N��X������X�n(V�1Z�c�L:����"�6����7��78Ϧ���ơ����V�s.�4���hQ�D#䜬�7���fbw�;O
[�4%�4�1I�v6;4M�z�]��<Z3آ��\�#����s͸lΘ�.E�0C��&��xz�K��1��ŗq�����RɆ<�61v��lq����Ng:��R1������������tG?�Y�u�^jtԄ�&᧘�K��I�lc���|������lI���D�U-9������I���DK���?�bXNӡ���8SUH�ȴ\���qT^�vֳ��R�(��������W��ܢ%�zP���{6Z��w���%.�K(���%|����g|3!��}z$p��̒e%,��Lǵ}���I���G�ێ�'S�j��Fd���>�Ҵ�a�D#�q咦�v��LV�aB�_b����q{2��t�KpB���:n׹7�Z��=Q9�=��i
�P%�A�W�O�4�y����,�"[�WA��X�H���
G��k�d��~�
�P���Ui���^�گ�׽�#��E�j.�P�Uz��]��G'�o�Hr�l�Eo�_~Yė��d@g�?��S����H8}8-F���/�o��M9h��Z�Wx�O�| ,Nsg��oo�xq�7|q[�&R4u
/d�lUP��1$#�i��=���-XҐB\e�c�T�l�D�`)�����&3u��C�S��	v�]j�V��م�����"Z�n�pzb��Q�Zi�5i�Z���W�̧��ЖB3�U��G��SO�>��T�3�)���T�8�6�^��g��E�ٮ��'���C{�Zo[Kݢ���>��ƈ�6k�R��Qj��}�ٷ[��� NheL���I�O�<�A�=Cz��g�]�����,����"L�ߧ��I��
�3p+�G;Fm�E�w� �_B}~_\�;�J?T�JE�H}1����_H:v:����	۝��C9SLKk��&�M��LHWf����;M��lCEIO��=.W����<�.Ys�Yw�a#����R��H��	b��4@��	�X��U$�"8_�JW�56U�5^y��f��I�[P5[�w��F����U/�*5��K)�Z�j��5���;[�Cc�j�i�Ym�@e3-���Nc�CC�#����Y8�����?_:7����F�6�'{G�s�IO^7I�w���W�59!����S8�^�OL��0���lb/����u�'ab[�2ʟl�t��O�[50���z?۴�vv�)�/&T5]���TE��w"�%̍bA���Ա���f�1�`V3[0�\00k!�@`[ �-Xji�$@`+P�6��Uq��ު(�� ��	���we�q����� ��.�m!���N����7��痞�z��x��A6\�f@P6��F���czՙcE��"1}6`(ߠ��q�P�*X�,���� 	��� 5.V���ٌ�M�v����|�hӁ�z�T^�+w��w����q�7��    +����/V��?�|��!�������	�9�0.,��7��^O���7�Dr�p�$������K���KD��/��S��t���8���۬�P�a"%�_�y�k@-�'j��T��C�~��A��h2H:��x�8Kn F!���b����av;˱�{∴w��N@k�i����9u[H��W���*�洫�O��o��Q�ҽd0���,����is���c+���*��7�e/�(���-������� ����"�8CL����/�ܣ:�R���4�
¤�����u�u49�/gp�ZH�
��e\U:���1e�E̡Sc8�Ŗ��e4��&�c���~��t9������8�'A��vAU�j������Ώ�8�W�E�*�[ǃ��1�$A=�O��ɾ_,��3�b��"+��g���.<�p�&=��C�ǤO�e�ioQ�`R��	B�d���2�K����`��w��P:���j��"[T%� e�T�Vx #I�i�q涺���RݐJ�u)�m{���cd�|�ʇL()��\�"`�+#\a�٘�N����
��s��+"8BY�4+�U��4�8^a��i�jfi�UX�p�� �������!�6s滲"��[+��-��栽W�\v�7�.��n糢Jt�Wt=�k=u��[���`<�n��9(�CԪ�(�A|_� b4�ڍ�
��ᡗ�rTƈ�`����T��z����ڠ�Z� c����NN�� ��b�̉zP}L��S�v<:��Ǔ y��d]��G�-��S� �x��M�r��+1����b*�����F	���
�Q����Q9 ��ګLB  ���t���sD�]~�P=�-�.�-��K�֬����D��Y���*M������Cbh8�am��3����O��'y�l�b�>�+���$����$�m}��>�[��O�gP[��O��8[��Or��I��$o}���I��$o}��>�z۷>�~�w듼v��>�[��O��'y듼�I��$o}�3c��$o}�3>�p;�KI^��!��囟�y�kp�?婌�,[+��͂�Q���~�!c0���1jx�qn�<g�h~�༌�5����ٱ��w�Ή�=�Lv��ן{S{�5�Wfv�|��X,xu��8F�r��N�h5j뼳�*
�����
NS�^,g��L�8Σ�)��ؗR!\/�SN���T�m��ؓJ�	�&�2�WH��2ib�h	@;�.=���95�_N|��_߿���$J{��i������b(�o��Ϋzy�o�UNϩ�"FTg�j��|Nk�qZ���H�k�)Չ1>�Lmyi�8��@���I��M%�I����ӏ�G5/�9b1�~�^��J�/�Sz�i|kv��r��ջA�}�_�W�r�n����nԀ��4�G��kg
:��2���k"�:�mz.�kl��C�=�!	��d��&܌g$n?�x��[�,Zi��:q�xHO���"x�)P����Yn���$Z5k�`��k���>"�MS]H�<�d`�:C��~��gr:V�3�Y���|�>�L�s������r�LQMpy'�>d�4�G8N�w^t^7HO�fA��S��+��#p�w�����1g�!���Q]t
qV�b�[�m��F��B�:���4��H�<r��I�]����_�O�f���upZ� �p�a�{��;|��u�R��b'��b:�����~}��DT�J��M��eޏ��z�B�T�2!A�%�|�����w�����c�����B�wv]Z��O0���&���{@DN<Mog ��7�Z�iF	��1N��25]Z�LШr0��Y�S7Sf#��#�!����.�F�� 	�W{,J��g��h�35�w�����~���ulm��~o�A~���h�1�������ȳ.�Ύ�i!C��+�|��L���HKꂱOOǽa��@�Z-1��-أU��G�qj�p���K�-�#������SY�u�}N���\ I��A�R�v���B��y��d'�!/YRc���(,)�>��w���2���\l�ё���m!���RO��)�$x"�	�)Se�+���ޱI�p,���xJ[�|��<?��k���ȿn!�Ez�G���VH0���S�q�sG��L�zp�N����Ճ���5�#�/��J�x����Ȑ��:*�z��ޙ��5L�p����j%�5���Wk��=��Z;�@�(�E����Si=��S��OQ�xY���iFR)�:�hL��)޷0?��;._�&�PCZ����y�S^���F�$�3Ir}l�U}�R$��=���*g������_����ǇC�B�O�҈��.�C��|��i��e�^9�CV��w8U��������o>�zDϣ�3��?�)e�Q�8�jg^�C�n 4�yg���.ߠ*`�6X�x�U�#����x:��j�Lu�o�L��ϕ'Aq�4�{��Fݪ�}��,[L���t�F������1U��)^t�̅R:�&�N�sb}���kL}Y�|�I�P�\�f����7ܓ<\�|�)�J������w�;�����K�~�U��*5��1t�L��-�N3��zR׸�Q��T��zs�25�Q�.�ݯ��H|�1l&��`����m�Z6~-5���aK5��cˍcK-�6�m˶�eK-͟?�m/�'�m�~��!j��m,ֆ�~�X�������+�_m�tC�)�*b�����D�����<Y��R��ϼ���1Q�ާ�_T�J�jF�$�x��(����m�F���q�LkY��U+�[;r>������!�̓���d��he�����m��_?�
[�Z��>��q��ʫ�c�YM����� ���;�r|�ۆ��e��p��D8�
 a/��5�YX������S��	1�<�AkVٟ/6m�.U�W����&~����x���rU4�e:�M����m9J����v|����0��VFHP��y�����'{O=Qn��X~)&ñ�G-<���q�p��n��ųm±�Y[�E��֬\_bb�B�W���vwM��w5��%$a%���k[����Y���U(�F,��G���$>����%��u<�n���T}EK�X� �l�V��������	ڱ�(�vA��8�6�	�le��z��.
߳f{u�S>h�N��9{�j�/�}�f�'vk��[��U�,T���u������oմG�|�=3�K��t��D���٫>�{|%x`�ڳ���Ǖ�w1�I !1�BYX.���0��L�c��N�f��;�v`󅃯:Y���y�s�ʇ�8޳ړ����Ĺ(�ѫ�	WIP�8�6�S�M3x�ǘ#��������_�2��@K̫V��"E�o���!-� �^����e4���)�0��u���z��"(C�(H�Cg&�ћB��m�щ]Ή�'��b:?g�H�	&�f�@�� �/�vu�����.��QA,
Bݹ�N����čyI�mT�f��Ķ��N���Y��U3��.iǴ���gz��)�'	v�BH[�T��c�ϧSb�z����%1�����Ϝ�#
!
½A&|ng�A�o/1�1$E�����}���"A&�DP��a�D� ���x��|�%� +2�F��wH���?���$N�_���N���W���{�6��-z�v%+�je69Q����a��k6�K�et5�B]�"�g�GHXw�H�H�%0KL�ONa�����4��M�m\��ZA�ð��M�ᕡ�</W�gU�u�j�dL�]�x�[�f�Z�6P�����Ƒr�֌�FD7�v�.N&��$�_�x�zt�/z�"�V�2Tve�Rƃ�,��B;�'id�C����t���C/���2��a��[vd�; ֚�9JiԮ�a2�9VF�{Z��8�*�iq���R��5�"}����UW�f����'qt���r�W�-/ ϒ&�+��dVX��$��jvTGz6�I��F��q�l���Mz���Z]�����Z��e8�)�~%��E�jZO1�M=GDW1,    ���Z�-��r?�#G_ 4h�f�h>���� C�����^g�����Uܛ,�gWE�b��A���!<읩� w^�I�p��9�
P���y��gEݾ��3�'f�����7�Kc���ū���p�٫}�Ƚ��WMcHOv1��i)�� ڬ�+�i4�_U_g���4,����r8L#3��g%u�{�0@����Idy�������z�r��J��e��'z�z�h��'��n�ʽz�!�w��:�{W�٩�Y�auzG2��d��7�	$�����G���y�r)��3�Mr��l�ؙ�Of�"J�ɖdK�g�9�����mқ��jl�
��ׯ���~{����W���O�O�3�rܺ9C\7ߵ`� �kZ�݃@6\�����uY]Og��'&�7��_WГ_b%��M�8�)UF$��Aӎ������J�S�CX5�8V�v�1�w�{�&�����"�ọ\�F�G���-�,�>�{ΜJ�9z���}Ub#:Z��M�W�ҧ�i2����&\��#�HI7�PAF?��z�n��O����L	0�
=��	���p8UP!��G��lF�E1[SO��J���x��u����*��ӹ��gF��I�t��,��ⶣ���tG���5Q�T�4Bm�H��G�Q��e����*��F�	�-P����\�����>a3g�?�2��_�:������X��N-g?���rf�MI)/���V<O��_n.(��X��z�b�D���ӄa5�N�\���D]��Hû~V?�fĊ ����e��s�r>��e��`�qqh���AA�I�V��n�c�P_4�@���DI�lui�����ԫ�d�VK4��feS�:����0i�%��Z��Z�64��N���$+Ar:�`%�B(���m��b��*�?Ġ,���(������1<�qt|��ON������C��C��4o�Ӌ�xz��쁊�SM7`�2���ٴ�H卪��9�o��a�d�k�B��	�ն2�@ש���r�#����1�{:?�;Gn5g��*�5�o�Q�l|e�mj�N� F\ S����L�i ��at���eN�[�EtFTKM_	GBX#�@�i /#v�Li<�ZY�"xM���"6�ºA5���Tx�I=�oҦ�FA��N��~�X�,
�˱��;� Ki�.��ֈ>z�t"���޶y<�lP_i����v��/�1��ʌ&E�z<���o��=��D��ASts���W\��)<�P!^|�yT�&IF��8��Qp;t��vZ�GI�D��q���"�!2��k�tM"`ec$�Rb+���u���R#�0����c4åp��!L�/�藎I�}�E����Z�DFʏ��������F�\(�"y��8�1rRn�~�I�%?}��Nl��p�qEpRl��Kweq�F�^���sj�$7@�1�.�R�^8��4G��!�!<���Ju�J��B.L��:���� !^���D��*;NC3Ќ4�;�Y��ZZp�>6�t����`7�o��Ƃ۳:��2�v0�~�宝C�2 ��h�+�D��
�>�\�����K/��X�Pk re��%�z�_��������5B��_�ǚ0�_��W�ܯ��A�|&X ��	�;2�ˌ�?t;�)��������v�FO�a		眍1,�4��Vg�l�L$g�əדgڅ�e	.�8���?�C� M���+��������uQ.,��3�[l5��CL0|}hVP�K��%��^`*�-��"	zX�x��9�D��ዌ�H�Nf�[��zGPt�Z��_:�"�zX��ގ�+�e�ȜV0�l��-f��e�I�7�?Fp��ǳ�����]��������p:�ҵ�~ۑҠ�����_���5�?�5��ܻA��f�����������2ē���ytFG)�z���z^��B�_���,���^���GÝd5�b���y/��{QL1�H��lzY��^�F�㐐�*WB�5�|�#�bf����R)�aЋ����}�Zi��}g�K�a�e����ip���˧�Mi��6��c�� ���m��u܃�O)���t�o��Z�5z]yY6����:���j������&��7��eV~��D�d�f��yh<��8q���{E�E�VA�h.���B%����H��� �s�J!��!��=z�u�I`p.�&�n{�A�>$	�w�bi�r7uk1̵�^$�5�����H��kƿ��˭�79-�cq��1�o2.j5c��D�zHC67	E����_�Oh��EJ�_ٹ!��z70��⥀����`AU�{;>4��}��&.b���Q�{��ꪗte�_�Q5��lc�3,i�'��PD	!؄u�)��mE�?����z$�(o)Ϫ�+�x�W�b�*�dh�ƃ?Z�Q�a�a_Se>����J<�E�DFeO_�Dj���᜵��SB9��J���+��7��.�� ύI��Kq ]�.�uuw�uA�b@��o��g������ɓ
��拢<(Tg���Hm���G���/`"�MH��(S��n�Yf°��|�R���=�°���ʽ{:�̚��Y~�S���ֲ��A~;�L�bMȝC�to*�@��U����#��9],f����L�xv�D���/��IE���||��������F���)��N2~'�o%��D���>�D�ıϧ�Jd.��[#�����"�@RS��/Dbc-
�}+�ՄOI�V�֥�gVFJ��tI�����EN�&��8��k��F�	��8ja�9���и�_���$��d��H,#�>�+\GlI���Z��`l�J��ϐ,�F�mN~���e�nT�`Wk*W���rz,so�>�B^�u>���0J\��U<&6��e�js�pX��"Լ��Q�f֠f�D�Z;�>H{��(R��?�u��uV(�t]��fsc����J$���`Yّ-���ߵّx�0���\�m�4�N`lM��V���T��lE���X[ϋ��}������x�tI���֑O�V�����;�2-�<l��UNq����1�L��X��D�)��K���#�wig�nS:����W��$�������XGѳ;0-�Ӛ4KH�v8��L�ψ�hg��D(�ȹ�bT
�Ш�U�a�t�I��1gd�V9��F��mV�=��4�A�4���_��=΄Q�M++���o�<4�\��S`ͻ��nj"��(ҩD����Ԗ�<�STF���J6�,Tp��ʄT����B$
��Ȧi�@D\V����w��_m\	l�ц��;+��5zZ��+9`�s�8�vC&%S��.^���R�Zs]�^�[x�''7M��?��Qf�`�W�q.N��V$��G6��JFk9��~�q�m���x�6���!q����3��28^3��&0g�bJ��ǸN$��6��o���l��H�sK��o6kH���Z��Hv�v���N������� ���:����|tɱ�e����Z;~���G�s�l�-{?�}=�8��_��f��vr�qIPy���g�<v� �f��t���p����*�R,W�:��2��u�G��4�~�~�pl�B2��@dG�F�z���ld�H&�5���E'��
3��f�M��^<7u*,�h��U-<C:�R�&0�[�ΧӅL�#X�*G��P2r�4k��'I bK�˘ g1q�Za��a��&�!��8C�W'�+j�p~Z5P��S_<=�!i�Ai �#Y��2�Z0A8?��#�+Nݟ��;��h�h�l��C+M����"G,���� �$l5p� H��@!a�/�$�8;�O�C�9Q8Q{�;m�כ+	��q�V�	D"M먯6"�x�o��g�7)��W�f��Va#����]#�xj�/��1��D��'�Mӓ�X@_9�qD띂����$��NI4K�{�<%
 �bk�s�>��\T{	�=9H1�<�G��n>��y��5��#�����,|Ҝ�8��@�:�����5{"}����9���j03�t� �  1�:�]�gEJ"54Z�XZg�� /� ?>hV=A���V�ྀ_<�;A�n�L�X�4����LE��O�P+�i|{���m�~�&���H_�t�����'49�ɹ�6'=KR��36{��S�ޑ%����G�7�1X+�U��ҁJ� �]-�h(���z���Ql@C�h,jӪ��
��t��q�S�G�.���������8�F�Ζ��Wє?�S/��<͉��m��_��7�"fx�"��EB�ѳ�w�J]r%�f��*�嬸��G_�֚�:������|s���3F�[ƈӱ��"�c5(�Rp<t�}���a�ղ�x~(�^?�g��uv<�)���Y]�wvv���a��^	��L��3�8������4�I4�Ti��]%I�B�"2f���B��_k��@V�-�-��̧�=���R}�'��|l-|�vr��j���%���������;CΙ���=�l�(���H,[���?�6�r�9��A�1/=x��V�`��]���/�_�%��=�����3C�>�>����3��8��sq	VJG��ҡ�J�ȱ�J�h������d{�l�T�\E/� ��|�����UV�E�H�W�B�ί>Jr�g�"��L�yɘ !kk��E;{�JY�ꙹo,;�H>�o�]1b&� �"�=p���rݎ���T|�ۮ��i����ol.�r�,�Ns��ٲ��}f��G��1ƫJJfǼCYSYM��{��T��rT����DR�EJ�稤*����� ZfU���j�ul!�����s5�s��Qkt_���
��2I�SR���xL���&���嬕�P�8&��-���(u_�l��Bt<�l�y,�5��	:�V��ȶnء�n���!����=� &,�q�2���eL����W�#DcShrΡ�*Zp�p'��vc+��S��h����ԍ	�wB�ٖ�[a�v4 �7��@7��'d�u5��Z�3+%���t�θ�p9�JF�Ύ'���)�^.�Q!� ���QK񨞙]s����]�nP�
bDu��g�?��(1�8�xJM�T�Z��[~��*�OlP���g�`z��e4πm�kPX�a��gXr���
�ʦŐ��>o�����;�P��V�&�Z�'A�:���)���K�+k�nZ�����ڟd.f;��[�Tnݺ��V�h�      $      x��\�r9v��<E�o��X]����fgSq��l�'5I�s�&[b�T��nZ�n�U�$ϑ�<I�$� h6lX�Tr���#K�� �� 8 ]0��17�T,����C5�+BtQ}Z���ӛj���o�ş���_~�K��--�����&�7mu_�7o���n���7o�7�O�Z�z�)-��X�w��޿95����$Jve;�,���+���~[�-�IKr��R�Rim��)^��ǏGBj�����i���ت�Z�*(_R�d��Jc|����9#0��k�tC�v��ЖN�-��
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
�\KI�n|�[�sp:�k��%D<e�;�/���ڽ�5x8a�À�-�su�k/O�n�c�A����T�$i��"mB�n�SJ|��+4!ϛ�������婾�3���\͵֗��t[����I���_��Z�a!F٫'_:唐�I�V_�U3Ě�!̅*~<%l�!�{�oĤ���@LV溥հ����P��e�uf���r	i����؈�Tb�±�����2�U��n��KMH]�&N@Vv���������2l�      &   �   x�M�Mn�0F��0U���K7��I��"%��2R7��O �")i��I�%���(��C�'�!�@��
�gC�:�ꖸ���n�R�{�$[��ZH�<�Ҟ�O�=��[��9�wx��m%5@tP[����hi��q �x])��"� ^]v2Mm���l�'���X
����};�N�{Z�� � 8g'      (   �  x����r�8�������)���ǳl��JB-�l���X�O��qRI�����A��}����Ο6BYTM5Te��vn+)�&W.kQ���x�My޿�@�`1T�<�����ʄ��@Q�o�h�U���~������� ���+�ˊr?TmS���[�o�=���-�^��f�_�7ES�:J	�(�I�AQփ�����t
-���X~�o����QE�&N��?����o)��Qj�(4����N�������挺<A��';�v�P��0)E����U�䍺A�M�4�jO3��Q�ա������틣?�ʷ�WB�����pvU�odVR)+#��-4z
��8�����Po}{�� ���	#�s�����ϯ�#�C4�l��,a>�k�?;���J���V�>$�I�r\*�<}�C'�����g�v�T�
���",�!�~�0�	�.��`e���P}��G՞��͡8��z���7][�O���&j�9��ߗI2&�M0�35�o�hg����a�V5�~�a�u������rM�& G�I1W^B4o�����}H�J���3"g�c	W;^�b�7Lמ�T	b+\��3�V۸ ��Х�/Je�Z�\�j��}�ܗ��4|�1���"����7�����a�	m�̕�,��ɖ��	R���q1�m�v�ڒΕ�8��>1�n��=6)v��B� �P� -(
��j/��j�s��:�w;a �@&ԓƒ�W��U�n�\���d�Z���A���;�f?\Q��Rn�ds�3Ja�Jq��������r�(0s���X8�]������s%2g@����O���eT����	���Ή2�A��+�E֎��:=_���Ả{���{��&$9�ٱ|_����k���A��-ӠHĄ X<���)��t�y������8^Sp~��da��6l�����Q�fB�E?D���#���w��ZA-zBq ���u4���:�|���Wo��I��1�84߇���Zf�=�`s�A�	���Q������;���E�i����E��/���_"G�[� A$���#6����s��?�_�U����!ey?�!@FBW��o��<a���S�~��(�ES�O�����:ޱ<,�Z�qؿ����� :�A      *   �  x���ٮ�H��뮧��G���� ̌�AGB��y��îSU��_ i�.�>"#�H�(HS���4z����ڤeE)@i�񯱵j��T��N���cDB�p��BlD�i�J^*+�r�E�}>�wo㕥F}#���7�j�|��E	����樬�T^���4�Җ^�*A�
��4>�d)T�@�v>(�t͙�>��:V��\��9�x隟�^5�Kr�"LN�~uU9�A��~�J�,H�����NT:V��7s2���B �F��D���X`�? ��{�Sǹ�1@<�n�`�K�j����+����.f�kN{�8�Q�V~�da���J0��z�Sm~����/#���T�T�tL O�62��N�S�h|��$N8/Cf���,��+�$؋rU<�7C��E�]�� ��39&��p�y�)�P�4��m���H�@�ܘ	��md���Y��L�,F]�����J#{��b!<�b���u.w}��z^o�Kcv�H	ޒ�]��#8Aq"�cN`�������P��2��P�����kL��s���9�������(��������4ݶ�N+ڹ�":mܲ��?��0� p���(�q��8M`;a�P�	-֧B�����Md�|��ϋ|�R�_���8�	0b,_�QX��!�TĻ��!�"�EL#��Oˎu
�N��VbX}� r$�f�L���=�G�ԝ΋�Hɤ9,�.�7!h�����[����nq�~N$t,� po�
s����*m�6f~h�fGQa��g�N�b����p�ݪ�¥2|�{�/���
�ҧ[W���iG��XD��PG��6J��3��k�0O���A��;0�J�ڑRq��J힓���j�/��UEӥs���{�!�)��4&|�#:�5<���=�feEq̀�C;�3TU\��Nʠ��4��}�Mԣ���t�J�Ѩjc;]<�3;��~�s�k��u�w�l�BW?����^��95Au��+�l9hY��p)ǻ /�:�nC�k^]�[-ߛ��<me?�6���530���F*��P�c��k�����F.oq�rP�$�O�+���{�z��ѣ?^��4^�YZ���������~?��V��>������>�,�<��ۖ�������ε��2��B�� �W�&�6�|y���e�4���0v���B��O�Hx-"���0�1a�
o�&��BܙN�j^�w4�R\�q�xz[|!�f)f�C���Ŝ��z�L�򥴗��5���n��k�';p��O^$`�f���4�_�T��M3P'f��]�Ӱj�*����oōz��m|�=�	�ʧ�)b�%�ɋ]�X�Y�E�>h���Ϩ�z���,��@�O�8%�A�ᱰ���|Z�Ž�����m�͵>��i�<Y��Uj˿��^�9.����ϰr�3��a�q��C��m *Y�`��f�G@�=3�B,|��t/�c��3�[��Ъ�#?O:��EF�r��:)Ӯ᫖?|� R<#��8(���cҲ+z-��^���@;����b��vӍ��g�Ǌ洳�mu���W~6<��Яpa���`?|Ȱqpc�}�Q�.�0�K���E��x$X(!���ܒe.���3eEzUϵ��tt�:1%��������k�/u-싟>�=�8� ��U#ϩoƩum\��W�F�5�j�}6�4破���ެ7:̬�ƄS�[���?{�g쓟>LxL!��'B7�I�֏h�e���5�54�QS��B��Qܪ�Qߒfd�(�JOjo���r���e�84PѼ�3��#��9��i +�Gy,�G���UA��kR�}��ڋ��*��=_W�|(+!�:匶J��kV��t��n\����y�>�\	5�����e��2���6H�����v���|h�D�ROv'2�9I;��jͺk��N%��L������>H��?�Ű|�|i�#A�4�e��tf��$߆ZS�/���ʂ��vm܏��2�uV,��B�3r�So<���8��>���!D�g��0\�y`e0�"����w���F���X�ժ��07��B���j���۟��E�}B;Km���O��?Ā���>-z�9���u���p��	����h�,��W���Cp�>��M��R��Y��j2�ʉ��G�+�!���6I� � 7r��JC�������.���I�K�P���)퓣z��F��F�Sw��>;�7���sc�8@�O�6�s=������l�' �ڮ��h�/�!��0�ò7/�ݐ}���R;�@�:����>w��G��Ӈ���p���z�����6��ʐᥤAzV���_�/��x��`v�T����+�%��6oK�}�B�֌M{ԪI~���:���?|��6.��3}�~�5~��"n3+�H�>,i/���<��5��/3��M�T�Ŵ&�J+i֓���!S,�~��۰q2��Z[3���F+�'��~��ŭ�"����zza��^��GhNN�=,��R���jj��}]N~�P"2~w�پBP���
�*3b-���촧f2D�Y|�����=^��=�Ե�����M��{��Qo��hm��J;�ȿ}�(��7f����|��ߙ0j�i^�u��?B!�H���_ŝ<������b����<y��R*��K��k?�f���1mG;�!d�I���~�*����#�iIdCv����xcq���/����Yn}c�>��G� ������������v5�������7�Y�0�;�n2��U����)w����G�}v֚���^���?��sMD�'Vx��C��:�H�{Fcj�mp^:(!���Ik"��
� ��y��3�J*���Бn�����ҡzg������!U���v�ߨE��@��Dᛈs)\03�ET�n�)��o[y��$�8O�d[M�Ǥ7�K5ہ�)��2��t���ډ+X��[9�ÞEj�_�4��_�if
^�T�����O"��" |ZA\\3�e�֖>Ӭ!RTi���S4m�_��Ulߔ %�m_��J��b�l�ev��Z\$#����3V�3��=5Y����'R}�	�秇�5Z*��	�sl�d?;��[JJ}����^�3pX�׫��:��o.�$�[�ݚP��Ʉ{��|�S��F�i'�;�J�ǝ�.��CJ9�����:U_���i9l��c��~�N_��"<���F��ٕ[5]
&`�I���{V��+��p���\��>	m�����t�u�*?އ��썠>"����_C�N`����D-��i\�x�G-6�� �iB��Q�p]E-Df�����Yy�#���8�.��.�@��w�j)�\"@��> }�3A9L�1�Y�R��� E}aB��6gz��;�%���^����{)�	�(N��*e�J���V� ˓��}:68��� ���c
�D��!WZV	+�(*֛�g��2����+_LO���G��śSk��Tg�Y�&���hf�ιE��z#&��~k���0y?L��g���B��|���P�|��y�k8O8�K�_|.�s���n��r�}ׄB~���l6��}S����?���Ns�S�����v�4�A�q��UD���i���W�w�X]&�hqV-�BJ⅕�aT�0N2k��w0�en����F�=�1|�#@!���:��!�w��&3���i\��s 38A�R�0�s�	���ܫt�VO/Z_����.m�4�m�X��y'H��Lx�V��H���D��>
�xf�ڸsy����7��S�ڄ���L'��T��*f�{|�X�S��y+�"���D�6��!BBR���B�p��C��a�,��#�U݌������b��U��������{ƯG2;8ɴ��6��<u�L-F��6�4�G��_M����M(���-)s;1�wC����zIu��-�q��F�qb6��e��<3�Y�0'T���9���&˦������:b#0�y�5��A���;��?��Ě�      +      x������ � �      -      x������ � �      /      x�3����4�,�2���=... 8L     