DROP TABLE t_member;
-- ȸ�� ���̺� ����
CREATE TABLE t_member(
    id VARCHAR2(20) primary key,
    pwd VARCHAR2(10),
    name VARCHAR2(50),
    email VARCHAR2(50),
    joinDate DATE DEFAULT SYSDATE
);

--ȸ�� ���� �߰�
INSERT INTO t_member
VALUES('hong', '1212', 'ȫ�浿', 'hong@gmail.com', sysdate);

INSERT INTO t_member
VALUES('lee', '1212', '�̼���', 'lee@test.com', sysdate);

INSERT INTO t_member
VALUES('kim', '1212', '������', 'kim@jweb.com', sysdate);
COMMIT;

SELECT * FROM t_member;