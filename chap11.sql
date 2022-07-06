create table board(
    num NUMBER(5)   PRIMARY KEY,
    pass    VARCHAR2(30),
    name    VARCHAR2(30),
    email   VARCHAR2(30),
    title   VARCHAR2(50),
    content VARCHAR2(1000),
    readcount NUMBER(4) DEFAULT 0,
    writedate DATE  DEFAULT SYSDATE
);
    
create sequence board_seq start with 1 increment by 1;

INSERT INTO board(num, name, email, pass, title, content)
VALUES(board_seq.NEXTVAL, '������', 'pinksung@nate.com', '1234', 'ù�湮', '�ݰ����ϴ�');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(board_seq.NEXTVAL, '������', 'pinksung@nate.com', '1234', '���', '���־��');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(board_seq.NEXTVAL, '������', 'raccon@nate.com', '3333', '����', '�Ͻ��Դϴ�');

INSERT INTO board(num, name, email, pass, title, content)
VALUES(board_seq.NEXTVAL, '������', 'one@nate.com', '1111', '������', '���������� ���ֽ��ϴ�');

commit;



