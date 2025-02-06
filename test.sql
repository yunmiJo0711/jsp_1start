-- 4_register.jsp의 폼 양식으로 입력한 데이터를 
-- 서버가 전송 받아 4_save.jsp 에서 db 테이블에 저장을 합니다.
-- 테이블 이름 : tbl_user_account

create table tbl_user_account (
	userid varchar2(50) primary key,  -- 고객id
	username varchar2(50) not null,   -- 고객 성명
	password varchar2(50) not null,   -- 패스워드
	birth char(10) not null,  		  -- 생년월일
	gender varchar2(50) not null,     -- 성별
	email varchar2(50) unique  		  -- 이메일
);

-- dao의 selectForLogin() 메소드 추가 -> 인자? 리턴타입?
-- 			ㄴ 매개변수 2개 , 결과 행은 0~1개 행
select * from TBL_USER_ACCOUNT
where userid='김땡땡' and password='1234';


create table tbl_room (
	roomid varchar2(10) primary key,  -- 객실 id
	room_name varchar2(50) not null,  -- 객실명
	room_size number(4) not null, 	  -- 수용인원
	fare number(6) not null, 		  -- 요금
	facilities varchar2(500), 		  -- 시설
	picture varchar2(500)  			  -- 객실사진
);

create table tbl_rent_info(
	rentid number(10) primary key,  	-- 대여id
	userid varchar2(50) not null,  		-- 고객id
	roomid varchar2(10) not null,  		-- 객실id
	checkin date not null,  			-- 시작 날짜
	chechout date not null,  			-- 종료 날짜
	nights number(2) not null,			-- 숙박인원
	foreign key (userid)
	references  tbl_user_account(userid),
	foreign key (roomid)
	references tbl_room(roomid)
); 