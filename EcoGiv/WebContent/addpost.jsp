<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="univ.Post" %>
<%@ page import="univ.CommunityDAO" %>
<%@ include file="dbconn.jsp" %>

<%
    int postId = -1;
    Post post = new Post();
    boolean isEdit = false;

    if (request.getParameter("postId") != null) {
        postId = Integer.parseInt(request.getParameter("postId"));
        CommunityDAO communityDAO = new CommunityDAO(conn);
        post = communityDAO.selectPost(postId);
        isEdit = true;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title><%= isEdit ? "글 수정" : "글 작성하기" %></title>
    <link href="intro.css" rel="stylesheet">
</head>
<body>
    <nav id="navbar">
        <a href="home.jsp" id="logo">
            <img src="images/logo.png" alt="Logo" class="logo-image">
            EcoGiv
        </a>
        <ul>
            <li><a href="home.jsp" class="menu">홈</a></li>
            <li><a href="introduce.jsp" class="menu">캠페인소개</a></li>
            <li><a href="donation.jsp" class="menu">후원안내</a></li>
            <li><a href="community.jsp" class="menu">커뮤니티</a></li>
        </ul>
        <div class="nav-buttons">
            <%
                HttpSession currentSession = request.getSession(false);
                String username = null;
                if (currentSession != null) {
                    username = (String) currentSession.getAttribute("username");
                }
                if (username != null) {
            %>
                <span><%= username %>님</span>
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="logout.jsp" class="login-button">로그아웃</a>
            <% } else { 
                response.sendRedirect("login.jsp");
                return;
            } %>
        </div>
    </nav>

    <div id="main" style="background-image: url('images/community2.jpg'); background-size: cover; background-position: center;">
        <div id="contents">
            <h1 id="main_txt_b"><%= isEdit ? "글 수정하기" : "글 작성하기" %></h1><br><br>
        </div>
    </div>

    <div id="form-section">
        <form action="addpost_process.jsp" method="post">
            <input type="hidden" name="postId" value="<%= postId %>">
            <table>
                <tr>
                    <td>제목:</td>
                    <td><input type="text" name="title" value="<%= isEdit ? post.getTitle() : "" %>" required></td>
                </tr>
                <tr>
                    <td>작성자:</td>
                    <td><input type="text" name="author" value="<%= isEdit ? post.getAuthor() : username %>" required readonly></td>
                </tr>
                <tr>
                    <td>내용:</td>
                    <td><textarea name="content" rows="10" cols="30" required><%= isEdit ? post.getContent() : "" %></textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="action" value="<%= isEdit ? "수정" : "등록" %>">
                        <% if (isEdit) { %>
                            <input type="submit" name="action" value="삭제">
                        <% } %>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <!-- 컨택 섹션 -->
    <footer>
        <div class="contact-container">
            <div class="contact-info">
                <div class="logo-text">
                    <img src="images/logo.png" alt="Logo" class="footer-logo">
                    <h2>EcoGiv</h2>
                </div>
                <p>한림대학교 | 제작자 유혜원 | 대표전화 010 - 1234 - 5678 |</p>
                <p>이메일 lyuhw11023@gmail.com | 상담시간 (월~금) 10:00 ~ 17:00 |</p>
                <p>© 환경 보호 캠페인 플랫폼</p>
            </div>
            <div class="sponsor-info">
                <h2>후원계좌</h2>
                <p>국민은행 123123-000000 | 농협은행 078-01-123123</p>
                <p>신한은행 100-012-345678 | KEB하나은행 225-234234-234</p>
                <p>우리은행 1002-123-123123 | 우체국 034534-01-34534</p>
            </div>
        </div>
        <div class="social-icons">
            <a href="#"><img src="images/twitter.png" alt="Twitter"></a>
            <a href="#"><img src="images/instagram.png" alt="Instagram"></a>
            <a href="#"><img src="images/facebook.png" alt="Facebook"></a>
            <a href="#"><img src="images/youtube.png" alt="YouTube"></a>
        </div>
    </footer>
    
    <!-- 맨 위로 가기 버튼 -->
    <a href="#" id="back-to-top" class="back-to-top"></a>

    <script src="main.js"></script>
</body>
</html>
