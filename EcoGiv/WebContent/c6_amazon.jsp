<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>아마존 보호</title>
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

<div id="sub_main" style="background-image: url('images/img6.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">아마존 보호</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>지구 생태계의 보고인 아마존 열대우림과 원주민 공동체가 불법적인 금 채굴로 파괴되고 있습니다. 
        특히, 건설 중장비가 동원되면서 파괴의 규모가 급속도로 늘어나고 있습니다. 중장비 제조업체들은 아마존 파괴의 조력자 역할을 중단하고, 아마존 보호에 동참해야 합니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?</h3>
            <p>브라질에서 지금까지 채굴로 사라진 산림은 서울 면적의 3.5배에 달했으며, 90% 이상이 아마존 지역입니다. 수천년 동안 아마존을 지키며 살아온 원주민의 피해도 매우 큽니다.
            지난 4년 동안 야노마미 원주민 보호구역에서 어린이 570명이 불법 금 채굴로 인한 영양실조와 수은 중독, 말라리아 등으로 사망하자, 브라질 정부는 지난 1월 의료비상 사태를 선포했습니다.</p>
        </div>
        <div class="about-image">
            <img src="images/img6_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>불법 금 채굴업자들은 많은 경우 지역의 범죄조직과 연관되어 있습니다. 하지만 국제적으로 금값이 오르면서 그 수요는 점점 더 커지고 있습니다. 
            브라질 연방환경청(IBAMA)은 단속을 통해 불법 금 채굴 현장 시설과 장비를 불태우는 등의 노력을 하고 있지만, 방대한 아마존 지역에서 불법 금 채굴의 확산을 막는 데는 여전히 한계가 있습니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>그린피스는 지난 3년 간 아마존 금 채굴의 95%가 집중된 야노마미, 문두루쿠, 카야포 원주민 보호구역에서 항공 촬영을 통해 채굴 현장을 조사했습니다.
     원주민 보호구역은 채굴이 법으로 금지되어 있지만, 금이 많이 매장된 것으로 알려지면서 불법 금 채굴이 활개를 치고 있습니다. 조사 현장에서 발견된 굴착기는 모두 176대로 이 가운데 43%(75대)가 HD현대건설기계의 굴착기로 확인됐습니다. 
     건설 수요가 거의 없는 원주민 보호구역 인근에 대리점을 집중적으로 설치하고 600대 이상의 굴착기를 판매해 온 HD현대건설기계는 단순한 제조업체 이상의 조력을 하고 있는 것으로 나타났습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2023년 3월 완료</h3>
                <p>아마존 불법 금 채굴 현장 방문 조사 진행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2023년 4월 12일 완료</h3>
                <p><아마존 파괴의 조력자: HYUNDAI 중장비가 동원된 금 채굴로 인한 아마존 우림과 원주민 공동체 파괴 보고서> 한국어·영어·포르투갈어 3개 언어로 발간</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>그린피스는 위의 조사 결과를 바탕으로, HD현대건설기계를 비롯한 중장비 제조업체들이 불법 금 채굴에 일조하는 대신 <br>아마존 보호에 나서달라고 요구하는 캠페인을 시작했습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2023년 4월 12일 완료</h3>
                <p>서울 프레스센터에서 <HYUNDAI 중장비 아마존 파괴 동원 중단 촉구 기자회견> 개최</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2023년 4월 12일 완료</h3>
                <p>HD현대건설기계 브라질 현지 공장 앞에서 그린피스 브라질 캠페이너와 아마존 원주민 리더가 함께 비폭력 직접행동 진행</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img6.jpg');">
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
  

    
</body>
</html>
