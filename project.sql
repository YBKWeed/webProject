create user fox  identified by 1111;
grant dba to fox;

select*from users;
select*from visit;
select*from photo;
drop table users;
insert into users values(seq_users_id.nextval,'weed','김영범','1111');
create table users(
    id number primary key,
    id2 varchar2(30) not null unique,
    name varchar2(30) not null,
    password varchar2(100) not null
);
delete form users where id2 = weed;
create sequence seq_users_id;
insert into visit values(seq_visit_id.nextval, 'weed', 'hi', sysdate);
create table visit(
    id number primary key,
    u_id varchar2(30) references users(id2) on delete cascade,
    content varchar2(30) not null,
    regdate date
);
create sequence seq_visit_id;
create sequence seq_photo_id;
drop table visit;
create table photo(
    id number primary key,
    u_id varchar2(30) references users(id2) on delete cascade,
    content varchar2(30) not null,
    uri varchar2(300) not null,
    filename varchar2(30) not null,
    regdate date
);
drop table photo;
create table free(
    id number primary key,
    u_id number references users(id) on delete cascade,
    title varchar2(100) not null,
    content clob not null,
    regdate date,
    hit number,
    ref number,
    step number,
    depth number
);
create sequence seq_blog_id;

create table reply(
    id number primary key,
    b_id number references board(id) on delete cascade,
    u_id number references users(id) on delete cascade,
    content varchar2(300) not null,
    regdate timestamp
);

create sequence  seq_reply_id;