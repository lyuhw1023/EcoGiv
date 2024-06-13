<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="univ.User, univ.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
   <%@ include file="dbconn.jsp"%>
   <%
      try {
          request.setCharacterEncoding("UTF-8");
          String usernameInput = request.getParameter("username");
          String passwordInput = request.getParameter("password");

          Connection dbConnection = (Connection) application.getAttribute("DBConnection");
          if (dbConnection == null) {
              throw new ServletException("DB 연결이 설정되지 않았습니다.");
          }

          UserDAO userDAO = new UserDAO(dbConnection);
          User loggedInUser = userDAO.getUser(usernameInput, passwordInput);

          if (loggedInUser != null) {
              HttpSession userSession = request.getSession();
              userSession.setAttribute("userId", loggedInUser.getId());
              userSession.setAttribute("username", loggedInUser.getUsername());
              response.sendRedirect("home.jsp"); // 로그인 후 홈 페이지로 리디렉션
          } else {
              out.println("로그인 실패: 사용자명 또는 비밀번호가 잘못되었습니다.");
          }
      } catch (Exception e) {
          e.printStackTrace();
          out.println("로그인 실패: " + e.getMessage());
      }
   %>
</body>
</html>
