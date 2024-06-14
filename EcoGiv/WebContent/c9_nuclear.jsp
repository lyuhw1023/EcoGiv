<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>탈원전</title>
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

<div id="sub_main" style="background-image: url('images/img9.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">탈원전</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>원전 제일주의로는 우리의 안전을 장담할 수 없습니다. 그린피스는 '원전 말고 안전' 캠페인을 통해 원자력발전소 
        내부 주요 시설의 기술적 결함, 원자력안전법과 관련 규제 사각지대에 놓인 안전 문제 해결에 기여합니다. 
        또, 기후재난 증가로 더욱 취약해진 원전의 기후리스크를 과학적, 객관적으로 언론과 대중에 알립니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br><br></h3>
            <p>전 세계 원전 밀집도 1위, 개별 원전 부지별 밀집도 및 규모 세계 1위, 원전 규모 대비 30km 반경 내 인구수 세계 1위 - 우리나라 원전의 불명예 3관왕입니다.<br><br><br><br></p>
        </div>
        <div class="about-image">
            <img src="images/img9_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>원자력발전은 재앙의 위험성을 내포하고 있고, 사고 시 그 피해가 너무나 막대하고 치명적입니다. 역사적으로 전 세계에서 발생한 원전 사고는 모두 예측할 수 없는 자연재해나 인간의 실수로 인해 발생했습니다. 
            원전의 치명적인 위험을 철저히 통제할 수 있다는 그릇된 신화를 바탕으로 우리는 전 세계에서 가장 원전 밀집도가 높은 국가가 되었습니다. 사고가 일어나지 않더라도 수십만 년 동안 사라지지 않는 핵폐기물이 별다른 해결책 없이 미래 세대에게 남겨집니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>그린피스는 원전의 취약한 안전 관리, 감독 체계의 문제점을 드러내고 있습니다. 후쿠시마 원전 사고 직후부터 현재까지 현지에서 방사선 조사를 진행하고 매년 보고서를 발간했으며, 
    2019년 1월 일본 정부의 방사성 오염수 해양 방류 계획을 세계 최초로 알리고 캠페인 활동을 진행했습니다. 2022년에 초르노빌 방사선 현지 조사를 진행하고 원전 사고 재앙의 심각성을 알리고 있습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>22022년 7월 (완료)</h3>
                <p>초르노빌(체르노빌의 우크라이나식 발음) 방사선 조사 및 결과 발표</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2022년 9월 (완료)</h3>
                <p>월성1호기 사용후핵연료 수조 누설과 유관 기관 직무 유기 문제제기</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2023년 1월 (완료)</h3>
                <p>태평양 도서국 포럼(PIF) 도쿄전력 오염수 분석 결과 기자회견</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2023년 5월 (완료) </h3>
                <p>후쿠시마 오염수 삼중수소의 생물학적 영향 연구 공동 기자회견</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>그린피스는 재생에너지 100% 에너지 전환의 신속한 실현을 목표합니다. 신규 원전 설치 계획을 중단하고 안전 규제가 허술한 
    기존의 노후 원전들을 단계적으로 폐쇄하면서 재생가능에너지 확대와 에너지효율 향상을 중심으로 운영되는 시스템으로 전환해야 합니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2022년 3월 (완료) </h3>
                <p>후쿠시마 원전 폐로 현황 보고 및 원자로 격납고 손실에 대한 기자회견</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2022년 7월 (완료) </h3>
                <p>초르노빌(체르노빌의 우크라이나식 발음) 방사선 조사 및 결과 발표</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2022년 9-11월 (완료)</h3>
                <p>월성1호기 사용후핵연료 수조 누설과 유관 기관 직무 유기 국정감사</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2022년 10-11월 (완료) </h3>
                <p>후쿠시마 오염수 문제제기 : 국제해사시구(IMO) 과학자 그룹 회의 및 총회 참석</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2023년 4-5월 (완료) </h3>
                <p>후쿠시마 오염수 삼중수소의 생물학적 영향 연구 공동 기자회견 서울, 제주 지역 토론회</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2023년 6월 (완료)</h3>
                <p>후쿠시마 오염수 : 국회 국제법 대응 토론회</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img9.jpg');">
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
