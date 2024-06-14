<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>플라스틱 제로</title>
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

<div id="sub_main" style="background-image: url('images/img2.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">플라스틱 제로</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>플라스틱 오염은 위기로 다가오고 있습니다. 강력고 법적 구속력을 가지는 국제 플라스틱 협약을 체결해 플라스틱 생상량 감축과 재사용과 리필 기반으로의 시스템 전환을 통해 플라스틱 오염에서 벗어나야 합니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br></h3>
            <p>미세 플라스틱은 모든 곳에서 발견되고 있습니다. 남극의 눈, 야생동물의 분변 그리고 우리의 혈액과 모유까지. 플라스틱은 우리의 삶을 압도하고 있습니다. 
            하지만 여전히 전세계 재활용율은 9%에 그칩니다. 99%이상 화석연료로 만들어지는 플라스틱은 만들어지고 버려진 이후까지 온실가스를 배출하며 기후위기를 부추깁니다.</p>
        </div>
        <div class="about-image">
            <img src="images/img2_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>플라스틱이 전체 생산량 중 40%를 차지하는 일회용 플라스틱은 대부분 대체 가능하고 불필요합니다. 
            한번 쓰고 버리는 ‘일회용' 문화. 그 편리성으로, 우리는 많은 플라스틱을 생산, 소비, 폐기하고 있습니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>다양한 연구조사를 통해 객관적인 정보에 기반한 일회용 플라스틱 소비량과 재활용의 한계를 지적하며 기업과 정부의 변화를 촉구하고 있습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2021년 8월 (완료)</h3>
                <p>주요 식품 제조사의 일회용 플라스틱 사용 현황과 플라스틱 감축 조치 및 계획을 조사한 '식품제조사는 일회용 플라스틱을 판다' 보고서 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2021년 11월 (완료)</h3>
                <p>New York, USA</p>
                <p>시민참여 플라스틱 배출 실태조사 보고서 '2021 플라스틱 집콕조사: 일회용의 민낯' 발행</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2022년 12월 (완료)</h3>
                <p>3년차 시민참여 플라스틱 배출 실태조사인 플콕조사 보고서 '2022년 내가 쓴 플라스틱 추적기' 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2023년 3월 (완료)</h3>
                <p>국내 플라스틱 폐기물 발생 추이와 일회용 플라스틱 소비 발자국을 분석한 ‘플라스틱 대한민국 2.0 - 코로나19 시대, 플라스틱 소비의 늪에 빠지다' 보고서 발행</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>전 세계적으로 넘쳐나는 플라스틱 문제를 해결하기 위해서는 정부와 기업이 변해야 합니다. 국제적인 규제 또한 필요합니다. 그린피스 서울사무소는 2019년부터 환경부에 일회용 플라스틱 사용량을 감축하는 해결책을 요구하고 있습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2021년 2월 (완료)</h3>
                <p>배우 류승룡·박진희와 ‘용기내 캠페인’ 진행</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2022년 6월 (완료)</h3>
                <p>New York, USA</p>
                <p>K-POP 스타와 함께 ‘용기력 테스트’ 캠페인 진행</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img2.jpg');">
    <h1><br></h1>
    <h2>후원으로 변화를 만드세요!</h2>
    <p>여러분의 후원은 환경 보호 활동을 강화하고 자연 생태계를 복원하는 데 큰 힘이 됩니다. 함께 더 나은 지구를 만들어 갑시다.</p>
    <button class="donation-button" onclick="location.href='donation_do.jsp'">후원하기</button>
    <h1><br></h1>
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
