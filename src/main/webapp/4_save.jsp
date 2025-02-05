<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.UserAccountVO"%>
<%@page import="dao.UserAccountDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 저장</title>
</head>
<body>
<%
	// 요청으로 전달된 form 데이터를 인코딩
	request.setCharacterEncoding("UTF-8");
	// 4_register.jsp 의 form 입력값을 전달 받는 코드 작성
	String username=request.getParameter("username");
	String userid=request.getParameter("userid");
	String password=request.getParameter("password");
	String birth=request.getParameter("birth");
	String gender=request.getParameter("gender");
	String email=request.getParameter("email");
	
	// 참고: 정수 타입으로 저장할 때에는 Integer.parseInt(request.getParameter("age"));
	
	// UserAccountDao 클래스의 유일한 인스턴스를 dao라는 변수에 할당하는 코드입니다. 
	// 이를 통해 해당 인스턴스를 여러 곳에서 재사용할 수 있게 됩니다.
	UserAccountDao dao = UserAccountDao.getInstance();
	// UserAccountVO 생성자 사용하여'객체' 만들기 (insert에 필요한 데이터)
	UserAccountVO vo = new UserAccountVO(username, userid, password, birth, gender, email);
	int result = dao.insert(vo);
	// dao 클래스 사용하기, 인자는 vo로 받는다
	// 리턴값은 insert, update, delete sql 실행이 반영된 행의 갯수이다. 
	// 따라서, 리턴은 int result=0 이면 insert된 행의 갯수가 없다는 것이다.
	if(result==1){
		out.print("<h2>회원 가입 완료!!</h2>");
	}else{
		out.print("<h2>회원 가입 실패!!</h2>");
	}
	// 참고: if문 안의 result == 1 이면 완료 먼저 쓰고, result == 0 이면 실패부터 써야한다. 
	
	
	out.print("<h2>데이터 잘 받았습니다.</h2>");
	out.print("<ul>");
	out.print("<li>");
	out.print(username);
	out.print("</li>");
	out.print("<li>");
	out.print(userid);
	out.print("</li>");
	out.print("<li>");
	out.print(password);
	out.print("</li>");
	out.print("<li>");
	out.print(birth);
	out.print("</li>");
	out.print("<li>");
	out.print(gender);
	out.print("</li>");
	out.print("<li>" + email + "</li>");
	out.print("</ul>");
%>

</body>
</html>