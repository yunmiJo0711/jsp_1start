-- 4_register.jsp의 폼 양식으로 입력한 데이터를 
-- 서버가 전송 받아 4_save.jsp 에서 db 테이블에 저장을 합니다.
-- 테이블 이름 : tbl_user_account

create table tbl_user_account (
	userid varchar2(50) primary key,
	username varchar2(50) not null,
	password varchar2(50) not null,
	birth char(10) not null,
	gender varchar2(50) not null,
	email varchar2(50) unique
);

-- dao의 selectForLogin() 메소드 추가 -> 인자? 리턴타입?
-- 			ㄴ 매개변수 2개 , 결과 행은 0~1개 행
select * from TBL_USER_ACCOUNT
where userid='김땡땡' and password='1234';