--drop table notice;
create table notice(
    noticeId number(11), /* 공지사항 No */
    adminId varchar(20) NOT NULL, /* 관리자No */
    title VARCHAR2(50) NOT NULL, /* 제목 */
    boardDate DATE default sysdate, /* 날짜 */
    content VARCHAR2(500) NOT NULL, /* 내용 */
    viewCnt number(11) default 0, /* 조회수 */
    imageFileName VARCHAR2(100), /* 이미지 파일 이름 */
    originNo number(11), /* 원글 번호 */

    constraint pk_notice primary key(noticeId)
);

--drop sequence seq_notice_noticeId;
create sequence seq_notice_noticeId
 START WITH  1
INCREMENT BY 1;

Insert into notice(noticeId, adminId, title, boardDate, content, originNo) values (seq_notice_noticeId.nextval, 'admin', '1', sysdate, '1',seq_notice_noticeId.nextval);
Insert into notice(noticeId, adminId, title, boardDate, content, originNo) values (seq_notice_noticeId.nextval, 'admin', '2', sysdate, '배송 지연관련 공지',seq_notice_noticeId.nextval);

commit;

SELECT
    *
FROM notice;