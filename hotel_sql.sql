SELECT * FROM member;
SELECT * FROM notice;
SELECT * FROM reservation_number_people;
SELECT * FROM reservation;
SELECT * FROM room_information;


--drop table notice;
--drop table reservation;
--drop table reservation_number_people CASCADE CONSTRAINTS; 
--drop table room_information;
--drop table member;


create table member(
m_id VARCHAR2(20) PRIMARY KEY,
m_name VARCHAR2(20),
m_zip1 VARCHAR2(40),
m_zip2 VARCHAR2(70),
m_zip3 VARCHAR2(70),
m_password VARCHAR2(20),
m_userEmail VARCHAR2(20),
m_tel VARCHAR2(20)
);

INSERT into member values ('admin','관리자','21030','인천 계양구 안산로 1','1111','1234','admin@aamil.com','010-111-1111');

create table notice (
b_no number(10) not null PRIMARY KEY,
b_title varchar2(200) not null,
b_detail varchar2(100),
b_writer varchar2(7) not null,
b_date date,
b_count number(11) default 0
);

drop sequence seq_b_no;


create sequence seq_b_no
start with 1
INCREMENT BY 1;

drop SEQUENCE seq_q_no;

create sequence seq_q_no
start with 1
INCREMENT BY 1;

create table room_information(
    room_type varchar2(50) primary key,
    room_prices number(10)
);

create table reservation_number_people(
reservation_number varchar2(40) PRIMARY KEY,
room_type varchar2(50),
adult varchar2(20),
child varchar2(20),
CONSTRAINT FK_room_type FOREIGN KEY (room_type) REFERENCES room_information (room_type)
);


--DELETE from room_information WHERE room_type = 1;

insert into room_information values('1',200000);  -- 디럭스 더블
insert into room_information values('2',300000);  -- 디럭스 트윈
insert into room_information values('3',400000);  -- 패밀리 스위트
insert into room_information values('4',500000);  -- 그랜드 스위트

--select * from room_information;

CREATE TABLE reservation (
        RESERVATION_NUMBER varchar2(40) NOT NULL PRIMARY KEY,
        m_id varchar2(30) NOT NULL,
        RESERVATION_DATA_IN date DEFAULT NULL,
        RESERVATION_DATA_OUT date DEFAULT NULL,
          CONFIRMATION_PAYMENT number(3) DEFAULT NULL,
        price number(10) DEFAULT NULL,

        CONSTRAINT FK_LOGIN_TO_RESERVATION2 FOREIGN KEY (m_id) REFERENCES member (m_id),
        CONSTRAINT FK_RESERVATION_NUMBER FOREIGN KEY (RESERVATION_NUMBER) REFERENCES reservation_number_people (RESERVATION_NUMBER) ON DELETE CASCADE
      );
      
      CREATE INDEX FK_LOGIN_TO_RESERVATION2 ON reservation (m_id);
        

create table QnA (
    q_no number(20,1) not null PRIMARY KEY,
    q_title varchar2(200) not null,
    q_detail varchar2(3000),
    q_writer varchar2(7) not null,
    q_date date,
    q_count number(11) default 0
);

--drop table QnA;
SELECT * FROM QnA;

--drop table common;

--delete from notice where b_no=2;
--INSERT INTO notice (b_no,b_title,b_detail,b_writer,b_date) VALUES (seq_b_no.nextval,'test1','test1','admin',sysdate);
--INSERT INTO notice (b_no,b_title,b_detail,b_writer,b_date) VALUES (1,'test1','test1','admin',sysdate);
--INSERT INTO notice (b_no,b_title,b_detail,b_writer,b_date) VALUES (2,'test1','test1','admin',sysdate);
--SELECT*FROM notice;
--drop SEQUENCE seq_notice_b_no;
--drop table notice;
--
--UPDATE notice SET b_no = '1';
--
--
--SELECT seq_notice_b_no.CURRVAL FROM DUAL;
--ALTER SEQUENCE seq_notice_b_no INCREMENT BY -33;
--SELECT seq_notice_b_no.NEXTVAL FROM DUAL;



commit;