create table authority (
id int GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
name varchar(50));

create table users (
id int GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
first_name varchar(50),
family_name varchar(50),
e_mail varchar(50),
phone varchar(50),
language char(2),
image_url varchar(256),
login varchar(50) NOT NULL UNIQUE,
password varchar(50),
burth_date Date,
enabled boolean);

create table users_authority (
id int GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
id_user BIGINT,
id_authority BIGINT);

create table token (
series varchar(50) primary key,
value varchar(50),
date timestamp,
ip_address varchar(50),
user_agent varchar(200),
user_login varchar(50));

create table UserConnection (userId varchar(255) not null,
	providerId varchar(255) not null,
	providerUserId varchar(255),
	rank int not null,
	displayName varchar(255),
	profileUrl varchar(512),
	imageUrl varchar(512),
	accessToken varchar(512) not null,
	secret varchar(512),
	refreshToken varchar(512),
	expireTime bigint,
	primary key (userId, providerId, providerUserId));
create unique index UserConnectionRank on UserConnection(userId, providerId, rank);
