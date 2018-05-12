
DROP TABLE QA;
DROP TABLE EVENT;
DROP TABLE NOTICE;
DROP TABLE CLOUDBOARD;
DROP TABLE CLOUD;
DROP TABLE mp_reply;
DROP TABLE MOVIEPOST;
DROP TABLE PRODUCT;
DROP TABLE SEAT;
DROP TABLE TICKETING;
DROP TABLE SCREENINFO;
DROP TABLE THEATER;
DROP TABLE CINEMA;
DROP TABLE MOVIE;
DROP TABLE USERS;

drop user cinemacloud cascade;

create user cinemacloud IDENTIFIED by cinemacloud DEFAULT tablespace users
TEMPORARY tablespace temp
profile default;

grant connect, resource to cinemacloud;
grant create view, create synonym to cinemacloud;

drop table users;
--회원 테이블
CREATE TABLE users(
	u_code               NUMBER(10) PRIMARY KEY ,
	u_id                 VARCHAR2(30) UNIQUE ,    
	u_pw                 VARCHAR2(50) NOT NULL ,
	u_name               VARCHAR2(20) NOT NULL ,
	u_phone              VARCHAR2(50) NOT NULL ,
	u_email              VARCHAR2(50) NOT NULL ,
	u_birth              DATE NOT NULL ,
	u_grade              CHAR(10) DEFAULT 'C' ,
    u_grade_cnt   NUMBER DEFAULT 1,
    u_date  TIMESTAMP DEFAULT SYSDATE
);
create sequence u_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;	

insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'host','host','cinemacloud','01000000000','host@cinemacloud.com','670920','A');

insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_1','M1','매니저1','01016464831','M_1@cinemacloud.com','840321','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_2','M2','매니저2','01075571244','M_2@cinemacloud.com','860611','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_3','M3','매니저3','01064993357','M_3@cinemacloud.com','901201','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_4','M4','매니저4','01099438214','M_4@cinemacloud.com','840321','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_5','M5','매니저5','01033578831','M_5@cinemacloud.com','860611','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_6','M6','매니저6','01086249914','M_6@cinemacloud.com','901201','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_7','M7','매니저7','01098773144','M_7@cinemacloud.com','840321','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_8','M8','매니저8','01078963157','M_8@cinemacloud.com','860611','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_9','M9','매니저9','01098754489','M_9@cinemacloud.com','901201','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_10','M10','매니저10','01096595531','M_10@cinemacloud.com','840321','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_11','M11','매니저11','01041654564','M_11@cinemacloud.com','840321','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_12','M12','매니저12','01091342584','M_12@cinemacloud.com','860611','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_13','M13','매니저13','01024787864','M_13@cinemacloud.com','901201','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_14','M14','매니저14','01037869797','M_14@cinemacloud.com','840321','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_15','M15','매니저15','01043786786','M_15@cinemacloud.com','860611','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_16','M16','매니저16','01037869797','M_16@cinemacloud.com','840321','B');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'M_17','M17','매니저17','01043786786','M_17@cinemacloud.com','860611','B');
--코드 :: 2~18 매니저17명 

insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'u_1','u1','회원1','01025504472','u_1@naver.com','940330','C');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'u_2','u2','회원2','01033871588','u_2@naver.com','950511','C');
insert into users(u_code,u_id,u_pw,u_name,u_phone,u_email,u_birth,u_grade) values(U_CODE_SEQ.NEXTVAL, 'u_3','u3','회원3','01034786678','u_3@naver.com','700201','C');

select * from users;
commit;

--영화관 테이블
drop table cinema;


CREATE TABLE cinema(
	c_code               NUMBER(10) PRIMARY KEY,
	c_name               VARCHAR2(50) NULL ,
    c_loc                VARCHAR2(20) NULL,
	c_adr                VARCHAR2(200) NULL ,
	c_info               VARCHAR2(300) NULL ,
	c_pic                VARCHAR2(150) NULL ,
    u_code                NUMBER(10) NOT NULL,
    c_mapx                VARCHAR2(50) NULL ,
    c_mapy                VARCHAR2(50) NULL ,
    c_trans              VARCHAR2(800) NULL ,      
    FOREIGN KEY (u_code) REFERENCES users (u_code) ON DELETE CASCADE
);

create sequence c_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;

insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'화곡점','서울','서울특별시 강서구 화곡로 142 클라우드 스퀘어 4층','화곡점 정보','resources/images/cinema/1.jpg',2,'37.54141','126.8413656','604번, 606번, 650번,652번, 653번, 661번, 673번
7700번
5호선 화곡역 6번출구 도보 3분(300m)');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'김포점','경기','경기도 김포시 걸포로 6 걸포동, 미도프라자 7층,8층 / 전화번호 1544-0070','부천점 정보','resources/images/cinema/2.jpg',3,'37.6456686','126.7063888','3000, 9008, 8600
20, 33, 60-3, 81-1');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'일산점','경기','경기도 고양시 일산서구 덕이로 20 / 전화번호 1544-0070','일산점 정보','resources/images/cinema/3.jpg',4,'37.681997','126.7678513','2번, 5번, 8번, 567번, 706번, 7733번
76번, 770번, 773번, 1500번, 2000번, 3000번, 5000번
15번');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'송도점','인천','인천 광역시 연수구 송도 과학로 16번길 33-4번지 트리플 스트리트 D동 2층','송도점 정보','resources/images/cinema/4.jpg',5,'37.429714','126.6522963','9번,51-1(순환),909번 → 테크노 파크역 하차
6-2번,16번,81번,91번(순환),92번(순환) → 인천 글로벌 캠퍼스 하차
6-2번,35번,81번,91번(순환),1302번 → 송도 테크노 파크 IT센터 하차
인천 지하철 1호선 테크노파크역 하차 → 지하철 2번 출구 이용 - 도보 10분. 지상 현대 프리미엄 아울렛 송도점을 지나 진입
인천 지하철 1호선 테크노파크역 하차 → 지하철 2번 출구 이용 - 도보 10분. 지하 - 현대 프리미엄 아울렛 송도점 지하 1층을 지나 미디어 터널 진입');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'이수점','서울','서울특별시 동작구 동작대로 89 골든 시네마타워 7층','이수점 정보','resources/images/cinema/5.jpg',6,'37.486491','126.9796873','363, 752, 540, 540(심야)
4418, 4212, 5528, 5524, 5412, 4425, 4425(심야), 11-1, 11-2, 11-5
151, 2112, 301
동작 : 06, 07, 09, 15, 16, 17, 18, 서초 : 05, 06, 16
지하철 4호선 이수역 하차 → 지하철 7번 출구 이용
지하철 7호선 이수역 하차 → 지하철 7번 출구 이용');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'신촌점','서울','서울특별시 서대문구 신촌역로 30 밀리오레 5층','신촌점 정보','resources/images/cinema/6.jpg',7,'37.556329','126.9379478','163번, 170번, 171번, 172번, 270번, 271번, 273번, 602번, 603번, 472번, 721번, 751번
5711번, 5712번, 5713번, 5714번, 7011번, 7712번, 7017번, 7611번, 6716번, 7024번
1000번, 1100번, 1200번, 9600번, 9602번, 9706번
서대문 03번, 서대문 04번, 서대문 05번
지하철 2호선 이대역 하차 → 지하철 1번 출구 이용
지하철 2호선 신촌역 하차 → 지하철 3번 출구 이용
경의중앙선 신촌역 하차 → 지하철 1번 출구 이용');
---------------------------
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'강남점','서울','서울특별시 서초구 서초대로77길 3 아라타워 8층','강남점 정보','resources/images/cinema/7.jpg',8,'37.497925','127.0264784','140번, 144번, 145번, 146번, 360번, 402번, 407번, 408번, 420번, 440번, 441번, 462번, 470번, 471번
3412번, 4412번, 서초03번, 서초 09번
9404번, 9408번, 9409번, 9503번, 9711번, 9500번, 9501번, 9510번, 9800번, 9801번, 9802번, 9901번, M4403번, M7412번
지하철 2호선 , 신분당선 강남역 -> 지하철 9번(구 5번) 출구 좌측 연결통로 이용');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'동대문점','서울','서울특별시 중구 장충단로 247 굿모닝시티 9층','동대문점 정보','resources/images/cinema/8.jpg',9,'37.5716675','127.009031','90S투어
100번,105번,144번,152번,202번,261번, 301번, 407번, 420번, 421번, 463번, 507번,N13번(심야),N16번(심야),N30번(심야),N62번(심야)
2012번,2014번,2015번,2233번,7212번
9403번
6001번
지하철 2호선 동대문역사문화공원역 하차 → 지하철 2호선 방향 13,14번 출구 이용
지하철 4호선 동대문역사문화공원역 하차 → 지하철 2호선 방향 13,14번 출구 이용
지하철 5호선 동대문역사문화공원’ 하차 → 지하철 2호선 방향 13,14번 출구 이용');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'청라점','인천','인천광역시 서구 중봉대로 610(연희동) 마루힐프라자 8층 시네마클라우드 청라점','청라점 정보','resources/images/cinema/9.jpg',10,'37.5253502','126.6277769','2-1번, 3-2번, 7번, 17-1번, 40번, 42번, 42-2번, 43번, 43-2번, 46번, 70번, 72번, 83번, 202번, 222A번, 223A번, 306번, 307번
591번, 595번
7700번, 9300번
904번, 904-1번
M6118번
인천 2호선 서구청역 하차 → 42-2번, 43번, 595번 버스 이용
인천 2호선 가정역 하차 → 2-1번, 3-2번, 7번, 42번, 46번, 83번, 591번, 904번, 904-1번 버스 이용');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'검단점','인천','(22677) 인천광역시 서구 서곶로 788 (당하동) 홀리랜드 4층 시네마클라우드 검단','검단점 정보','resources/images/cinema/10.jpg',11,'37.5996866','126.653889','마전성당 하차 : 13, 76, 78, 81
백석고가(하이마트) 하차 :1, 7, 17, 17-1, 90, 70, 77, 308, 700, 700-1, 903
인천 2호선 독정역 하차 → 1번출구이용 완정사거리 방면 도보 5분 이내
인천 2호선 완정역 하차 → 3번출구이용 검단이마트(독정역) 방면 도보 5분 이내');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'논현점','인천','인천광역시 남동구 논고개로 61, 6층 시네마클라우드(논현동, 라피에스타)','논현점 정보','resources/images/cinema/11.jpg',12,'37.511206','127.0195393','6번, 6-1번, 16-1번, 21번
537번
1301번, 1302번
905번, 907번, 303-1번
수인선 인천논현역 또는 소래포구역 1번출구 도보 10분 內');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'동탄점','경기','경기도 화성시 동탄지성로 11(반송동) 7층 시네마클라우드 동탄점','동탄점 정보','resources/images/cinema/12.jpg',13,'37.1994712','127.0969563','1번, 13-5번, 70-2번, 92-1번, 709번
1551번, 1551B번
17-1번, 27번');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'수원점','경기','경기도 수원시 권선구 경수대로 270','수원점 정보','resources/images/cinema/13.jpg',14,'37.2664355','126.9985548',' 80, 82-1, 300, 300-1(버스터미널 건너편(LG플라자)
82-1,300,300-1,303(버스터미널 앞)
1, 5, 5-1, 7, 7-1, 7-2, 13-5, 64, 80, 81, 82, 88, 200, 303, 310, 900 / NC 백화점 (이마트옆)
지하철 1호선 수원역 하차 → 롯데리아 앞 버스 환승 (5, 5-1, 7,7-1,7-2, 310, 900번) 영통,오산방향
지하철 1호선 세류역 하차 → 버스터미널 방면 버스(82-1, 200번) 환승
지하철 1호선 망포역 하차 → 4번출구 차외과 앞 버스 환승 (5,5-1,7,7-1,7-2,310,900)번');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'분당점','경기',' 경기도 성남시 분당구 황새울로 332','분당점 정보','resources/images/cinema/14.jpg',15,'37.3849271','127.1211125','116번, 222번, 310번,380번, 110번, 111번 (AK플라자)
9413번, 9414번, 3500번, 1101번, 9400번, 9401번, 9403번, 1005번 1005-1번(서현역)
15번, 17번, 17-1번, 33번, 116-3번, 220번, 250번, 300번, 500번, 55-1번, 521번, 600번, 720-1번, 720-2번(서현역)
지하철 분당선 서현역 하차 → 지하철 4번 출구 AK플라자 GATE 2번 출구');
insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'부산본점','부산','부산 부산진구 부전동,503-15','부산본점 정보','resources/images/cinema/15.jpg',16,'35.1149818','129.0411679','· 김해공항 -> 롯데백화점 : 공항리무진(1시간 단위)
· 사상방면 -> 롯데백화점 : 107번, 108번, 62번 등
· 부산역방면 -> 롯데백화점 : 98번, 67번, 167번, 81번, 28번
· 해운대방면 -> 롯데백화점 : 141번, 40번, 31번, 5번
· 동래방면 -> 백화점 : 111번, 77번, 31번, 52번
· 서면역 1, 2호선 지하 롯데백화점과 바로 연결 (엘리베이터 이용 10층)'
);

insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'서면점','부산','부산 부산진구 전포동,668-1번지 ','서면점 정보','resources/images/cinema/16.jpg',17,'35.1577455','129.0588958','· 일반버스 : 5, 5-1, 10, 10-1, 17, 29-1, 35, 43, 52, 52-1, 57, 57-1, 67, 
80, 80-1, 85, 86, 89, 98, 99, 103, 111, 111-2번
· 1, 2호선 서면역 : 8번 출구 (도보 직진 200미터 > 대각선 횡단보도 이용 > 건물 진입 후 엘리베이터 이용 6층)'
);

insert into CINEMA values(C_CODE_SEQ.NEXTVAL,'사상점','부산','부산 사상구 괘법동 533-1 부산서부버스터미널 3-5층','사상점 정보','resources/images/cinema/17.jpg',18,'35.1623571','128.9856529','· 동래 -> 롯데시네마 : 77번,110번
· 하단 -> 롯데시네마 : 138-1번,338번
· 서면 -> 롯데시네마 : 31번,33번,61번,62번,138-1번,160번,186번
· 남포동 -> 롯데시네마 : 8번,15번,61번,161번
· 부산역 -> 롯데시네마 : 59번, 61번,1004번(심야)
· 해운대 -> 롯데시네마 : 31번
· 구포 -> 롯데시네마 : 59번,128번,160번,169번,1004번(심야)
· 2호선 사상역 : 3번 출구
· 2호선 사상역 : 5번 출구 (출구 반대방향 도보 30미터 > 우측 건물 진입 > 엘리베이터 이용 3층)'
);

SELECT * FROM CINEMA;
 
COMMIT;

--영화 테이블
CREATE TABLE movie(
	m_code               NUMBER(10) PRIMARY KEY,
	m_title             VARCHAR2(50) NULL ,
   m_grade             VARCHAR2(300) NULL ,
    m_actor             VARCHAR2(50) NULL,
   m_director          VARCHAR2(50) NULL ,
   m_genre             VARCHAR2(20) NULL ,
   m_start_date        DATE default sysdate not null,
   m_runningtime       NUMBER NOT NULL ,
   m_viewer_num        NUMBER NULL,
    m_content           VARCHAR2(500)  null,
    m_image             VARCHAR2(300) NULL,
    m_trailer           VARCHAR2(300) null
);
create sequence m_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
SELECT * FROM MOVIE;

insert into movie values(M_CODE_SEQ.NEXTVAL,'퍼시픽림: 업라이징','resources/images/mchart/grade_15.png','예거','스티븐S.드나이트','액션,SF','2018-3-21',111,1000000,'끝나지 않은 전쟁, 진화하는 적에 맞서라!
전 세계를 초토화시켰던 전쟁 이후, 
지구 종말의 위기가 다시 찾아온다.','resources/images/mchart/pr_chart.png',
'resources/videos/pr_trailer.mp4');
insert into movie values(M_CODE_SEQ.NEXTVAL,'지금 만나러 갑니다','resources/images/mchart/grade_12.png','소지섭/손예진','이장훈','로맨스/멜로','2018-3-14',132,19000,'세상을 떠난 그녀가 다시 돌아왔다.
모든 기억을 잃은 채.','resources/images/mchart/now_chart.png','');
insert into movie values(M_CODE_SEQ.NEXTVAL,'사라진 밤','resources/images/mchart/grade_15.png','김희애/김강우/김상경','이창희','스릴러','2018-3-7',101,1170000,'아내를 살해하고 완전범죄를 계획한 남편.
몇 시간 후, 국과수 사체보관실에서 그녀의 시체가 흔적도 없이 사라진다.','resources/images/mchart/mn_chart.png','');
insert into movie values(M_CODE_SEQ.NEXTVAL,'리틀 포레스트','resources/images/mchart/grade_all.png','김태리/류준열/문소리','임순례','드라마','2018-2-28',103,1395703,'“잠시 쉬어가도, 달라도, 평범해도 괜찮아! 
모든 것이 괜찮은 청춘들의 아주 특별한 사계절 이야기”.','resources/images/mchart/lf_chart.png','');
insert into movie values(M_CODE_SEQ.NEXTVAL,'툼레이더','resources/images/mchart/grade_12.png','알리시아 비칸데르','로아 우다우그','액션','2018-3-8',118,532318,'역사상 가장 위험한 어드벤처의 시작 전사로 깨어난 라라의 모험에 동참하라!','resources/images/mchart/tr_chart.png','resources/videos/tr_trailer.mp4');
insert into movie values(M_CODE_SEQ.NEXTVAL,'레디플레이어원','resources/images/mchart/grade_12.png','마크 라이런스/사이먼 페그','스티븐 스필버그','액션/SF','2018-3-28',140,19000,'2045년, ‘오아시스’라는 가상현실 속에 숨겨진 보물을 찾아라.
이스터에그를 찾는 모험을 그린 최초의 가상현실 블록버스터','resources/images/mchart/rpo_chart.png','');
insert into movie values(M_CODE_SEQ.NEXTVAL,'셰이프 오브 워터','resources/images/mchart/grade_19.png','샐리 호킨스','기예르모 델 토로','드라마/판타지','2018-2-22',123,485167,'모든 것을 초월한 단 하나의 사랑 
“그를 사랑하는 나도 괴물인가요?”','resources/images/mchart/sow_chart.png','');
insert into movie values(M_CODE_SEQ.NEXTVAL,'영웅본색4','resources/images/mchart/grade_15.png','왕대륙/마천우','딩성','액션/스릴러','2018-3-22',114,0,'“세상이 아무리 변해도 한 번 형제는 영원한 형제야”
밀수업으로 큰돈을 거머쥔 카이와 카이를 친형처럼 믿고 따르는 마크는
세상에 떳떳하지 못한 일을 하지만 의리와 신념만은 끈끈하다.','resources/images/mchart/h4_chart.png','');
insert into movie values(M_CODE_SEQ.NEXTVAL,'블랙팬서','resources/images/mchart/grade_12.png','채드윅 보스만','라이언 쿠글러','액션/SF','2018-2-14',135,5381937,'‘시빌 워’ 이후 와칸다의 왕위를 계승한 티찰라(채드윅 보스만)는 
 와칸다에만 존재하는 최강 희귀 금속 ‘비브라늄’과 
 왕좌를 노리는 숙적들의 음모가 전세계적인 위협으로 번지자 
 세상을 구할 히어로 ‘블랙 팬서’로서 피할 수 없는 전쟁에 나서는데…','resources/images/mchart/bp_chart.png','resources/videos/bp_trailer.mp4'); 
insert into movie values(M_CODE_SEQ.NEXTVAL,'로건럭키','resources/images/mchart/grade_12.png','채닝 테이텀/아담 드라이버','스티븐 소더버그','코미디/범죄','2018-3-14',119,21731,'하루 아침에 직장에서 쫓겨난 형 지미 로건 (채닝 테이텀) 
 한쪽 손을 잃고 바텐더로 하루 벌어 하루 사는 동생 클라이드 로건 (아담 드라이버) 
 별 볼일 없이 살던 로건 형제가 인생을 역전시킬 한탕을 계획한다!','resources/images/mchart/roganlucky_chart.png',''); 
insert into movie values(M_CODE_SEQ.NEXTVAL,'소공녀','resources/images/mchart/grade_15.png','이솜/안재홍','전고운','멜로/로맨스','2018-3-22',106,42297,'집만 없을 뿐 일도 사랑도 자신만의 방식대로 살아가는 
 사랑스러운 현대판 소공녀 ‘미소’의 도시 하루살이가 시작된다!','resources/images/movie/movie_sg.jpg',''); 
insert into movie values(M_CODE_SEQ.NEXTVAL,'7년의밤','resources/images/mchart/grade_15.png','류승룡/장동건/송새벽/고경표','추창민','스릴러','2018-3-28',123,9683,'우발적 사고 
잘못된 선택
“그날 밤, 나는 살인자가 되었다”','resources/images/movie/movie_7.jpg',''); 

SELECT * FROM MOVIE;

 COMMIT;


--상영관 테이블
drop table theater;
CREATE TABLE theater(
	th_code               NUMBER(10) PRIMARY KEY ,	
	th_num                NUMBER NULL ,
	th_open               DATE DEFAULT SYSDATE ,
	th_close              DATE DEFAULT NULL,
	th_row                NUMBER NULL ,
	th_col             NUMBER NULL,
    c_code               NUMBER(10),
    FOREIGN KEY (c_code) REFERENCES cinema (c_code) ON DELETE CASCADE
);
create sequence th_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
SELECT * FROM THEATER;

insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,15,1);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,5,10,1);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,3,'2018-03-26',NULL,10,20,1);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,20,2);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,10,15,2);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,5,10,3);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,20,4);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,10,20,4);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,15,5);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,5,10,5);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,20,6);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,10,20,6);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,3,'2018-03-26',NULL,10,15,6);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,5,10,7);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,20,8);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,20,9);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,5,10,10);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,10,20,10);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,3,'2018-03-26',NULL,10,20,10);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,4,'2018-03-26',NULL,10,15,10);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,5,10,11);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,20,12);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,10,20,12);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,15,13);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,5,10,14);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,10,20,14);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,5,10,15);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,20,16);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,2,'2018-03-26',NULL,10,20,16);
insert into THEATER values(TH_CODE_SEQ.NEXTVAL,1,'2018-03-26',NULL,10,15,17);

COMMIT;

--상영정보 테이블
CREATE TABLE screeninfo(
	s_code               NUMBER(10) PRIMARY KEY,	
	s_date               DATE NOT NULL ,
	s_start_time         VARCHAR2(30) NOT NULL ,
	s_seat_rest          NUMBER NULL ,
    m_code               NUMBER(10) NOT NULL,
	th_code              NUMBER(10) NOT NULL,
    FOREIGN KEY (m_code) REFERENCES movie (m_code) ON DELETE CASCADE,
    FOREIGN KEY (th_code) REFERENCES theater (th_code) ON DELETE CASCADE
);
create sequence s_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
SELECT * FROM SCREENINFO;
--더추가해야함
INSERT INTO SCREENINFO VALUES(S_CODE_SEQ.NEXTVAL,'2018-04-05','15:20',3,1,1);
INSERT INTO SCREENINFO VALUES(S_CODE_SEQ.NEXTVAL,'2018-04-05','20:20',5,1,2);
INSERT INTO SCREENINFO VALUES(S_CODE_SEQ.NEXTVAL,'2018-04-05','15:20',8,2,3);
INSERT INTO SCREENINFO VALUES(S_CODE_SEQ.NEXTVAL,'2018-04-05','15:20',11,2,2);
INSERT INTO SCREENINFO VALUES(S_CODE_SEQ.NEXTVAL,'2018-04-05','15:20',14,1,4);

COMMIT;

--예매 테이블
CREATE TABLE ticketing(
   t_code               NUMBER(10) PRIMARY KEY,	
   t_date                TIMESTAMP DEFAULT SYSDATE,
   t_num               VARCHAR2(50) NOT NULL,
   t_price                NUMBER NOT NULL,
   t_type       VARCHAR2(20) DEFAULT 'CARD',
   s_code               NUMBER(10) NOT NULL,
   u_code               NUMBER(10) NOT NULL,
   FOREIGN KEY (s_code) REFERENCES SCREENINFO(s_code) ON DELETE CASCADE,
   FOREIGN KEY (u_code) REFERENCES users(u_code) ON DELETE CASCADE
);
create sequence t_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
SELECT * FROM ticketing;
INSERT INTO ticketing VALUES(T_CODE_SEQ.NEXTVAL,SYSDATE,'A1,D5',20000,'CARD',1,21);

COMMIT;

--좌석 테이블
CREATE TABLE seat(
    st_code NUMBER(10) PRIMARY KEY,
    st_num VARCHAR2(1000) DEFAULT NULL,
    st_delDate DATE,
    s_code NUMBER(10) REFERENCES SCREENINFO(s_code)
);
create sequence st_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
select * from seat;
INSERT INTO seat VALUES(ST_CODE_SEQ.NEXTVAL,'A1/D5',SYSDATE,1);

--무비포스트 테이블
CREATE TABLE moviepost(
   mp_code              NUMBER(10) PRIMARY KEY ,
   mp_title             VARCHAR2(50) NULL ,
   mp_date              DATE NULL ,
   mp_content   VARCHAR2(200),
   mp_like              NUMBER DEFAULT 0 ,
   mp_pic               VARCHAR2(300) NULL ,
   m_code               NUMBER(10) NOT NULL,
   u_code               NUMBER(10) NOT NULL,
    FOREIGN KEY (u_code) REFERENCES users (u_code) ON DELETE CASCADE,
    FOREIGN KEY (m_code) REFERENCES movie (m_code) ON DELETE CASCADE
);
create sequence mp_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
select * from MOVIEPOST;

insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'지금만나로갑니다','2018-03-20','안봄','14','resources/images/movie/movie_now.jpg',2,19);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'사라진밤','2018-03-20','꿀잼','2','resources/images/movie/movie1.jpg',3,19);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'퍼시픽림','2018-03-20','노잼','3','resources/images/movie/movie_pr.jpg',1,19);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'치즈인더트랩','2018-03-20','보고싶다','48','resources/images/movie/movie_ct.jpg',10,19);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'리틀포레스트','2018-03-20','보고싶어요','59','resources/images/movie/movie_lf.jpg',4,19);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'소공녀','2018-03-28','보고싶어요','59','resources/images/movie/movie_sg.jpg',11,20);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'블랙팬서','2018-03-20','보고싶어요','50','resources/images/mchart/bp_chart.png',9,20);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'7년의밤','2018-03-20','보고싶어요','6','resources/images/movie/movie_7.jpg',12,20);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'7년의밤','2018-03-29','이거 꿀잼이에요 근데 아직 안봤어요.','3','resources/images/movie/movie_7.jpg',12,21);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'사라진밤','2018-03-28','보면서 팝콘 날라감 팝콘 주워먹는거 꿀잼','2','resources/images/movie/movie1.jpg',3,21);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'치즈인더트랩','2018-03-29','진짜 실망했어요','0','resources/images/movie/movie_ct.jpg',10,21);
insert into MOVIEPOST values(MP_CODE_SEQ.NEXTVAL,'블랙팬서','2018-03-18','집가서 블랙팬서 놀이해야지~','1','resources/images/mchart/bp_chart.png',9,21);
commit;

--스토어 테이블
CREATE TABLE product(
   p_code               NUMBER(10) PRIMARY KEY ,
   p_name               VARCHAR2(30) NULL ,
   p_content            VARCHAR2(100) NULL ,
   p_price              NUMBER NULL ,
   p_type               CHAR(5) NULL ,
   p_validate           DATE DEFAULT SYSDATE 
);
create sequence p_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
select * from product;

insert into product values(P_CODE_SEQ.NEXTVAL,'팝콘','맛있는 팝콘',1000,'A','2017-08-31');
insert into product values(P_CODE_SEQ.NEXTVAL,'콜라','맛있다',1500,'A','2017-08-31');
insert into product values(P_CODE_SEQ.NEXTVAL,'버터오징어','맛있다',2000,'A',sysdate);
insert into product values(P_CODE_SEQ.NEXTVAL,'콜라','맛있다',2000,'B',sysdate);
insert into product values(P_CODE_SEQ.NEXTVAL,'레몬에이드','맛있다',2000,'B',sysdate);
insert into product values(P_CODE_SEQ.NEXTVAL,'커피','맛있다',2000,'B',sysdate);
insert into product values(P_CODE_SEQ.NEXTVAL,'싱글패키지','ㅠㅠ',9000,'C',sysdate);
insert into product values(P_CODE_SEQ.NEXTVAL,'커플패키지','우왕',17000,'C',sysdate);
insert into product values(P_CODE_SEQ.NEXTVAL,'패밀리패키지','와우!',32000,'C',sysdate);

commit;

--이벤트 테이블
CREATE TABLE event(
   e_code               NUMBER(10) PRIMARY KEY ,
   e_name               VARCHAR2(50) NULL ,
   e_type               CHAR(10) NULL ,
   e_img                VARCHAR2(300) NULL,
   e_start_date         DATE default sysdate not null,
   e_end_date           DATE null,  
   u_code               NUMBER(10) NOT NULL,
   FOREIGN KEY (u_code) REFERENCES users (u_code) ON DELETE CASCADE
);

drop sequence e_code_seq;
create sequence e_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;

insert into event values(E_CODE_SEQ.NEXTVAL,'발렌타인데이','이벤트','resources/images/event/event1.png','2018-02-11','2018-02-16',17);
insert into event values(E_CODE_SEQ.NEXTVAL,'클라우드멤버십','멤버십','resources/images/event/event2.png','2018-03-01','2018-04-11',16);
insert into event values(E_CODE_SEQ.NEXTVAL,'봄맞이쿠폰','쿠폰','resources/images/event/event3.png','2018-04-01','2018-04-15',15);
insert into event values(E_CODE_SEQ.NEXTVAL,'HAPPY 무비데이','이벤트','resources/images/event/event4.png','2018-03-01','2018-04-30',14);
insert into event values(E_CODE_SEQ.NEXTVAL,'KT멤버십','멤버십','resources/images/event/event5.png','2018-03-01','2018-04-30',13);
insert into event values(E_CODE_SEQ.NEXTVAL,'예매경품','이벤트','resources/images/event/event6.png','2018-03-23','2018-04-08',12);
insert into event values(E_CODE_SEQ.NEXTVAL,'동네영화관','이벤트','resources/images/event/event7.png','2018-04-02','2018-04-30',11);
insert into event values(E_CODE_SEQ.NEXTVAL,'L.pay 페이백','멤버십','resources/images/event/event8.png','2018-04-01','2018-04-30',10);

commit;

--무비스코어 전문가 평점 테이블
CREATE TABLE cloud
(
	cl_code              NUMBER  primary key ,
	cl_reply             VARCHAR2(200) NULL ,
	cl_directorscore     VARCHAR2(200) NULL ,
	cl_storyscore        VARCHAR2(200) NULL ,
	cl_actorscore        VARCHAR2(200) NULL ,
	cl_goodscore         VARCHAR2(200) NULL ,
	cl_pic               VARCHAR2(200) NULL ,
	cl_like              NUMBER NULL ,
	u_code               NUMBER(10) NULL ,
	m_code               NUMBER(10) NOT NULL, 
    FOREIGN KEY (m_code) REFERENCES movie (m_code) ON DELETE CASCADE,
    FOREIGN KEY (u_code) REFERENCES users (u_code) ON DELETE CASCADE
);

select * from movie;
select * from users;

create sequence cl_code_seq start with 0 MINVALUE 0 increment by 1 nocache;

insert into cloud values(cl_code_seq.nextval,'핵꿀잼',100,100,100,100,'test',177,5,3);
insert into cloud values(cl_code_seq.nextval,'허니잼',100,100,100,100,'test',102,6,2);
insert into cloud values(cl_code_seq.nextval,'잼',100,100,100,100,'test',88,7,4);
insert into cloud values(cl_code_seq.nextval,'노잼',100,100,100,100,'test',17,5,5);

commit;

select * from cloud;

--무비스코어 회원 평점 테이블
create table cloudboard(
    cb_code number primary key,
    cb_content varchar2(50) not null,
    cb_date DATE DEFAULT sysdate NULL,
    u_code number,
    m_code number,
    cb_directorscore     NUMBER NULL ,
	cb_storyscore        NUMBER NULL ,
	cb_actorscore        NUMBER NULL ,
	cb_goodscore         NUMBER NULL ,
    
    FOREIGN KEY (m_code) REFERENCES movie (m_code) ON DELETE CASCADE,
    FOREIGN KEY (u_code) REFERENCES users (u_code) ON DELETE CASCADE
); 
select * from cloudboard;
select * from cloud;

create sequence cb_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
select * from cloudboard;

insert into cloudboard values(cb_code_seq.nextval,'우와 재밌다',sysdate,21,2,80,90,80,80);
insert into cloudboard values(cb_code_seq.nextval,'우와 재밌다',sysdate,20,2,80,90,80,80);
insert into cloudboard values(cb_code_seq.nextval,'우와 재밌다',sysdate,19,1,80,90,80,80);

commit;

--무비포스트 댓글 테이블
create table mp_reply(
	mpr_code number primary key,
	mpr_content varchar2(150) not null,
	u_code   number(10) NOT NULL,
	mp_code  NUMBER(10) not null,
	
	FOREIGN KEY (mp_code) REFERENCES moviepost (mp_code) ON DELETE CASCADE,
    FOREIGN KEY (u_code) REFERENCES users (u_code) ON DELETE CASCADE
);

create sequence mpr_code_seq start with 0 MINVALUE 0 increment by 1 nocache;

insert into mp_reply values(mpr_code_seq.NEXTVAL,'test',19,6);



-- 분실물 테이블
CREATE TABLE LAF
(
	l_number             INTEGER NOT NULL ,
	l_title              VARCHAR2(20) NULL ,
	l_content            VARCHAR2(200) NULL ,
	mg_id                VARCHAR2(20) NOT NULL ,
	u_code               number(10) NOT NULL ,
	l_regdate            DATE DEFAULT sysdate NULL ,
	l_question           VARCHAR2(20) NULL ,
	l_answer             VARCHAR2(20) NULL ,
	l_kind               VARCHAR2(20) NULL ,
    FOREIGN KEY (u_code) REFERENCES users(u_code) ON DELETE CASCADE	
);

create sequence l_number_seq start with 0 MINVALUE 0 increment by 1 nocache;

insert into laf values(L_NUMBER_SEQ.NEXTVAL,'지갑분실','프라다 사피아노 장지갑(하늘색)','1',20,sysdate,'1','1','분실신고');
insert into laf values(L_NUMBER_SEQ.NEXTVAL,'지갑습득','하늘색 장지갑','2',21,sysdate,'2','2','습득신고');
insert into laf values(L_NUMBER_SEQ.NEXTVAL,'핸드폰분실','갤럭시S9핸드폰','3',19,sysdate,'3','3','분실신고');
insert into laf values(L_NUMBER_SEQ.NEXTVAL,'가방분실','샘소나이트 백팩','4',21,sysdate,'4','4','분실신고');
insert into laf values(L_NUMBER_SEQ.NEXTVAL,'가방습득','가방','5',19,sysdate,'5','5','습득신고');
commit;

select * from LAF;

--공지사항 테이블
CREATE TABLE notice(
	n_code               number(10) PRIMARY KEY ,
    n_title              VARCHAR2(100) NULL ,
    n_content            VARCHAR2(300) NULL ,
	n_regdate            DATE DEFAULT sysdate,
	n_view               NUMBER DEFAULT 0 ,
    n_img                VARCHAR2(400) NULL 
);
create sequence n_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
	
SELECT * FROM NOTICE;

insert into notice values(N_CODE_SEQ.NEXTVAL,'테스트1','내용1','2018-03-23',1,'이미지경로');
insert into notice values(N_CODE_SEQ.NEXTVAL,'테스트2','내용2','2018-03-23',1,'이미지경로');
insert into notice values(N_CODE_SEQ.NEXTVAL,'테스트3','내용3','2018-03-23',1,'이미지경로');
--Q/A게시판 테이블
CREATE TABLE QA(
	q_code             NUMBER(10) PRIMARY KEY,
	q_question              VARCHAR2(100),
	q_content            VARCHAR2(200),
    q_answer             VARCHAR2(200) NULL ,
    q_kind               CHAR(10),
    q_regdate            DATE DEFAULT sysdate ,
	u_code               NUMBER(10) NOT NULL ,
	FOREIGN KEY (u_code) REFERENCES users(u_code) ON DELETE CASCADE	 
);
create sequence q_code_seq
	start with 0
    MINVALUE 0
	increment by 1
	nocache;
SELECT * FROM QA;    

insert into QA values(Q_CODE_SEQ.NEXTVAL,'질문1','내용1','답변1','A','2018-03-23',17);

