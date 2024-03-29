drop table member;
drop table address;
/*회원정보*/
create table address(
    id varchar2(20) not null,
    addr_num varchar(20) not null,
    addr_road varchar(100) not null,
    addr_detail varchar(100)
);
create table member(
    memberNo number(11) not null,
    name varchar2(20) not null,
    jumin varchar2(20) not null,
    id varchar2(20) not null,
    password varchar2(20) not null,
    pwHint varchar2(50),
    pwHintAns varchar2(20),
    email varchar2(50) not null,
    receive_email number(1) not null,
    authority varchar2(20) not null,
    houseNum varchar2(20),
    phoneNum varchar2(20) not null,
    enabled number(1) not null,
    cartId_mem number(11),
    point int,
    acc_Price int
);

drop sequence memberNo;
CREATE UNIQUE INDEX PK_member
	ON member (
		memberNo ASC
	);

CREATE SEQUENCE memberNo
 START WITH  1
INCREMENT BY 1;

drop sequence seq_cartId_mem;
CREATE SEQUENCE seq_cartId_mem
 START WITH  1
INCREMENT BY 1;

insert into member values(memberno.nextval, 'admin2', '000000-0000000', 'admin', 'admin', 'z', 'z',
'admin@admin', 0, 'ROLE_ADMIN', '020000000','01000000000',1,0,0,0);





drop table g_board;
create table g_board(
    boardId number(11), /* 게시판 No */
    memberId varchar(20) NOT NULL, /* 회원No */
    title VARCHAR2(50) NOT NULL, /* 제목 */
	boardDate DATE default sysdate, /* 날짜 */
	content VARCHAR2(500) NOT NULL, /* 내용 */
    viewCnt number(11) default 0, /* 조회수 */
    imageFileName VARCHAR2(100), /* 이미지 파일 이름 */
    originNo number(11), /* 원글 번호 */
    groupOrd number(11), /* 답글 체크용 */
    groupLayer number(11), /* 답글 체크용 */
    constraint pk_g_board primary key(boardId)
);

drop sequence seq_g_board_boardId;
create sequence seq_g_board_boardId
 START WITH  1
INCREMENT BY 1;

Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '1', sysdate, '1',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '2', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '3', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '4', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '5', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '6', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '7', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '8', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '9', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '10', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);
Insert into g_board(boardId, memberId, title, boardDate, content, originNo, groupOrd, groupLayer) values (seq_g_board_boardId.nextval, 'cnh0214', '책 배송이 너무 늦어요', sysdate, '책 배송이 너무 늦어요',seq_g_board_boardId.nextval, 0,0);


drop table cart;
create table cart(
    id number(11) not null,
    grandTotal int not null
);

drop table cartitem;
create table cartitem(
    id number(11) not null,
    quantity number(11) not null,
    totalPrice int not null,
    cartId number(11),
    bookNo number(11)
);
drop SEQUENCE seq_cartitemId;
create sequence seq_cartitemId
 START WITH  1
INCREMENT BY 1;

drop table history;
create table history(
	id varchar2(20) not null,
	name varchar2(20) not null,
	cartId number(11) not null,
	email varchar2(50),
	content varchar2(200),
	phoneNum varchar2(30),
	bookNo number(11) not null,
	price int not null,
	quantity number(11) not null,
	grandTotal int not null,
	addr_num varchar2(20) not null,
	addr_road varchar2(60) not null,
	addr_detail varchar2(60) not null,
	purchase_date date
);

/* 리뷰 테이블 */ 
drop table review;
create table review(
    reviewId number(4) not null,
    memberId varchar2(20) not null,
    bookNo number(4) not null,
    reviewDate date default sysdate,
    content varchar2(150),
     constraint pk_review primary key(reviewId)
);

drop sequence seq_review_reviewId;
create sequence seq_review_reviewId
 START WITH  1
INCREMENT BY 1;


drop table product;
drop SEQUENCE seq_bookNo;
SET DEFINE OFF


CREATE TABLE product ( 
BOOKNO INTEGER NOT NULL,
CATEGORY VARCHAR2(30) NOT NULL,
BOOKNAME VARCHAR2(100) NOT NULL,
WRITER VARCHAR2(100) NOT NULL,
PUBLISHER VARCHAR2(30) NOT NULL,
PUBYEAR DATE NOT NULL,
PRICE INTEGER NOT NULL,
STOCK INTEGER,
IMAGEFILENAME VARCHAR2(100),
DESCRIPTION VARCHAR2(4000));


CREATE SEQUENCE seq_bookNo
START WITH  1
INCREMENT BY 1;




INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'novel1', '지구에서 한아뿐', '정세랑', '난다', to_date('2019/07/31', 'RRRR-MM-DD'), 13000, 100, '지구에서 한아뿐.jpg', '사랑을 위해 2만 광년을 날아온 외계인!<p>자신의 사랑이 우주에서 단 하나뿐임을 바라는 연인들을 위한 이야기 『지구에서 한아뿐』. SF, 로맨스, 호러, 스릴러 등 장르의 경계를 넘나드는 작가 정세랑의 소설이다. 친환경 디자이너 한아와 그녀의 외계인 남자친구 경민의 알콩달콩하면서도 범우주적인 사랑 이야기를 그리고 있다.<p>지구 환경을 지키기 위해 저탄소 생활을 하는 디자이너 한아. 그녀에게는 경민이라는 남자친구가 있다. 경민은 자신이 하고 싶은 대로 살면서 늘 한아를 기다리게 하는 자유로운 영혼이다. 캐나다로 별똥별을 보기 위해 여행을 떠난 경민에게 연락이 없던 어느 날, 한아는 캐나다에 소형 운석이 떨어지면서 큰 폭발이 있었다는 뉴스를 본다. 경민을 걱정하는 한아 앞에 며칠 뒤 아무렇지도 않은 듯 경민이 나타나지만, 평소와 달리 지나치게 다정해진 그를 보고 한아의 의심은 커져만 가는데….<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'novel1', '죽음을 보는 재능', 'M.J.알리지 저 / 김효정 역', '북플라자', to_date('2019/07/20', 'RRRR-MM-DD'), 15000, 100, '죽음을 보는 재능.jpg', '사람들의 죽는 순간이 보이기 시작했다!<p>“저는 당신이 어떻게 죽을지 알고 있어요.”<p>케이시는 다섯 살이 되던 해, 아빠의 눈동자에서 아빠가 죽는 환영을 보았다. 아빠가 그 환영 속에서 본 것처럼 거대한 금속 구조물에 깔려 죽은 것이다. 그 날 이후, 케이시는 자신이 사람들의 죽는 순간을 미리 볼 수 있는 재능을 가지고 태어났다는 사실을 알게 되는데…. 케이시는 사람들의 죽음에 개입하여 그들의 죽음을 막을 수 있을 것인가!<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'novel2', '모비딕', '허번 멜빌 저 / 김석희 역', '작가정신', to_date('2019/08/01', 'RRRR-MM-DD'), 22000, 100, '모비딕.jpg', '포경선을 탄 경험이 있는 특이한 이력의 작가 허먼 멜빌이 격조 높은 서사시적 산문체로 써내려간 『모비 딕』(흰 고래 모비 딕Moby-Dick: or, The Whale)이 국내 최고의 번역으로 완역 출간되었다. 2010년 작가정신 아셰트 클래식 시리즈의 한 권으로 일러스트판이 출간된 이후, 많은 독자들의 요청에 따라 새롭게 보급판을 선보인다. 고래학學과 포경업에 대한 멜빌의 치밀한 기록을 그대로 수록한 이 책은 그동안 국내에 소개된 축약판으로는 느낄 수 없었던 『모비 딕』의 심오한 세계를 제대로 이해하고 음미하게 해주는 길잡이가 되어줄 것이다.
서두에서부터 ‘고래’에 대한 ‘어원’ 탐구와 문헌 ‘발췌록’이 등장하고, 작가의 체험과 도서관에서 조사하고 연구한 고래와 포경에 대한 갖가지 지식이 총망라된 이 독특한 소설은 출간 당시에는 어렵고 낯설다는 이유로 외면당했지만 작가가 죽고 30여 년 후에 재평가되기 시작했고 오늘날 미국문학을 대표하는 걸작이 되었다.<p>집착과 광기에 사로잡힌 한 인간의 투쟁과 파멸을 그린 전율적인 모험소설이자 최고의 해양문학, 미스터리와 공포가 충만한 미국식 고딕소설이자 뛰어난 상징주의 문학 또는 자연주의 문학. 이처럼 다양한 각도로 해석되고 평가되는 『모비 딕』은 새삼 줄거리를 소개할 필요가 없을 정도로 널리 알려진 작품이지만, 대부분의 독자들이 아는 『모비 딕』은 사실 빙산의 일각에 지나지 않는다. 고래에 대한 백과전서적인 이 소설은 고래와 포경업에 관해 인류가 탐색하고 축적해온 지식들, 우주와 인간에 대한 철학적 명상들로 가득하다. 끝없이 펼쳐지는 바다와 하늘, 거친 파도와 폭풍, 그리고 다시 잔잔한 바다와 하늘. 대양에서 펼쳐지는 에이해브와 모비 딕의 대결은 자연의 의지에, 우주의 힘에 대항하는 인간의 모습을 떠올리게 하고, 그때 그 바다는 우주의 섭리를, 삶의 비극을 가르치는 장場이 된다. 부정적이고 우울한 세계관에 영혼이 마비되어버린 에이해브의 비극을 통해 우리는 인간 영혼의 다의적인 패배와 승리, 파괴의 충동, 선과 악의 갈등, 그리고 인간이라는 존재에 대해 다시금 되돌아보게 된다.<p>[출판사 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'novel2', '작은 아씨들', '루이자 메이 알코트', '월북', to_date('2019/07/30', 'RRRR-MM-DD'), 15800, 100, '작은 아씨들.jpg', '성격도 생김새도 완전히 다른 네 자매, 메그, 조, 베스, 에이미. 소설 역사상 가장 사랑받은 자매들의 이야기를 968쪽의 디럭스 양장본으로 만난다. 긴 스토리지만 한번 읽기 시작하면 손에서 놓을 수 없는 매력 만점 작품이다.<p>온화하지만 허영심이 강한 메그, 천사 같은 심성을 지닌 이타주의자 베스, 투덜대면서도 자신이 나아갈 길을 아는 막내 에이미, 그리고 엉뚱한 사고뭉치지만 책을 좋아하는 작가 지망생 조. 가난하고 초라한 환경이지만 고비마다 서로에게 위로자가 되어주며 인생의 참의미를 찾아가는 네 자매는 1868년 첫 발표 이래 약 150여 년간 전 세계 50여 개국 독자들에게 꾸준히 사랑받고 있다. 독자들은 누구나 네 자매 중 한 명을 자신과 동일시하며 마치 집안의 자매들에게 빠져들었고, <타임>이 최고의 100대 소설로 선정한 것도 바로 이런 공감의 힘에서 나왔다.<p>작가의 의도대로 1부와 2부를 합쳐 한 권의 책으로 묶었고 완역본이다. 젊은 여성 번역가가 가급적 현대적 언어로 번역하여 가독성을 높였으며 세계적 디자인 브랜드 RIFLE PAPER CO.의 애나 본드가 커버를 디자인하여 소장욕구를 자극한다. 엠마 왓슨, 시얼샤 로넌, 티모시 샬라메가 출연하는 동명의 영화가 개봉되어 색다른 감동을 선사할 예정이다. <p>조앤 K. 롤링, 시몬 드 보부아르, 줌파 라히리가 평생 사랑한 책, <작은 아씨들>과 만나라. 물질보다 영혼의 부유함을 찾은 그들이 내면의 아름다움을 갖춘 강인한 어른이 되는 법을 기꺼이 나눠줄 것이다.<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'novel3', '폴른 : 저주받은 자들의 도시', '데이비드 발다치', '더난출판사', to_date('2019/07/12', 'RRRR-MM-DD'), 14800, 100, '폴른.jpg', '195센티미터에 달하는 큰 키와 전직 미식축구 선수다운 거대한 체구, 그리고 과거 물리적 충격으로 비정상적인 의학적 조건을 갖추게 된 에이머스 데커는 어떤 것도 잊지 못하는 완벽한 기억력과 공감각이라는 특별한 능력을 지닌 초인적인 인물에 가깝다. 형사 진급 시험 통과, 최고의 검거율을 기록했으나 일가족의 죽음은 그의 능력을 한순간에 저주로 뒤바꿔놓았고, 삶을 포기한 채 노숙인 생활을 전전했음에도 비상한 두뇌를 바탕으로 남들과는 다른 사건 해결력을 지닌 그의 매력에 전 세계 대중과 언론의 호평도 쇄도했다. “에이머스 데커라는 인물은 데이비드 발다치가 스릴러 세계에 날린 홈런이다”, “매우 인간적이고 생생한 캐릭터, 반드시 다시 만나고 싶다” 등의 찬사가 쏟아졌고, 미국의 주요 언론사 [커커스 리뷰]는 “독자들은 이 책을 펴는 순간 에이머스 데커의 이야기가 끝나지 않기만을 바랄 것이다”라 호평했으며, 국내에서도 출간 즉시 데이비드 발다치의 신작을 기다려온 독자들의 입소문을 타고 큰 호응을 얻었다.<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'novel3', '폴리스', '요 네스뵈 저 / 문희경 역', '비채', to_date('2019/07/08', 'RRRR-MM-DD'), 16000, 100, '폴리스.jpg', '“행복한 경찰 같은 건 어디에도 없다.”?<br>대망의 형사 해리 홀레 시리즈 제10권! <p>전작 『팬텀』의 총성 이후, 오슬로 경찰청. 경찰들을 노리는 새로운 연쇄살인범이 등장한다. 자신이 수사하던 미제사건 현장에서 참혹하게 죽어가는 경찰들. 마침내 오슬로는 이 사건을 해결할 수 있는 단 한 사람 ‘해리 홀레’를 그리워하는데…. 형사 해리 홀레 시리즈 제10권 『폴리스』가 긴 기다림 끝에 드디어 출간되었다. 제목에서 짐작할 수 있듯 경찰 그 자체에 초점을 맞추고, 그들의 면면을 들여다본 소설이다. 자신의 모든 것을 바쳐 시민을 지키지만 정작 소중한 이들을 잃고 마는, 경찰이라는 이름의 사람들. ‘굿 캅’에게나 ‘배드 캅’에게나 고단할 뿐인 하루하루는 작가 요 네스뵈가 오랫동안 천착해온 경찰들의 삶을 입체적으로 드러낸다. 시리즈의 열 번째 책인 만큼, 해리의 이야기 역시 또 다른 시작을 향해 간다. 뿐만 아니라, 『스노우맨』 『레오파드』 『레드브레스트』 등에 나온 사건과 반가운 캐릭터들이 재등장해 요 네스뵈의 팬들만이 알아볼 수 있는 재미를 선사한다. 권두에 전작 줄거리와 인물 소개를 넣어 전환점을 맞은 시리즈의 이해를 도왔다. <p>『폴리스』는 선택에 대한 소설이다. ‘형사 해리 홀레 시리즈’를 읽은 사람이라면, 특히 제9권 『팬텀』을 읽은 사람이라면 누구나 비슷한 의문을 품을 것이다. ‘왜 해리는 늘 잃는 사람일까?’ 그러나 『폴리스』에서 작가는 선택의 순간을 여러 번 제시함으로써 상실이야말로 해리의 운명이지만, 동시에 해리의 선택이기도 했음을 보여준다. 해리는 분명 다른 선택을 할 수 있었다. 하지만 그는 다치고 피 흘리고 사랑하는 사람들을 잃으면서도 늘 사건을 ‘해결했다.’ 해리가 영원히 경찰일 수밖에 없는 이유가 바로 여기에 있다. <p>『폴리스』는 제목 그대로 경찰에 대한 소설이기도 하다. 200페이지가 넘어가도록 해리의 행방은 묘연하기만 하다. 대신 경찰들의 다양한 삶이 그 자리를 채운다. 경찰대학에 다니며 강력반 형사를 꿈꾸는 훈련생, 한 번의 실수로 출세길이 막혀버린 왕년의 형사, 출세를 위해서라면 수단과 방법을 가리지 않는 엘리트, 증거물과 밤낮 씨름하며 살았지만, 정작 가족을 잃고는 아무것도 할 수 없는 과학수사관…. 초반부의 주인공은 경찰 그 자체라 보아도 좋을 정도다. 해리가 ‘전설로 기억되는’ 훌륭한 형사였으며 그의 삶이 다른 경찰보다 더 드라마틱하긴 했지만, 한 가지 명제에서는 그 또한 다른 경찰과 같았다. 행복한 경찰 같은 건 어디에도 없다는 것. 『폴리스』에서 해리는 또다시 막다른 골목에 선다. 장장 열 권을 이어온 이 거대한 이야기가 막을 내릴지, 혹은 생각지도 못한 전환점을 맞이할지… 모든 것은 해리의 선택에 달려 있다.<p>[예스24 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'poem1', '윤동주 전 시집', '윤동주', '스타북스', to_date('2019/08/15', 'RRRR-MM-DD'), 12000, 100, '윤동주 전 시집.jpg', '한국인이 사랑하는 시인 1위, 독립운동가 3위에 랭크된 시인!<p>하늘과 바람과 별을 노래한 서정시와 저항과 성찰의 민족시인<p>윤동주 탄생 100주년 기념 윤동주 전체 작품 124편을 다 담다<p>이제까지 발간된 윤동주 시집 및 작품집은 많지만, 윤동주의 작품 전체를 한 권에 담은 책은 없었다. 이에 윤동주 탄생 100주년을 기념해 윤동주의 전체 작품을 담은 작품 전집을 발간하게 되었다. 『윤동주 전 시집』에는 소실되지 않은 윤동주의 시와 수필 전체뿐만 아니라, 윤동주를 위해 쓰여진 서문과 후기와 발문 등도 모두 취합하여 실었다. 『윤동주 전 시집』에 모두 살려 놓은 정지용, 유영, 강처중 등의 추모 글은 그 자체가 하나의 문학작품이다.<p>『윤동주 전 시집』은 총 4부로 구성되어 있다. 1부 「하늘과 바람과 별과 시 1948」에는 1948년 초판본 전문을 실었고, 2부 「하늘과 바람과 별과 시 1955」는 1948년 본에 실려 있는 시를 제외한 나머지 작품들을 실었으며, 3부 「하늘과 바람과 별과 시 1979」는 역시 1948년 본과 1955년 본에 수록된 작품 외의 시 작품을 담았다. 4부 「나중에 발굴된 시」에는 기존 윤동주 시집에 실리지 않은 작품 8편을 실었다. 1부부터 3부까지의 시들은 당시 발간된 본문 순서대로 실었으며, 4부는 작품이 쓰인 해를 알 수 없는 경우 외에는 창작 년도에 따라 실었다.<p>독립운동 100주년, 윤동주의 잘못된 기록을 바로잡아야 한다<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'poem1', '내가 정말이라면', '유이우', '창비', to_date('2019/07/12', 'RRRR-MM-DD'), 9000, 100, '내가 정말이라면.jpg', '풍경이 창문을 회복하듯이<p>우리는 낯선 평화를 볼 것입니다<p>알려진 적 없는 방식으로, 알려진 적 없는 세계를 증명하는 시인의 탄생<p>2014년 중앙신인문학상을 수상하며 작품활동을 시작한 유이우 시인의 첫 시집 『내가 정말이라면』이 출간되었다. 등단 이후로 “수식과 수사의 그늘이 사라진 피부 언어” “상상과 풍경의 드넓은 교호 작용”으로 주목을 받았던 시인은 가볍고 탄성 있는 언어를 구사하며 상상과 풍경이 어우러진 개성적인 시세계를 꾸려왔다. 화려한 수사를 앞세워 대상을 직설적으로 묘사하기보다는 한발 물러서 세상의 풍경을 관찰하면서 단어 하나하나에 자신만의 감정을 쏟아내는 그의 시는 신인으로서의 참신함을 넘어서는 견고한 시 정신과 기발한 언어적 상상력이 돋보인다. “벽을 알아내자고/벽에 부딪”(「모서리」)치듯 기존의 언어를 갱신하고 재구성해온 시인은 “사람처럼 구는/바람”(「맹인」)처럼 상상의 세계를 마음껏 비행하며 ‘정말 쓰고 싶은 시’를 쓰는 듯하다. <p>등단 5년 만에 펴내는 첫 시집에서 시인은 풍요롭고 무한한 언어의 가능성을 선명하게 보여준다. 언어에 대한 자의식이 깊은 만큼 말을 부리는 솜씨가 남다르고, 남다른 만큼 그의 시는 낯설다. 기존의 시 문법을 벗어난 과감한 행갈이, 성큼성큼 건너뛰는 행과 행 사이의 여백, 툭툭 던져놓는 듯한 감각적인 문장들, 상식을 뛰어넘는 모호한 단어의 조합이 묘한 분위기를 자아낸다. “새에게 나무라고 하고/나무에게 새라고”(「놀이」) 불러보는 시인은 “다른 사람인 듯 자신을 여”(「그 자신의 여름」)기며 마치 놀이하듯 세계를 뒤집어보고 사물의 내면을 촘촘히 파고들어간다. <p>유이우의 시를 읽다보면 마치 “해석되지 않는”(「구멍」), 해석할 수 없는 세상에 와 있는 듯하다. 세상을 억지로 풀거나 해결하려고 하지 않으려는 그 마음이, 어쩌면 세상과 우리의 ‘정말’을 증명하고 있는 것은 아닐까. “나무가 비키지 않으면 세상이 나무를 돌아”(「비행」)가는 모습까지 세심하게 관찰하는 시인이 펼쳐 보이는 낯선 풍경은 실은 우리가 살아가는 세상의 진짜 모습일는지 모른다. 세상을 바라보는 독특한 시선과 “알려진 적 없는 방식으로 알려진 적 없는 인간의 고유성을 드러내는”(김소연, 추천사) 이 재기발랄한 젊은 시인의 첫 시집에서 우리는 “풍경이 창문을 회복”(「창문」)하듯, 우리가 미처 알지 못했던 또다른 세계와 “완전히 다른/좋은 날들이 계속되”(「이루지 못한 것들」)는 삶을 경험하는 색다른 경이로움을 맛보게 된다.<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'poem2', '망할 놈의 예술을 한답시고', '찰스 부코스키', '민음사', to_date('2019/02/22', 'RRRR-MM-DD'), 13000, 100, '망할 놈의 예술을 한답시고.jpg', '시인이 노년에 마지막으로 출간한 대표작 『THE LAST NIGHT OF THE EARTH POEMS』이 『망할 놈의 예술을 한답시고』와 『창작 수업』 두 권으로 출간되었다. 민음사 세계시인선 리스트에 『사랑은 지옥에서 온 개』, 『위대한 작가가 되는 법』을 포함하여 찰스 부코스키의 시집이 4권 포함되게 되었다. 죽음과 시간에 대한 고민이 많이 담겨 있고, 초기 시와 달리 사색적인 색채를 더 느낄 수 있다. 하지만 일상에서 내뱉는 말들에 담긴 아픈 의미들을 끄집어내면서도 특유의 유머로 승화해 낸다.<p>[예스24 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'poem2', '창작 수업', '찰스 부코스키', '민음사', to_date('2019/02/22', 'RRRR-MM-DD'), 13000, 100, '창작 수업.jpg', '민음사 세계시인선 리뉴얼판. 찰스 부코스키가 노년에 마지막으로 출간한 대표작 <The Last Night of the Earth Poems>이 <망할 놈의 예술을 한답시고>와 <창작 수업> 두 권으로 출간되었다. 민음사 세계시인선 리스트에 <사랑은 지옥에서 온 개>, <위대한 작가가 되는 법>을 포함하여 찰스 부코스키의 시집이 4권 포함되게 되었다. <p>죽음과 시간에 대한 고민이 많이 담겨 있고, 초기 시와 달리 사색적인 색채를 더 느낄 수 있다. 하지만 일상에서 내뱉는 말들에 담긴 아픈 의미들을 끄집어내면서도 특유의 유머로 승화해 낸다. 노시인은 죽음 앞에서도 결코 지나온 삶을 미화하진 않는다. "하지만 나이는 /우리의 행적이다."라면서 ''노년''이라는 주제를 말랑하게만 다루고 있지 않다. 작가에게 죽음은 인간 보편의 경험이자 생명력에 힘을 부여하는 중요한 주제이기 때문이다. <p>일흔의 나이에 "작가의 벽에 부딪힌" 시인은 그래도 "난 아직 /운이 좋아. /작가의 벽에 부딪혔다는 /글이라도 쓰는 게 /아예 못 쓰는 것보다는 /낫잖아."라며 삶을 긍정한다. 왜냐하면 시인에게 글쓰기는 삶을 살게 하는 가장 큰 가치이기 때문이다. "글쓰기는 내게 /젊음의 샘 /나의 창녀 /나의 사랑 /나의 도박이었다."<p>[알라딘 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'poem3', '환타지 없는 여행', '전명윤', '사계절', to_date('2019/07/24', 'RRRR-MM-DD'), 15800, 100, '환타지 없는 여행.jpg', '가이드북 깎는 환타, 여행의 환상 너머 현실을 바라보다<p>대한민국 대표 여행작가 환타 전명윤이 가이드북에는 미처 다 쓰지 못한 이야기를 꺼냈다. 여행은 오직 기쁨만을 위해 준비된 비닐하우스가 아니라고 말하는 이 책은 우리가 여행에서 보고 듣고 싶어 하는 이야기, 이른바 환타지의 다음 장을 펼친다.<p>20년 전 실연의 아픔을 뒤로하고 인도로 떠난 환타가 그동안 세계 곳곳을 누비며 깨달은 것은 딱 하나. 누군가와 함께 산다는 건 그들이 우리와 다른 역사의 길을 걸어왔음을 알고 이해할 때 가능한 일이라는 사실이다. 좋은 풍경만 눈에 담고 여행자 개인의 체험만 찾는 여행은 그곳의 사람을 보여주지 않는다. 그곳에 사는 이들을 만나고 그 땅의 역사를 거슬러 올라갈 때 새롭게 드러나는 것들이 있으니, 『환타지 없는 여행』은 여행의 환상 너머로 난 또 다른 여행길로 독자를 안내한다. <p>이 책에서 환타는 천 년이 지나도 지금 그대로일 것이라고 믿었던 인도, 바다 위에 거대한 카지노 도시를 세운 마카오, 장수마을 신화가 산산이 부서진 오키나와, 시민의 자유를 지키기 위해 억압에 맞선 홍콩 등 아시아 곳곳에서 바로 지금 이 순간 일어나고 있는 일들을 돌고 돌아 다시 일상의 자리로 돌아온다. 그는 말한다. 여행하는 삶이란 여행이 끝나면 일상으로 돌아오는 삶이라고. 여행은 오직 이 전제 아래에서만 현실이 된다.<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'poem3', '당신의 계절을 걸어요', '청춘유리', '알에이치코리아', to_date('2019/07/22', 'RRRR-MM-DD'), 13500, 100, '당신의 계절을 걸어요.jpg', '11년간 65개국 500개 도시를 누빈<p>여행 작가 청춘유리가 전하는 가장 아름다운 나날들<p>떠났기 때문에 마주할 수 있었던, 무수히 많은 장면과 마음에 대하여<p>인스타그램과 페이스북을 통해 수많은 사람들에게 두근거림을 선사하는 여행 작가이자 가장 주목 받고 있는 여행 크리에이터, 청춘유리가 3년 만에 신간 『당신의 계절을 걸어요』를 선보인다. 베스트셀러 『오늘은 이 바람만 느껴줘』 출간 이후 그녀에게 여행은 단순한 휴식이 아닌 삶의 일부이자 일이 되었지만, 여행이 주는 자유와 낭만을 마음껏 누리고 그 선물 같은 시간을 소중하게 생각하는 마음은 여전하다. 더 많은 곳을, 더 오래도록 누빈 만큼 한층 깊어진 이야기를 이 책을 통해 만날 수 있다. <p>스페인, 포르투갈, 스위스, 헝가리, 베트남, 인도네시아, 인도, 네팔, 파키스탄, 볼리비아, 멕시코, 바하마, 탄자니아 등 대륙과 육해공을 넘나들며 겪은 다양한 에피소드부터 눈과 마음을 모두 사로잡을 만큼 멋진 도시의 모습과 푸르른 자연의 광경, 잊을 수 없는 인연은 물론 여행을 다니며 느낀 섬세한 감정과 생각도 솔직하게 담았다. 여기에 저자 특유의 감수성과 독특한 분위기가 고스란히 묻어나는 사진을 보다 보면 어디론가 훌쩍 떠나고 싶어지게 된다. 여행과 삶을 사랑스럽고 행복하게 그려냈기에 또 다른 세상을 꿈꾸는 이에게도 설렘이 고스란히 전해진다.<p>[인터넷 교보문고 제공]');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'selfDevelopment1', '설민석의 조선왕조실록', '설민석', '세계사', to_date('2016/07/20', 'RRRR-MM-DD'), 22000, 100, '설민석의 조선왕조실록.jpg', '대한민국 스타강사 설민석표 강연으로 풀어낸 27명의 조선의 리더들<p>[설민석의 조선왕조실록]은 27명의 조선의 왕들을 한 권으로 불러 모아 핵심적인 주요 사건들을 풀어쓴 책이다. 설민석 특유의 흡입력 있는 간결함과 재치 있는 말투를 구어체 그대로 책에다 담았다. 중간에 갑자기 등장하는 질의응답 구성은 마치 바로 앞에서 강연을 듣고 있다는 느낌을 들게 한다. 또한 실록에 등장하는 왕의 목소리를 현대어로 풀어써 당시의 정책과 주요 사건들이 일어난 배경을 명확히 이해하는 데 도움이 된다.
[설민석의 조선왕조실록]은 27명의 조선의 왕들을 한 권으로 불러 모아 핵심적인 주요 사건들을 풀어쓴 책이다. 설민석 특유의 흡입력 있는 간결함과 재치 있는 말투를 구어체 그대로 책에다 담았다. 중간에 갑자기 등장하는 질의응답 구성은 마치 바로 앞에서 강연을 듣고 있다는 느낌을 들게 한다. 또한 실록에 등장하는 왕의 목소리를 현대어로 풀어써 당시의 정책과 주요 사건들이 일어난 배경을 명확히 이해하는 데 도움이 된다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'selfDevelopment1', '유투브로 책 권하는 법', '김겨울', '유유', to_date('2019/07/24', 'RRRR-MM-DD'), 10000, 100, '유투브로 책 권하는 법.jpg', '궁금한 것도 필요한 지식도 모두 유튜브에 검색해 영상으로 보고 배우는 시대에 꿋꿋이 책을 읽고 읽는 기쁨을 전하는 사람이 있다. 유튜브 채널 ‘겨울서점’을 운영하는 ‘북튜버’ 김겨울. 책 읽는 사람보다 영상 보는 사람이 많은 시대에 좋은 책 이야기를 더 널리 알리고 읽는 일의 가치를 전하기 위해서 그는 영상 속으로 책을 가지고 들어가는 방법을 시도했다. 방에서 편안히 책 읽는 모습, 친구와 책으로 수다떠는 모습, 좋아하는 작가의 북콘서트에 간 일, 서점에 숨어 있는 좋은 책을 발견하는 순간을 모두 촬영해 영상으로 만들었고, 책 영상이 업로드되는 유튜브 속 서점으로 조금씩 사람들이 모이기 시작했다. 책을 궁금해하며 책에 대해 물어 왔고, 댓글 창에는 책에 대한 감상과 질문들이 쌓였다. 영상 문화의 한복판에서 함께 읽는 일이 일어난 것이다. 북튜브를 아는 사람보다 모르는 사람이 많았던 때 누구보다 먼저 북튜브를 시작한 그에게 사람들은 이제 매일같이 질문한다. “북튜브는 어떻게 하는 건가요? 구독자는 어떻게 모았나요? 촬영 장비는 뭘 쓰고 편집은 어떻게 하나요? 영상 한 편을 찍는 데 시간은 얼마나 걸리나요? 북튜버는 돈을 벌 수 있나요? 유튜버의 삶에는 어떤 고충이 있나요? 앞으로 북튜버는 지금보다 더 주목받을 수 있을까요?” 이 책에는 이 모든 질문에 대한 답과 이제껏 확연히 드러난 적 없는 북튜브 일의 이면에 관한 이야기까지 샅샅이 기록되어 있다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'selfDevelopment2', '미움받을 용기', '고가후미타케, 기시미이치로', '인플루엔셜', to_date('2014/11/17', 'RRRR-MM-DD'), 14900, 100, '미움받을 용기.jpg', '당신의 가치관을 뒤흔들 ''새로운 고전''의 탄생!<p>심리학의 3대 거장 아들러를 처음 소개하여 돌풍을 몰고 온 ''아들러 심리학''의 정수! 자유롭고 행복한 삶을 추구하는 아들러의 가르침을 단순하면서 명쾌한 해답으로 전달해 주고 있다. 지금 당신에게 가장 필요한 ''용기''를 깨닫게 하는 21세기 이솝 우화, 내 안의 기적을 만들다! 지금은 2015년에 이어 2016년까지 현재 진행중인 아들러의 심리학 이야기를 만날시간!');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'selfDevelopment2', '자존감 수업', '윤홍균', '심플라이프', to_date('2016/09/01', 'RRRR-MM-DD'), 14000, 100, '자존감 수업.jpg', '심리학 책 아무리 읽어도 자존감 그대로인 사람에게 추천하는 책! 정신과 의사 ''윤답장'' 선생의 자존감 셀프 코칭법!<p>자존감 전문가이자 정신과 의사인 윤홍균 원장이 2년 넘게 심혈을 기울여 쓴 책으로, 자존감이 우리 삶에 미치는 영향을 친절하게 알려주고, 자존감을 끌어올리는 실질적인 방법을 알려주는 책. 높은 자존감을 갖고 싶지만 방법을 모르는 사람, 낮은 자존감 때문에 내면의 불화와 갈등을 겪고 있는 이들이 건강한 자존감을 회복하도록 돕는다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'liberal1', '12가지 인생의 법칙', '조던B, 피터슨', '메이븐', to_date('2018/10/30', 'RRRR-MM-DD'), 16800, 100, '12가지 인생의 법칙.jpg', '<b>2018년 전 세계를 뒤흔든 전 하버드대 심리학과 교수 조던 피터슨의 불확실한 인생을 꿰뚫는 최고의 명강의</b><p>전 하버드 대 심리학과 교수가 밝혀낸 [12가지 인생의 법칙]은 ‘어깨를 펴고 똑바로 서라’ ‘세상을 탓하기 전에 방부터 치워라’ ‘당신에게 최고의 모습을 기대하는 사람만 만나라’ 같은 인생의 진리를 심리학, 생물학, 신화, 철학, 종교 등을 바탕으로 써내려간 책이다. 미국과 캐나다 영국 젊은이들을 비롯해 전 세계에서 ‘피터슨 현상’을 일으키며 200만 부가 넘는 판매 부수를 기록했다. ‘인생은 고통이다. 하지만 무너지지 않을 길은 있다’라고 말하는 이 책은 고된 삶에 무너지지 않고 의미 있는 삶을 사는 지혜를 12가지 법칙에 담아 전하고 있다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'liberal1', '철학은 어떻게 삶의 무기가 되는가', '야마구치슈', '다산초당', to_date('2019/01/21', 'RRRR-MM-DD'), 16000, 100, '철학은 어떻게 삶의 무기가 되는가.jpg', '<b>일상의 고민부터 비즈니스 전략까지, 지적 전투력을 극대화하는 철학적 사고법</b><p>“철학은 반드시 답을 찾는다!” <p>삶과 비즈니스 현장에서 철학적으로 생각하고 답을 도출하는 법을 알려 주는 실용 철학서. 세계 1위 경영·인사 컨설팅 기업 콘페리헤이그룹의 시니어 파트너인 저자는 대학교에서 철학을 전공하고 대학원에서 미학미술사를 공부한 ‘문사철’ 출신이다. 경영에 관한 정식 교육은 한 번도 받지 않았지만 컨설턴트로서 경영 전반에 걸친 기업 문제를 해결하는 데 어려움을 겪은 적은 없다. 눈앞의 상황을 철학이나 심리학, 경제학 개념에 맞춰 생각하면 언제나 해결의 실마리가 보였기 때문이다.
철학이 현실 세계와 동떨어진 학문이라는 말을 강하게 부정하는 저자는 사람들이 철학을 쓸모없다고 여기는 이유가 철학과 비즈니스를 연결시켜서 생각하는 법을 모르기 때문이라고 진단한다. 오히려 그는 본질을 꿰뚫고 최적의 솔루션을 찾아내는 철학적 사고법이야말로 현대인들에게 가장 필요한 무기라고 말한다. 그가 비즈니스 현장에서 유용하게 사용하는 50가지 철학·사상을 담은 『철학은 어떻게 삶의 무기가 되는가』는 철학의 쓸모를 새롭게 조명하는 세상에서 가장 실용적인 철학 사용 설명서다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'liberal2', '말 그릇', '김윤나', '카시오페아', to_date('2017/09/22', 'RRRR-MM-DD'), 15000, 100, '말 그릇.jpg', '<b>“내 말 속에 내가 산다.”<br> ‘말의 대물림’을 끊고 나답게 말하기</b> <p>한마디의 말 속에는, 그 말을 던진 사람에 대한 수많은 정보가 담겨있다. 이른바 ‘말을 통해서 그만의 고유한 향기’ 같은 게 묻어나는 것이다. 그렇기 때문에 누구나 ‘자신과 가장 잘 어울리는 말’을 사용할 줄 알아야 하고, 내 감정과 마음상태를 제대로 표현할 줄 알아야 한다. 그것에 무심할수록 종종 남들의 오해를 사게 된다. 가끔 마음과 다른 말을 내뱉는 사람들을 만난다. 쑥스럽다는 이유로 쌀쌀맞게 말하고, 미안할수록 짜증을 내고, 걱정될수록 화를 내는 사람들. 자신도 왜 그렇게 말하는지 모른 채 ‘습관’이라서 바꿀 수 없다는 사람들. 하지만 그 면면을 잘 살펴보면 그 말이 꼭 ‘자신의 말’이 아닐 때가 많다. 어린 시절 자주 들었던 부모님의 말투가 입에 밴 것일 수도 있고, 영향력이 강했던 선배나 상사의 말투일 수도 있다. <br>지금 당신이 자주 사용하는 그 ‘말’은 누구의 말인가? 당신은 지금 당신답게 말하고 있는가, 아니면 그저 습관에 의한 말에 끌려가고 있가? 이제부터 당신 ‘말의 역사’와 ‘감정’, ‘상처’를 되짚어보자. 외롭게 내버려두었던 당신의 ‘말 그릇’을 지그시 응시해보자. 그것이 나와 가장 잘 어울리는 말을 찾아내는 긴 여정의 첫걸음이다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'liberal2', '말의 품격', '이기주', '황소북스', to_date('2019/05/29', 'RRRR-MM-DD'), 14500, 100, '말의 품격.jpg', '<b>이기주 작가의 신작 에세이집!</b><p>이 책은[언어의 온도]로 많은 독자의 사랑을 받고 있는 이기주 작가의 신작 에세이집이다. 경청, 공감, 반응, 뒷말, 인향, 소음 등 24개의 키워드를 통해 말과 사람과 품격에 대한 생각들을 풀어낸다. 고전과 현대를 오가는 인문학적 소양을 바탕으로 이기주 작가 특유의 감성이 더해 볼거리와 생각할 거리를 동시에 전한다. 말을 소재로 삼은 까닭에 남녀노소 구분 없이 읽을 수 있는 교양서이자 필독서이기도 하다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'liberal3', '슈퍼 네트워커', '곽미송', '슬로디미디어', to_date('2019/08/10', 'RRRR-MM-DD'), 14800, 100, '슈퍼 네트워커.jpg', '<b>4차 산업혁명 시대에 네트워크 사업의 변화를 주목하라! <br>업계 상위 1% 네트워커의 공개되지 않는 사업 비밀!<br>네트워크 마케팅을 긍정적으로 보여주는 책!</b><p>네트워크 마케팅 사업 안에서 인생의 자유를 누리는 것은 정말 멋진 일이다. 온라인 네트워크 마케팅 사업 안에서 나는 절 대 가난해질 수 없는 환경에서 살고 있는 것이다. 어찌 보면 내가 이 책을 쓰는 이유는 나와 같은 꿈을 꾸는 사람들을 위해서이다. 너무 하기 싫은 일들을 억지로 하나씩 익혀나가며 거절의 상처를 받았던 그때의 나와 같은 누군가를 위한 책이다. 또한 매일 해야 할 일이 무엇인지 몰라 하루를 힘들게 살았던 그때의 나와 같은 당신을 위한 책이다. 그리고 이제 막 시작한 네트워크 마케팅의 새로운 세상에 흥분한 당신을 위한 책이기도 하며 지금의 나처럼 디지털 노마드를 꿈꾸는 네트워커를 꿈꾸는 누군가를 위한 책이기도 하다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'liberal3', '바바라 민토,  논리의 기술', '바바라민토', '더난출판사', to_date('2019/08/19', 'RRRR-MM-DD'), 19000, 100, '바바라 민토 논리의 기술.jpg', '<b>민토 피라미드 원칙은 논리적 글쓰기를 위한 최상의 도구다! </b><p>“어떻게 하면 내용이 명료하면서 이해하기 쉬운 글을 쓸 수 있을까?” 회사에서 프레젠테이션을 준비하는 직장이든, 대학에서 리포트를 작성하는 학생이든, 대학에 가기 위해 논술시험을 준비하는 고등학생이든, 비교적 긴 글을 써본 사람이라면 누구나 한 번쯤 고민해본 적이 있을 것이다. 많은 사람이 논리적으로 잘 읽히면서 이해하기 쉬운 글을 쓰려면 유려한 문체로 간결하게 쓰면 된다고 생각한다. 그러나 좋은 글과 나쁜 글을 가르는 결정적 요소는 문장이 좋고 나쁨이 아니라 문장을 배열하는 순서, 즉 글을 구성하는 방식에 있다.<p>바바라 민토는 어떤 사람의 글이나 말이 명료하게 이해되지 않는 이유는 필자 혹은 화자가 자기 생각을 나열한 방식, 곧 글의 구성방식과 글을 읽는 사람의 사고방식이 일치하지 않기 때문이라고 지적하고, 피라미드 원칙에 따라 생각을 구성하면 누구나 쉽게 이해할 수 있는 명쾌한 글을 쓸 수 있으며, 또한 어떤 사람과도 설득력 있는 대화를 나눌 수 있다고 말한다. 우리 뇌는 글을 읽거나 대화를 할 때 핵심을 먼저 받아들인 뒤 그다음에 연결되는 구체적인 내용을 비슷한 부류끼리 그룹으로 묶어서 받아들이는 식으로 사고한다. 따라서 글을 쓰거나 대화를 할 때 핵심을 먼저 말한 후 그것을 구성하는 부수적인 사항을 거론하고 또 그다음에 더욱 세부적인 내용을 거론하는 형태, 즉 ‘위에서 아래로’ 전개되는 피라미드 형태로 논리를 구성해야 상대방이 쉽게 이해하고 받아들일 수 있다. 이것이 바로 민토 피라미드 원칙의 핵심이다. 우리가 민토 피라미드 원칙에 따라 커뮤니케이션을 해야 하는 이유는 인간의 사고 구조 자체가 피라미드 형태로 되어 있기 때문이다.');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'children1', '추리 천재 엉덩이 탐정 8', '김정화', '아이세움', to_date('2019/07/25', 'RRRR-MM-DD'), 12000, 100, '추리 천재 엉덩이 탐정 8.jpg', '<b>아이큐 1,104의 추리 천재, 엉덩이 탐정의"뿡!"소리 나는 흥미진진 추리 동화! </b><p>어느 날, 아침 식사를 하던 엉덩이 탐정과 브라운에게 왠지 낯익은 의뢰인이 찾아온다. 의뢰인은 소파에 걸터앉아 아무 말도 하지 않지만, 관찰력이 뛰어난 엉덩이 탐정은 낯익은 의뢰인이 개굴개굴 왕국의 국왕인 ''개굴 16세''라는 사실을 금세 알아챈다. 개굴 16세는 엉덩이 탐정의 추리력에 감탄하며 카드 한 장을 꺼내 보여준다. 카드는 바로 ''괴도 유''가 보낸 예고장! 예고장에는 괴도 유가 왕국의 보물 ''빛의 베일''을 가져가겠다는 내용이 담겨 있는데.......');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'children1', 'Go Go 카카오프렌즈 9', '김미영', '아울북', to_date('2019/07/30', 'RRRR-MM-DD'), 12000, 100, 'Go Go 카카오프렌즈 9.jpg', '카카오프렌즈와 떠나는 세계 역사 문화 여행<br> 태양을 닮은 열정의 나라 스페인으로 Go Go!<p>★ 아이들 눈높이에 맞춰 나온 재미있는 책! <br>★ 아이가 너무 좋아해요. 다음 책도 얼른 나오면 좋겠어요 <br>★ 책 읽기 싫어했던 아이가 몇 번씩 다시 읽고 있어요 ');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'children2', '바른 글씨', '기적학습연구소', '길벗스쿨', to_date('2019/07/01', 'RRRR-MM-DD'), 10000, 100, '4주만에 완성하는 바른 글씨.jpg', '이 책은 글자와 문장을 바르게 쓰는 방법을 체계적으로 제시하여 4주 만에 반듯한 글씨를 완성하는 훈련서입니다. 하루 10분, 교과 내용과 관련된 다양한 낱말과 문장을 따라 쓰면 글씨 쓰는 바른 습관은 물론 어휘력, 표현력까지 잡을 수 있습니다. <p> 삐뚤빼뚤 부끄러운 글씨체는 이제 그만! [4주 만에 완성하는 바른 글씨]로 누구나 알아보는 반듯한 글씨를 완성해 보세요!');

INSERT INTO product (BOOKNO, CATEGORY, BOOKNAME, WRITER, PUBLISHER, PUBYEAR, PRICE, STOCK, IMAGEFILENAME, DESCRIPTION) 
VALUES (seq_bookNo.nextval, 'children2', '모모', '미하엘엔데', '바룡소', to_date('1999/02/09', 'RRRR-MM-DD'), 11000, 100, '모모.jpg', '<b>인간의 삶에서 가장 소중한 시간의 신비한 비밀에 대한 이야기</b><p>끊임없는 이야기와 모험과 상상력 속에서 행복과 풍요로움을 즐기던 사람들한테 시간을 빼앗아 목숨을 이어가는 회색 신사들이 나타나 그 즐거움을 모두 빼앗아 간다. 그리하여 사람들은 시간을 저축해야 한다는 강박관념에 쫓겨 강팍해지고 피폐해진다. 이에 모모, 호라 박사, 거북 카시오페이아는 일생일대의 모험을 벌이며 사람들에게 시간을 되찾아 준다. 이 책은 자기에게 주어진 삶의 의미를 찾을 줄 알고 가장 재밌게 살아가는 이들을 통해 따스한 정, 상상의 세계, 행복한 감정을 전달하고자 한다. [모모]는 아이들에게는 그들의 마음으로 읽히고, 어른들에게는 또 그 나름의 감동으로 읽히는 아주 특별한 동화이다.');


/* 리뷰 테이블 */ 
drop table review;
create table review(
    reviewId number(4) not null,
    memberId varchar2(20) not null,
    bookNo number(4) not null,
    reviewDate date default sysdate,
    content varchar2(150),
     constraint pk_review primary key(reviewId)
);

drop sequence seq_review_reviewId;
create sequence seq_review_reviewId
 START WITH  1
INCREMENT BY 1;

commit;