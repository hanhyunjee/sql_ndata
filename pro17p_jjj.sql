Drop table USER_t;


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










DROP TABLE t_Board CASCADE CONSTRAINTS;

create table t_Board(
    articleNO number(10) primary key,
    parentNO number(10) default 0,
    title varchar2(500) not null,
    content varchar2(4000),
    imageFileName varchar2(30),
    writedate date default sysdate not null,
    id varchar2(10),
    CONSTRAINT FK_ID FOREIGN KEY(id)
    REFERENCES t_member(id)
);

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(1, 0, '�����־��', '�̱����� �����.', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(2, 0, '�����־��.', '����ī�� ������;��', null, sysdate, 'hong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(3, 2, '�亯�Դϴ�.', '���� �ı⿡ ���� �����Դϴ�.', null, sysdate, 'dong');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(5, 3, '�亯�Դϴ�.', '���� �����ϴ�.', null, sysdate, 'lee');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(4, 0, '�����λ�', '������ �����λ�����', null, sysdate, 'kim');

insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
values(6, 2, '�亯�Դϴ�', '�ݰ�����!!!', null, sysdate, 'lee');

commit;

SELECT
    *
FROM t_board;


SELECT LEVEL,
       articleNO,
       parentNO,
       LPAD(' ', 4*(LEVEL-1)) || title title,
       content,
       writeDate,
       id
       FROM t_board
       START WITH parentNO=0
       CONNECT BY PRIOR articleNO=parentNO
       ORDER SIBLINGS BY articleNO DESC;
       



