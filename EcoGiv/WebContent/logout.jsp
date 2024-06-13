<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
    HttpSession currentSession = request.getSession(false);
    if (currentSession != null) {
        currentSession.invalidate(); // 세션 무효화
    }
    response.sendRedirect("home.jsp"); // 로그아웃 후 홈 페이지로 리디렉션
%>
</body>
</html>
