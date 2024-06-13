<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
   Connection conn = null;
   String url = "jdbc:mysql://localhost:3306/CommunityDB?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
   String user = "root";
   String password = "pohvx5036!";

   try {
       Class.forName("com.mysql.cj.jdbc.Driver");
       conn = DriverManager.getConnection(url, user, password);
       application.setAttribute("DBConnection2", conn);
   } catch (ClassNotFoundException e) {
       e.printStackTrace();
       throw new ServletException("JDBC 드라이버 로드 실패: " + e.getMessage(), e);
   } catch (SQLException e) {
       e.printStackTrace();
       throw new ServletException("DB 연결 실패: " + e.getMessage(), e);
   }
%>
