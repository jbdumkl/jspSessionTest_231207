<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) {
			session.setAttribute("sessionid", mid);//세션 속성으로 로그인한 아이디 추가->로그인
	%>
		<h2><%= mid %>님 로그인 성공하셨습니다.<br><br>
		<h3><a href="sugang.jsp">수강신청 바로가기</a></h3>
	<%
		} else {// 로그인 실패
			response.sendRedirect("login.jsp");//login.jsp 페이지로 강제 이동
		}
	
	%>
</body>
</html>