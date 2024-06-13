<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>북극 보호</title>
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

<div id="sub_main" style="background-image: url('images/img12.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">북극 보호</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>북극을 세계 보호구역(Global Sanctuary)으로 지정해 북극 전역에서 석유 시추 및 산업적 어업 행위를 금지하고, <br>기후위기로부터 북극 생태계를 지킵니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br><br></h3>
            <p>지난 30년 동안 북극에서 가장 오래되고 두꺼운 얼음의 95%가 녹아 사라졌습니다. 과학자들은 북극의 온난화가 지구 온도 상승 보다 6배 더 크다고 경고합니다.<br><br><br><br></p>
        </div>
        <div class="about-image">
            <img src="images/img12_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>최근 몇 년 동안 북극의 온도는 평년보다 20도 이상 높았습니다. 이전에는 전혀 상상할 수 없었던 온도 상승입니다. 북극의 얼음이 녹으면 기후 변화를 늦추지 못해 치명적인 결과를 초래할 것입니다.

이상기후와 폭염 등 삶을 위협하는 기후 재난이 더 자주 지구 곳곳을 덮칠 것입니다.

북극의 동물들은 얼음이 녹아 없어지며 집과 휴식처를 잃어 새끼를 키우지 못하고, 멸종 위기에 처할 수 있습니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>2011년 12월, 수많은 전문가들의 반대에도 불구하고 석유기업 쉘이 북극 석유 탐사를 선언하면서 그린피스의 ‘북극을 지켜주세요(Save the Arctic)’ 캠페인이 시작됐습니다. 
    그린피스는 북극을 위협하는 석유시추, 파괴적 어업, 기후변화의 실태를 알리고 북극보호구역 지정을 위한 연구 활동을 진행하고 보고서를 발간했습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2012년 8월 (완료)</h3>
                <p>‘기후변화가 북극 야생 동물에 미치는 영향’ 보고서 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2014년 6월 (완료)</h3>
                <p>북극 보호구역 지정을 제안하고 그 의미와 구체적 범위를 담은 ‘북극 보호구역’ 제안서 발행</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2016년 3월 (완료)</h3>
                <p>북극 해양생태계를 파괴하는 트롤어선의 실태를 밝히는 ‘여기까지, 이제 그만’ 보고서 발행</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>그린피스는 북극 파괴를 막기 위해 다양한 방식으로 글로벌 캠페인을 진행하고 있습니다. 
    현재 전 세계 900만 명 이상의 시민들이 북극보호 캠페인에 함께 하고 있습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2015년 9월 (완료)</h3>
                <p>그린피스 활동가들이 포틀랜드항의 다리에 매달려 쉘의 시추선을 저지하는 
화적 직접행동을 펼친지 한 달 만에, 쉘이 북극 석유시추 중단을 선언</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2021년 7월 (완료)</h3>
                <p>그린란드 정부, 석유 및 천연 가스 탐사 허가 중단</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2022년 11월 (완료)</h3>
                <p>노르웨이의 국영 석유회사 에퀴노르(Equinor), 북극에 있는 세계 최북단 유전인 위스팅(Wisting) 유전 개발 연기 선언</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>진행중</h3>
                <p>노르웨이 지역 환경단체 ‘네이처앤유스’와 함께 2022년 6월 유럽인권재판소에 석유 및 가스 탐사에 대한 새로운 면허 발급을 
                중단할 것을 요청하는 소송을 제기해 현재 진행 중</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img12.jpg');">
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
