<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="univ.CommunityDAO" %>
<%@ include file="dbconn.jsp" %>

<%
    int postId = Integer.parseInt(request.getParameter("postId"));
    CommunityDAO communityDAO = new CommunityDAO(conn);

    try {
        communityDAO.deletePost(postId);
        response.sendRedirect("community.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendRedirect("viewpost.jsp?postId=" + postId);
    }
%>
