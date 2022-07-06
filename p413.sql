create table member(
    name VARCHAR2(10),
    userid VARCHAR2(20),
    pwd VARCHAR2(10),
    email VARCHAR2(20),
    phone CHAR(13),
    admin number(1) default 0, -- 0:사용자, 1:관리자
    primary key(userid)
);

insert into member values('이소미','somi','1234','gmd@naver.com','010-2362-5157',0);
insert into member values('하상오','sang12','1234','ha122naver.com','010-5629-8888',1);
insert into member values('김윤승','light','1234','youn1004@naver.com','010-9999-8282',0);

SELECT
    *
FROM member;

update member set pwd='1234' where name='이소미';
