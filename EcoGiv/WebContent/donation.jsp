<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>후원하기</title>
    <link href="intro.css" rel="stylesheet">
</head>
<body>
    <nav id="navbar">
    <a href="home.jsp" id="logo">
        <img src="images/logo.png" alt="Logo" class="logo-image">
        EcoGiv
    </a>
    <ul>
        <li><a href="introduce.jsp" class="menu">캠페인소개</a></li>
        <li><a href="donation.jsp" class="menu">후원안내</a></li>
        <li><a href="matching_test.jsp" class="menu">매칭테스트</a></li>
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
                <a href="donation_api.html" class="donate-button">후원하기</a>
                <a href="logout.jsp" class="login-button">로그아웃</a>
            <% } else { %>
                <a href="donation_api.html" class="donate-button">후원하기</a>
                <a href="login.jsp" class="login-button">로그인</a>
            <% } %>
        </div>
</nav>

    <div id="main" style="background-image: url('images/donation2.jpg'); background-size: cover; background-position: center;">
        <div id="contents">
            <h1 id="main_txt_b">후원하기</h1><br><br>
        </div>
    </div>
    
    <!-- 텍스트 및 괄호 이미지 섹션 -->
    <section id="intro-text">
        <div class="container">
            <img src="images/open.png" alt="Left Bracket" class="bracket">
            <div class="intro-text-content">
                <h2>우리의 <span class="highlight">환경</span>을 지키기 위한 <span class="highlight">작은 실천</span>이 큰 변화를 만듭니다.</h2>
                <p>지금 이 순간에도 지구는 오염과 파괴로부터 보호받기 위해 싸우고 있습니다. <br>우리의 미래와 다음 세대를 위해 환경 보호에 힘써야 할 때입니다. 하지만 혼자서 해결할 수 없는 거대한 도전입니다. 
                함께 모여 자연을 지키는 일에 동참해 주세요. 여러분의 작은 기부가 모여 큰 변화를 만들 수 있습니다.</p>
            </div>
            <img src="images/close.png" alt="Right Bracket" class="bracket">
        </div>
    </section>
    
    <!-- 후원 참여 방법 섹션 -->
<section id="donation-methods">
    <div class="container">
        <div class="donation-card">
            <img src="images/donation2.png" alt="Regular Donation" class="donation-icon">
            <h3>정기후원</h3>
            <p>CMS, 신용카드, 가상계좌,<br>휴대폰결제(카카오페이, 페이코)</p>
        </div>
        <div class="donation-card">
            <img src="images/account.png" alt="Donation Account" class="donation-icon">
            <h3>후원 계좌</h3>
            <p>국민은행 123123-000000<br>신한은행 100-012-345678<br>우리은행 1002-123-123123</p>
        </div>
        <div class="donation-card">
            <img src="images/donation3.png" alt="One-Time Donation" class="donation-icon">
            <h3>일시후원</h3>
            <p>CMS, 신용카드, 가상계좌,<br>휴대폰결제(카카오페이, 페이코)</p>
        </div>
    </div>
    <div class="donation-button-container">
        <a href="donation_api.html" class="donation-button">후원하기</a>
    </div>
</section>



	<!-- 후원 텍스트 -->	
	<br><br><br>
    <section id="intro-text">
        <div class="container">
            <div class="intro-text-content">
                <h2><span class="highlight">환경 보호</span>를 위한 당신의 <span class="highlight">기부</span>가 세상을 <span class="highlight">변화</span>시킵니다.</h2>
                <p>기부를 통해 지구를 살립시다! 여러분의 소중한 기부는 우리 모두가 꿈꾸는 더 깨끗하고 건강한 지구를 만들어갑니다.</p>
            </div>
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
