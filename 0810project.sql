/* guest33.sql */

create table guest33(
  guest_no int primary key,				/*방명록 연번*/
  guest_name varchar2(30) not null, 	/*방명록 글쓴이*/
  guest_title varchar2(200) not null, 	/*방명록 제목*/
  guest_cont varchar2(4000) not null, 	/*방명록 내용*/
  guest_pwd varchar2(30) not null,		/*방명록 비밀번호*/
  guest_hit int default 0, 				/*방명록 조회수*/
  guest_regdate date					/*방명록 등록일*/
);

/*방명록 시퀀시 생성*/
create sequence guest33_no_seq
       increment by 1 start with 1 nocache;
       
select * from GUEST33; 







/* member33 */

create table member33(
 	mem_code int unique not null,  		/*아이디 중복 구분 필드*/
 								 		/* unique 제약조건은 중복 자료 금지,null 허용 */
 	mem_id varchar(30) primary key, 	/*회원 아이디*/
 	mem_pwd varchar(30) not null, 		/*회원 비밀번호*/
 	mem_name varchar(20) not null, 		/*회원 이름*/
 	mem_zip varchar(3) not null, 		/*우편번호1*/
 	mem_zip2 varchar(3) not null, 		/*우편번호2*/
 	mem_addr varchar(100) not null, 	/*주소1*/	
 	mem_addr2 varchar(100) not null, 	/*주소2*/
 	mem_phone varchar(30) not null, 	/*연락처*/	
 	mem_email varchar(100) not null, 	/*이메일*/
 	mem_regdate date, 					/*회원등록 날짜*/
 	mem_state int, 						/*가입회원 1,탈퇴회원 2 */
 	mem_delcont varchar(4000), 			/*탈퇴사유*/
	 mem_deldate date 					/*탈퇴날짜*/
);

/***** member13테이블의 member33__seq 시퀀스 생성 *****/
create sequence member33_seq
       increment by 1 start with 1 nocache;

drop sequence member33_seq;

insert into member33 
	(mem_code,mem_id,mem_pwd,mem_name,mem_zip,mem_zip2,
	mem_addr,mem_addr2,mem_phone,mem_email,mem_regdate,mem_state)
values(member33_seq.nextval,'aaaaa','77777','홍길동','745','850',
	'서울시 마포구 대흥동','중앙 정보 처리 학원','010-777-7777',
	'hone@naver.com',sysdate,1);

select * from member33;








create table zipcode (
no int PRIMARY KEY
,ZIPCODE varchar(7)
,sido varchar(10) 
,gugun varchar(20) 
,dong varchar(50) 
,bunji varchar(50) 
);

select * from ZIPCODE;




insert into zipcode values ('1', '135-806', '서울', '강남구', '개포1동 경남아파트', '');
insert into zipcode values ('2', '135-807', '서울', '강남구', '개포1동 우성3차아파트', '(1∼6동)');
insert into zipcode values ('3', '135-806', '서울', '강남구', '개포1동 우성9차아파트', '(901∼902동)');
insert into zipcode values ('4', '135-770', '서울', '강남구', '개포1동 주공아파트', '(1∼16동)');
insert into zipcode values ('5', '135-805', '서울', '강남구', '개포1동 주공아파트', '(17∼40동)');
insert into zipcode values ('6', '135-966', '서울', '강남구', '개포1동 주공아파트', '(41∼85동)');
insert into zipcode values ('7', '135-807', '서울', '강남구', '개포1동 주공아파트', '(86∼103동)');
insert into zipcode values ('8', '135-805', '서울', '강남구', '개포1동 주공아파트', '(104∼125동)');
insert into zipcode values ('9', '135-807', '서울', '강남구', '개포1동 현대1차아파트', '(101∼106동)');
insert into zipcode values ('10', '135-805', '서울', '강남구', '개포1동', '565번지');
insert into zipcode values ('11', '135-806', '서울', '강남구', '개포1동', '649∼651');
insert into zipcode values ('12', '135-807', '서울', '강남구', '개포1동', '652∼653');
insert into zipcode values ('13', '135-810', '서울', '강남구', '개포1동', '660');
insert into zipcode values ('14', '135-241', '서울', '강남구', '개포1동', '');
insert into zipcode values ('15', '135-800', '서울', '강남구', '개포2동 우성8차아파트', '(801∼803동)');
insert into zipcode values ('16', '135-771', '서울', '강남구', '개포2동 주공아파트', '(201∼232동)');
insert into zipcode values ('17', '135-800', '서울', '강남구', '개포2동 주공아파트', '(301∼325동)');
insert into zipcode values ('18', '135-772', '서울', '강남구', '개포2동 주공아파트', '(401∼415동)');
insert into zipcode values ('19', '135-800', '서울', '강남구', '개포2동 주공아파트', '(416∼458동)');
insert into zipcode values ('20', '135-800', '서울', '강남구', '개포2동 현대3차아파트', '(1∼5동)');
insert into zipcode values ('21', '135-800', '서울', '강남구', '개포2동', '94∼108번지');
insert into zipcode values ('22', '135-801', '서울', '강남구', '개포2동', '138');
insert into zipcode values ('23', '135-802', '서울', '강남구', '개포2동', '139∼140');
insert into zipcode values ('24', '135-800', '서울', '강남구', '개포2동', '152∼156');
insert into zipcode values ('25', '135-802', '서울', '강남구', '개포2동', '157∼169');
insert into zipcode values ('26', '135-800', '서울', '강남구', '개포2동', '170∼177');
insert into zipcode values ('27', '135-803', '서울', '강남구', '개포2동', '178');
insert into zipcode values ('28', '135-800', '서울', '강남구', '개포2동', '179∼180');
insert into zipcode values ('29', '135-804', '서울', '강남구', '개포2동', '188∼189');
insert into zipcode values ('30', '135-242', '서울', '강남구', '개포2동', '');
insert into zipcode values ('31', '135-992', '서울', '강남구', '개포3동 주공아파트', '(501∼506동)');
insert into zipcode values ('32', '135-993', '서울', '강남구', '개포3동 주공아파트', '(601∼609동)');
insert into zipcode values ('33', '135-993', '서울', '강남구', '개포3동 주공아파트', '(701∼708동)');
insert into zipcode values ('34', '135-993', '서울', '강남구', '개포3동', '181∼185번지');
insert into zipcode values ('35', '135-994', '서울', '강남구', '개포3동', '186∼187');
insert into zipcode values ('36', '135-243', '서울', '강남구', '개포3동', '');
insert into zipcode values ('37', '135-773', '서울', '강남구', '개포4동 시영아파트', '(1∼25동)');
insert into zipcode values ('38', '135-809', '서울', '강남구', '개포4동 시영아파트', '(26∼30동)');
insert into zipcode values ('39', '135-809', '서울', '강남구', '개포4동 우성6차아파트', '(1∼8동)');
insert into zipcode values ('40', '135-808', '서울', '강남구', '개포4동 현대2차아파트', '(200∼220동)');
insert into zipcode values ('41', '135-808', '서울', '강남구', '개포4동', '654∼656번지');
insert into zipcode values ('42', '135-809', '서울', '강남구', '개포4동', '658');
insert into zipcode values ('43', '135-244', '서울', '강남구', '개포4동', '');
insert into zipcode values ('44', '135-940', '서울', '강남구', '개포동 대청아파트', '');
insert into zipcode values ('45', '135-797', '서울', '강남구', '개포동 대치아파트', '');
insert into zipcode values ('46', '135-988', '서울', '강남구', '개포동 도시개발공사', '');
insert into zipcode values ('47', '135-989', '서울', '강남구', '개포동 미씨860나산오피스텔', '');
insert into zipcode values ('48', '135-531', '서울', '강남구', '개포동 서울체신청', '');
insert into zipcode values ('49', '135-939', '서울', '강남구', '개포동 수서경찰서', '');
insert into zipcode values ('50', '135-939', '서울', '강남구', '개포동', '12∼14번지');
insert into zipcode values ('51', '135-940', '서울', '강남구', '개포동', '18');
insert into zipcode values ('52', '135-522', '서울', '강남구', '개포동', '739∼749');
insert into zipcode values ('53', '135-240', '서울', '강남구', '개포동', '');
insert into zipcode values ('54', '135-726', '서울', '강남구', '논현1동 거평빌딩', '');
insert into zipcode values ('55', '135-529', '서울', '강남구', '논현1동 세라빌딩', '');
insert into zipcode values ('56', '135-814', '서울', '강남구', '논현1동 신동아아파트', '');
insert into zipcode values ('57', '135-749', '서울', '강남구', '논현1동 영풍빌딩', '');
insert into zipcode values ('58', '135-811', '서울', '강남구', '논현1동', '1∼4번지');
insert into zipcode values ('59', '135-812', '서울', '강남구', '논현1동', '5∼11');
insert into zipcode values ('60', '135-811', '서울', '강남구', '논현1동', '12∼17');
insert into zipcode values ('61', '135-813', '서울', '강남구', '논현1동', '18∼19');
insert into zipcode values ('62', '135-814', '서울', '강남구', '논현1동', '20∼26');
insert into zipcode values ('63', '135-812', '서울', '강남구', '논현1동', '27∼29');
insert into zipcode values ('64', '135-815', '서울', '강남구', '논현1동', '30∼42');
insert into zipcode values ('65', '135-814', '서울', '강남구', '논현1동', '43∼54');
insert into zipcode values ('66', '135-815', '서울', '강남구', '논현1동', '55∼58');
insert into zipcode values ('67', '135-822', '서울', '강남구', '논현1동', '120∼125');
insert into zipcode values ('68', '135-823', '서울', '강남구', '논현1동', '126∼129');
insert into zipcode values ('69', '135-824', '서울', '강남구', '논현1동', '130∼133');
insert into zipcode values ('70', '135-822', '서울', '강남구', '논현1동', '134∼142');
insert into zipcode values ('71', '135-825', '서울', '강남구', '논현1동', '143∼148');
insert into zipcode values ('72', '135-824', '서울', '강남구', '논현1동', '149∼158');
insert into zipcode values ('73', '135-825', '서울', '강남구', '논현1동', '159∼168');
insert into zipcode values ('74', '135-824', '서울', '강남구', '논현1동', '169');
insert into zipcode values ('75', '135-817', '서울', '강남구', '논현1동', '170∼172');
insert into zipcode values ('76', '135-826', '서울', '강남구', '논현1동', '173∼179');
insert into zipcode values ('77', '135-827', '서울', '강남구', '논현1동', '180∼187');
insert into zipcode values ('78', '135-826', '서울', '강남구', '논현1동', '188∼195');
insert into zipcode values ('79', '135-827', '서울', '강남구', '논현1동', '196∼199');
insert into zipcode values ('80', '135-826', '서울', '강남구', '논현1동', '200∼206');
insert into zipcode values ('81', '135-011', '서울', '강남구', '논현1동', '');
insert into zipcode values ('82', '135-701', '서울', '강남구', '논현2동 건설회관', '');
insert into zipcode values ('83', '135-833', '서울', '강남구', '논현2동 경복아파트', '');
insert into zipcode values ('84', '135-727', '서울', '강남구', '논현2동 대한주택공사서울지사', '');
insert into zipcode values ('85', '135-820', '서울', '강남구', '논현2동 동현아파트', '');
insert into zipcode values ('86', '135-714', '서울', '강남구', '논현2동 두산빌딩', '');
insert into zipcode values ('87', '135-530', '서울', '강남구', '논현2동 보전빌딩', '');
insert into zipcode values ('88', '135-702', '서울', '강남구', '논현2동 서울세관', '');
insert into zipcode values ('89', '135-742', '서울', '강남구', '논현2동 서진빌딩', '');
insert into zipcode values ('90', '135-733', '서울', '강남구', '논현2동 성암빌딩', '');
insert into zipcode values ('91', '135-734', '서울', '강남구', '논현2동 송암빌딩', '');
insert into zipcode values ('92', '135-820', '서울', '강남구', '논현2동 쌍용아파트', '');
insert into zipcode values ('93', '135-833', '서울', '강남구', '논현2동 양지아파트', '');
insert into zipcode values ('94', '135-832', '서울', '강남구', '논현2동 현대인텔렉스', '');
insert into zipcode values ('95', '135-816', '서울', '강남구', '논현2동', '59∼69번지');
insert into zipcode values ('96', '135-995', '서울', '강남구', '논현2동', '70∼79');
insert into zipcode values ('97', '135-818', '서울', '강남구', '논현2동', '80∼90');
insert into zipcode values ('98', '135-819', '서울', '강남구', '논현2동', '91∼99');
insert into zipcode values ('99', '135-820', '서울', '강남구', '논현2동', '100∼105');
insert into zipcode values ('100', '135-821', '서울', '강남구', '논현2동', '106∼107');
insert into zipcode values ('101', '135-820', '서울', '강남구', '논현2동', '108');
insert into zipcode values ('102', '135-821', '서울', '강남구', '논현2동', '109∼110');
insert into zipcode values ('103', '135-820', '서울', '강남구', '논현2동', '111');
insert into zipcode values ('104', '135-821', '서울', '강남구', '논현2동', '112∼118');
insert into zipcode values ('105', '135-820', '서울', '강남구', '논현2동', '119');
insert into zipcode values ('106', '135-996', '서울', '강남구', '논현2동', '207∼211');
insert into zipcode values ('107', '135-829', '서울', '강남구', '논현2동', '212∼227');
insert into zipcode values ('108', '135-830', '서울', '강남구', '논현2동', '228∼234');
insert into zipcode values ('109', '135-831', '서울', '강남구', '논현2동', '235∼237');
insert into zipcode values ('110', '135-830', '서울', '강남구', '논현2동', '238∼242');
insert into zipcode values ('111', '135-832', '서울', '강남구', '논현2동', '243∼265');
insert into zipcode values ('112', '135-833', '서울', '강남구', '논현2동', '266∼278');
insert into zipcode values ('113', '135-012', '서울', '강남구', '논현2동', '');
insert into zipcode values ('114', '135-010', '서울', '강남구', '논현동', '');
insert into zipcode values ('115', '135-828', '서울', '강남구', '대치1동 개포우성1차아파트', '(1∼15동)');
insert into zipcode values ('116', '135-828', '서울', '강남구', '대치1동 개포우성2차아파트', '(1∼15동)');
insert into zipcode values ('117', '135-853', '서울', '강남구', '대치1동 국제아파트', '');
insert into zipcode values ('118', '135-838', '서울', '강남구', '대치1동 도곡아파트', '(1∼13동)');
insert into zipcode values ('119', '135-968', '서울', '강남구', '대치1동 삼성아파트', '');
insert into zipcode values ('120', '135-836', '서울', '강남구', '대치1동 선경아파트', '');
insert into zipcode values ('121', '135-835', '서울', '강남구', '대치1동 센트럴500쇼핑몰', '');
insert into zipcode values ('122', '135-838', '서울', '강남구', '대치1동 주공고층아파트', '');
insert into zipcode values ('123', '135-838', '서울', '강남구', '대치1동 진달래아파트', '(1∼2동)');
insert into zipcode values ('124', '135-774', '서울', '강남구', '대치1동 청실아파트', '');
insert into zipcode values ('125', '135-835', '서울', '강남구', '대치1동', '200∼474번지');
insert into zipcode values ('126', '135-836', '서울', '강남구', '대치1동', '506∼507');
insert into zipcode values ('127', '135-835', '서울', '강남구', '대치1동', '599∼611');
insert into zipcode values ('128', '135-838', '서울', '강남구', '대치1동', '621∼653');
insert into zipcode values ('129', '135-852', '서울', '강남구', '대치1동', '1013');
insert into zipcode values ('130', '135-500', '서울', '강남구', '대치1동', '1014∼1024');
insert into zipcode values ('131', '135-281', '서울', '강남구', '대치1동', '');
insert into zipcode values ('132', '135-837', '서울', '강남구', '대치2동 미도상가', '');
insert into zipcode values ('133', '135-775', '서울', '강남구', '대치2동 미도아파트', '(101∼106동)');
insert into zipcode values ('134', '135-837', '서울', '강남구', '대치2동 미도아파트', '(107∼212동)');
insert into zipcode values ('135', '135-969', '서울', '강남구', '대치2동 은마상가', '');
insert into zipcode values ('136', '135-778', '서울', '강남구', '대치2동 은마아파트', '(1∼13동)');
insert into zipcode values ('137', '135-969', '서울', '강남구', '대치2동 은마아파트', '(15∼23동)');
insert into zipcode values ('138', '135-970', '서울', '강남구', '대치2동 은마아파트', '(25∼31동)');
insert into zipcode values ('139', '135-969', '서울', '강남구', '대치2동 한보', '');
insert into zipcode values ('140', '135-850', '서울', '강남구', '대치2동 현대아파트', '');
insert into zipcode values ('141', '135-837', '서울', '강남구', '대치2동', '509∼510번지');
insert into zipcode values ('142', '135-501', '서울', '강남구', '대치2동', '989∼994');
insert into zipcode values ('143', '135-282', '서울', '강남구', '대치2동', '');
insert into zipcode values ('144', '135-844', '서울', '강남구', '대치3동 강남경찰서', '');
insert into zipcode values ('145', '135-708', '서울', '강남구', '대치3동 글라스타워빌딩', '');
insert into zipcode values ('146', '135-842', '서울', '강남구', '대치3동 대치현대아파트', '(101∼109동)');
insert into zipcode values ('147', '135-518', '서울', '강남구', '대치3동 미래와사람빌딩', '');
insert into zipcode values ('148', '135-735', '서울', '강남구', '대치3동 삼척탄좌빌딩', '');
insert into zipcode values ('149', '135-713', '서울', '강남구', '대치3동 섬유센터빌딩', '');
insert into zipcode values ('150', '135-851', '서울', '강남구', '대치3동 성원빌딩', '');


commit;