PGDMP     9                    {            NEW1    12.12    12.6 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26663    NEW1    DATABASE     d   CREATE DATABASE "NEW1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "NEW1";
                postgres    false            �            1259    26664 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    26667    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    202            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    203            �            1259    26669    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    26672    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    204            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    205            �            1259    26674    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    26677    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    206            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    207            �            1259    26679 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    26685    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    26688    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210            �            1259    26690    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    211            �            1259    26692    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    26695 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    213            �            1259    26697    blog_appendix    TABLE     �   CREATE TABLE public.blog_appendix (
    id bigint NOT NULL,
    text character varying(200) NOT NULL,
    "indentLevel" integer NOT NULL,
    link character varying(200) NOT NULL,
    post_id bigint NOT NULL,
    previous_id bigint
);
 !   DROP TABLE public.blog_appendix;
       public         heap    postgres    false            �            1259    26700    blog_appendix_id_seq    SEQUENCE     }   CREATE SEQUENCE public.blog_appendix_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_appendix_id_seq;
       public          postgres    false    214            �           0    0    blog_appendix_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.blog_appendix_id_seq OWNED BY public.blog_appendix.id;
          public          postgres    false    215            �            1259    26702    blog_citation    TABLE     �   CREATE TABLE public.blog_citation (
    id bigint NOT NULL,
    text character varying(1000) NOT NULL,
    post_id bigint NOT NULL,
    previous_id bigint
);
 !   DROP TABLE public.blog_citation;
       public         heap    postgres    false            �            1259    26708    blog_citation_id_seq    SEQUENCE     }   CREATE SEQUENCE public.blog_citation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_citation_id_seq;
       public          postgres    false    216            �           0    0    blog_citation_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.blog_citation_id_seq OWNED BY public.blog_citation.id;
          public          postgres    false    217            �            1259    26710    blog_comment    TABLE     w  CREATE TABLE public.blog_comment (
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
       public         heap    postgres    false            �            1259    26716    blog_comment_id_seq    SEQUENCE     |   CREATE SEQUENCE public.blog_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.blog_comment_id_seq;
       public          postgres    false    218            �           0    0    blog_comment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;
          public          postgres    false    219            �            1259    26718 
   blog_index    TABLE     �   CREATE TABLE public.blog_index (
    id bigint NOT NULL,
    "position" integer NOT NULL,
    type integer NOT NULL,
    id_type integer NOT NULL,
    style_id integer NOT NULL,
    post_id bigint NOT NULL
);
    DROP TABLE public.blog_index;
       public         heap    postgres    false            �            1259    26721    blog_index_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_index_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_index_id_seq;
       public          postgres    false    220            �           0    0    blog_index_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_index_id_seq OWNED BY public.blog_index.id;
          public          postgres    false    221            �            1259    26723 
   blog_order    TABLE     �   CREATE TABLE public.blog_order (
    id bigint NOT NULL,
    kind integer NOT NULL,
    kind_id integer NOT NULL,
    order_id integer NOT NULL,
    post_id bigint NOT NULL
);
    DROP TABLE public.blog_order;
       public         heap    postgres    false            �            1259    26726    blog_order_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_order_id_seq;
       public          postgres    false    222            �           0    0    blog_order_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_order_id_seq OWNED BY public.blog_order.id;
          public          postgres    false    223            �            1259    26728 	   blog_post    TABLE     �  CREATE TABLE public.blog_post (
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
       public         heap    postgres    false            �            1259    26734    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          postgres    false    224            �           0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          postgres    false    225            �            1259    26736    blog_relationship    TABLE     {   CREATE TABLE public.blog_relationship (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 %   DROP TABLE public.blog_relationship;
       public         heap    postgres    false            �            1259    26739    blog_relationship_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_relationship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_relationship_id_seq;
       public          postgres    false    226            �           0    0    blog_relationship_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_relationship_id_seq OWNED BY public.blog_relationship.id;
          public          postgres    false    227            �            1259    26741 
   blog_style    TABLE     �   CREATE TABLE public.blog_style (
    id bigint NOT NULL,
    name integer NOT NULL,
    "indentLevel" integer NOT NULL,
    "fontSize" integer NOT NULL,
    decor integer NOT NULL,
    "fontWeight" integer NOT NULL
);
    DROP TABLE public.blog_style;
       public         heap    postgres    false            �            1259    26744    blog_style_id_seq    SEQUENCE     z   CREATE SEQUENCE public.blog_style_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.blog_style_id_seq;
       public          postgres    false    228            �           0    0    blog_style_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.blog_style_id_seq OWNED BY public.blog_style.id;
          public          postgres    false    229            �            1259    26746    blog_tag    TABLE     d   CREATE TABLE public.blog_tag (
    id bigint NOT NULL,
    title character varying(200) NOT NULL
);
    DROP TABLE public.blog_tag;
       public         heap    postgres    false            �            1259    26749    blog_tag_id_seq    SEQUENCE     x   CREATE SEQUENCE public.blog_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.blog_tag_id_seq;
       public          postgres    false    230            �           0    0    blog_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;
          public          postgres    false    231            �            1259    26751 	   blog_text    TABLE     '  CREATE TABLE public.blog_text (
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
       public         heap    postgres    false            �            1259    26757    blog_text_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_text_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_text_id_seq;
       public          postgres    false    232            �           0    0    blog_text_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_text_id_seq OWNED BY public.blog_text.id;
          public          postgres    false    233            �            1259    26759    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    26766    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    234            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    235            �            1259    26768    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    26771    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    236            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    237            �            1259    26773    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    26779    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    238            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    239            �            1259    26781    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    26787    polls_choice    TABLE     �   CREATE TABLE public.polls_choice (
    id bigint NOT NULL,
    choice_text character varying(200) NOT NULL,
    votes integer NOT NULL,
    question_id bigint NOT NULL
);
     DROP TABLE public.polls_choice;
       public         heap    postgres    false            �            1259    26790    polls_choice_id_seq    SEQUENCE     |   CREATE SEQUENCE public.polls_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.polls_choice_id_seq;
       public          postgres    false    241            �           0    0    polls_choice_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.polls_choice_id_seq OWNED BY public.polls_choice.id;
          public          postgres    false    242            �            1259    26792    polls_question    TABLE     �   CREATE TABLE public.polls_question (
    id bigint NOT NULL,
    question_text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.polls_question;
       public         heap    postgres    false            �            1259    26795    polls_question_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.polls_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.polls_question_id_seq;
       public          postgres    false    243            �           0    0    polls_question_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.polls_question_id_seq OWNED BY public.polls_question.id;
          public          postgres    false    244            �            1259    26797    users_userprofile    TABLE     �   CREATE TABLE public.users_userprofile (
    id bigint NOT NULL,
    phone_number character varying(100),
    avatar character varying(100) NOT NULL,
    user_name_id integer NOT NULL,
    accept_email boolean NOT NULL
);
 %   DROP TABLE public.users_userprofile;
       public         heap    postgres    false            �            1259    26800    users_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_userprofile_id_seq;
       public          postgres    false    245            �           0    0    users_userprofile_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_userprofile_id_seq OWNED BY public.users_userprofile.id;
          public          postgres    false    246            F           2604    27089    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            G           2604    27090    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            H           2604    27091    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            I           2604    27092    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    208            J           2604    27093    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            K           2604    27094    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            L           2604    27095    blog_appendix id    DEFAULT     t   ALTER TABLE ONLY public.blog_appendix ALTER COLUMN id SET DEFAULT nextval('public.blog_appendix_id_seq'::regclass);
 ?   ALTER TABLE public.blog_appendix ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            M           2604    27096    blog_citation id    DEFAULT     t   ALTER TABLE ONLY public.blog_citation ALTER COLUMN id SET DEFAULT nextval('public.blog_citation_id_seq'::regclass);
 ?   ALTER TABLE public.blog_citation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            N           2604    27097    blog_comment id    DEFAULT     r   ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);
 >   ALTER TABLE public.blog_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            O           2604    27098    blog_index id    DEFAULT     n   ALTER TABLE ONLY public.blog_index ALTER COLUMN id SET DEFAULT nextval('public.blog_index_id_seq'::regclass);
 <   ALTER TABLE public.blog_index ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            P           2604    27099    blog_order id    DEFAULT     n   ALTER TABLE ONLY public.blog_order ALTER COLUMN id SET DEFAULT nextval('public.blog_order_id_seq'::regclass);
 <   ALTER TABLE public.blog_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            Q           2604    27100    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            R           2604    27101    blog_relationship id    DEFAULT     |   ALTER TABLE ONLY public.blog_relationship ALTER COLUMN id SET DEFAULT nextval('public.blog_relationship_id_seq'::regclass);
 C   ALTER TABLE public.blog_relationship ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            S           2604    27102    blog_style id    DEFAULT     n   ALTER TABLE ONLY public.blog_style ALTER COLUMN id SET DEFAULT nextval('public.blog_style_id_seq'::regclass);
 <   ALTER TABLE public.blog_style ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            T           2604    27103    blog_tag id    DEFAULT     j   ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);
 :   ALTER TABLE public.blog_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            U           2604    27104    blog_text id    DEFAULT     l   ALTER TABLE ONLY public.blog_text ALTER COLUMN id SET DEFAULT nextval('public.blog_text_id_seq'::regclass);
 ;   ALTER TABLE public.blog_text ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            V           2604    27105    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            X           2604    27106    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            Y           2604    27107    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            Z           2604    27108    polls_choice id    DEFAULT     r   ALTER TABLE ONLY public.polls_choice ALTER COLUMN id SET DEFAULT nextval('public.polls_choice_id_seq'::regclass);
 >   ALTER TABLE public.polls_choice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            [           2604    27109    polls_question id    DEFAULT     v   ALTER TABLE ONLY public.polls_question ALTER COLUMN id SET DEFAULT nextval('public.polls_question_id_seq'::regclass);
 @   ALTER TABLE public.polls_question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            \           2604    27110    users_userprofile id    DEFAULT     |   ALTER TABLE ONLY public.users_userprofile ALTER COLUMN id SET DEFAULT nextval('public.users_userprofile_id_seq'::regclass);
 C   ALTER TABLE public.users_userprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            ^          0    26664 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    202   �-      `          0    26669    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    204   �-      b          0    26674    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   �-      d          0    26679 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    208   �0      e          0    26685    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   T2      h          0    26692    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    212   q2      j          0    26697    blog_appendix 
   TABLE DATA           \   COPY public.blog_appendix (id, text, "indentLevel", link, post_id, previous_id) FROM stdin;
    public          postgres    false    214   �2      l          0    26702    blog_citation 
   TABLE DATA           G   COPY public.blog_citation (id, text, post_id, previous_id) FROM stdin;
    public          postgres    false    216   �4      n          0    26710    blog_comment 
   TABLE DATA           v   COPY public.blog_comment (id, name, email, body, created, updated, active, post_id, reply_to_id, user_id) FROM stdin;
    public          postgres    false    218   �5      p          0    26718 
   blog_index 
   TABLE DATA           V   COPY public.blog_index (id, "position", type, id_type, style_id, post_id) FROM stdin;
    public          postgres    false    220   6      r          0    26723 
   blog_order 
   TABLE DATA           J   COPY public.blog_order (id, kind, kind_id, order_id, post_id) FROM stdin;
    public          postgres    false    222   16      t          0    26728 	   blog_post 
   TABLE DATA           �   COPY public.blog_post (id, title, slug, thumnail, abstract, updated_on, created_on, status, total_visited, lang, eng_ver_id, pdf, video, next_post_id, previous_post_id, topic, ava, features, "modelLink") FROM stdin;
    public          postgres    false    224   N6      v          0    26736    blog_relationship 
   TABLE DATA           @   COPY public.blog_relationship (id, post_id, tag_id) FROM stdin;
    public          postgres    false    226   �D      x          0    26741 
   blog_style 
   TABLE DATA           ^   COPY public.blog_style (id, name, "indentLevel", "fontSize", decor, "fontWeight") FROM stdin;
    public          postgres    false    228   �D      z          0    26746    blog_tag 
   TABLE DATA           -   COPY public.blog_tag (id, title) FROM stdin;
    public          postgres    false    230   ]E      |          0    26751 	   blog_text 
   TABLE DATA           b   COPY public.blog_text (id, content, link, role, image, "cssId", post_id, previous_id) FROM stdin;
    public          postgres    false    232   F      ~          0    26759    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    234   ��      �          0    26768    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    236   ��      �          0    26773    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    238   ��      �          0    26781    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    240   4      �          0    26787    polls_choice 
   TABLE DATA           K   COPY public.polls_choice (id, choice_text, votes, question_id) FROM stdin;
    public          postgres    false    241   H      �          0    26792    polls_question 
   TABLE DATA           E   COPY public.polls_question (id, question_text, pub_date) FROM stdin;
    public          postgres    false    243   e      �          0    26797    users_userprofile 
   TABLE DATA           a   COPY public.users_userprofile (id, phone_number, avatar, user_name_id, accept_email) FROM stdin;
    public          postgres    false    245   �      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    207            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);
          public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            �           0    0    blog_appendix_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.blog_appendix_id_seq', 274, true);
          public          postgres    false    215            �           0    0    blog_citation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.blog_citation_id_seq', 31, true);
          public          postgres    false    217            �           0    0    blog_comment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.blog_comment_id_seq', 10, true);
          public          postgres    false    219            �           0    0    blog_index_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_index_id_seq', 1, false);
          public          postgres    false    221            �           0    0    blog_order_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_order_id_seq', 1, false);
          public          postgres    false    223            �           0    0    blog_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_post_id_seq', 71, true);
          public          postgres    false    225            �           0    0    blog_relationship_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.blog_relationship_id_seq', 49, true);
          public          postgres    false    227            �           0    0    blog_style_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_style_id_seq', 19, true);
          public          postgres    false    229            �           0    0    blog_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_tag_id_seq', 20, true);
          public          postgres    false    231            �           0    0    blog_text_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_text_id_seq', 853, true);
          public          postgres    false    233            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 279, true);
          public          postgres    false    235            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    237            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);
          public          postgres    false    239            �           0    0    polls_choice_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.polls_choice_id_seq', 1, false);
          public          postgres    false    242            �           0    0    polls_question_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.polls_question_id_seq', 1, false);
          public          postgres    false    244            �           0    0    users_userprofile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_userprofile_id_seq', 5, true);
          public          postgres    false    246            _           2606    26826    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    202            d           2606    26828 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    204    204            g           2606    26830 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    204            a           2606    26832    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    202            j           2606    26834 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    206    206            l           2606    26836 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    206            t           2606    26838 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            w           2606    26840 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            n           2606    26842    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    208            z           2606    26844 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    212            }           2606    26846 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    212    212            q           2606    26848     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    208                       2606    26850     blog_appendix blog_appendix_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_pkey;
       public            postgres    false    214            �           2606    26852 +   blog_appendix blog_appendix_previous_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_previous_id_key UNIQUE (previous_id);
 U   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_previous_id_key;
       public            postgres    false    214            �           2606    26854     blog_citation blog_citation_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_pkey;
       public            postgres    false    216            �           2606    26856 +   blog_citation blog_citation_previous_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_previous_id_key UNIQUE (previous_id);
 U   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_previous_id_key;
       public            postgres    false    216            �           2606    26858    blog_comment blog_comment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_pkey;
       public            postgres    false    218            �           2606    26860    blog_index blog_index_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_index
    ADD CONSTRAINT blog_index_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_index DROP CONSTRAINT blog_index_pkey;
       public            postgres    false    220            �           2606    26862    blog_order blog_order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_order
    ADD CONSTRAINT blog_order_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_order DROP CONSTRAINT blog_order_pkey;
       public            postgres    false    222            �           2606    26864     blog_post blog_post_abstract_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_abstract_key UNIQUE (abstract);
 J   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_abstract_key;
       public            postgres    false    224            �           2606    26866    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            postgres    false    224            �           2606    26868    blog_post blog_post_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_slug_key;
       public            postgres    false    224            �           2606    26870    blog_post blog_post_title_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_title_key UNIQUE (title);
 G   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_title_key;
       public            postgres    false    224            �           2606    26872 (   blog_relationship blog_relationship_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_pkey;
       public            postgres    false    226            �           2606    26874    blog_style blog_style_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.blog_style
    ADD CONSTRAINT blog_style_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.blog_style DROP CONSTRAINT blog_style_pkey;
       public            postgres    false    228            �           2606    26876    blog_tag blog_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.blog_tag DROP CONSTRAINT blog_tag_pkey;
       public            postgres    false    230            �           2606    26878    blog_text blog_text_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_pkey;
       public            postgres    false    232            �           2606    26880 #   blog_text blog_text_previous_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_previous_id_key UNIQUE (previous_id);
 M   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_previous_id_key;
       public            postgres    false    232            �           2606    26882 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    234            �           2606    26884 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    236    236            �           2606    26886 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    236            �           2606    26888 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    238            �           2606    26890 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    240            �           2606    26892    polls_choice polls_choice_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.polls_choice DROP CONSTRAINT polls_choice_pkey;
       public            postgres    false    241            �           2606    26894 "   polls_question polls_question_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.polls_question DROP CONSTRAINT polls_question_pkey;
       public            postgres    false    243            �           2606    26896 (   users_userprofile users_userprofile_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_pkey;
       public            postgres    false    245            �           2606    26898 4   users_userprofile users_userprofile_user_name_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_user_name_id_key UNIQUE (user_name_id);
 ^   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_user_name_id_key;
       public            postgres    false    245            ]           1259    26899    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    202            b           1259    26900 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    204            e           1259    26901 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    204            h           1259    26902 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    206            r           1259    26903 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            u           1259    26904 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            x           1259    26905 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    212            {           1259    26906 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    212            o           1259    26907     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    208            �           1259    26908    blog_appendix_post_id_bb5fe989    INDEX     [   CREATE INDEX blog_appendix_post_id_bb5fe989 ON public.blog_appendix USING btree (post_id);
 2   DROP INDEX public.blog_appendix_post_id_bb5fe989;
       public            postgres    false    214            �           1259    26909    blog_citation_post_id_8afe2920    INDEX     [   CREATE INDEX blog_citation_post_id_8afe2920 ON public.blog_citation USING btree (post_id);
 2   DROP INDEX public.blog_citation_post_id_8afe2920;
       public            postgres    false    216            �           1259    26910    blog_comment_post_id_580e96ef    INDEX     Y   CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);
 1   DROP INDEX public.blog_comment_post_id_580e96ef;
       public            postgres    false    218            �           1259    26911 !   blog_comment_reply_to_id_85855897    INDEX     a   CREATE INDEX blog_comment_reply_to_id_85855897 ON public.blog_comment USING btree (reply_to_id);
 5   DROP INDEX public.blog_comment_reply_to_id_85855897;
       public            postgres    false    218            �           1259    26912    blog_comment_user_id_59a54155    INDEX     Y   CREATE INDEX blog_comment_user_id_59a54155 ON public.blog_comment USING btree (user_id);
 1   DROP INDEX public.blog_comment_user_id_59a54155;
       public            postgres    false    218            �           1259    26913    blog_index_post_id_01a319c1    INDEX     U   CREATE INDEX blog_index_post_id_01a319c1 ON public.blog_index USING btree (post_id);
 /   DROP INDEX public.blog_index_post_id_01a319c1;
       public            postgres    false    220            �           1259    26914    blog_order_post_id_222484a2    INDEX     U   CREATE INDEX blog_order_post_id_222484a2 ON public.blog_order USING btree (post_id);
 /   DROP INDEX public.blog_order_post_id_222484a2;
       public            postgres    false    222            �           1259    26915     blog_post_abstract_8a0f05e7_like    INDEX     n   CREATE INDEX blog_post_abstract_8a0f05e7_like ON public.blog_post USING btree (abstract varchar_pattern_ops);
 4   DROP INDEX public.blog_post_abstract_8a0f05e7_like;
       public            postgres    false    224            �           1259    26916    blog_post_eng_ver_id_c00a59d0    INDEX     Y   CREATE INDEX blog_post_eng_ver_id_c00a59d0 ON public.blog_post USING btree (eng_ver_id);
 1   DROP INDEX public.blog_post_eng_ver_id_c00a59d0;
       public            postgres    false    224            �           1259    26917    blog_post_next_post_id_2b07c80f    INDEX     ]   CREATE INDEX blog_post_next_post_id_2b07c80f ON public.blog_post USING btree (next_post_id);
 3   DROP INDEX public.blog_post_next_post_id_2b07c80f;
       public            postgres    false    224            �           1259    26918 #   blog_post_previous_post_id_fe01c535    INDEX     e   CREATE INDEX blog_post_previous_post_id_fe01c535 ON public.blog_post USING btree (previous_post_id);
 7   DROP INDEX public.blog_post_previous_post_id_fe01c535;
       public            postgres    false    224            �           1259    26919    blog_post_slug_b95473f2_like    INDEX     f   CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_post_slug_b95473f2_like;
       public            postgres    false    224            �           1259    26920    blog_post_title_adf2f203_like    INDEX     h   CREATE INDEX blog_post_title_adf2f203_like ON public.blog_post USING btree (title varchar_pattern_ops);
 1   DROP INDEX public.blog_post_title_adf2f203_like;
       public            postgres    false    224            �           1259    26921 "   blog_relationship_post_id_61d8b27c    INDEX     c   CREATE INDEX blog_relationship_post_id_61d8b27c ON public.blog_relationship USING btree (post_id);
 6   DROP INDEX public.blog_relationship_post_id_61d8b27c;
       public            postgres    false    226            �           1259    26922 !   blog_relationship_tag_id_8b891d96    INDEX     a   CREATE INDEX blog_relationship_tag_id_8b891d96 ON public.blog_relationship USING btree (tag_id);
 5   DROP INDEX public.blog_relationship_tag_id_8b891d96;
       public            postgres    false    226            �           1259    26923    blog_text_post_id_7f426c9f    INDEX     S   CREATE INDEX blog_text_post_id_7f426c9f ON public.blog_text USING btree (post_id);
 .   DROP INDEX public.blog_text_post_id_7f426c9f;
       public            postgres    false    232            �           1259    26924 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    234            �           1259    26925 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    234            �           1259    26926 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    240            �           1259    26927 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    240            �           1259    26928 !   polls_choice_question_id_c5b4b260    INDEX     a   CREATE INDEX polls_choice_question_id_c5b4b260 ON public.polls_choice USING btree (question_id);
 5   DROP INDEX public.polls_choice_question_id_c5b4b260;
       public            postgres    false    241            �           2606    26929 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3180    204    206            �           2606    26934 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3169    202    204            �           2606    26939 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3253    206    236            �           2606    26944 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    202    209    3169            �           2606    26949 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    209    3182    208            �           2606    26954 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    206    212    3180            �           2606    26959 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    208    3182    212            �           2606    26964 <   blog_appendix blog_appendix_post_id_bb5fe989_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_post_id_bb5fe989_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_post_id_bb5fe989_fk_blog_post_id;
       public          postgres    false    224    214    3225            �           2606    26969 D   blog_appendix blog_appendix_previous_id_a24fcade_fk_blog_appendix_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_appendix
    ADD CONSTRAINT blog_appendix_previous_id_a24fcade_fk_blog_appendix_id FOREIGN KEY (previous_id) REFERENCES public.blog_appendix(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_appendix DROP CONSTRAINT blog_appendix_previous_id_a24fcade_fk_blog_appendix_id;
       public          postgres    false    214    214    3199            �           2606    26974 <   blog_citation blog_citation_post_id_8afe2920_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_post_id_8afe2920_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_post_id_8afe2920_fk_blog_post_id;
       public          postgres    false    3225    224    216            �           2606    26979 D   blog_citation blog_citation_previous_id_c005cae3_fk_blog_citation_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_citation
    ADD CONSTRAINT blog_citation_previous_id_c005cae3_fk_blog_citation_id FOREIGN KEY (previous_id) REFERENCES public.blog_citation(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_citation DROP CONSTRAINT blog_citation_previous_id_c005cae3_fk_blog_citation_id;
       public          postgres    false    216    216    3204            �           2606    26984 :   blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id;
       public          postgres    false    3225    218    224            �           2606    26989 A   blog_comment blog_comment_reply_to_id_85855897_fk_blog_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_reply_to_id_85855897_fk_blog_comment_id FOREIGN KEY (reply_to_id) REFERENCES public.blog_comment(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_reply_to_id_85855897_fk_blog_comment_id;
       public          postgres    false    218    218    3209            �           2606    26994 :   blog_comment blog_comment_user_id_59a54155_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_user_id_59a54155_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.blog_comment DROP CONSTRAINT blog_comment_user_id_59a54155_fk_auth_user_id;
       public          postgres    false    208    3182    218            �           2606    26999 6   blog_index blog_index_post_id_01a319c1_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_index
    ADD CONSTRAINT blog_index_post_id_01a319c1_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_index DROP CONSTRAINT blog_index_post_id_01a319c1_fk_blog_post_id;
       public          postgres    false    224    3225    220            �           2606    27004 6   blog_order blog_order_post_id_222484a2_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_order
    ADD CONSTRAINT blog_order_post_id_222484a2_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_order DROP CONSTRAINT blog_order_post_id_222484a2_fk_blog_post_id;
       public          postgres    false    222    224    3225            �           2606    27009 7   blog_post blog_post_eng_ver_id_c00a59d0_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_eng_ver_id_c00a59d0_fk_blog_post_id FOREIGN KEY (eng_ver_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_eng_ver_id_c00a59d0_fk_blog_post_id;
       public          postgres    false    224    224    3225            �           2606    27014 9   blog_post blog_post_next_post_id_2b07c80f_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_next_post_id_2b07c80f_fk_blog_post_id FOREIGN KEY (next_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_next_post_id_2b07c80f_fk_blog_post_id;
       public          postgres    false    224    224    3225            �           2606    27019 =   blog_post blog_post_previous_post_id_fe01c535_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_previous_post_id_fe01c535_fk_blog_post_id FOREIGN KEY (previous_post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_previous_post_id_fe01c535_fk_blog_post_id;
       public          postgres    false    224    224    3225            �           2606    27024 D   blog_relationship blog_relationship_post_id_61d8b27c_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_post_id_61d8b27c_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_post_id_61d8b27c_fk_blog_post_id;
       public          postgres    false    224    226    3225            �           2606    27029 B   blog_relationship blog_relationship_tag_id_8b891d96_fk_blog_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_relationship
    ADD CONSTRAINT blog_relationship_tag_id_8b891d96_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.blog_relationship DROP CONSTRAINT blog_relationship_tag_id_8b891d96_fk_blog_tag_id;
       public          postgres    false    230    226    3240            �           2606    27034 4   blog_text blog_text_post_id_7f426c9f_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_post_id_7f426c9f_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_post_id_7f426c9f_fk_blog_post_id;
       public          postgres    false    3225    224    232            �           2606    27039 8   blog_text blog_text_previous_id_03084c1d_fk_blog_text_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_text
    ADD CONSTRAINT blog_text_previous_id_03084c1d_fk_blog_text_id FOREIGN KEY (previous_id) REFERENCES public.blog_text(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.blog_text DROP CONSTRAINT blog_text_previous_id_03084c1d_fk_blog_text_id;
       public          postgres    false    3242    232    232            �           2606    27044 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    234    3253    236            �           2606    27049 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    234    3182    208            �           2606    27054 C   polls_choice polls_choice_question_id_c5b4b260_fk_polls_question_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id FOREIGN KEY (question_id) REFERENCES public.polls_question(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.polls_choice DROP CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id;
       public          postgres    false    241    3264    243            �           2606    27059 I   users_userprofile users_userprofile_user_name_id_8cc5a256_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_userprofile
    ADD CONSTRAINT users_userprofile_user_name_id_8cc5a256_fk_auth_user_id FOREIGN KEY (user_name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.users_userprofile DROP CONSTRAINT users_userprofile_user_name_id_8cc5a256_fk_auth_user_id;
       public          postgres    false    3182    245    208            ^      x������ � �      `      x������ � �      b   �  x�]�[��0E��UdE�g��mP��Hl�v���+��3�c�`x�Lp?�������;��0�.�T�ʥ/��=��5�o�+���3n��7�U���?M��05[��p�� ',|�� bZm��s&���W�xN�S���JI5�>����HGȠ�4IRB�9P�d�9.�a]�?dz�J�5\kG����4(xj�e��2�gW�$<�p�~�Oj�\�UFH��,. j6x�qq쏾0�.���5t8*�Ԇ����<�[�i��ѵ�g|���M��s�5on��s��[3�YI�q��ʗ&�'c&�c*��#���i^���3�+O����:T�j�����*^͙�Ǝ[�<vf%��n.m���ٗ&����$&���q'*����]I��}�a����L��D�d��<>dT����a_n���"����W&�M
H��g��P��}8��䭻���;=��D����o�K�|��W��.��$�K|v�O��fp=�w�6y=�$d�0�=~A����#Җn��z��Rp��}��/vW1�{����Q��~B�9����%b$ͷa���\���ɴƲ�&ٚ�jL�|k嘒�w��~�v�|�}cҮ1�Ҥ^�d'�J���N(��ҧ����
ߚ�� Icn3�C��L���Vc�'no(|k�dA�I>3dA��:`���������o      d   �  x�u�Ko�0F�ίȂ]d_#UZ���c�D�F$��B*8���B�h����;�p�U���j��)�P��
Bq�4�I�N�15w٩�/`�>!} ]�!�a�@�6	#�]�Xܠ��g��}��q�&��{��i閷φt�Mu�k�V�ty����Ze�v��

?}(�S��7Wx�t��t�"M�e�����;q���|��ӛ,�'��;����&��O��:*v�����p�&����e.�b��?ü��Ø�)l��%(� ���Zy�k�����a�X���c��[���e��ಐ.ԯ���H�у7����L%��W���������?\��)���Ӄ�1�;�
�&�e�p�ж���o\l�Av��n;�0-�)���bv:���v      e      x������ � �      h      x������ � �      j   �  x����n�0D��W,�s��(�ظ-P�.�4�\X���P�AQH���%��I��`<o��3+Qo2�ts{gi�FO�Fg3QdBd-��:�hI7�^z׹^���6M�UP���zԬ�e��   ����{�z^��D��+�l�w���A��]���7�-ƠO^ه�Gg~�2��c�O��ƕ�W���9�v�G t��Bw��w?�*�T�d��*�W�u�3�|�[�����\��s5�v��.sp����lsx@�	�r�������C>2�6z�S���O��w����>^t���mؑ�پ���E"��e�I�G�|#�2� Et����J��w�������:<%���Vx�W5ώn��+��v�LF�/��6Sʌ1�(^��5)z�l/����Z�xt�O�y����&M���ф���y#K��8$�դ�8�]N�"{��?3��sjE���~4w�o�ϫ�	�[�iU�0��֙|}�2�U~����7���      l   �   x�u�AK�0��鯘���&��vUX<�At"x)HL�6l��Ij��w�l=y��cx��d�$�KV����ڣ�XڻH�}���M�͋�� �K���!Z�a�;kA
/-�=!ӳ��O̡�q7B�����{j�$�3�Ňv��6v�?/��-\��X���(���v�5�n9VV�C!���?�=)�Z�*r�5�
i�����$��hV�b�¯��~���-GR]�0N��!ӤB�i?R@�bUr��y�$���z7      n   f   x���1�  �����@h+`�|�/`cP���?�¤��%'P���c+&���k�C��G'F������><z�H3�B���Ɍ�G����k��u2J�m�'�      p      x������ � �      r      x������ � �      t   E  x��Z�n�F}�����+R�_���F"�9	0�ds��dx�hv������~ɞ�n^fF�b@�ɾTw�:u�Zn`\���A�_������n�\�ʏ��زm?
�����I��W���X~`��Com���_?}�ǖ_^���v�f':v'6;Q|(���ؗ��}g�^�nb��&�HM�{sGMՔeڊ�:�=�~lE�P�"g��4]9lw{?��=k;����1��_��������~�u&X*��5㲵(���<r(L�>���aكXfbC��>gd#�6e��ԟ�fX��W��6�`������}_nj�W\�����D?���e`�c��=ۗU��m�'��][	�H��rV޶U)r���ٴ�l��؃&Eg:oϴ]B�c_y a%q�E�F�:�H�$W�k�Q�&�B���a;muyY��F�N��x���fw�n���XN&v'q��"�$E�
��cU�����-��^��e���?����+���7�����N�����x���4�;����C�h�^��*�����kG���_Ŷ�g�aJ�so+:����x����������VM'̦�^��Z���fMm̔ژ���#���ա/{c5�k���y?�+k���h �<�o�Q���k`�c>J��uxV5�Mw�ص-�����i��g[���G�k�������~ �q�i�|�&{�V7���c	�ʉ����@/���G�C���?t���0�lʶ3�[zB��q�c��a��f|����OfF��������NU�����);���a� ��5{lnS���	��\���-'L��}�E����&��D�0��H�v���%���Bd��)�p�7Ms�~�H`�~����ND�٦Mg�hev���G+и�0�֭95��p ��b�~�Xq�z649?�S�MV�
\��|v��Ҍ�T�a�M�x���E�xA�
dv8�2������.X�w�b �Hr�����\�G�t��ς8�
xd�D-�V��5��بB����ڒo��T���4
E�U�;j��V(�9CmL�"�;���\�����P�F�@�D�녁m�ؓ,N
?uE�"p�d�X�G��w�UvM\���k��P�~����ɖ�-�|ii檥�%m�g�qSOlzAc��n�P���o�]�^q��
�ȶu��(�Ԥl����,`+���s�b��� ɤ�kv��:���!���q�*�+F�or��(s�v�)�3`�'`e'V����a���qIM8��Ɖ�Md�,�E�ڱ턾)� J=�q&�:�u�A�!"�@U-B�f�)&:v+�L�C��FN�%1��L����.��'!����N�5��N���1v�װo������8i"�\��P�	IEw��U&C�S���v�3G�ZS�D�@$FL��N��`8i��	p�5]��m��9���m�g�Zg"$='�&�Ķ��)ϋ��v�"�Rt�*/ao�%ب���tz��ƶm���O�Y�(�1t*c�����.@��b>�.�&%��;���9����6���SȜ�4�؏�9L�� sl���diY��d��@Y�a��Ąji��Ii�4-A����ݦ�g��yH;0 �?ZE.�R�c� �q��-��l��*i�D�����k)�)�A�l�Dvr�ٴ�)i�Q'q+u���y���D�k�g
��E���T¦�Ro��*�C�r��P�~?�=��<�"!�#+�(�$�!��sl?�� �3J8��~�)�����&k*�?p��f*B��D�5�o�޾�`ss~��#O���� ��
�*U���fW��QmaI����W�~�72 �d��'dԜL/��t���l+���Q��r���"WX)w�<#�e�j����d�&wj�'�N�9��/�|�����X��8N�@���ag�7I;v��f��ڹ�'�E�sW�Kfv~����݃RR���uI�zb���XHzK=�n���ZW�&.3�i4��,3F�Au�����h�Q�Dj�R�Q r�y}����S?���d���d�K�_h¶�e���^�T��&E��#a�َOM;` h_y���$gA�x�!���
϶c�g	�����gfA��"��D_��"�x�P�A���\�T����.mp��ƖZ�-�6���qFѴ�ֆ�<a�*weM��W�V�Ҧ\�*�yN��[$7��$ 0^��ߤ���p����_���TU%:��
����/�[�}�a���g���2m�²�sщ
_̈́)&w�ɝ��f������_9���q�%k,����̍�Ķ}?йo��4�B#;6E�F���^a��j3����/�E��R	�,
ѩ� ��F`��~"��y���İ�0#Sݑ�ݩйS�M�n��1�n��K6��q�;�yf1�j+��S�F�,��,M��rgH�J�h�@�ge7MD�Lu�i���Z�����/��K����u|�VAJ��t������%�q�6=�n�R{�բ
�X�Wk�����y]�U[���*;Wk/$���[��Y�/㐤'Z`�=9�{��p�Z఩�����"��_P�F�K"ak�cٯ��BW��B�*�Yg�,ų�QIU�I�G�'41y7���7a��=`�ϼD�j���]$����2��4��zQM���-ٰ�`��:����q,'�p�
s {�H�we#c�|;�<�x��a�BY�aۦ���ၓ�v��tOd*�ܩB�O�J� h��������MU�o�h�Nc���@ҙ��|P��94؞F2�L�t���*��l�
���\S?�Gִ��?�
6�6R�7_�e�����N�)ک��=M��zΦ�9U���T=�'��9�u�$�3Owp�DGva��m+���@��K��J/G�2����T�e��R�Ս����"�B����� �ˏ7<	�6�d@���t1ԡ�9�?Dv��I�xQl�Q��n��?�<?
B����*WG��ڹ��A9�&�����n�o�����fb8S<r�0�nL29$��!�������K��[����3>�P�՟I7ɨ@��̰�^���d�eݎÚѥț�QeJY+<�{S~d=i��ky�HW8:�)��CJ���o�a���*%�����nȵW.�M�q#g�K��,mW��MY+?����	�L�2�9̈́&�����"����p����|P�9e53:�W�Ea�|^���4���5|Ga�.+�3�%袴��aq�epnx�V@eY�(�T�A�$����O����yq9��'�˟`�'�/���|�,44�00B��hR��qb��/�����B�Y�wc� �J��,��^g�'�E�@� �kR��e7
�s7�t7s�fN�Lt3�3�8��8y����74�$����S��o:�F�u��D�Q���
|�pR����YBds��OWB}���&"���v�2=�+hDʻVrKُ\S�p��>T��k|���[{��[��~���kY�l�[�i�z!�b�v�?P�C�슷������+'�l����M٣�Qn���
����T<��m���6�k`���/�-�z��c[5<�/i�K;��Uf�T����H0�j�x������      v      x�36�43�44�26�4��44����� )�F      x   {   x�M��!C�N1+�c�����u�sAz����A�&���(�Y�Ԡ�j�j�,6*f�������%z��UUӶ���P���Lp�{PpJ��c�:�`�qtE�?����GD~��$      z   �   x�]��
�@E׹_�ݬ�f�v'��[7���P�efZ��-� ���.�s�k��|�Q�H���X���K�ʌB�40A�Q~|�[�*�&����5��.� 't��AjkzӁS:����������Ͱ�47Ob��I.�$1��6r�>W��1i\� ޮ�=S      |      x���ǒ�궥�>�)v"<�R�{�P�{�0O/�9u%5�'�b0��3�� �0�_��~�|��0���K�/���NU��M��]Tk�m�4��l�4��>O�"��gH���2�c{���f,��d����l{���}���z�s�MV�&��9���=�?ɘ��y_\��?쒪�������_�/����I�����u�O���!%��+�F5�#�I���?���'���9"������dO�g3�o�i��?�d+p�|���R��t�lWMY���}��|2Eu}I.W{.wI>_{��P�@W��X���7�HW���ޫ�gD/1T"�R-;ݪ6�!��c�ڮ�ծ6�T��Z�.T��6[�]�������CQ4'Q
JK���)��8����EQ�;3�:�������t�q�)є��(�z�~_Yuz<me������ֲ)�s$+r5�k���Q�;+k��H��x8�˂��R<�E�sU�tOo3B��G�����>������f~�:�w��|4�b	꺷>s�eC�(<!l<BsK��}�l�``���W� �c��0MK�?N�X'�-v��T�s�b�/ �e��/�ٳ���C��|�9��j�1�t[8)�=2�秛$����_�8X�#]wW
��r��Z�\��+�邅뛫(���&�y��Ą+;>��18t�n|B3����*U�3�VL'3���Մh<�h�֢����c� -*���7�Q+9n�-Md�U��	�"3+���7�uVp:������H�)^#��QZw�9����1�w2v�d�.J����]����;����]Z���
(bv6�fY�hD}.�<Iݹ�,�y�2��{u��~Tc����h�m�U|NJK��'�a�+�rϝL�������K�>��ݲ)����w���O�n�K�����7��`�Q��c2;�V*.i��yCJ��r}�,m�B�J�Ƌ�����O._�wfaylw	s���l ^r�?$�Z3�xI��K|%�!�2 ���ߑ��A��,���f㎜ᒽoI��Sn�/�>ƻх;�]&RWR]>sST/�]�X(��!͉!]��$���=�AlMt�����#���\�>��Ap4*��+f�yn�����?E�H�;���}ЬV�H�ӿ�H�D�~߽S�[�~+�F{�^���XM�g��ޤsq��ٲ���ME����пf��R0E}�1��C�Ò��,ͤ:�*�8a��`ql��|e�L{�<'[�K���ᛄ~}B*�0��y\�U�/�t�h�1W��f�o���ny~�����=Ɓ��hD�1mF��D���4K��,K�"���,�m�/����5=��E�W�w�W�" :��ݍC�s>aQ̳�F�M��[i����{{�/��M/a�<�|�sC�~�^�
�,��΢��/*%���R-���J�)TK6�J�>w��֬�Q�C�/Z���^�#m��h�U��v �q����GK�c$u��\�O��H��6�a�=�c+�z*��$��7N �Q�V��kx�j6j��G����8��';�v�����J �ķ�3rN�	��s�d���y���B�$h,_2#a��+	��gݑ���Q�;��v�O��E��%1�	-�k+�FU�3 J7��.U�/�\pr��iǹ.}ֻ�� ������i�Et�(}�&\����O������-7˭���d��*
(�����p&��:L ����φ��E��E6�Ԇz�^���8O~���º9 ��D-1��7��e|Zx��>S�f�ܾ0hHS�Q��+���z�r|<�G$ي�Jv��\����ɲ"�Y��������I�*��W� �Q_M���8�g�g��#�;z�":W£g0o���IP�)
�u?�}.�[΋���,����0��1�U
�B~�mZ��ZK�
:&V��}�]�k7}�nd/�`�P�Nw)y��ˊ�Jfe��Fɋ�SkS@�Z&,�^v2��OG�@��A�5x7�~O]��t����F��w;����!��B��!�=J�L"q�bu�eO���8{�h;�~�G�L������0ua���2��%$�y�Ǝ����O3tBO��À5ɓ��q��~�l�\�ޘk3(�9�Uٿ��+���y0�d��VR5>&F��9Nҥw��c$�(%$��
\iE�w�	��7��@H��/��m��ٗ,��B�]����U����ѭ�%;��R�+<[�W���)��}�J�L��y�Œ�P/g+�+\�ˬ�Z��cp�3?_����ܩ2��7��<�j�o�6f@h"�r:E�F�7��$��6����e�A�����4и�nR�c�^�M�}������9 VF��}�k�a7��t��4~�s��SZ����!%UH��  x�~^yέ��0d���dj�uhȿ����;�\��tQ˙�S�j2kd�!�O2=	*m�<�jȏBc�*�[�I��b��׽5@���/��Jq�
y<���R�����;���R�Ɓ�[�p�����T(�����o&v��d��tK�	������ļE_� 5z�z�U�@S���r�[�َ�TL�5�>T��Y��4�v��82�u4"Al2�q��9���0nuO;¾�{�q�H���������]!�#"��p�|�����g��a���b7�fan���d?:n�a���U���b�װ�l�d
,�[ꌾ������ys&�E��6�G��a ���E��ర���(��A8��"�Ϧ*l~��Ji� ��z\�HY��E�B��X�)��҇� �v��WSs����"W:mG=�I������m��Ҫ�1]Gq����DXǃ�9d+��x6b���/n�����~�X�$����.�\_t.ǽ��~�#G��N���M':[��7nL*
}fc�>����(�8G[7Tvf��"��4�7D,j�۩�+��p���K�:�W��-F��5_9�v�x���zb�� #ʔ�I1��m�f�� ��t��ص�w����쫴���G�qq,`��"Wp�؂���T#�Vp%���\��N5��1�Fpf���Wa��,��ujlWw��9�h���>�I�PW�,���(���2D�*�=u�Y��6ƀ�������-�Q�����{^�l�|Gw'nf(�8% l���I�Q^��Ni��u�m�W%��]���)�R�;�6z=v?s�"�h��[/����G2�f��bV,D���Ə'����u���2��e�T�U1Pb����m�8P�-jȬl���´�vo*憐` �+�l��1e��U	Jo^m�r���ۄ�9vζv���<�q��/�?�:~�{Ϗ����"�)f�[o���;&�����0%{VuI�^�p�r�3�G�|GH|N�����>ҋ�����%����B�!�v�ga�1�{�g�H����u3�Z㒒`Y]��eb[g<��z��U�X�8M�"�y���
�a��Jn|�m��픰��)� ]����2�̹Vi��9x���%�!�\~��m�ޣ�c5p��]��h�a�a�_�6��r��X3u��߁��W�&�^7��P��.:A���r���$a�DA���3��a�����۱�e�s<w�":YԄ!@|�y�Ae��\\�o�������G�Bb\e<s�f�\��7!{��+C�K��<<��jx��z d+/"��K�'�)z�2|K�F.h,������r�4U���(@is`+e�?N:�_�j������L�wo�ۚT=!�rS�©�"-�hNpF>J��rɓF�iuыU�J�>����15�ݱR!�����pD��]��_��	>1�W��.OU:)@쉍�!����|�����K�������pR������ҟ=6}��=�Ӯ<8��Ȃ�H�(h�Y�oN�醺�(��|��"5�Fk�8NL�`���O�SGC�U��������y�A@9��QC��U��i�D#����Kz~��_�]�	�.H���Z�3���m��`y_��T[����~Q`R���@Vp���I�c��F �T&��2/�n&�0|� ������v�    ��\[sI����G���\[>6��ݠ�UݩtoFkƉ(Qd��JK.Jj�y>�K���4�.b��=�~��L�q���U^@�#_V3�������i1��ٗY1���Q��H�$�û���D��/X44IB%�ܪ@��B����lT
0@�2���̉Q;�EǅlS�|h?+>�0[=�qP�h���<j�F�c�%E��� ���on7P绺��&�5��P��<T�A���	���2��,hC܎&�x Xb�o��Ձno��RZ1 ��=s��o��c�R������;z��X+��k��eC!w���bԠfg�Z�*���H<v��=ä���
4�Y�E��)������Ay�7�=hy#�=��;��̹�=���Gu��$^�|y�O�(y��Q��
�l�f���r�y�1�=�7u��QQ:N�?�h�#��&7�-ʌ�`_��!��Z�K��f�}#Gk<�BĔ�?p�lG�� -)O�Ov���q��?l̾(�:��(ո��N|��"�o�L����D��%�HB`���=��o��FC_�7he�9rʞ-Ί0���V�{n�J�-ԄU��'zuB�~��~�\~�	7��1җfb�)�~���J`Zz]�I��x�������89e_��4}�>��ߣ)Mٶ�E�s��W�p�}���x�E��\^p 랾=A��op
�ɲ��er�h�Յ����H�L��m�u!F~����k32ӥ\'|�f��V"R}��]:To�-��7wrUS٘̂>��L�8J��8�z���<�]����ܕ�R��f��KY�m���%U��;V�X�B!`z]�gKz/۫��`\є��3E����D���k��+�Ɏ.�5mӆ (+�%ݶGX��ATC�uS�Y�X�:�I0.��
��<7�w�g��z�>��+�mk��J7j`*z[RaU�Y�&��.ي�}�k�}���Ȍ�.�Z�;ї���4�y|,��4)*��;K��0E.��˼�����r\ �A��L��<w��ݠ����E3�!�8�l�7����<�]+��=<�����������{�0.W��F,�`§?4�?l��ȶ���n�n�u���O�<�"�ѥzԅ�X;�P�� ;������1ˎ���[zQ�|�q�N�()6v}C�qi��y�W��o}?�.$^��P�r��T��o#�`!���hԽo]�{��둾wHI.t�e���ߧ[c}�r ���e�Ͻ)���&d��fɔ �Y>.�1��aF��D2�Y�7}On%�1���?�����?P���箒|��
�BSTU.N�җF	��yQ�`���ϑͨ�P�l��mq֚���Л�����[�Ӟ%^���E$�������)���g҂CU#ٗx*OL�@�j���[��83WӅ�v�7�R8��b�������hب�Q��Yz�ؠb =5�|(��y�����Η���/�_6`�s!��-�s`�C��`�mZ�UΦW��u��{��!�ʌ�Vq9��#$R��H�*�T%����7�U��='H�+��T����ߊ�"����q���&����&K"��،f�K�1��q�e���"�I��#ΎW��U�4�2Oa�`T��&��uIo�?V>�?�B�dfC~(����-�W�ڤ͌�
��x�S�8�4��c��ET(?rl�"��̨��+�ɇ^��~�]vԗ���������ݧ����	�,,�ث���$>�qŇ�g����Ţ,��R����%r7DP��F,�*#��!�R���p�	��a����U�H�u��l<��y�S�}�g0�n~^{@�M���'N;cG!�������Liq?ջ�>G,�E��o�{��~\�5a�0��&0�� ��iɼJ�P��ȡ�#^oTdŐ�E�ɹ���a�<%�am��(^H@������U�͋�F52�S��n.��5�������ē�K<ϔu1���oM��Q9A_a���4�+z��t��Xڶa�k�[H2��pLn�ph�"WQ�M����e���1A����$q��P����F<�y� ye��l�����w�����=�p���A'�W4��,�b�Պ��5	�<*�$C�� �]�n4�FD�<����-�8�4�S�Ք<)�'�0�~�fI���oGY�<媀��s�¥�,��l`��1�3�ٛ��ܞ{HH� �[ٰ��?Lj$ͤ\<�4s�,׏�.����M��A�~�i���m]����ar	�h�N=�PӰ~�8���1��m�(�-�u(��7��wRMB\U�r|O�P[�.o�i��(�������@��k�����	��X��@A>6��X�$R�
��j>�k�Y2?�AV�D���j��% �ȶ������@��ƋCksΨt?)G@��:��+6*�C��SI���YB�������1���Y	CI�%�p�E$�~���Zr�+����g�5�8��l��}*�~����Ikx��O��B$�	�k�)nT�,M����8HF����$(.Rn����S&]�'�B�_�j��p��mY�)��䊉d+�m�_=ޙ�(�.%�*�3�uV��b����b�<�NIM��W��5<Z�r��)ꇣ���[��Wz0R���/��2�k�+�i��*�/�S2�Qi(�[��A�&�0w4_!^6)��\(�~7�h������Y1��e�����H�O�e�?o��?'3u�*2_�����ҪX�ƨU�q%�b��*w"�&N�3)�L�'�Y�<�n��xA��K���y_\���5k}e"�J�y۪�����ƀ�����]ʾ~$����DEW�R���~�EY!�E`*��˯�_Q�9���9 յV���*'.��E�_�wZ?����6��jU��<mר�w����g���3X��A(t��缰^ 0�	Le^�@�Rǭt�jd1M���y���l�o gǫB5����ru-棷����/l�{�.�0�ϔ�~�d� �{а�}�Yv"	��;�Rf����((0TS^[o UG�Q��6,fk��k� �{�M�#U�󬱜[ ���ٗ����E�d(� �4q4�t��|�� "�o,q��4Ƶ���m)=�����-�z,�;i/���Zhs���\�5�!$�~޽�m�@���a��S�W���m���1lz����	ɶ?CC��Ӷ��#�6���6D�Q�`j^��R�z��`q��m��X
���B��2I��"�r��M��&��ް�u	��3�PN �T&P�_Q��D.�אD�-�T�j/v�%�]�����vW�B�#��v������ˣط&21�zF�L7a��<yǢA�����;	ۛ���|��k\�6�b|Nɵ��]��]gp;*#��jt&��C�l�&n]�$Bj�b�B�G�JV2�o�wR��[!\��ͨz#���8�O����(�n��J3����̝n��w͞�(�Nbr4�m��K��X�D?MIЏ����&��-5�V�^�r�̃ = �"º�Ʒ-E�&��[f}��ȇ����,H���&�Tɔ���]�0��GA�@�})��Ir��տ���޷5Ơ�MW��%������-W�a�'Hy�c1��5� |Ҭl��2�s/1�%Mכ)��d&�P��h"M�9>�/�{�DV���R��7г9��i��U\�����d|�����|w2����0�{n��*�����G,���^�A�o�0���I���7�P){�$6O����@��a�LR�Cg����5�ZL��=��.�T��BO�)0��<�\�5~=�Яi㎉�%�WG�Y]{�����h��qL�H�a��f�znᠥSҐ�mAD�R�`�l�<y(P���-�	��4KH��c��f7)�WW>�W�G�네�f������_w�ŉo*�4����t<�1� ��1ީF�|����+,ă�b�XŜ�Bo�ѕ_	c�iA����nᵹ�� ��B�6_�_]��Q�?P���M�����y^���7�@��Aw��q�������G筮vζqD�Ԓe��    r4���2���x��o�D�/M�M�ސ#*-+��E�`�l^��vo"����k���\�&��Qk���[mj�d��\9/쥯rS���;刢�*�;�a����:�F�H�����C�Ԇ"�� +�~ѿ�P�_!sR�'���7���VwIP��
����?Y��SU�
�rs��!�$�v���@�1�	�:t�_�����	�2�{��|�����_mDT�~�BP���`(���P:��a�C};��ZV<���-0�u�}6�y񄗖3{��:�H�R�:~�u�r�*�츳8�i���l����ሖ
%�W߲ɫ4�~���[��V���tξ#:�7�ʬ7$�������YY��R"���`���}bYz����V�0��S߯tʨ�e���@}肶�:'�P�:#qlM�~��S����"�� �d�4�2zҟz��&'�oSlɛs%�۶+ܹ��g���*�����׾�y��q���ś����L�J����c��or"u@~q���4�zPF��l�N 	'��J����ư� ��"��o�e��G�Lv�U�C]���1�/�׀O�5��7+S	ku_V�R���hͮ}���P��%������A��+��s�Zø=R6b#*�hI+���ŏ��xZQl0�]l�U&�(�p��:�'A�m4!��PD�![�d�!���8fYS�.��7&o�%��+���@���2��g�0��[q�jyEU�~�R�j9��Gҥ\���Yf%�#�H�#�v��2���U�*�Os����������o�o�2k��c�����5��H� FN��|jݬ��H��d,�K��{�r\�ҟ����0�>�H�~�ݛn��V����B��k"��
3ך݅ޱ��d��h�^�ԨiϢ�ܝՂ�ޘl��F��:�^��m�~o�x6@.�J�����[���t|�"�!K.o#tAe�a	]<����Ќ)O��%c�.�Զ�ZZ|x^�6%��B�] ���B'���z��d�FUSބp�X�,�2˿��A�ѹ�(�u8�C��ח+UZT�e+g��pw<7ځ���at����6����KCkY\s1!�b�1 �Ǖ�+��E۔5)���/}/�:���qd�ܑd�
���Q[骿~:p���oV
�=XhATY�����hH�Ƚ�K�2�S7�q�����T����Y��f�q����U7C9����P�w�#���g
��_$B'�K�>{	G/�\g[`-�>�\F��8'M2�`�6�3Ç�k�w�*R�{�]^�
h�u,?�x�r]�Ɯ�K����C]��\��֣�$��Wg�Z��S������(�6muLS4�s8#N�I���;Qg���SDv�>o��JR(��L������b��ť�0�_��}T9�^�i�%s��u[�7��e�����x��Tz��=��mj�8(uOv�lE|0�anE���^��L���~AW��F�����)_�G�;*�<c�P��O,�4t����5�#�8�W�rx�bT�M>�J��y󮯨�,FmPdd��?�z~q�V��5=�q6����~�z]W�Z���/uҌ�*ns�� 7�"�N64�ƄF�Tu?�~R�Jr�WO�]���V���';I��fvt����mf.�1�o��q�30��}���~�������VD��6��K4�G^i�C����὇����"k�N�1�rm�?�u@l���/O�5m<�"��W�Gf���}{��Gܔ���Qo雳%��D��Ꜹ�������x�%SC���e_O��]�i�oW��C1���Kd��NhDv�b+�05=���ݾl��B�R$/S�&~X�M������ԵI�Xw R��_��"i����Y9��#.�k�:�ײ���X��5����(�7ҥ����b�(S�tX�8s~�/�l��w�uՎ}�'0�XGGp�����bN�@t������XcCOS硃E�IKq�_�[ew)0�����co��2�+"���@�T���q20���1W��S!�e��֮���OT���jͧ�,%I�ю'���6����P�8�i��'��q�a-ҿ+�'��A��S
��@��Z�س�.p\��:�˖N��4x���u���dT��y鄖DN��z��]�:]�q��J~������C54�go������Q/*�1K(i��Ȓ�ާ���}���a�����lk<��{t_�B�z�?h�X�F[т�[�D[fgz\>���I,�;g��DL�P�Y�����Q�f݀�@!+��׏L0RNz�bN��x���sx&��m�0�B�ɸ�s,̕��N^X�L�d1�|���4q��'��|���^����+D<<�;Q�j��r������|Dۑ*p��4=��eA�Z�1j�kP�M)��F��소�yG�����N�F�!���G,�lߏ��T�+ڝZ��	�G'o�t��y53_au������4,z&�	��B�9j�dhU�m�I?�c��3�nc���#9��aX���Ⱦ�Ȗ�C�v��͙��8h����/OdG����N61���I���PRV>- A�Ʒ0�DQ�nܿ�,��D�i�0���|C[�"0��[�d��G���gq퐠�J)���ǀ��t\�׫t,�3Vz��������%-@��o9a ���^����U\x�#��`�<�j��2H�%���MAW��<�D{`����}�Ĺr���,��M������u[l�f���t:7Ɂ�Qڮk�̓:O�{ݜ�s6�'�Bu
�h	juwub��ͦd/��mt�:|�@�;���$_������x�w�^��j;�V�:6̪��~�i���j���0��A���}�0/ms���뀊�ۺ����gN���{Y��z��AY�a���ԁ�[x�Pb�0��^��ВA,����^�PpXm�GO�Bpڬ�k�'=G2+�̂��#|��db!i�8/��7�s;Gɡ?�h��#���}�0;kM�|I�/����LLӕ�(��)�	$�&�D��oL%�eT��H��i_�(��)@H1����8b1�a��MS����p���ʨn֋�\.-�oI͉s.�����(�y��{"~>R��8C�������[������.[���Hb$�3�<xKL���W�#ڪ������8���,�&��ki�y���ɏ祊3����#[욹���n����
AL��ت'W�~y8���7�^瘊��q��1*��}���Ci`IJ�t����z�]>	��y�&o쭥Mx=���7µuϜ����f!ac�t�KN�1��Ӈ�,�* �xo��,�e|�a&���~*/s+jޙ͋^/;,o�X��rD��@��j|v�
H5�z�k�	a��!_��<{��&IϢ?�N���(��F��U�r8�?�����jD'7�կ����� �:����ĔH͡gz� ��n���ZΞOͭ�k��l�G���Ҟ���S੒�ổ��r.�]��\��-Sp������oH�����t����^�����r������c��..��k|)�v��nU.��<1z��=�߭��e��ا��\_>�T�ݼ�;����Y�1>� ���,^^� !j;���1��`���7�}�p�X���v�����լ���o�޳/I���$��o���Y ����̾��k_����p�sS[�9�o��C���W/�C�S=��]�ZQ�7��L]x��?)�:.I�W�F'�`;�qFTL3h>Bq����i��+s�4 !X?{�����
k��d#�yW"�!߈�W�Y�J�M�����n�s$F��k�)�6�I�wn @��|>�)���sҝ�ٍ�8a~4�Z^:FV5��]7����4�p$��C9�т�Զ���{�hE�{��m4��a�G�{b��4�D���V�_�@S�g�g����ʪ���W,���v��� ��w+�1�^m���'�(U�=�������:��W,ώ�2�'5t���}�o��~s��*��.E�V�f�����*��]�gƪ'}    ��~��ۖM0R�"4y�%rm��3Q]��9�Cq [����U?�Y�9Ev��aYF���"2�X�T�)N�/�X�D��!����x�D�چ�\2��^�ՋsbB���w�,�w��!�����
�F��Λ�S~��c��]t5��*�\���k��Xl�٢��7���/o6�#�� ����v�YH{]�Z2H��i.w��wQ�ȑf~��,���O����f^���E/r�N5��G{��� E~�U �{[­/I���1��O]6BP��o����xH�:��g�@A���u?H?Ĝ���e�����K`I����
�~A��Ex5�� �������-mY��cMC�.%x^D�L��K2'�|_u����!��T�<��B�(����e!�Jp \ut)�<n�2�{�Q�#��a�z��x�ᮋ���m%>|�3zJ	v��G�}!����6�h��+�}7ݶlgֈ��C7�T!�5n�6�޺% �&�t��I�-�7��T'���./ �r�5e�*�b��3z�*ǣ��Ĵod�LjtdQL�:���s���oV:�_���q�=Ԉ��<M��Pl��+T@��D��Px���a���25ˢ���٧�3v����L���_���e��ظ��t��57?����2H��(;����>����蠣8g$���h%��wIH����f�Â<0Hv` �9D`�`�|��e�J���Ʒѻ�U�.@�Hc�I�����q�4�Cc �\#�:��1�z9�ɭ)�����8ȔF�rѨ7�f���Z�q��5y�w�_n��v�NV�)42�C�8g���ޛn'�l���ɧPW�1Fbv��j<�x̬�%@�l��$8�\�F�藻O�{��@8��wn����\U��B1�رc��Rt�wd�������5.ܛ���y�n��f�v;Z�|�����m�sqhߚׁݻ�9j��ka�Z�w����e9r��k�V}vR�Y�?;8;����U�S�q���y���zy�G���f�ۿ;8����,�<ݮ�r<yk5/���n�N���Y�9��n�/����m�.��.n����������?iMڥ���f�>;�i5��}�����K/p��e�b���-���w����� ���w�п���W�����~�;pQ�/���]����/�f���ܟ�Z/;G��}-(���w#�.6��;�Y�����8�볝�����{z4�5�j���ˑ�����.ݕ����~z:�x���N_������_?8��a�z�5ժ7�;�N��~T::�8��͝���k8>��	ޢZ�׻p������]a4����ա�8|��.6�>�oo�����]�.n��w�e��'��S�|�S:z*?
e5�ÆcV�7k��k]ZÛݏ�n�����?<�^��������c�>�?]��;;��}��ޚ��P??)_Q,�SmVq�9n}�����Lޛ����.����׃�ո��
o�û�ٝ>U�w�� ���^�w�Z�;���N�aa�|\�X >�緯��g�w�^�0ݻ�{�ë08�9Oƭӓ�ݚ3���_|�^�8u�]�˛���!\y���W]�����W�7��O�^�ݽwn}��v����Iu�q�8y*������t��too�ִQ�`;�O�3� �dlgZ.�����kp�X:~9{ ���P��?�N���Q���>��'�烓B���U�|f�
W���V�e�R�4��'�~ܰן�������ۇ�~�����c}/_�v�G����uo�R�ٌ�ǝ������x�R���^]����zZ>�����������9��O�����]sv
���gZE ��޼j��ޞߵ�n'�[��1�x��+���/�����:p��ơM9���m�G��yт��x��������u�~��O�j�e�z�F������r�zz�:��>=VGus�^�&g������|���;= �u������U�jL�����|pr��
g����n��������z�~�Asxu���7f8�>.��4m>�u{��^+t���h�cg4~�w����u���ť{r�[���w��;���n�����jT>=�*��aP��Ze���7�88-�L�J�Z�����*�i��p��ua~��v���sgzt�~�[Z/5��/�Wױ/O^n͋뇝�㻨twf�� =]���=���������_n���I�������t:(�T����Mc����^�V�˯�7���?�{;=������}���5���oOw��>]�]�?����U��������q�6.��ѠSo6v�{��k��2�B�~]���^���d�,�سp\����I�}}uuq�B�q���{���`<z9���]�柛W�'p￺�ȮGק^P�/�g�������v���7듾w[�=�g룝��^{�Ύ6��6�Óڬ���j���������S��f>n����ݝ���݋3.nJ��S��_<�<~�l6'W/�����(p���g7g��ip��\�ywgU�;iX������b8��n<L��uo<�w[;gݳ��lrk�+�x���������]{�p\�G�7G�J��jr��V��m�}8;�׮�w�������貿�R�F/7��^��;<;����(�����r}�vo���7�	���>�>��]~L��Qspg��ݘ������ �xj<[�7���8��b��M����Ǜ`�%z����[������;��;~qg���+��]�ŏݰq�X�Q�u*��t���m���ū���r��ߋ���­{�1＾y�O/����/p� 2_��-������t�~yn��g�����yr��ϋ����yss�|�O^F��6l�/���7v��S��i������Ώ��g�QPx���v��������ӧ�^wtu�>�������v�����?=,��5��t��b�hv[����~�2�z��M��W+|9pۀ����{�fs�y���~\+�������m��?��5��{�vV?k����d�a��Qi���Y ���{' ܆g��������8�7{�Ë��z�X�ڵ����ŝ����k�p��w���ί:��I�Z<�:�����t�x8�.�J� όKo����Mt1���o<<��n}�{��k^7w^^��~�.���nG�7�����M�.��o����dZ$�}m�\7g.P������S3x�G�;�=��7'��۷�ӽ������sS�w_�{������w�S|�{�lE/7a���e8l���]L������htyZ6���J�8���������w��8�w��m��ώ���Q��Y7�獓��ʽ���{�й3o.v�׻���q��No�����y�||r���R˶��u�xX�@T2����	Û�ͩ�~��۴�f���]kzR<y�<]�*�'c�x9���=��5�Z�a�9��ʡ���X.��&z��ԏO*��{�t0�m�V�������Cw4��v����}�ZW���ӧ��{?�h��̓B�1n��α)͸E�����bǾ9=8���W��}o?ܻ�{8���ʏ{��^e�f��Ӛk>����/���;�B4�Fǵ��?m&����n�n�u߫�Χe��q��:��O���'��S�O��~g���oc΍z���?�'o����x|?���w��[8�/_������A��}��vy�{?�����y�n^Nw�-���9�<���O��c�d>:�ٹ��6�����@�R�i��[��?��{��_^^�������=���wQy\�m�_�3���d*f�\*�*c?w�Ʒo���|7|7�u�����|���R���J%����/?�k�d������aLՓ����a&��Q�ߖo������������\��p�	;��ȉ~S'NB��7D/��h<���=w��җ�N������d(�5N8v:���rl6t�������d�ԝH3���+�L1o\�a"�q���D��1�� ��Ҫf��7�ܾ�U���FU�Zɜ�ah��Éct'����(�]    �	��P��ps��������Q-�����:��j4Ү�u��0�ʔk0D��1�8v��ׁ�޻a��B Fvϵ���	*׌=;�C'�dj�A:����2���֡�z%�G �`�?)��Ls2�Ad����8I1�ͻ�5#�_���,���ĉw���=����N0�eL��=c��A��v���xFgh�a�8Fİ�0n��8�����.Z��=�Cw0\��G�����	zn��L۰݀M8�~�a�]�=7�	%���y��$��3�B`S�Xy�
��M�cDM� �([�ˍ���N�	=���e�}ڣv׆Ϟ���CF69�Ƿok�ڌ��� �a1y�KNN�AMP��h�nυi#P�) �;���Ǯ1 ��~������E��a��6���n���
��ɸ��K��(cOKg�Ӂ) ;�#����8c7�k����zwpQ���?�S|�ǉP�[ڌ �V!�{bB���[��3�O����γz':�^�x��-���~�����v���L�p�!}���C]��!v������=� ��=���x��tDY���;4Dw�0��,��� �Gu
3/��Wq�Q�O���2ڮ� ��vl޶gI�i�9�8���%u _���m9��ߠy��)�ɶ�i?nI�}��r�#���zJt�_6��0�k5���~Ă�/��IOɕ�D����=o�ǎ���+K ��s�8&c��P P�.ޮ����Ud4�7@濭��`�$���4|ǀ�H��:��rf��\{-��$wH�4�`��T��LS��'�#!$��B(n�w��B��"���ۏ�[��M���3L�XFB\����L::�8�z����M9���$�ܨ�|�(T;w�K8���_�Q���Mi��G~ׁknk(i�f�U�����h��/ ��8c͑��u}N���E�츯n�Aɱe:l�(־TJ�]�D�*DH}FΨ�p��aԠ=�'���i��.w��:��h'Aw@�V�4}��v�W�x�� }r�^�/�7�[`�}!�B�R�x�b�%�τ9Vh��Йt��o�Ӎs`Bb�1�C����T�
,�q�q��4���(�y�R���?��~<p��7@U�C#B�-V~.vqxp1�w���}O�� �r��JГ����������OÁ?��hǤ��L-sb�"0��G?���pr�D�BXx�u���Yw� kv���5�2��x������ڂ�/f� �q�Ⱥ^1AoL�^)V2���G���&2^�L=�M��*�:�@[�QSѕ����2�d!���w�"��:0����x{o �����.kޅ�iR�� @ѥ�tl�X`���qǜ�Y�t���Oz�k�p��{g�%�b�K���!�{�	VK1X�x����AY�l:���� 3��ǔ��3c�筯��+���C���,������F��b���l!"���lBO�.E)�b��`L*
��('dA��.�f��X",W@"d��J�d��I�D=xk!m��c��P^4;v�&1��W%�4��_�"s-����@�xxA��W\�C�: ]��Ä�Z�(R�����pm.D��p�1��r�#�L!��@U]|`U�̞�U}|}�Q��9>`q�#�9�PNpeH��WF�.lm�W��5	��d9)���P����L`Lq�ǵ9�� �.�
���)�9v��ժ^����w��T@�ë[ �4�g�V��y��_a�|�B�-\!0KC�/��i�9�sh�>��+ uw�9��s�@Ѕ'�%q��E8G8�H]�Lx�)J �ԅ���O��E&����sqeO���ʳA�+��F��h�EB����e�5���4�8���0!D� }7mi|���|�B�B�	Zt S�VX�"�|jx���	\�3�o-�G=�M�V'.����v`�� n�3�����:3��.v �a ��m�4=D��*.)yOOO"��w�&���U8J���φ��HG��!��ƙ:n�3��M��n�r�V%r�sl��Q��.�0p����R��Al�&���J��-I�u+�k@?�V&�~4��)١�d���eۮ��;��G�pMWN����r*�δ/��:>,hH��B
���������{��c��DRF�4�i
j�S�E�p�������2�C���6X�A0�ڵ�i��w-��tt���@�� �=@���L^��:ra�g�`�
�k���Gؙ0�E�vQ	��L��Yη��}�%n~H�Op�߾I����ԇ!K�^��:@@�	YӦ���_i�`�g�i���@�Q۟}w{�C��g����>��	0����|2��p�	���Z�����o�]��$�����8�[�8��X���_�T��cA�.߰ۆ7Ώ���y�v}���j
�蕲!!�+�j���pf_�j
��&�1��x��'�f �_O����EK,nY��jIהX%t��,i��C��R�6B�2�&TU��`"�n8��@�¬�_iE[���c��5 37�6�RG�P�S�)ɩ�/k
��R1Ӕ�roq|4��O(�#K��$���)�B�這p��n��������B>38�#��n}���p���s�H
��?��&�������ׄh�b���'�:W���C�&�
�U��R&�d�`H������$|X�Q-�$�h��d�X6�U�X����*� ��r�H�����b߂�Yp�R����faS�	�����E���u!�0'�ƚ���$�����qB: �7��J\���O�bMf�ɒg r�d��,Q��Tk(�(tחqc�d���]�"y�S�B��.���06BhLN\+�ϡ�C� ]�e[�EK^�Ҭ2��b�v��EJ����H�j���B��#�D��K����='��2�l|#������2	!�S�zM�+�N�i���I���Xr�%�!HLYz����u�,c���ö��z��a��� 	�����q�"����ʈ"�
���zprDg߻�LCn���M"�3�>g"�%���b. 2�BGD5�u�GzUA :Y����M���F1�Ej��-lv���%�n1p����rN�d<gX�s�guU1�^��Y$s0#K��
�WKd�n�ݘ#���f �U�<MY��g,�i7ŕ��Un���|�ƿ��-��8Y� ���¯���ք��Jjo�O$�K+�P �?�=a�@�	���YC9�`R��F2)�k$`ǋV��a4��@[��#+�p7��������h���@����c?�p&�t��^�k�h%w���d	����k�J'b29�(�L�hH~/�{�p��5ґ�^� E�V�x�
k��z��OD�tp�EO��f��9Q�N�F��6{���em�T(��2��(��VE�,oC"�(��{1$�;�,� "�& CVc�� �D;�1�]a��b�'�h�r��FF���Qs�����M�z���ۺi��Xg)�����.�3��O�6B#�Gt]8!��������F$�!Y`��G�j��?B�I
#T�=G��MgW`�n�������;T�V0�r�@�����^���S�C�x�S�G`w������Z��N�+�����L�-N��F���(�&!���$��{�~�n#��㖡U����7��@tP.���u������E�X�%�̶�$[C�"����C��@��[���� �2����5#��ѕ�W�O�A`]�(k���,�s(�s��&��1\� �1�8)�
�j��xZ*d��3t�	k���v3���e􀱁��<(���ȥ��X�6�������}DK������c��XB3o	�����@��V�B\�3������-���p��Y��oQI��L|�.־�@LE.DS{!JN\i�    ���2����h(�B]܃g4அ�[w�L���W�x�І9�R��:�X�<���Y��r�|��ƽ#D��R-]�2	^���+c̟�^���� �rк̖mMd�jZ��(�7M���0����.�}p]~�Z��0�h����%4��n�}��"�P\D&8�z��ɐ�����X��	a�!f�o��r��x��'�#�n,u��T�Z�GT�[' %�^%���;�[��v���g�!K6G�
����~�ӂ�	g'�b��ҧ���Lw&Z����	¾��^�:!T�yRt4�������[u<M ���_�$���^΂����)�*�������J�.��h���Sv]f������@Q�O(�9}>b#u�N�L�o��hP����� 0 k��?���e>腍:��k����Vmf�t�Μa��x���;�;
��ηc���V�)�3�NR�Q���]W��5T�,f T���8��É�~"���(��H_n�F��	_0��+YX��4AS�-iX>u�Z�< �6;NӬP5�L%5�\��r=ӈ]Ɓ��Y�~��ʮڗR���C�͝�Mn(M�A�«Ni�p�@��>i�a��'6C�_��~$i�!6�f;�%�8�j����5��@cH�>]E���3|O�ѳl+gmtB���:��g����ۭ`đ7i����5c�~H�Y��[�-�/=��B�Q�m�TznR�~fǑm��S(����v!G����=j�7�����~[[����ү���_��$������T_�}�YY�v�r;d��Y��:_[6Yx�b��
�h�0��I��o�'-��>������&�8J��M�|��n�����ۆڵt�c�"h�-��%���k�{�x�ʭ��8�gxk
�2��D�m�@�>y.��`�܆T�	���nt�Vl��j���7�����Wx��������40b�J0��d%A"l1��id1��@ٍ��~��K9l�K�纃pʓ{�|������9�-�1˔S��h~8�f�xng��>�P)��._JO��/;��|9��8�?��OV�ry� )��c�nf�N�å��M���$�;q�����-����R2j}�7b0Ŀ�M:qlW�_#˞V��m�|_���#z�vf��<`���-����i��{��ճl,����o��9,S��t�+��H�2������QV�#�a�)��k���l��Ca������ŋ6�!?����
AC��
2E��K�~��C9��jgP%j���jhs��@Y�y�fU�e�����R�I�-�؆���m��$��a#lc�\
EY���PmW""������2�LY���E<K2 �@I�<�hۉo��4��_�{$����D��齷W�.�2P� q�ZB�x���j_�8?�Ҝ��,����J�U�@���4(��oC��d�Y��m��:K[��Z�(oS�g��7�E���h�%���s]�J ������%�ȱ�1MhY�6���*$��}�3�	����A�z )��Sj#!-�JyN�z+\�̩�؍t�{v�V�$�Ш�)�T�fW��ʔ\��{@�7���4lb0Du�1p�cR��k��$��l�q�Bhm��q<J�it ���43bǞ3ef�IJ�2w�@-6��� ��V�)~�:��S�Pȁ4I��P�̺&t1���<�P�<���_�VϠJ��Uژ�R���p��aǆɐ�p��F�K8-�=��?��|r�N��%c�Vߋ�I����_���;ݙ\)���ڗJ������0�Ș"���p�DK�jFtizխ�0�Y�4H�	���9�g	e�|-'֦�#�/p��MP��������X�]���%^�ބZŌ��p�D4���R,�.}�"�b�՝��N����Q8�}�Z�,yX?4�U��k��}���� ��I�
���P��d^���a9��S~Z����6F�|=S��R�O�B��mH�\�bU
hH;�8y���J3�ա�[0���P��X)@�"4��3�m+�V�*C��qa#�v����0�J%�=c!��](֕�RYY_|�K8�Hkm�ޥ��C��E�V{#v~$�GoNi�w��Oix�eّ�e�rz���b�H����=��|lN��a���UvƮ�#`/�k@-�~���w�۷�+u��s�����6�b&{QvC����u4y�>�����_�wDT��ө�tj�M%��b��r[��/V�l�+�Qk�fF>�Ҙ�xm�]O�@�S�~e�{�%�W�[�j������8g4�p�"av�5���m���$#�dĈǑ��������r�D�������b���!�s�0r����'p�sƁ�A�0U��j9#ߊ�9�oW~�"��£.��(��������j"���m�p̪�������X���L�W�^���K@�j-s��χA�F��\��=����{��+b/�y���X6�0CI��&4�C#�hA��.����o��E=
���Ŏt��8]�jI���� D��`��L2�y䬰AA��3h�9>LD����x��{'zZ��C�Zx�����+�p[��Y�(𮏓�G/��]C�.��5Pp{�|(����O������}��b/,.��.v%���ғ�M��҅)����`ˬ8t���z���'j>��&�Y+�D��
��m�j������ �V�T����Ikp>j5hb"�H[-�z��9f�����i|�]M��(�.¡��� ��}҅�y��M�p;3?&StND�d�z�0:���W7�H���i��=�SSf�: bݒ퐠,�#�`�P�f�=�%|�>�H׋�:]��f�!����>�f�: :�?b����P�^Fz���,ςx��U��4�W`�,�@H���IpL��U��8�{ewܮ�H�Dk��'�U���� ���eL7��ٕ*l��R��c�7.{�F��<��DFc6��3[oi�y�q�c%pO>�(Q+l�@MJʰ��)�Ȕ�
�]�#u��z-S�#{+8|X�y���_GԮg�c�H&�	(�'T)s��p M��g�̓Ȁl�����W����17��tϧ�b����.j��ބ��Vu������Lshs,n7�2�%r(�}�B���^@�e
�>�8�8����3s�t���]2�PŞ�Z�	��F$}ZF�0b8�@��8n\ŷĪ��<�Gp��y^�)�7�J㘇�#�ha3� :a�+����4�vެd��j<l����q� O8O�����<��1I�b|�/�f��O�	�ؚY�RH�&�JF��9Fy��Syg��D�w��:Hd�������0�)��P�Г@�֡8W�ׅU�\ɔ��%v�!�RҩU
V^i�`�
r)l/L��d����u#v���sZl�v��+tԀZ��;R~�(<�4$B��%���x{[tG�b_rR4!?E�;�񅚸��<
��?9:����K@tXܗ�� {&��q�.	�<xg�G����K���~��Q��VG��hj�gG&ɤ�͍��O����rF[d��|7�0*�U�mG���r�B${H���T~Cw䲫��#�H@�P"��ų���T��,0F[R��b����h�C�j|v(��u)�PҤ+��;�
6�xE�uL��t���쎰��J؝Wt���D8�u��\�L�S�bU"�̒�C��Ɗ�K$�x�\���Nm�\ߙG���
ձ�E���*�ieB�eC��žu|��6��j�ll@�*���5R�)��8<��Z�q,)mQ�7
�����[�ā���0g��6�9pL{�z\�&�� ��p�g��$�=����E������-E j��PMD�$��ĘCr�%���]�2�Q��WL��R�tP��@geH��2.{O���Ai���~�3�+_9�aM�81¤B9a�-�N�
j	�HE�ko6�1�Kc_f�:��sRф�f�Ĥ|��9S��t'����F��@    ��X�mᜪ�nj�X(C�h����Ż��6��c����������#�!�v�����+�l���4�^ ��Im���+]E��x包[�Д�[��9�-ɤ��Jd
N&E#Jbm3-����Xh�F�a�N��3=��
�Z�#
�;����Xu!�Vj#d(r|$U'R#��Z��!�kX3���=��%c�a��RF�5N�m� B��8t@�r�R r��:	B
P_�w�؍P;�C�y?����8p�#B��q4x~��Q�2&�#X;?���*0�B�L[�-���*��m$|���� &�&�q^K�E�G�dļ��p�[f�
�h8$���>����?hGfy芿�˱㝟�c�*@O@����X5| �������1 �5�7����)c�d�^����Fꖱ9�U;�z�L��j�?�^ô_��opx���Y(���g�"'�2�3�R�k��p���vS�#
��;���lC�c>�?+���V�.�|`r~P�|���q�� �����+��_�����/OI�s�H�RK�J�g����O��Rƫ�i?��˼tsL�x�߬�����LB)��4<�Yi��x�e�>�u�p���ߟt>H�S����IdJ>[�P��� ����B���(�B��)8e���/��u_�f��ݿ�wf�<�Y�~���Y*��J�ʖZ�_?�@4�[���Q䀸H���1d�$\ہbTQ܈^I�P�;�����*it��an�)�i��O�]�/�HT�f��!=[���)�9���)l��8���dlґi"-0 "3�-��y)�ꭓ�`��_��p'���Oi쒾��p~P�lBS���y!˭��At4˙�����;T|&g�!5��D����NNK�2Vs�A<�����q〨aV2�l����p�i�Mrz,�� 0�6�ߙ�=`�/�+��f5����9-�'�?���w7w����8��&��t%rǬ�r��{D`2��Hr��ٽ�k$6EkQ��L����#`o��e����$C J��ܽK@�b2B��ԕW�y��;��ҢG����f1Q,�~a�����U�S���:Q(f�K��vJf��������RP�����c�4����Վ}2��PA���z��~�HxK-l�y��p��Qj���m����5��6���:����� �Q�"]�x#�x7ӎ5?�e��%�;��=�iĈ�:Gh�aќW���>Z��W�h�ǀz%,�
��3c<���ӄ@%\g�N��p/��<R�c�=k9�о�Ǫ�ق�<�2'8g���ؚ�i�lޛW �Gƪg@V&�`������j_��n��ձȩc��+��M�0K�@2�7�S����ᬿY�RQ�\3vo�Ϸ� ԱA޷��,�N`���T�U�����Pm�y����}ۓ9r��1i�b�E��K=� �MWC+T�n���Q䛴���@��9��ԻJ��I����LX��4�9����d6�'dl��@�i:�v�Td��J*`�F�o �(MI���8E�:��L��jWx�~n�D.t��!ڡ'l@}$�]-����n��RH"Dy�Q�iG�-:�1i�q���&��T�(�*l}�ǖ��
ା(���R��@�iO�8˙&006'
Qm��uE�N�J�Ѝ���+<P����Ӯn�E���������XE���ߋ	OO����N�>�y���څ*�@^M�X�ϓ������vgt ���"��zfW�R�q���$&�ǹ�X����1�*Q��p�&��N�S���󳜱�{w���G��̧�urBA�]惽HG� ���̕PDb�	�^�Jp�Jp�b��F�는=����E���N��K@�{�s���/�6����Lx��u��F�#H?L Z*��4��BV(O���C�B�i��a�FJZ�wlj�K���P�]+�P�J�
�(�b@�A���O朎�#�J`�A4}�e���@4�p&"�Ǭ7�H�Kr����p�;J\a����Zp���p�J�弥��ŀ�RA�B��\�Nܒ"<(�-A5n�@�Rn�"�D�ۋM¶Qڀ��ȩ=UE �P��2	�h���?�ҎX�j-W+�DbH��m���<(��t�DM��z<�x�v�
�f�g�1p43g���k�`i%4�h�u;�3�䢏��-	㛹b�N���6�P�-)�9��bBS��N��+�n�1�a��9UaO�L���C��z(ҡ;"�\>˥jT�!�TEA\r,��rEb'L	���]�8�O�ō&�fZ����� ���MI��C�=1/˜���dHD�&�|�n�)���ƶq�������k�}9�k�=�?�G���oA�$~06��?���Y�	�w��"�q�95C����c�?V"������Sv���.Bb
�����Xtodϲ�Fj���e=�T` �d����D�)�
ϰQ"�9�Q��g�͜�^K���Y��v����#�
�D���R`Y
h�F+Y�_Q�B��RF�|����r�Y(��q�#=���nL�^ԛ�Z�g�Kٴ(d&q7���	�8q��n��̡�qK*�R��`^o.Ҩ<���<�L!� �>)�_��D���
k�ϩ3��+� �4���;JH�ފre֗r����0�
��*V�K�g]��Jt��ي �R����ES���|3�EZ��a��[��oG"TRsƄ)AW�L��nK��/$�~ߦ�1�$�_6q'+���Ec���4�Y��
���p"�ͽD�9Ẍ́ ��t>��� �;N�}��`�U$ڰˉ��+�c-���2"-�r�z�z'�z�*�l&���9�� F��9w��ڗ�U��ID�S��_7?�/z~���3��(f7�W������U�R��-����rd���P�еŉ5�z�0�_`Ŏ��^��M�"��n������q͹�B��N:D�^� �����,Y�kU�ʺ*�a\,J���I�1��'��]r�f'�8�>�H�[�1�T��q�������ii�*0N��\N��'\�ǫObx�@v����i+"�9�9zN�!i${,Ez��d�4�ځ��+r��H�����ș���Ҝp@��j�L�=Z�KU@��^�RM�Q)f��ZaU��c�J���FW�/��d���$U6�%�S��j~�z$>Z+CT�9���B%,%{��EYM?�p�Y�Y*_��:���H_�A�]�u�L�R�Ζ��ʿ�w���d�b��a�)5-[ JZ\�2킢	�3(@���W�e�ۣ�&r���9��7f��`UU�OB���RUH����(�����xȽU�|ħS_`8'��b�
l�����������!-c&*n���F�|U �ȬJ�GL����P�'ǯ�녌�ǯ� Ԫ�3q����;�+�J_*�¯Hvظ��������cQ|3�z�3z�ZrYR=�̨^4I�B�Ȉ��D*�D3��m~m�&!;�~����'+�/�)�OV���9�_55�}"+>��d�e�?��?Ld���˩�a���,�Ť�����/�b)Cr�J	�Ҭpv%����"Q�p�[Z��"�i�3ᄄh&��	$��3�]3�a���_[�U�R)�RL��EP}F! �e�^��g��mR�-�%���Nk����S��3%�Z��(�b����S̏�`���:�u	�_K�ɐ��K&\t����w�d��?�s_���;��*��ץ<K`J�;%Y`J��,U:����X�kE��g��*}���ȯ���L<S��l!R��)�%`������W�/��4����ZN����D58��25�H��h�z���}�?��y��7�)G�R���QX��K��+������9'��Z�,����'^�d���tZ�R���r��Ž]��n��dM�K�f�A�+"f?���k��������H��[���_�y1��J�=�� =�����\�p�vBrhgS{���Ԙ�xA���=|Ƈ��w��W�@�b}Y��v��>���2���K����>���/�*�DL�?J=֢-e��D�K    Se�� �����F�Qû���TQ
k�Ì��҄U]�Ud�5������8L'�'i��~��?��%PzUk<qI,����+j|OI ��BK$i}�����+b��[?E��B�/ �����tȤ�$�C�~Mr�X�� ��:o�-���9���Mh����!�L��� `�&�R�Qr+YՒ�D9�����DIa+9E>q�9���d�w���TE�p&�P3�E6E'�1J����r9��>F�\����z+ڜc�P�.��~p�B��"2*����}
���v)�YL��V�3.�f���^d���!K��i�r��(c;�tj+u�B}�*0���o� �bt�`7
��lG�f-_���Z��%x��b�=%o�J�����	�N�8T�zĴ1<0X�.�lQ�q�%'J ��dȆl�7�D;�A�
Ƹ�t���Ղ�(%�f�>6W��&#7G�Q�a��C�t����3�dX�E���g >�Y)�����I%>�3`��g��l�B�Z���� 鍟v@T���?�R���h��z�Pi����R�Z�4�]�e����F#�j\�ޤ
M��v�ܱ��NK
9�N���*"��~�-�G��Z(����o����d�d$���,@�+��*L*_�͡�Y��'޿*�_�
�%�O&���Z�=�I�t"Wu�öVKzt��)�}�(E�4O�<�i�E]��Qٖ�$a�ìR`0qH��ĳMB8�@e�e�`8�(V]�F���uY�zTj����VhZʲs�Ϫ
=]@��T��2_U��R&���@lR���H��;��-)ymy���j�I���q�#�O�Gc��I�YFRW��R�T���CS�e����m�͟DC8񿑉@^�e�n%ͥB�4�j=�,�Vx|���s�Y �oV��C�Y��i)�q q�MWZ�g����~�Cp%)��ncҤ�y�K�0e
p�k&C��{�I�s���6����h�����,�jс�*>�58��bF>X^�J�	H>Bw61Tro	�H#�����G�mbH@����G511Q��+���R;��?�{?�C�dhG��V� Һ�nl���!o��<�m�V�cn�e��IL���*&���1v90D]<k�"�_�V9s��!��!Wa���q�\�ql���::�@�mro�"�dȊ�i��I9,f�(a�TW$gd,�d�V�Kդl�Wj�]9���#�MLT�׌㋽��;�r,����bC��f_t��;�ʮ�	��:@����m����
�T�b�D���S�$��L�8���E�n�PX��]|u�輌�e�J�YC��]di�i�ސ3�λ"��#7LKd�|Qq7[��j�*eK�;��aL�rN�)#����r��\f^�{RϘ�)g�V��e����ɊL���$�j�ݬeLk���24Z�#o'�o;�f�P��µV�W�k����q0�U�h%�B���� ���f��؉]�[��p��Vuhef΀p��5�]��V�T�_)�@4%;��=&�`��b�\v&�D�+L�(���5OYe�%T`�_r�'7��L���U3��o��'C���淕�r%������A�i�g�𜤰9�St��m*%>/��;�f�vt��i�g�ߖ�Zj��6�U_1� �{'E���k��b�I�	9'Y��	>&�y�*� G�i��S�?Ds���jT���U�>/�9�m*Ж��D���Lw��"�K�x>\�n��C9���D�&iL�}�8堜�����B��AlԞ��	=�3:I����f�%ˢ
��N���ے>�5�3^����LC�A,L6�����@�l~I?�0ֲ
r��<��J��;j�YE�t�P��d�C�K��T��4Pu���N셃�Q��!td���-M�ҡf�+{ER�H����RQ�_�
�
�Y���qɩ�0���6t�wc��.�cma�jS"���gZ����s����	�H�^��:*�����K���O�8PI��d��h� �H)ѕw-'�]DFI����Q�.�����N�%V�F�%|]i����zSz4�kZ�R�Q��R*T~L��7<ʦ��|?1�6S�|�o?mj���2t[��s�_:�� gʑ0����FJŷ_�(�@9	6�. ��=.�>��)�3�_qWqO�u��N }��?$�V�'~�)k���E��7ȑd/(�1�-{�-��@,�{}Fa�3��]i���Z�.c0jȚ�D{����{wp��l1gsq�i�_:��>[�?�PQ� ��?S�csy��= �yu���k>�@J.I�j����B���33���	�M�#��ɱ�r�"*����e�#������ֵn��=�M���a0/,�y�,0m��Z���:�#���3����缗��nY^=�v:W��v8i��e,�Z4�#T4H�
X�S��Y1��OF�k���J��"�br���J9��%����yRA_$�� �w�Ĝxp�ڒ�W�@k<}Og��=�u�t����|����Ե��I����;�u�|��8�� ]t��W���i	ˢ�_�� i�J�.K�:ݕ~Ķ=��(��{���~y�:����� �X<?�	���� ���/�Z]t3�,�E�ƺ%G�v+�*���R��E�K�^���E�2��d���W�<��uB1T߾e��V!_�j�u��}prg���B�!j$�����L�Mc�p@��C�[�����0�b�-;����I�!iix�!g� �m�U��L~�q����S8;̎���4�	*�����!#yC��Gfk9%9�*LڂI[+��U��Wam���Z�"mY)�b��F�z�p�].��&�AcA@��z�mVƵGX`H/ܕ7Dف�.%���IE���^s�q��-A�r�Pd��q(��R���.���8n@�{;ةkC���X����Ю��Ad�rw��}c���#K��g��#j(�T�GZ��������	hC�F��l�}҇\\�Ў}���#�]饶3�-��I�œ���6�i1(��<���q\�t��f(f�����^׌�2��+�
��xP���[�V�à��Z(d�ٲ�eEY�u�����TdhJ�b�d[d�� M�3٣f�}b� 1�>�:L�$�hj��B6X��2W�3��􄳓��L������np����03b�&�X��&�/��v��6�{b��)l��g�\�1���'�EϼE�)�/� [��Z�W4��l�K���\�y���}2�+z��'���4ٴ�� ��ak&C?8س�P�	tj��sJ*�^L�E��Р�"��|	2"�IQ�+�'�D/���bϤgX�H��<W�MIȐD�$����{�眻���܌KD��+�\��vR�'IC:K����B��3�|�Dp��л~Z~ҿ�4m�5@g|q���`�A_��61��\�v�0K]ng�\��k)2�V$Z��*woFs-�f؏�U�<+���`�i=-K܋$^��ꃤWtO?��_=�+N��U�a����ŭ^_�k*�A������~���I$�-TK&8��`����^Z�ޟ��FV����O��c���a�R>�383kI�N���g�}E�b���N��m�)��~)�C\��M�7�7���THHb�h�ܐZ^�t3ۿr��^��NG�ջ �����~�] A*�%��ŋG�1-^ʌ���a�CF��^J���{�Cu(ȟZ_�):k���+}Ŭ*0�eRl�*�~�rD���7v]�70MnQx�+ThP�!���^�:hŽl�%M�v�)�3�:�к?�ژrZm�c�T�O��S���̪,)�C�O�C!�0L'Ca�����Q�u��A0��]����<��(8��]/D ~�BL�����ZT�E-#�II�2���-�̵�,8'L���>�U=s)�&�W��m�kwl_.�S��.@�3�HzjJ�D+��\�����sxM�L9����7����o�� >��'eUJ�d%$�L��b�=�y�c��J��Q�nv�W7��,�*մ�.Ἲ�})��p��R&N�!�$�q���~�#7�"��ؑq��͖>p�,��z��3�Dx�ᳲBwU    !ݕ��,.;��	ӳ:�8�G�E�Y���&fO'���spc��y3;���{:���f��^H�}C����t���%�Tw��"އl�N��{�Xª鰦���I����G�zz�Ʈ���p���xՑ,�c��o\IKkFQe��'�s�Z�N`�߸��HD��R��r���DZRĈ�yT1L�ڑ�k�O'�Ju�j4?Hx��'�7�y@�W�w�^Kl:������UM)O�'F�袔�Nʹ9c���$ֈt�X^9q��4GZ ��9p��[��'��\Z��d�YQ���3V��L����-�3$rq,;�;"��oDG��sDNHq�\����zdɑ�q�	0͗\�a)��8�K,4��LF@�����,��Ȓ�B���E}��C��:u�_	#1eb���p�Ɏ�룟C�)5.����l)�ND< ����	 �L��=�SL����(^j_��B�3]��t�"#��+���m{ƺ�0��b�tcZ���q&J�Ō����`��cE]�}�5���:�ˋ���+Aқ�J��,�	��g�Zr�����w�p���P���"Wx�H�|-,&�Xp>K�Z�I���0��#W"���Djz�v۠�	����`S��'���)f`�r~�@j�� )�`+{�;CTQ%i�O��	��a��
�y�1�e���.�g��e�o�k"E-���J�w?�7哣�{��,�:)K�֟�H� �MWx/0�n�ƆBS�/�MYw�ڒDo�t	"��̷��ny�.ғ|+I��r�c>G9uWR�Cd@�y�'BY+�%�,g$J��8��`M�Oj��ʢ"�Y��0�a��Z���lNZ��v��tH+"5����V��?+/�D	W��;�/1�BlLU�Ȕ7���|K�E�� �H�O�'2����#��hR�cd��x^��h)�r��4�Y�ɬ�!�)�dc�,Tḱ�H�4�>|�JȄMe�D�bY�Z5o�M)v��d}ȵle����I;�?�8�)K{�b�`i�e�}�e�Z-�f�@
'~Np�Ό�\evY��Q���Ї�a���������qy��.�dU���lC2{~���n�� ���D.=�ݝ��!0��@���["c˞�y�2��2MH)7L�O,B�xD�֌�W-�c?���!�=�cE��D"|���YH���%�(. �@�CyC8�zmjmZex��-��&��S��0Y�>����YH��}�qJ�7[�ak<�"RߡWVf�����Ҽ]>�����o,��r��$��>�ٵc���4C7�&�`�l�y��Dr?�FRd���\Ϲ��GJ�XZ±��ga�;(���Bc �Z������s��sNB�ɹ
4�����=����f�0��<�ab��֞'
� �l�7�nO�y?�-��%����X��O���ײ�=c���|�G������%����l<+�_����}G�D�$fs���D����͕Rv��b�$��oٍlvF�<ڞ ����w���%owJ߀fؐ8tl=v��;k�I��`+�O��Bh.�J:8����������`�J3�mCҩ_����4�""�t��F�m-�x���y�R���tD�_{A jř�����%g����;T��B%�E����p/ͩ�x���^'i��ͣ�����ۅ?�I�-;ϖ����+�s+nauYS���G|ۤ�����ɗr�$B~5��gj��Q�G�$`�A���,6g�ł�F��c=�b���_y��\��r�����8����k������Og�󌒩غp]��
�x��=�}�� _R�&�����Sdݶ>�e0�2S��I}Y��Kz�4�_�^�ђit�MpbiQ�b�M��x��Q{������L��a{��*��M!�d�w����V"�_w���O<��__�4���d�O�B,�O��54N9��W4�T�
br�.�Z�i�K�T�����q))�MoN�d����j�h���u���:��HĈ�4��cX�p��8�B�Z�
#�b�� ��� t�(�Bi��j	�L�:Q$��ζ��3�XD�q�b��	��e8Tu���(�獩�E(#��&3e�BK}@ѝ�C,S��X0�R�(���E,N"�! �B�}���n��~wп�o�z��3A�X�h���r6���8�]N���a�&���e�Q��iP~UD8�U�����M���å�0�A�U�	.�â���d�@�W��/�,b{5V��n���!�tTX�D�t�΄zf��z7�C��%�{R�7r�I��cC�b��WKL�YM�6z�����N�+��ߚL%&��b9#R���A�5&t��xUb�kg��qC�v�v1gj�KX,���9<���,�NQ�*2�8R�)W�r/�k�;�gQ�:*}�"�vH#��|B���b �%[� �Q*Z���I��g�Y�����K>1)&�gW��,Փ�� ��S�fћ�%��@�^e�X�e��c�:����n� ����*f�|����*k.�(�aT�T��tQyPh�E��n2�z�T�'�5�	��=�oQ.c<TbU^��/u-[���]�,���2�m1��v��O�=�'
��6�2P�r)���n@JN�'2�T�b~|w0ԋTV�P�,Q�{��h��t�E�O`pL�6\�ٸ�q�����1[�P\�}<��Z���[P��+�Jz��1�8��?h�5������S����/�]B/�1UxuF�F4弨�I`JX�c�I@^i�Wu9�w\�M�@h�}�`_*�}����t���l��K��h�8���z�h���ph`�
8�D͉ ߿}CW�`���۳?`�?�x���uT�U�Ig(�3�e�z'yAH�
3  us�.;X��*k����
]��Tk��"@>�_9�n8�ixB=�C��kv��cQf2�u|��8#ɏ$2Ⱦ�U�k��\�g4�I�>w��R�C�8�I������I$ƋQF�V�b��'�Kq9�Y[�{��R ��H�2��@5����U�^M8D[�1�)�� �J��V��R���y4N�	{�����(��P�J�����81�� i��2g���_���%#U�2{sjj����$<!��p!=�'�L^�z}=���#�'�}����3�Q�tc��6����җZ���;mb:O
��d��-��'?1:����ަ2�)�Gz
���D�Hf�N�3����x�h+u/�5
�ϚP̘҃&�%��O��'!��OQ�bL�oӟ��W�fe���X��0ŵB]=<9%e�����T�m�{B���c͗����;�-��s_\`�*�{|N�W�9<�5��e�:�%�O�/�����+���$�E�����Y9T�uTRgzu�A���@�Q>5���F�ސJ|�*o��=V���3��UoR�D �������5$ב������O��ʤB}��|:�罣IH�e~�<H�	��b/�%��])�.�"���N��޿����?m��WN:H�v���mu̙p�<�v֓Dj{;U�$�I�1}��}F�?i`넷�t:H�2��$�VԖwq�w�R�_#`�m�g=�$6�'�n�Y�NS��${H(���z���Ԕ�C��!��kJWK���f�F�U)�8��,�1[��,�zg_R��%��]Y8��H�0����f�M�-CF�
F}�鮘�Ox�)�I�$+�W�0��Q�j�X	P5Ϫ�1���T.�v�݉��S�~���8	�*��IRє�#j	=
-)��x�U�����rR~i�����_��J�Z�|	O�߾��Qh�"�ꎼp��J�0Y����l�j1�/��
7������*V�lz��eT���pYمP[Nd�@EWbW(��H�&�zz��y~$�̉2�

P�2/����t��-+Y��j$�kiU�]W�WB>%��0܎~�R���RID����2�����X?� ��"�}���І��_���8[Gp ��q�{����`F}��Ռ$:�H@�k�R�R�2��&ȡO�    ]��؍^�zˠ"��!���B�a�aD��5@���i`�^
��@V2�Z�V�����T����UM�>>� ����k�U�4�:���İ�?��Ć����M�6��5Ԫf�o��!�L������֭���P�.-WQ��������iY�8LT�:�z�s8q#��Hwim>����(e�V���kURsǩ�XSB���%j���MO3�=�XZ�4j	R7W�#��V%F���#o$�	v��""����~�M~DO���Z�
�����3eY�8�h��h����z��w���w���LrL��9�.��"�I '�Yn�M�nS&��5�ߜ5�����G�aK2Rê?�o�p����q�e����K2�.�	:m`$[�}��I�KN��mr@SI���}J׹��
�{�*�#ng��Wy�`�����ɠR�a��1��*3�_e�AL������4���.c�O�^k��4PUZ�fL���K6�u,
�B⑍D
:�U��^}D�͟�c��\]�T�&k�Å��
�������+���p���i������'FJˢ�����@��M?�12�
l��T^���&}�v��P�KS�cp��B��E����6��./9P���o�:�tI��umY�%��~с]�$sI���a���9��,�<R�>SY���e�X��}���R�{��ub��c1�g��'��?�3T����1{���0����/�	��놻�\���57F��u�٫��l���tM0nA2W�B����F�3b��^���V�Ҡ�վ�b�0趀�bE���k
��ca��#�6g�1��:����p��ޫ>�m�%�4�NX��s����V��̟�9J���9����b���*�l�ـ�Q�ض%V�k��ޞ<qq?�9K&aS)C��fSj ���
Ɍ���d�9���@�e4�iդ���:�4�"e�"^c~�HnM�J�%"ReT(
x-۝��b�?r;Ɖ��1>����Y�ב]�
�z��R�e0G��ȇ���ոTmK�Õ�6v3�;����Kjk�cD�z�p�}�V��'L�a/A�j��E��VT�r俫�P2��ۅ�w�H�2�\�4`( q�dfWgKU^5��bM����[m�iB�{�pXG�F���H���~;b=D[���Z%�p)@�9��� �+���Z�t��diwM�U�*�-�&�2j L
m2�ή��+J�8��S�M�R�̇$�j�^� )`0��
�cz�tZ������ȟ:��YA���[*���(S�t�SI͵I��_�PV��\m꼕��,+�l���k,]�!ܥ%c�)�����
��[:�(C�L_%d���@2��ܲB�P7DM�^��Oڮ�s�]��LOJ��͢7N�ql�MI�D��D����C�p��-� 3�,��T�P����u,��
��)
��/E�XL��VB0Vʅ�R����R�Q���⊠H:$@]�!�[�|쟩\?YB=�U��IaPθ�*�D��Bd5�r�
-:�µp����
]h����Va9�����g�+~�X,7L�g��W��{���ЏB��h�s���З�Ez��/�BIKc��b�\���֗�ifJk��Q��e�� ����NF�9mT"e������m#?S��H*��ī$�����vS8�z�mjH�0�%A��B����6�!9��$�6�@G�s=s�7g�����'��6	,���ql�m�J;E5|�~������:rAYCw��;hE�1�?5���3)��{��9B7���2�� 6t����C�ߡH���oX��6�s�B������'?�X����,]v1�o�p)�.0z0�%Vt��D�!�ƨ�>;��Ӿ�b0\q��Z�0�-�c�ӕ!��?t|���������s� T%�1��ê��qy9JHm&H�%������02��n`"�Bf/��G�b�)q�x�������ə�1�3�e���w� �_�F�`hy0p�
����஁��P�c�b�+�]�;����'�Y��0b?&��|{3^���l�[l��X��OE-��_fi���Z�9�e>��C��H&A#y��ZY�Χ���M숈]����:��
j�]pR-(hQ���GP!X�S ev�5�u�R�EkX���+�n�;�I6��~"�Ki�N��:ەyX:��~�?���h�R(�"zb6f&�D���+kօ��R� M�W+߽��'��~���6�`"�+%�Qn;�%��x��[��r-x�(TʂkF��\����Y	��Xz�.������Np|=;��`7��s�xu�������
3EG�#�:�:�j�6���ϊ;+�zN״@<ZeR�������~��z�զ�N7�w�<连o�����X�����U�ݙ�{�集=�!N�T����=W�	�>��6n�;U�uE5���b��-?j�B�1�%'xՅ�ƪ�a
Mc(�L�s��_�6^�+$ȔB>�D��>8��b������Cp���,��P�%�Dz�5������0�LV�|����
,�B�놑s~��;H���A�^���c�B"�j��C���� ������74d�O�LKn�ˁ���8�aI���K��
&�g��z-a��=�g��^<�����0��!7��F��<�r���uŚ@e�D�g|!����r�͌P>}�Ve��qiuI�,��
��"��'3њ=��IB�6t[ܔho/?�	��t(%H}E5U
���y6mq������H\b2�+�"�'���aw���+>�'�GF�Xt�_�@����;Vx�� (�mv=����С8�w�)�x���.31���h�3ִ�nՑqx�Ɖ�L�* �@��?�{7�+��2������ƽ�8/Z��� X��{^=�V߿���
�<�Q�]�oܭN�]?>ׯbe ͽ����֚���W]�FhuX�W����ț�t�������N"���nyV ���p���mN����V�>k4�>[^?���z���1�w�Rv�z0����G��t9A��Cs���~l�S4��&��e����|?���<�@�W���Gb,Oݽ�C�R��6��顁����F��W%t+#���20�;ֻE6�=��K=���\���H}>K��\u/R�{���6�oS�?-��>ʷ�
{}O<�d*��x��>�{�� �uCU*�c�op#Z�L�Ie��Tw0q�$��Gz���?�o��=��ه+ф�/�Wɢ�__4����aC�S�4�r]�N�m���q�]��\�e�_w�W����s(#ϥp\LS�t�ؔ������W�s��Oa�.^�R��6O���j�J̯OD��x��j�׻��!px���bN@)Hċ2��2��Fѐ�s�}D��0hE�,}��#%��\9��Ë���R�����g$K|S�������C-�3W�`����~���W𽾍䉳����~��$��K&�2���9ɞ��:�ϣѨ��JZ�!��8�b���!�L�$��y.�F���%�>H�S�q��Ş���Z���RSJ6�eY=L��2&���A);q]� D�@�ֵ�)/��iQ�C�Y/��j�7$u�I�s�=8-���kA�ጥ��8W�!X&�J�@'FΠN	JOx%h���О{����'JM�R�t%Պ%�-�\�}�R��%�uz�qPN����KL���c�i�=6;	�I8p^4�~GV'�:y$4ii�Ȩ����f�)�kJ��b]#�ٍ�Z�����<j��~rő�hM����rՖZ���sh����ښ�J ����Fl�����7��z.!�aOT��%@�J"��9UC���ʴa9 �:A�<�Z+����щ���hb�����K�34�����-R����?�x�x�caһ��L"�MF�m��т�p��0<�(pXN�Z{.�����"��J	��Ye�|x(D[$L����橣p_������,� G�^>��b� �  �����ΡNp���*�}PxL������`�`x���h4lE���۫r��/�J��]ie���-��"d����b��ݒ�H���0�fBGVP�r�2>���1����=:vm�#�I��#"����4��;����9E<�uP�����.��u徿j�JJp�o��W4�8�Hgx~�rfhumA�OZ}U�ce:d)P�Ü����n��n��4�e]]����3�k+	��\��m�
�D��*mBb�7qQ`���=�]�%rN��0�̎�m�����Ts�8��V��r񢴇��i��7����]v��1��n���P��:�2,-�bҐ*L�2����Ϝ�8p1�o^��ݘ8֦��J�%����x��b���#a�J���^�k��������i��z��ފ6fŕ�ڬ����忌�� ��tG�dɫn�X��R�����P=�6���v�
i�bO�:QӜ�2%t��0������Ø-6�Al���k�m���Vy#v�Nx_Y9Y��7�7�^I�iߛ<�Ə~�����TlдV�yN�)�np�2�槇�,q������y>��g5�R،�- gm���%eT��a��}����U�Ȏw��W�%�!�Bo�vZ�N���/t�<��~&r�E�lP����j�� ӷh�      ~      x��\͒9r>s��B{��
����Y�ek��q������fY�"�UT�wcO~?��~��3�l���1�Y��� �L ���n��a�`tI-�*)1Tӿ"zA��
���?����z�fY����eAɂ~�0cKAK+�$r�	�M[=��7�~_���˛�ś���֫���Ew,��MS�ߜ��IU%	�rV�����a��Ǒ�d$��j)i��6�_9/�����#!5�����i���8��Z�U0��z�L)����Q��sF`�U)�,�R%�d�a,��[ԥF33'oy��RSN�F��K?�Ɨ�]5.ܦ�j�%L^�!9[��g_m��>��5�v��o��槧}�旓:���R��K�S���� @#\��
ɜ�)b�9��0i�v`�,��`e)����w�y�H�zIXi�V>n�sة�Q�&JC8��ǻnݭ���j�J�a��{ġ�V}�k�M��zƏ�������ߏ�B���B��@p>?��}�_V�O4�����lBg����s���[��.�H<].�(�f�x׆�"$��t@�*F���e��Z��2��Є ����,��2@94�)�4T e�ퟠ�y���?�lg28����f��hΊ4cE��#���gƊ<�7FX�p4cF��#a��1#��Nę�f��3�c����3��-�r2f�9����S#cE�qK���L�����*
3�r�y�;�Ż}w|(���ȅ�������������.��������u��y�ս��]���T1զ�ۺnv���_����� ���IC�H�����U[�O��� �~��TT�}���Onv0�"�'�4F �sє�[�TIq:�*jBP����Pnv���'L�~�L��Rҥ�%S����0h�Ǔ����D���8���` ��#��U7x�y���B5��QH҂@�)�$�Bs�-���3ɴ��,�Ƥ�Y!�ϫ�����;����k�Y�Y4'T�l6����1��� 8�>�5����|���6�h�$UǷ&=�&�QSrk�/�p&���3��$�`A�r��Nz��_#�f���TU�ͱ�2�Xd5� �S����
�K712K��&R���i_d�W�� !�)�K�n�.�aı@��P�Y�|����h �`���Fk���.�$#	�d�Jk�FRv!�������X���@i�ZR�h`q�W�\���0#�x�E������XJ#$�i�^`x����2'/���dSl�;ذְ��6�U�Vn����Џt<CE�S����qԤ�>��7�Q^f��������J�!o�%Uޛ�YL��yI���\i�>CQ}���<@K�}�H Ҹ� 4s���b]Ot�I��J".�u�'�Щy��OEK�S/�|IT�9l.��XTq^�S;Kg"��!�����z@��Q1RK�$J�UK�����oh__d�/��\z�rIؒHP����,��gd��^o	�,�f ���c8��� n��;�w~�yuG�1t#��s����kF� (�a�(z���)�S��è#2.}�G��9bd;�?����q?6*�������4��I=` �O���pS�:���C�<d��M���:�!c|ٌ#KtPCp�q3�9G�Ƈ���Ь��Q6����f�B2� ���z:6�
��P��~��i��d\Ar��#x�2|�q)�uքIL�)�1�T�_c��Nl3��J{�E��Ѣ3v�:�8`�x>h�)@j|���=��HHM> ���,�va#���AL}�P�0�|j�A��p�N�*d�O�<ȳO�H<�� G[��\�H>�� ~�G��|j�A^��
o�G�����b��G�Ծ��&�ؤx6�өyՒ�%��N�&1?���p�L�c�P���]��o�#y���/?��H��R��=��A���yy����'�Uq6�*�-p$�3�Iys�w$oRy�˵�H�}�&��qC��i<}vf� ou����7��X�(̱�����pχ�yyE�ϕaݓ���<�ƫ��X=lb]F�R�E�Z͆�k/���{�
J%/n'�U���R����`�����������`|_�S�����k���S��А���x-�!�W��A�HC��0�c�8&�J'P��%Vڂ�À�
�LWAw�C�G	�<�� <� ���|��yn�s"���9����;lxHIg<:�(�4���y׋��/D���������vVntݛh��;6��T"d���F'������|6�b������~���ی��2�Ob4����Î.���-��yj�y�p��YF��a�d��3�X���<;�y%B��ZH}h h������zT���XP��~���G��1:1���3<fN��16L+��҉�d�،i�51���qȏ���x2clH.�n�d�c3�5�| ��3Ɔ�1���|��LV#���+3��|d�2c_����W��;��Ħ̘�܁L̫2��p���L�/�1/�?O���Be�˙	٬�Ħʘ��a�N̫2�傇d�N��2�咄�(�&E#U�UY8t�b�FU������z]�Q�13���;��r��6��(��i驱!��KNK��K��#����p$t���E�Y��YX�2Uo�a11�g�Ąn?�a�1�Ȱ��z�aQ1�̰p2{�a�1�ʰ��c���&d���K�=as��j�	�HL�o�HA�q\;��w\N��2�q�Ùy���g�Y)��X�f�i�i��>��(�9�]vyBC�B�E.�H��S�2�b�5��!�3!�8,�֤;�@�(B]1�2�l�����˩v���eK��-�k7�;e���f,U����)��^տٵ���C���ƌ.W=ixS1*��ғ<K塚���+�[����'��I9/Tq�ԋ�bRqN*A]���YˋIeL���X,����դ꜔�spz�N�9�%�6t�\�SsN*-J����
�)�^
[r#w�r!r�Č�s��J��Z�<�&`f����@D1_�<�jA�ܖ������]����}���F�`d�a˻P%���^���OJ��%)��*0��<X΀��0<a_a�f��Pb�p��݌9�N�b)X��f v�&n�^:�CU���r7ΐJ*=��k���^���sFpc�edP܋�[�/�$�/a�/���pFKl��'���M(�̷���j.�dƋ�;x��!9����ZZ��m�^2Vjk�'�g�4���>����PX��RA�z��{,�]����w�C���~�k�ߴ��î}�ٺ���V�M�����:��;�����Wm�ڵ�K�;l�ۇ��������7-�,~�mV����������������5�����o���{l��j=��*�w�o���_��.�[�_�.a�/�--�aēV^�����j�}UZ^���;����zU~Q�ݪ���7[���}s{�O�1��C]�G��c4u����=��v�=�k�7MW��~wh����iw�H�9l��uQ���'QTGQ�w[�7m�3}[�ժoV��h�5��=<�x����BO�������:�;i+���v#�U�t��n�]=Yn	`Y�ms׬�r_e"��TǏ�W�j�Ͷ�w��v��t���n�?3�ɶ��co�n��}�e5X��V��NS�֎�����QW_��<fy�8n��5!4�s�����b�X�������M�������������sE�;o�
|���>���D���%��V��z��ۧ����w�'b*���1W5��¬�֝uTJ���uV��N�5*�C���[�1��B��ȫ�R����]qA��Z�_eA_M��ۻ��빭�E�5����%8��
�{��'�;V� ��"��G@s�L�#����pGG[^G�?m��O�p\��7�������v#�ܴ�&uo�ъ�P������=~�|�x6��a�|x��bЪ���V�P=��Y�����Ы��{��j�a��g�E�m�'��
L��� �  �YH���)�NI5��Xj��7'VX�yUbRzW��'3y�=_bR�����/%�c�T����)B�����s��:CM�e���RM@ξ�rzh�	p�IƗ�t��s�/�OX�c�'�Ƅ/Z�!��9:qNp,�yIBO�s��ij�޸�4�XUjth�n^�I�.���^��SV=����գ�-8�^��Y5���y���{ٵ;�R�MqBaߑ�ꒊ|�thI9��k!E�D��m f�	�PK*J���(�3�2�ż���9�E;���6����t��������;�Щ4ᵥD���r�r�uPD�c�A�E�*�U�1H�O�^|��ü�Fp���
}�fg�eRR���K�v����fY�9+�%ׄ���*�9� ����k#XД���4aY�����!Z�p�^�-~��	^�
y�Q�ՔC��]`$Ŧ>vќ3q �9��!�ۋ^e�c�1]�cH�!$�? <C�E������U�q:�=��[��2F��AU�@
�.���'��us��'���\�V�p�|�Ѐ6��%�%L��o��	-'�Q�hο����ҽpI���on3�<�u����t�����d�V$�3*H� ��0[��R���R&ŷ(A��Z�R��/����N��A���_H�L���
��Egj�6�3�_c����3�=U�4Ƥk�7���b�|�*�1�	��^�o�Ц1&���(���h���)�̈!=��vc:�-�U��k�W%�Y9D� F\�[g�*!e�SN�����V�����4P\�$��#2
��\�_ÔMI����}s�͙���W�Ƀ�k ��%rx��h������"���зZzZ����Zvc���%�Ku�{/O��c���/��
I���E:��j�SJ|��+!χ����'^X�婾�3���
�j����~f�����d�|���;>cZ�~X�Q��M�w�N9%�o�����������1      �   �   x�M�Mn�0F��0U���K7��I��"%��2R7��O �")i��I�%���(��C�'�!�@��
�gC�:�ꖸ���n�R�{�$[��ZH�<�Ҟ�O�=��[��9�wx��m%5@tP[����hi��q �x])��"� ^]v2Mm���l�'���X
����};�N�{Z�� � 8g'      �   �  x����r�H���Sx�%5���ǳlEt4�"������g@D�����鏞ӧ#7���}��ߍ�6B�U�y��vn2�&U.kQ�?�y�M~�?~�@�`1T�&?������ʄ��@V�'n���Z�?}�ϯ��pXg h
uC��eY�ʎe~��u�gVQ|b��j����,|�U�ٯ��@�b�I>���m���\t]h)�g��++}u��ZG9Q$;�pD]:���(�h'��D�9%|�v�"�EG6 ��j�(��|�K�d����r�hV��K�N�Fݳ ����4�fO3���!�붋��m[���w]~z2x%�8x�ή���J*ee$�Dr�^B*7�Q]QR��S[_��0H�.b�٥a�|ִ���̑O�!6[Nn�0?Աh_=��a]�ݼ�U~	mA�07�\����>�'ٷ��g�v�T�
�	��DXrBN��CVGLu͕#˛�W�⋇�?���v�ٹn�#�X�ܐظi�|!� 4Q[�M�G�\&IȘ�6� �� �Q��A�j ��]x,J���7�h��fRP�CX�5�N�H�]"9�p@�hxѼ1��$ں�@� %�&D�k	7;^���7LSw�T	b+u*U*0qh���4�E�]�J�Rm0�'�MY���e��0��Ț�q��8���7�6�-�+�Y2+�'[r@��*H1��Ո��ڭt)�TɄ3k�'�ݮ��c�zH��6em�JhAQX�����Eu�_�I�������O�6�I������"A��{�*����Xk��ۃz+�����"���J��MQ$�� �Y4�*����f��I�`P` ��Y۱���b��A&�����3 �D@�_�֗yT��h��h�[:%J�)��$Y;���[�����DJ܋M��t4!�Y�����D7���VR�a�DL�����_�I��̓��.�������5���bs_��]G!�E7��RA$E�#�,��
j��#�WX�E��H���9���_�>^���cN1\�}Ȩx	�e�?��� a���>���4�r'uX\䜶	�.�|9���b��2���A�HV�Gl����K���?�_�E����!eYB� !����V�7ɓz>a����K̟���ۿ݇!l      �     x���ɮ�H��q�S��(Z;�`��1=�J�}��~�2�Tf֮z$O1��k��Q�:�q�i�Lo���IˊR� �:�_ck�^}��7�D�Z/oƈ�,��ۅ&؈8�.��TV,�4��|����+K��F^?��o@�.�#
�N1�FQ���QYݩ����iĥ-��U��>��i|X�R�6d���6|P~�3M}:�u��/� ws���5?��<j��l=D��l�$�rʃܷ�N�vY�J�1;�}wi��t���o�dY�� B# � �������� ����N�� �,ػ��y.�C�	���4��绘�9����F�Z�MP��Q��2+�,n�O���.����!S��1<���H�;UO=��9b�8����ʲ0��4z�`/�U�x�e��v������4��������@�����k("D̍�@ ��FFO�l�ɱ��P����bԵ1���4�W�.�/��9^7�r��[���V�4fw���n��-Y�UA0��'":��ț��ʺ��)��
U8��l��$n<�K���˫�Oۍ����,M�N�m��{)���-˛���0�
c �����A�R���4 �5��b}*��َ��D��y���,u�U�[�C� #��e�5IbHE��O���PC���`�x�iٱnC��I��J��� D.��Ҍ��W���(���y�)�4�e�E��&MQ7���r�3vR�-.�6�o#2\t,� po�
s����*m�6f~h�fGQa��g�N�b����p�ݪ�¥2�Ľq���L	nw�T�ӭ��J�4�#�! ",���8��m��m�g���:a�X]���w00`��F�#��>d���='5_��l_D�S���K�9�%8��C�S"�i4L6��Gtkx0*�3�{@�ʊ���v�g���𭝔A[�i$��ƛ�G�5C鬕��Q��v�x,�gv
�j)�$���Z�r�<��~^+�y���sj��x�W��2rвh��>R�wA^�uh݆ ׼���Z�7��y>��~mv�kf`���T8U�:�f��V+���\�����I��W��z��7�G:�ҹi�:��\moM��kɹ��~&����}�/��5D�1*}�Y�y��W�-W{5"#�͡�ka�e��>kAt��M>m<��zţ�&�itяa��	�o�ʑ�ZD�O��]c�0�<�Mpۅ�3��ռ��h���������B��R̪�T���93��|�(�Ki/�k�ɟ���e��Ov�ꓟ<�H��1̸��i0�(�^1�f�N�"-���a��U���ߊ�j�����{N��O�SĂK<��R���i-&��?|0:И�&�Q�z��YH��J�hqJ��6�ca�����b�{���ͥ�Z�k}����y�ȩ�Ԗ=�(s\���>��~��30}|���@%�r�L��g�]C��/����E�^wFpwZ5t��IgS��h\�6\'e�5|���D��a����X��wLZvE�Z��vUh���B��B���n����,�Xќvv����x��φ��.��;��CR��ӏ2tỳ�_"\/r��p�#�By����,sq�7�)+ҫz�e��Չ)qL_o�7g��\C}�ka_������a0�l5��f�jQ��E�{ek���Y��ֿ�g�/KsJ����z���ZmL8u�ծ���_�G>y��>���D��B�}"t㚴o��VQZ��K�P�^ZC5��/��ŭ��-iF֌������*�/��jYf�Cͻ>��>��C@ �S!���z�'��y��i[E4˺�!�����خB���u�͇��ۡS�h�D��f��L���f�E����ݟ��#�ϑP#�9]\�/��ok����8�Om�+�χvH*�dw"�����֬��<�P����Ta� �,�:1��#�x��6_�'�F��H2�kY�8�Y�00�ŷ��T�}z ����]��j��z�K%�P�����0���~�pQ��~�U��<�2�� �V]�;��}#����,�jUZc���n���d5�ތ��O�ܢƎ>������x�y�b��{�=���b�:v�PO��\��}�V�{�W�+�t��!�_�˦{a��٬?�x5Y�Dj��~��ƀb�}�M�<�:�ȍ���Т��}o�ˢ/�A��&�;�)E`
B�䨞ǥ��l�����G�ώ������#�ӟæM�\�f(�&�8��	���k./�}�$*�C����n7dx��N;P����f���z��x��a�|8,/᳽`}�ՂcUoe��R� =���ju�/��p�x�c0;N�s~�����Y���%Ծp!NkƦ=jՎ$?xv�c��}��Gyo��J<�GA�]�g:(�6���4_�����~H�s��[C�z�2��ܔK�_Lk����f=�o�`�1������'Ӎ��5� ะk�R�p�;��Rd��y�VO/lS��t���i����V�|~_M������JD@��>��Թ�<��B�ʌX˫��=;���Q�_�= �w����l�#umw�q��w����v��:Z[���N3��E@�k�����|�3a�4�Ӽ>�j�#~�Bb���Oŝ<������b����<y��R*��K��k?�f���1mG;�!d�I���~�*����#�iIdCv����xcq���/����Yn}c�>��G� ���|d|i�|���h;�w~���{i��,n�Ν�p7�M�*���Q�;Wf��#�>;kMz�^��j��Dú���+����u�P��=�15��68/�����5\[u�^�<C�q%Q���H�N܉��k�P��Y�uc�@����D\��oԢ�| jq���MĹ.��� �"�E���̷�<<'�<Γ>�V��1���R�v��j��&;���C�v�V��V��g��2̈́�t�Wg���W>Ue�6������� ��G��a�����4k�U�~�M[�O�h�7%HI�צ��ƲX-s��&B���槲��U���yOMV.%.��T�n������f�և��r�C�5��N��ֆ�R���������h��9I���j�&�4w2��3߼�Է���rډ��qg��e��ІRmF�+�<�N���lcZ[����q� {�/��Nr��xˍ�ʭ�.��$^��=�i��F]8}wy.�e�wB���k�1�t��ʏ��ޛ��G$A�#����x�9@(QK<�u׸,�Q�M�< i��P��w�)�GWQ��kf��xyV���Ȥ>>N�/�K3н�ݼZJ���o&�	����0��nT�fIJ�ګ���	�ۜ�u4
��4R��3xzM��S��&��8�O�l�I+̞k[ك,O��v���x�������ǘB>Qñ{ȕ�U7�����Y}g�L��>��O�s=�ѭg��Ԛ�*���r֯	mv>�Y#�sn�lG���ɟFo�_��&�)P���Z��Ӵ��ځo�:/u�	��Q���v���9�Ս7_NC��P�o����F;�~�o�S�{��#:0	c�� ~v<|o�N��w��XE�Nݐ�]\~��y����e��fg�2,�$^XFu�
�$��~�\�F�+�mDޣ�w?R������Wib0�{��e�;>2��/5
C��?��.ϽJwi�����qo�I�@����A#����w��x��'�:juˎt?�J������g橍;��_�-`z�K1��M����t��J����a���ǈU;e{����-�j�:A�^k��"$ ��é������3�T      �      x������ � �      �      x������ � �      �      x�3����4�,�2���=... 8L     