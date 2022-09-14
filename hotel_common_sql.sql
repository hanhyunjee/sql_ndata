--drop table common;
create table common(
    boardId number(11), /* 게시판 No */
    m_id varchar(20) NOT NULL, /* 회원No */
    title VARCHAR2(50) NOT NULL, /* 제목 */
	boardDate DATE default sysdate, /* 날짜 */
	content VARCHAR2(500) NOT NULL, /* 내용 */
    viewCnt number(11) default 0, /* 조회수 */
    imageFileName VARCHAR2(100), /* 이미지 파일 이름 */
    originNo number(11), /* 원글 번호 */
    groupOrd number(11), /* 답글 체크용 */
    groupLayer number(11), /* 답글 체크용 */
    constraint pk_member primary key(m_id)
);

--drop sequence seq_g_board_boardId;
create sequence seq_common_boardId
 START WITH  1
INCREMENT BY 1;

Insert into common(boardId, m_id, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_common_boardId.nextval, 'kkan', '1', sysdate, '1',seq_common_boardId.nextval, 0,0);
Insert into common(boardId, m_id, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_common_boardId.nextval, 'kim', '2', sysdate, '교통문의요' ,seq_common_boardId.nextval, 0,0);
Insert into common(boardId, m_id, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_common_boardId.nextval, 'hyun', '3', sysdate, '너무 좋았어요',seq_common_boardId.nextval, 0,0);

commit;


