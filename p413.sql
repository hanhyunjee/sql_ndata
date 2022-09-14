drop table member;
create table member(
    name VARCHAR2(10),
    userid VARCHAR2(20),
    pwd VARCHAR2(10),
    email VARCHAR2(20),
    primary key(userid)
);

insert into member values('���','kkan','1234','kkan@naver.com');
insert into member values('����','dong','1234','dong@naver.com');
insert into member values('����','spring','1234','sping@naver.com');
commit;

SELECT
    *
FROM member;

update member set pwd='1234' where name='�̼ҹ�';

create table USER_t(
    userID VARCHAR2(20),
    userPassword VARCHAR2(10),
    userName VARCHAR2(10),
    userGender VARCHAR2(10),
    userEmail VARCHAR2(20),
    primary key(userid)
);
insert into USER_t values('kkan','1234','���','��','kkan@naver.com');
insert into USER_t values('dong','1234','����','��','dong@naver.com');
insert into USER_t values('spring','1234','����','��','sping@naver.com');
commit;

SELECT
    *
FROM USER_t;


