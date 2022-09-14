drop table member;
create table member(
    name VARCHAR2(10),
    userid VARCHAR2(20),
    pwd VARCHAR2(10),
    email VARCHAR2(20),
    primary key(userid)
);

insert into member values('±ñ¼î','kkan','1234','kkan@naver.com');
insert into member values('µ¿¿ø','dong','1234','dong@naver.com');
insert into member values('º½ºñ','spring','1234','sping@naver.com');
commit;

SELECT
    *
FROM member;

update member set pwd='1234' where name='ÀÌ¼Ò¹Ì';

create table USER_t(
    userID VARCHAR2(20),
    userPassword VARCHAR2(10),
    userName VARCHAR2(10),
    userGender VARCHAR2(10),
    userEmail VARCHAR2(20),
    primary key(userid)
);
insert into USER_t values('kkan','1234','±ñ¼î','³²','kkan@naver.com');
insert into USER_t values('dong','1234','µ¿¿ø','³²','dong@naver.com');
insert into USER_t values('spring','1234','º½ÀÌ','¿©','sping@naver.com');
commit;

SELECT
    *
FROM USER_t;


