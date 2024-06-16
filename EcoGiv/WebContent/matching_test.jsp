<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

    <div id="main" style="background-image: url('images/main10.jpg'); background-size: cover; background-position: center;">
        <div id="contents">
            <h1 id="main_txt_b">매칭 테스트</h1><br><br>
        </div>
    </div>
    
    <!-- 텍스트 및 괄호 이미지 섹션 -->
    <section id="intro-text">
        <div class="container">
            <img src="images/open.png" alt="Left Bracket" class="bracket">
            <div class="intro-text-content">
                <h2><span class="highlight">환경 보호 캠페인</span>을 추천해드립니다!</h2>
                <p>환경 보호가 어렵게 느껴지시나요? 재미있는 매칭 테스트를 통해 나에게 딱 맞는 환경 보호 캠페인을 찾아보세요! 
                몇 가지 간단한 질문에 답변함으로써, 당신의 관심사와 생활 방식에 가장 잘 맞는 캠페인을 추천해 드립니다.</p>
            </div>
            <img src="images/close.png" alt="Right Bracket" class="bracket">
        </div>
    </section>

    <section id="donation-methods">
    	<div class="container">
    		<div class="donation-card">
    			<h3>캠페인 매칭 테스트</h3><br><br><br>
        		<img src="images/match.png" alt="Test" class="donation-icon"><br><br>
        		<p>나에게 가장 잘 맞는<br>환경 보호 캠페인은??</p><br>
    		</div>
    	</div>
    	<div class="donation-button-container">
    		<a href="match.jsp" class="donation-button">시작하기</a>
    	</div>
    </section>
    
    
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
    