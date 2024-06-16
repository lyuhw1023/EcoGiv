<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="univ.Campaign" %>
<%@ page import="univ.CampaignDAO" %>
<%@ page import="univ.MatchAlgorithm" %>
<%@ include file="dbconn.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>매칭 테스트</title>
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
            <% } else { %>
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="login.jsp" class="login-button">로그인</a>
            <% } %>
        </div>
    </nav>
    
    
    <!-- 캠페인 매칭 결과 섹션 -->
    <div class="match-result-container">
        <h1>캠페인 매칭 결과<br><br></h1>
        <%
            Map<Integer, Integer> userAnswers = (Map<Integer, Integer>) session.getAttribute("userAnswers");
            int[] answers = new int[userAnswers.size()];
            for (int i = 0; i < userAnswers.size(); i++) {
                answers[i] = userAnswers.get(i);
            }

            int categoryIndex = MatchAlgorithm.determineCategoryIndex(answers);

            if (categoryIndex == -1) {
                out.println("<h2>캠페인을 매칭하는 데 문제가 발생했습니다. 다시 시도해 주세요.</h2>");
            } else {
                String[] categories = {
                    "아마존 보호",
                    "해양 보호",
                    "생물 다양성",
                    "플라스틱 제로",
                    "디톡스 아웃도어",
                    "불법 어업 근절",
                    "기후참정권",
                    "Rethink IT",
                    "기업 100% 재생에너지 전환",
                    "탈원전",
                    "위험한 석탄 투자",
                    "북극 보호"
                };

                String matchedCategory = categories[categoryIndex - 1]; // 인덱스 조정
        %>

        <h2>당신에게 추천하는 캠페인은 <span style="color: #2e8b57;"><%= matchedCategory %></span> 입니다.</h2>
        <img src="images/img<%= categoryIndex %>.jpg" alt="<%= matchedCategory %>">
        <br>
        <a href="c<%= categoryIndex %>.jsp" class="result-button">캠페인 보러가기</a>
        <%
            }
        %>
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
