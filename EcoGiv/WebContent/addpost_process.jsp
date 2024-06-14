<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="univ.Post" %>
<%@ page import="univ.CommunityDAO" %>
<%@ include file="dbconn.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>글 등록/수정/삭제 처리</title>
    <script>
        function showMessage(message, redirectUrl) {
            alert(message);
            window.location.href = redirectUrl;
        }
    </script>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String content = request.getParameter("content");

        Post post = new Post();
        post.setTitle(title);
        post.setAuthor(author);
        post.setContent(content);

        CommunityDAO dao = new CommunityDAO(conn);

        String message = "";
        String redirectUrl = "community.jsp";

        try {
            if ("등록".equals(action)) {
                dao.insertPost(post);
                message = "글이 성공적으로 등록되었습니다!";
            } else if ("수정".equals(action)) {
                int postId = Integer.parseInt(request.getParameter("postId"));
                post.setPostId(postId);
                dao.updatePost(post);
                message = "글이 성공적으로 수정되었습니다!";
            } else if ("삭제".equals(action)) {
                int postId = Integer.parseInt(request.getParameter("postId"));
                dao.deletePost(postId);
                message = "글이 성공적으로 삭제되었습니다!";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            message = "작업이 실패하였습니다. 다시 시도해주세요.";
        }
    %>
    <script>
        showMessage("<%= message %>", "<%= redirectUrl %>");
    </script>
</body>
</html>
