<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>기후 참정권</title>
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

<div id="sub_main" style="background-image: url('images/img8.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">기후 참정권</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>기후참정권 캠페인이란 시민들이 기후위기로 위협받는 자신들의 생존권과 
        삶의 다양한 가치 (경제, 복지, 공정, 민주주의 등)에 대해 국가와 정치권이 정책 대안을 제시하도록 요구하는 캠페인입니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br><br></h3>
            <p>기후위기는 전 세계 경제를 크게 위협하고 있습니다. 한국 딜로이트 그룹은 기후변화에 대응하지 않을 경우 한국이 안게 될 경제적 손실은 2070년까지 935조에 이를 것으로 전망했습니다.<br><br><br><br></p>
        </div>
        <div class="about-image">
            <img src="images/img8_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>기후위기는 전 세계 경제를 크게 위협하고 있습니다. 전 세계 GDP의 절반 이상인 44조 달러 어치의 경제적 가치 창출 활동이 
            '자연과, 자연이 제공하는 서비스에 의존하고 있으며 따라서 자연 손실에 영향을 받는다'고 합니다. 한국 딜로이트 그룹은 기후변화에 대응하지 않을 경우 한국이 안게 될 경제적 손실은 2070년까지 935조에 이를 것으로 전망했습니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>그린피스는 정치권이 기후위기 대응 정책을 마련하도록 다양한 정책 아젠다 연구와 함께 각 정당 정책 분석,<br> 국민 여론조사 실시 등의 활동을 벌여오고 있습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2022년 7월(완료)</h3>
                <p>연세대, 에너지전환 포럼 공동주최 에너지 대전환과 일자리 토론회 개최</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2023년 3월(완료)</h3>
                <p>국회 기후위기 대응 시민 모니터링 결과 발표</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2023년 6월 (완료)</h3>
                <p>국회의원 대상 기후위기 인식 설문조사 결과 발표</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2023년 12월(예정)</h3>
                <p>국회 주요 정당 대상 총선 정책 제안서 전달</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>그린피스는 기후위기의 심각성을 알리고 정책 대안 마련을 촉구하기 위해 국내 주요 정당들을 상대로 다양한 캠페인을 벌이고 있습니다. 
    시민들이 함께 참여하는 다양한 직접 행동 뿐만 아니라 정책 방안과 대안을 제시하기 위해 대화의 노력도 함께 기울이고 있습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2022년 4월(완료)</h3>
                <p>윤석열 대통령 당선인에게 지구의 날 그린피스 사무총장 공개 서한 전달</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2022년 11월(완료)</h3>
                <p>COP 27 현지 참여 및 언론 다수 기고</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2022년 12월(완료)</h3>
                <p>그린피스 지식콘서트 개최</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2023년 3월(완료)</h3>
                <p>그린뉴딜 시민행동 기후국회 요구 퍼포먼스</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2023년 6월</h3>
                <p>청년기후환경단체와 국회 앞 탄소의 짐 공동 액션</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2023년 7월(예정)</h3>
                <p>이상기후 대응 긴급 액션</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>22023년 11월(예정)</h3>
                <p>COP28 참가</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img8.jpg');">
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
