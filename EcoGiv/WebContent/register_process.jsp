<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, univ.User, univ.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
<script type="text/javascript">
    function showPopup(message, redirect) {
        alert(message);
        if (redirect) {
            window.location.href = redirect;
        }
    }
</script>
</head>
<body>
   <%@ include file="dbconn.jsp"%>
   <%
      try {
          request.setCharacterEncoding("UTF-8");
          String username = request.getParameter("username");
          String passwordInput = request.getParameter("password");
          String email = request.getParameter("email");

          User newUser = new User();
          newUser.setUsername(username);
          newUser.setPassword(passwordInput);
          newUser.setEmail(email);

          Connection dbConnection = (Connection) application.getAttribute("DBConnection");
          if (dbConnection == null) {
              throw new ServletException("DB 연결이 설정되지 않았습니다.");
          }

          UserDAO userDAO = new UserDAO(dbConnection);
          userDAO.addUser(newUser);

          out.println("<script type='text/javascript'>showPopup('회원가입이 성공적으로 처리되었습니다.', 'home.jsp');</script>");
      } catch (Exception e) {
          e.printStackTrace();
          out.println("<script type='text/javascript'>showPopup('회원가입이 실패했습니다. 다시 시도해 주세요.', null);</script>");
      }
   %>
</body>
</html>
