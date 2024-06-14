<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="univ.Post" %>
<%@ page import="univ.CommunityDAO" %>
<%@ include file="dbconn.jsp" %>

<%
    int postId = Integer.parseInt(request.getParameter("postId"));
    CommunityDAO communityDAO = new CommunityDAO(conn);

    // 조회수 증가 로직
    communityDAO.incrementViews(postId);

    Post post = communityDAO.selectPost(postId);

    if (post == null) {
        response.sendRedirect("community.jsp");
        return;
    }

    HttpSession currentSession = request.getSession(false);
    String username = null;
    if (currentSession != null) {
        username = (String) currentSession.getAttribute("username");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title><%= post.getTitle() %></title>
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
            <% if (username != null) { %>
                <span><%= username %>님</span>
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="logout.jsp" class="login-button">로그아웃</a>
            <% } else { %>
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="login.jsp" class="login-button">로그인</a>
            <% } %>
        </div>
    </nav>

    <div id="main" style="background-image: url('images/community2.jpg'); background-size: cover; background-position: center;">
        <div id="contents">
            <h1 id="main_txt_b">글 작성하기</h1><br><br>
        </div>
    </div>

    <div id="form-section">
        <table>
            <tr>
                <td>제목:</td>
                <td><%= post.getTitle() %></td>
            </tr>
            <tr>
                <td>작성자:</td>
                <td><%= post.getAuthor() %></td>
            </tr>
            <tr>
                <td>내용:</td>
                <td><%= post.getContent() %></td>
            </tr>
        </table>
        <div class="actions">
            <% if (username != null && username.equals(post.getAuthor())) { %>
                <form action="addpost.jsp" method="get" style="display: inline;">
                    <input type="hidden" name="postId" value="<%= postId %>">
                    <input type="submit" value="수정" class="action-button">
                </form>
                <form action="deletepost.jsp" method="post" style="display: inline;">
                    <input type="hidden" name="postId" value="<%= postId %>">
                    <input type="submit" value="삭제" class="action-button">
                </form>
            <% } %>
            <a href="community.jsp" class="action-button">목록으로</a>
        </div>
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
