Vim�UnDo� ��Kr$�W�g5 j{���=\����B#�^��B�  %                                   `���     _�                     {        ����                                                                                                                                                                                                                                                                                                                                                             `���     �              &   SET statement_timeout = 0;   SET lock_timeout = 0;   ,SET idle_in_transaction_session_timeout = 0;   SET client_encoding = 'UTF8';   %SET standard_conforming_strings = on;   7SELECT pg_catalog.set_config('search_path', '', false);   "SET check_function_bodies = false;   SET xmloption = content;   "SET client_min_messages = warning;   SET row_security = off;       --   D-- Name: audittrail_event_type; Type: TYPE; Schema: public; Owner: -   --       2CREATE TYPE public.audittrail_event_type AS ENUM (       'create',       'update',       'delete'   );           SET default_tablespace = '';       'SET default_table_access_method = heap;       --   J-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: -   --       0CREATE TABLE public.active_storage_attachments (       id bigint NOT NULL,   $    name character varying NOT NULL,   +    record_type character varying NOT NULL,       record_id bigint NOT NULL,       blob_id bigint NOT NULL,   3    created_at timestamp without time zone NOT NULL   );           --   T-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       8CREATE SEQUENCE public.active_storage_attachments_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   ]-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       fALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;           --   D-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: -   --       *CREATE TABLE public.active_storage_blobs (       id bigint NOT NULL,   #    key character varying NOT NULL,   (    filename character varying NOT NULL,   #    content_type character varying,       metadata text,       byte_size bigint NOT NULL,   (    checksum character varying NOT NULL,   3    created_at timestamp without time zone NOT NULL   );           --   N-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       2CREATE SEQUENCE public.active_storage_blobs_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   W-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       ZALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;           --   D-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -   --       *CREATE TABLE public.ar_internal_metadata (   #    key character varying NOT NULL,       value character varying,   7    created_at timestamp(6) without time zone NOT NULL,   6    updated_at timestamp(6) without time zone NOT NULL   );           --   ;-- Name: audittrails; Type: TABLE; Schema: public; Owner: -   --       !CREATE TABLE public.audittrails (       id bigint NOT NULL,       module character varying,   ,    event_type public.audittrail_event_type,       data text,       ip_address inet,   (    modified_by_email character varying,   '    modified_by_name character varying,   4    created_at timestamp without time zone NOT NULL,   3    updated_at timestamp without time zone NOT NULL   );           --   E-- Name: audittrails_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       )CREATE SEQUENCE public.audittrails_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   N-- Name: audittrails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       HALTER SEQUENCE public.audittrails_id_seq OWNED BY public.audittrails.id;           --   6-- Name: cities; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.cities (       id bigint NOT NULL,       name character varying,        active boolean DEFAULT true,       province_id bigint   );           --   @-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       $CREATE SEQUENCE public.cities_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   I-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       >ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;           --   9-- Name: countries; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.countries (       id bigint NOT NULL,       code character varying,       name character varying,       active boolean DEFAULT true   );           --   C-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       'CREATE SEQUENCE public.countries_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   L-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       DALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;           --   8-- Name: expenses; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.expenses (       id bigint NOT NULL,   *    expense_id character varying NOT NULL,   $    item character varying NOT NULL,   #    uom character varying NOT NULL,       unit_rate numeric(20,2),   "    budgeted_amount numeric(20,2),   7    created_at timestamp(6) without time zone NOT NULL,   6    updated_at timestamp(6) without time zone NOT NULL   );           --   B-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       &CREATE SEQUENCE public.expenses_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   K-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       BALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;           --   6-- Name: phases; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.phases (       id bigint NOT NULL,       subdivision_id bigint,       status integer DEFAULT 1,       name character varying,   7    created_at timestamp(6) without time zone NOT NULL,   7    updated_at timestamp(6) without time zone NOT NULL,       created_by integer,       updated_by integer   );           --   @-- Name: phases_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       $CREATE SEQUENCE public.phases_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   I-- Name: phases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       >ALTER SEQUENCE public.phases_id_seq OWNED BY public.phases.id;           --   6-- Name: photos; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.photos (       id bigint NOT NULL,        photo_url character varying,   4    created_at timestamp without time zone NOT NULL,   3    updated_at timestamp without time zone NOT NULL   );           --   @-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       $CREATE SEQUENCE public.photos_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   I-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       >ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;           --   ?-- Name: project_members; Type: TABLE; Schema: public; Owner: -   --       %CREATE TABLE public.project_members (       id bigint NOT NULL,       status integer DEFAULT 1,   7    created_at timestamp(6) without time zone NOT NULL,   7    updated_at timestamp(6) without time zone NOT NULL,       user_id bigint NOT NULL,       role integer NOT NULL   );           --   I-- Name: project_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       -CREATE SEQUENCE public.project_members_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   R-- Name: project_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       PALTER SEQUENCE public.project_members_id_seq OWNED BY public.project_members.id;           --   =-- Name: project_roles; Type: TABLE; Schema: public; Owner: -   --       #CREATE TABLE public.project_roles (       id bigint NOT NULL,   $    name character varying NOT NULL,        active boolean DEFAULT true,   7    created_at timestamp(6) without time zone NOT NULL,   6    updated_at timestamp(6) without time zone NOT NULL   );           --   G-- Name: project_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       +CREATE SEQUENCE public.project_roles_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   P-- Name: project_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       LALTER SEQUENCE public.project_roles_id_seq OWNED BY public.project_roles.id;           --   @-- Name: project_statuses; Type: TABLE; Schema: public; Owner: -   --       &CREATE TABLE public.project_statuses (       id bigint NOT NULL,       name character varying,       description text,   7    created_at timestamp(6) without time zone NOT NULL,   7    updated_at timestamp(6) without time zone NOT NULL,       level integer NOT NULL,   N    color_code character varying DEFAULT '#FFFFFF'::character varying NOT NULL   );           --   J-- Name: project_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       .CREATE SEQUENCE public.project_statuses_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   S-- Name: project_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       RALTER SEQUENCE public.project_statuses_id_seq OWNED BY public.project_statuses.id;           --   =-- Name: project_types; Type: TABLE; Schema: public; Owner: -   --       #CREATE TABLE public.project_types (       id bigint NOT NULL,       name character varying,       description text,       status integer DEFAULT 1,   7    created_at timestamp(6) without time zone NOT NULL,   7    updated_at timestamp(6) without time zone NOT NULL,   &    "order" integer DEFAULT 0 NOT NULL   );           --   G-- Name: project_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       +CREATE SEQUENCE public.project_types_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   P-- Name: project_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       LALTER SEQUENCE public.project_types_id_seq OWNED BY public.project_types.id;           --   @-- Name: project_versions; Type: TABLE; Schema: public; Owner: -   --       &CREATE TABLE public.project_versions (       id bigint NOT NULL,       name character varying,   7    created_at timestamp(6) without time zone NOT NULL,   7    updated_at timestamp(6) without time zone NOT NULL,   &    "order" integer DEFAULT 0 NOT NULL   );           --   J-- Name: project_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       .CREATE SEQUENCE public.project_versions_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   S-- Name: project_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       RALTER SEQUENCE public.project_versions_id_seq OWNED BY public.project_versions.id;           --   8-- Name: projects; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.projects (       id bigint NOT NULL,   $    name character varying NOT NULL,       description text,   -    customer_name character varying NOT NULL,   )    financing character varying NOT NULL,       equity numeric(10,2),       poc character varying,   3    address_subdivision character varying NOT NULL,   -    address_phase character varying NOT NULL,   -    address_block character varying NOT NULL,   +    address_lot character varying NOT NULL,   ,    address_site character varying NOT NULL,   $    project_type_id bigint NOT NULL,   &    project_status_id bigint NOT NULL,   '    project_version_id bigint NOT NULL,   #    subdivision_id bigint NOT NULL,   7    created_at timestamp(6) without time zone NOT NULL,   7    updated_at timestamp(6) without time zone NOT NULL,   4    start_date timestamp without time zone NOT NULL,   )    end_date timestamp without time zone,   2    actual_start_date timestamp without time zone,   0    actual_end_date timestamp without time zone,        project_id character varying   );           --   B-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       &CREATE SEQUENCE public.projects_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   K-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       BALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;           --   9-- Name: provinces; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.provinces (       id bigint NOT NULL,       code character varying,       name character varying,        active boolean DEFAULT true,       country_id bigint   );           --   C-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       'CREATE SEQUENCE public.provinces_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   L-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       DALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;           --   5-- Name: roles; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.roles (       id bigint NOT NULL,   $    name character varying NOT NULL,        active boolean DEFAULT true,   4    created_at timestamp without time zone NOT NULL,   3    updated_at timestamp without time zone NOT NULL   );           --   ?-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       #CREATE SEQUENCE public.roles_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   H-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       <ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;           --   A-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -   --       'CREATE TABLE public.schema_migrations (   &    version character varying NOT NULL   );           --   <-- Name: subdivisions; Type: TABLE; Schema: public; Owner: -   --       "CREATE TABLE public.subdivisions (       id bigint NOT NULL,       status integer DEFAULT 1,       name character varying,       site_address text,   7    created_at timestamp(6) without time zone NOT NULL,   7    updated_at timestamp(6) without time zone NOT NULL,       created_by integer,       updated_by integer   );           --   F-- Name: subdivisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       *CREATE SEQUENCE public.subdivisions_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   O-- Name: subdivisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       JALTER SEQUENCE public.subdivisions_id_seq OWNED BY public.subdivisions.id;           --   :-- Name: task_items; Type: TABLE; Schema: public; Owner: -   --        CREATE TABLE public.task_items (       id bigint NOT NULL,   ,    task_item_id character varying NOT NULL,   /    task_item_class character varying NOT NULL,       description text NOT NULL,       "order" integer NOT NULL,   7    created_at timestamp(6) without time zone NOT NULL,   6    updated_at timestamp(6) without time zone NOT NULL   );           --   D-- Name: task_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       (CREATE SEQUENCE public.task_items_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   M-- Name: task_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       FALTER SEQUENCE public.task_items_id_seq OWNED BY public.task_items.id;           --   5-- Name: users; Type: TABLE; Schema: public; Owner: -   --       CREATE TABLE public.users (       id bigint NOT NULL,   C    email character varying DEFAULT ''::character varying NOT NULL,   P    encrypted_password character varying DEFAULT ''::character varying NOT NULL,   +    reset_password_token character varying,   7    reset_password_sent_at timestamp without time zone,   4    remember_created_at timestamp without time zone,   -    sign_in_count integer DEFAULT 0 NOT NULL,   3    current_sign_in_at timestamp without time zone,   0    last_sign_in_at timestamp without time zone,       current_sign_in_ip inet,       last_sign_in_ip inet,   )    confirmation_token character varying,   -    confirmed_at timestamp without time zone,   5    confirmation_sent_at timestamp without time zone,   (    unconfirmed_email character varying,   /    failed_attempts integer DEFAULT 0 NOT NULL,   #    unlock_token character varying,   *    locked_at timestamp without time zone,   *    first_name character varying NOT NULL,   )    last_name character varying NOT NULL,   "    middle_name character varying,       phone character varying,       mobile character varying,       address1 character varying,       address2 character varying,       city character varying,       state character varying,       zip_code character varying,   C    country_code character varying DEFAULT 'PH'::character varying,       role_id bigint DEFAULT 2,   4    created_at timestamp without time zone NOT NULL,   4    updated_at timestamp without time zone NOT NULL,       status integer DEFAULT 1   );           --   ?-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -   --       #CREATE SEQUENCE public.users_id_seq       START WITH 1       INCREMENT BY 1       NO MINVALUE       NO MAXVALUE       CACHE 1;           --   H-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -   --       <ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;           --   O-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: -   --       �ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);           --   I-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: -   --       �ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);           --   @-- Name: audittrails id; Type: DEFAULT; Schema: public; Owner: -   --       oALTER TABLE ONLY public.audittrails ALTER COLUMN id SET DEFAULT nextval('public.audittrails_id_seq'::regclass);           --   ;-- Name: cities id; Type: DEFAULT; Schema: public; Owner: -   --       eALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);           --   >-- Name: countries id; Type: DEFAULT; Schema: public; Owner: -   --       kALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);           --   =-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: -   --       iALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);           --   ;-- Name: phases id; Type: DEFAULT; Schema: public; Owner: -   --       eALTER TABLE ONLY public.phases ALTER COLUMN id SET DEFAULT nextval('public.phases_id_seq'::regclass);           --   ;-- Name: photos id; Type: DEFAULT; Schema: public; Owner: -   --       eALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);           --   D-- Name: project_members id; Type: DEFAULT; Schema: public; Owner: -   --       wALTER TABLE ONLY public.project_members ALTER COLUMN id SET DEFAULT nextval('public.project_members_id_seq'::regclass);           --   B-- Name: project_roles id; Type: DEFAULT; Schema: public; Owner: -   --       sALTER TABLE ONLY public.project_roles ALTER COLUMN id SET DEFAULT nextval('public.project_roles_id_seq'::regclass);           --   E-- Name: project_statuses id; Type: DEFAULT; Schema: public; Owner: -   --       yALTER TABLE ONLY public.project_statuses ALTER COLUMN id SET DEFAULT nextval('public.project_statuses_id_seq'::regclass);           --   B-- Name: project_types id; Type: DEFAULT; Schema: public; Owner: -   --       sALTER TABLE ONLY public.project_types ALTER COLUMN id SET DEFAULT nextval('public.project_types_id_seq'::regclass);           --   E-- Name: project_versions id; Type: DEFAULT; Schema: public; Owner: -   --       yALTER TABLE ONLY public.project_versions ALTER COLUMN id SET DEFAULT nextval('public.project_versions_id_seq'::regclass);           --   =-- Name: projects id; Type: DEFAULT; Schema: public; Owner: -   --       iALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);           --   >-- Name: provinces id; Type: DEFAULT; Schema: public; Owner: -   --       kALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);           --   :-- Name: roles id; Type: DEFAULT; Schema: public; Owner: -   --       cALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);           --   A-- Name: subdivisions id; Type: DEFAULT; Schema: public; Owner: -   --       qALTER TABLE ONLY public.subdivisions ALTER COLUMN id SET DEFAULT nextval('public.subdivisions_id_seq'::regclass);           --   ?-- Name: task_items id; Type: DEFAULT; Schema: public; Owner: -   --       mALTER TABLE ONLY public.task_items ALTER COLUMN id SET DEFAULT nextval('public.task_items_id_seq'::regclass);           --   :-- Name: users id; Type: DEFAULT; Schema: public; Owner: -   --       cALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);           --   o-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       2ALTER TABLE ONLY public.active_storage_attachments   D    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);           --   c-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       ,ALTER TABLE ONLY public.active_storage_blobs   >    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);           --   c-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       ,ALTER TABLE ONLY public.ar_internal_metadata   ?    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);           --   Q-- Name: audittrails audittrails_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       #ALTER TABLE ONLY public.audittrails   5    ADD CONSTRAINT audittrails_pkey PRIMARY KEY (id);           --   G-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.cities   0    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);           --   M-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       !ALTER TABLE ONLY public.countries   3    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);           --   K-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --        ALTER TABLE ONLY public.expenses   2    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);           --   G-- Name: phases phases_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.phases   0    ADD CONSTRAINT phases_pkey PRIMARY KEY (id);           --   G-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.photos   0    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);           --   Y-- Name: project_members project_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       'ALTER TABLE ONLY public.project_members   9    ADD CONSTRAINT project_members_pkey PRIMARY KEY (id);           --   U-- Name: project_roles project_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       %ALTER TABLE ONLY public.project_roles   7    ADD CONSTRAINT project_roles_pkey PRIMARY KEY (id);           --   [-- Name: project_statuses project_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       (ALTER TABLE ONLY public.project_statuses   :    ADD CONSTRAINT project_statuses_pkey PRIMARY KEY (id);           --   U-- Name: project_types project_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       %ALTER TABLE ONLY public.project_types   7    ADD CONSTRAINT project_types_pkey PRIMARY KEY (id);           --   [-- Name: project_versions project_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       (ALTER TABLE ONLY public.project_versions   :    ADD CONSTRAINT project_versions_pkey PRIMARY KEY (id);           --   K-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --        ALTER TABLE ONLY public.projects   2    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);           --   M-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       !ALTER TABLE ONLY public.provinces   3    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);           --   E-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.roles   /    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);           --   ]-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       )ALTER TABLE ONLY public.schema_migrations   @    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);           --   S-- Name: subdivisions subdivisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       $ALTER TABLE ONLY public.subdivisions   6    ADD CONSTRAINT subdivisions_pkey PRIMARY KEY (id);           --   O-- Name: task_items task_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       "ALTER TABLE ONLY public.task_items   4    ADD CONSTRAINT task_items_pkey PRIMARY KEY (id);           --   E-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.users   /    ADD CONSTRAINT users_pkey PRIMARY KEY (id);           --   [-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: -   --       tCREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);           --   [-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: -   --       �CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);           --   Q-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: -   --       gCREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);           --   O-- Name: index_audittrails_on_event_type; Type: INDEX; Schema: public; Owner: -   --       \CREATE INDEX index_audittrails_on_event_type ON public.audittrails USING btree (event_type);           --   V-- Name: index_audittrails_on_modified_by_email; Type: INDEX; Schema: public; Owner: -   --       jCREATE INDEX index_audittrails_on_modified_by_email ON public.audittrails USING btree (modified_by_email);           --   K-- Name: index_audittrails_on_module; Type: INDEX; Schema: public; Owner: -   --       TCREATE INDEX index_audittrails_on_module ON public.audittrails USING btree (module);           --   D-- Name: index_cities_on_name; Type: INDEX; Schema: public; Owner: -   --       FCREATE INDEX index_cities_on_name ON public.cities USING btree (name);           --   T-- Name: index_cities_on_name_and_province_id; Type: INDEX; Schema: public; Owner: -   --       jCREATE UNIQUE INDEX index_cities_on_name_and_province_id ON public.cities USING btree (name, province_id);           --   K-- Name: index_cities_on_province_id; Type: INDEX; Schema: public; Owner: -   --       TCREATE INDEX index_cities_on_province_id ON public.cities USING btree (province_id);           --   G-- Name: index_countries_on_code; Type: INDEX; Schema: public; Owner: -   --       SCREATE UNIQUE INDEX index_countries_on_code ON public.countries USING btree (code);           --   G-- Name: index_countries_on_name; Type: INDEX; Schema: public; Owner: -   --       SCREATE UNIQUE INDEX index_countries_on_name ON public.countries USING btree (name);           --   N-- Name: index_phases_on_subdivision_id; Type: INDEX; Schema: public; Owner: -   --       ZCREATE INDEX index_phases_on_subdivision_id ON public.phases USING btree (subdivision_id);           --   P-- Name: index_project_members_on_user_id; Type: INDEX; Schema: public; Owner: -   --       ^CREATE INDEX index_project_members_on_user_id ON public.project_members USING btree (user_id);           --   S-- Name: index_projects_on_project_status_id; Type: INDEX; Schema: public; Owner: -   --       dCREATE INDEX index_projects_on_project_status_id ON public.projects USING btree (project_status_id);           --   Q-- Name: index_projects_on_project_type_id; Type: INDEX; Schema: public; Owner: -   --       `CREATE INDEX index_projects_on_project_type_id ON public.projects USING btree (project_type_id);           --   T-- Name: index_projects_on_project_version_id; Type: INDEX; Schema: public; Owner: -   --       fCREATE INDEX index_projects_on_project_version_id ON public.projects USING btree (project_version_id);           --   P-- Name: index_projects_on_subdivision_id; Type: INDEX; Schema: public; Owner: -   --       ^CREATE INDEX index_projects_on_subdivision_id ON public.projects USING btree (subdivision_id);           --   G-- Name: index_provinces_on_code; Type: INDEX; Schema: public; Owner: -   --       SCREATE UNIQUE INDEX index_provinces_on_code ON public.provinces USING btree (code);           --   M-- Name: index_provinces_on_country_id; Type: INDEX; Schema: public; Owner: -   --       XCREATE INDEX index_provinces_on_country_id ON public.provinces USING btree (country_id);           --   G-- Name: index_provinces_on_name; Type: INDEX; Schema: public; Owner: -   --       SCREATE UNIQUE INDEX index_provinces_on_name ON public.provinces USING btree (name);           --   Q-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: -   --       gCREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);           --   D-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -   --       MCREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);           --   S-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -   --       kCREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);           --   F-- Name: index_users_on_role_id; Type: INDEX; Schema: public; Owner: -   --       JCREATE INDEX index_users_on_role_id ON public.users USING btree (role_id);           --   K-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: -   --       [CREATE UNIQUE INDEX index_users_on_unlock_token ON public.users USING btree (unlock_token);           --   T-- Name: projects fk_rails_2cf980028e; Type: FK CONSTRAINT; Schema: public; Owner: -   --        ALTER TABLE ONLY public.projects   g    ADD CONSTRAINT fk_rails_2cf980028e FOREIGN KEY (subdivision_id) REFERENCES public.subdivisions(id);           --   T-- Name: projects fk_rails_3c18cc7be9; Type: FK CONSTRAINT; Schema: public; Owner: -   --        ALTER TABLE ONLY public.projects   o    ADD CONSTRAINT fk_rails_3c18cc7be9 FOREIGN KEY (project_version_id) REFERENCES public.project_versions(id);           --   R-- Name: phases fk_rails_3f8b9b00f7; Type: FK CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.phases   g    ADD CONSTRAINT fk_rails_3f8b9b00f7 FOREIGN KEY (subdivision_id) REFERENCES public.subdivisions(id);           --   [-- Name: project_members fk_rails_49ebe01c9d; Type: FK CONSTRAINT; Schema: public; Owner: -   --       'ALTER TABLE ONLY public.project_members   Y    ADD CONSTRAINT fk_rails_49ebe01c9d FOREIGN KEY (user_id) REFERENCES public.users(id);           --   Q-- Name: users fk_rails_642f17018b; Type: FK CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.users   Y    ADD CONSTRAINT fk_rails_642f17018b FOREIGN KEY (role_id) REFERENCES public.roles(id);           --   U-- Name: provinces fk_rails_6fd6e7d17e; Type: FK CONSTRAINT; Schema: public; Owner: -   --       !ALTER TABLE ONLY public.provinces   `    ADD CONSTRAINT fk_rails_6fd6e7d17e FOREIGN KEY (country_id) REFERENCES public.countries(id);           --   T-- Name: projects fk_rails_9a8c72b8ef; Type: FK CONSTRAINT; Schema: public; Owner: -   --        ALTER TABLE ONLY public.projects   n    ADD CONSTRAINT fk_rails_9a8c72b8ef FOREIGN KEY (project_status_id) REFERENCES public.project_statuses(id);           --   f-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: -   --       2ALTER TABLE ONLY public.active_storage_attachments   h    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);           --   T-- Name: projects fk_rails_d7ca4cafeb; Type: FK CONSTRAINT; Schema: public; Owner: -   --        ALTER TABLE ONLY public.projects   i    ADD CONSTRAINT fk_rails_d7ca4cafeb FOREIGN KEY (project_type_id) REFERENCES public.project_types(id);           --   R-- Name: cities fk_rails_ea36d40e0b; Type: FK CONSTRAINT; Schema: public; Owner: -   --       ALTER TABLE ONLY public.cities   a    ADD CONSTRAINT fk_rails_ea36d40e0b FOREIGN KEY (province_id) REFERENCES public.provinces(id);           --   $-- PostgreSQL database dump complete   --       #SET search_path TO "$user", public;       0INSERT INTO "schema_migrations" (version) VALUES   ('20180828060755'),   ('20180828060802'),   ('20180828060814'),   ('20180828085245'),   ('20180828085316'),   ('20200611145951'),   ('20200611145956'),   ('20200611150001'),   ('20210415025645'),   ('20210617024947'),   ('20210617025559'),   ('20210707090733'),   ('20210708061017'),   ('20210712073652'),   ('20210713010132'),   ('20210713090656'),   ('20210713092337'),   ('20210713093059'),   ('20210714075041'),   ('20210718200756'),   ('20210718230459'),   ('20210718231616'),   ('20210719001317'),   ('20210719001632'),   ('20210719004317'),   ('20210719020402'),   ('20210719020507'),   ('20210719045757'),   ('20210719084325'),   ('20210719101630'),   ('20210721021718');        5�5��