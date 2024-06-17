<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>위험한 석탄투자</title>
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
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="logout.jsp" class="login-button">로그아웃</a>
            <% } else { %>
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="login.jsp" class="login-button">로그인</a>
            <% } %>
        </div>
</nav>

<div id="sub_main" style="background-image: url('images/img11.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">위험한 석탄투자</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>한국 정부가 기후변화를 악화시키는 석탄발전소 해외 투자를 중단할 것을 요구합니다. 석탄발전소의 평균 수명은 30년. 한 번 지어진 석탄발전소는 계속해서 지구의 기온을 높이고 주민들의 건강을 해칩니다.

그린피스는 하루빨리 한국 정부가 이 위험한 투자 중단을 통해 '기후악당' 타이틀을 벗고, '기후 리더십'을 보일 것을 요구하고 있습니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br><br></h3>
            <p>한국은 전 세계에서 세 번째로 해외 석탄발전소에 많이 투자하는 국가입니다.<br><br><br><br></p>
        </div>
        <div class="about-image">
            <img src="images/img11_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>석탄은 대기오염과 지구온난화의 주범입니다. 전 세계가 힘을 합쳐 석탄 투자를 중단하고자 노력하고 있지만, 
            한국은 지난 10년간 약 11조 원의 공적 금융을 해외 석탄발전소에 지원해 해외 석탄발전소 투자 세계 3위 국가가 됐습니다. 
            한국이 신규 투자 사업지로 고려하는 인도네시아 수랄라야는 동남아시아에서 대기오염이 가장 심각한 지역입니다. 또한 더 많은 발전소가 필요한 상황도 아닙니다. 
            그런데도 석탄 사업자들은 이윤만을 추구하며 불필요한 발전소로 지어 지역 주민들에 고통을 안기려 합니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>그린피스는 한국이 투자한 해외 석탄발전소들의 문제점을 진단하고 규명하기 위해 <br>대기오염으로 인한 피해, 조기 사망자에 미치는 영향 등을 조사했습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2018년 10월 완료</h3>
                <p>2013~2017년 투자된 해외(인도네시아, 베트남) 석탄발전소로 인한 건강 영향과 조기사망자 연구 발표</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>해외 석탄 투자의 위험성과 참상을 알리기 위해 투자를 집행하는 공적 금융기관 및 정부를 대상으로 다양한 캠페인을 벌였습니다. 해외 현장 조사를 통해, 
    한국이 투자한 해외 석탄 발전소가 지역 주민의 삶과 환경에 미치는 영향을 조사하고 이를 널리 알렸습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2018년 10월 (완료)</h3>
                <p>2018년 국정감사서 한국 해외 석탄 투자 관련 정부 부처 및 <br>관계기관 질의요청</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2019년 1월 (완료)</h3>
                <p>한국 해외 석탄투자 중단 요구 광고 게재</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2019년 3월 (완료)</h3>
                <p>전세계 석탄발전소 동향 분석 보고서 발간</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2018~2020년 (완료)</h3>
                <p>해외 석탄발전소 금융지원기관 및 한국전력, 두산중공업, 인도네시아 한국 대사관 등에서 평화적 직접행동 수행</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2020년 10월 (완료)</h3>
                <p>한국 해외 투자 석탄발전소 이산화탄소 배출량 조사 및 <br>한국 금융기관 석탄투자 현황 분석 보고서 발표</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2021년 4월 (완료)</h3>
                <p>정부, 해외 신규 석탄발전 투자 중단 선언</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2021년 5월 (완료)</h3>
                <p>11개 국내외 시민단체, 대통령에 서한 전달</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img11.jpg');">
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
