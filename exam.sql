DROP TABLE t_member CASCADE CONSTRAINTS;

CREATE TABLE t_member (
    id varchar2(10)PRIMARY KEY,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate DATE DEFAULT SYSDATE
);

insert into t_member
values('lee','1212','이순심','lee@test.com',SYSDATE);
insert into t_member
values('kim','1212','김유신','kim@test.com',SYSDATE);
insert into t_member
values('park','1212','박재상','park@test.com',SYSDATE);


SELECT * FROM t_member;

UPDATE t_member SET name='이순신' where id='lee';

DELETE FROM t_member WHERE id = 'lee';