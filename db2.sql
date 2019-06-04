create table HFJ_RESOURCE (
    RES_ID int8 not null,
    RES_DELETED_AT timestamp,
    RES_VERSION varchar(7),
    HAS_TAGS boolean not null,
    RES_PUBLISHED timestamp not null,
    RES_UPDATED timestamp not null,
    SP_HAS_LINKS boolean,
    HASH_SHA256 varchar(64),
    SP_INDEX_STATUS int8,
    RES_LANGUAGE varchar(20),
    SP_CMPSTR_UNIQ_PRESENT boolean,
    SP_COORDS_PRESENT boolean,
    SP_DATE_PRESENT boolean,
    SP_NUMBER_PRESENT boolean,
    SP_QUANTITY_PRESENT boolean,
    SP_STRING_PRESENT boolean,
    SP_TOKEN_PRESENT boolean,
    SP_URI_PRESENT boolean,
    RES_PROFILE varchar(200),
    RES_TYPE varchar(30),
    RES_VER int8,
    FORCED_ID_PID int8,
    primary key (RES_ID)
);

create table HFJ_SEARCH (
    PID int8 not null,
    CREATED timestamp not null,
    SEARCH_DELETED boolean,
    FAILURE_CODE int4,
    FAILURE_MESSAGE varchar(500),
    LAST_UPDATED_HIGH timestamp,
    LAST_UPDATED_LOW timestamp,
    NUM_FOUND int4 not null,
    PREFERRED_PAGE_SIZE int4,
    RESOURCE_ID int8,
    RESOURCE_TYPE varchar(200),
    SEARCH_LAST_RETURNED timestamp not null,
    SEARCH_PARAM_MAP oid,
    SEARCH_QUERY_STRING text,
    SEARCH_QUERY_STRING_HASH int4,
    SEARCH_TYPE int4 not null,
    SEARCH_STATUS varchar(10) not null,
    TOTAL_COUNT int4,
    SEARCH_UUID varchar(36) not null,
    OPTLOCK_VERSION int4,
    primary key (PID)
);

create table HFJ_SEARCH_INCLUDE (
    PID int8 not null,
    SEARCH_INCLUDE varchar(200) not null,
    INC_RECURSE boolean not null,
    REVINCLUDE boolean not null,
    SEARCH_PID int8 not null,
    primary key (PID)
);

create table HFJ_SEARCH_RESULT (
    PID int8 not null,
    SEARCH_ORDER int4 not null,
    RESOURCE_PID int8 not null,
    SEARCH_PID int8 not null,
    primary key (PID)
);

create table HFJ_SPIDX_COORDS (
    SP_ID int8 not null,
    SP_MISSING boolean,
    SP_NAME varchar(100) not null,
    RES_ID int8,
    RES_TYPE varchar(255) not null,
    SP_UPDATED timestamp,
    HASH_IDENTITY int8,
    SP_LATITUDE float8,
    SP_LONGITUDE float8,
    primary key (SP_ID)
);

create table HFJ_SPIDX_DATE (
    SP_ID int8 not null,
    SP_MISSING boolean,
    SP_NAME varchar(100) not null,
    RES_ID int8,
    RES_TYPE varchar(255) not null,
    SP_UPDATED timestamp,
    HASH_IDENTITY int8,
    SP_VALUE_HIGH timestamp,
    SP_VALUE_LOW timestamp,
    primary key (SP_ID)
);

create table HFJ_SPIDX_NUMBER (
    SP_ID int8 not null,
    SP_MISSING boolean,
    SP_NAME varchar(100) not null,
    RES_ID int8,
    RES_TYPE varchar(255) not null,
    SP_UPDATED timestamp,
    HASH_IDENTITY int8,
    SP_VALUE numeric(19, 2),
    primary key (SP_ID)
);

create table HFJ_SPIDX_QUANTITY (
    SP_ID int8 not null,
    SP_MISSING boolean,
    SP_NAME varchar(100) not null,
    RES_ID int8,
    RES_TYPE varchar(255) not null,
    SP_UPDATED timestamp,
    HASH_IDENTITY int8,
    HASH_IDENTITY_AND_UNITS int8,
    HASH_IDENTITY_SYS_UNITS int8,
    SP_SYSTEM varchar(200),
    SP_UNITS varchar(200),
    SP_VALUE numeric(19, 2),
    primary key (SP_ID)
);

create table HFJ_SPIDX_STRING (
    SP_ID int8 not null,
    SP_MISSING boolean,
    SP_NAME varchar(100) not null,
    RES_ID int8,
    RES_TYPE varchar(255) not null,
    SP_UPDATED timestamp,
    HASH_EXACT int8,
    HASH_IDENTITY int8,
    HASH_NORM_PREFIX int8,
    SP_VALUE_EXACT varchar(200),
    SP_VALUE_NORMALIZED varchar(200),
    primary key (SP_ID)
);

create table HFJ_SPIDX_TOKEN (
    SP_ID int8 not null,
    SP_MISSING boolean,
    SP_NAME varchar(100) not null,
    RES_ID int8,
    RES_TYPE varchar(255) not null,
    SP_UPDATED timestamp,
    HASH_IDENTITY int8,
    HASH_SYS int8,
    HASH_SYS_AND_VALUE int8,
    HASH_VALUE int8,
    SP_SYSTEM varchar(200),
    SP_VALUE varchar(200),
    primary key (SP_ID)
);

create table HFJ_SPIDX_URI (
    SP_ID int8 not null,
    SP_MISSING boolean,
    SP_NAME varchar(100) not null,
    RES_ID int8,
    RES_TYPE varchar(255) not null,
    SP_UPDATED timestamp,
    HASH_IDENTITY int8,
    HASH_URI int8,
    SP_URI varchar(255),
    primary key (SP_ID)
);
