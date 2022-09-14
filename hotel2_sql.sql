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
    b_no number(20,0) not null PRIMARY KEY,
    b_title varchar2(200) not null,
    b_detail varchar2(100),
    b_writer varchar2(7) not null,
    b_date date,
    b_count number(11) default 0
);

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
        
CREATE SEQUENCE seq_b_no MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE ;
-- maxvalue n | nomaxvalue  <== 최고값
-- minvalue n | nominvalue  <== 최소값
-- cycle | nocycle   <== 최소,최고값이후 값의 생성유무
-- cache | nocache   <== 메모리에 유지할 값의 수 (default 20)
--INCREMENT BY [증가값]

--SELECT * FROM user_sequences;    
--drop sequence seq_b_no;

commit;
