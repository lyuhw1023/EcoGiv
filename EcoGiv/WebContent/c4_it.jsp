<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Rethink IT</title>
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

<div id="sub_main" style="background-image: url('images/img4.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">Rethink IT</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>전자제품 제조사가 제품을 생산할 때 자원을 재활용하고, <br>오래 쓸 수 있는 제품을 설계하며 깨끗한 재생가능에너지를 사용할 것을 요구합니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br><br></h3>
            <p>2016년 한 해에만 4,470만 톤의 전자폐기물이 발생했습니다. 이 중 80% 이상이 무분별하게 매립되거나 소각됐습니다.<br><br><br><br><br><br></p>
        </div>
        <div class="about-image">
            <img src="images/img4_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>2016년, 전 세계 전자 폐기물 80% 이상이 매립 또는 소각되거나, 해외로 수출돼 무분별하게 처리되어 여러 환경적 피해를 발생시켰습니다.

하나의 제품을 제조하는데 엄청난 양의 자원과 에너지가 소비되지만, 스마트폰의 복잡한 디자인으로 인해 안전하고 효율적인 재활용이 어렵습니다.

전자제품 제조사는 사회 환경적인 책임을 가지고, 생산-폐기의 소모적인 생산방식에서 벗어나 지구의 자원을 고갈시키지 않는 지속가능한 생산 방식으로 전환해야 합니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>그린피스는 전자제품 제조사의 자원 사용 실태를 조사하고, <br>기업의 생산방식 변화를 위한 전략에 대한 다양한 연구를 시행, 발표했습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2016년 11월 완료</h3>
                <p>IT 기기의 생산 및 폐기 전 과정에서 발생할 수 있는 환경 문제 및 해결책을 담은 ‘혁신을 위한 선순환 - IT산업과 순환경제’ 보고서 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>22017년 2월 완료</h3>
                <p>수리와 재활용이 가능한 제품 디자인, 재활용된 재료의 사용, 유해 화학물질로 없는 순환 구조, 100% 재생가능에너지를 통한 생산 - 
                총 4가지 핵심 솔루션을 담은 비전 보고서 ‘스마트폰 10년 역사는 스마트할까’ 발행</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2017년 6월 완료</h3>
                <p>iFixit과 함께 2015~2017년간 판매된 가장 인기 있는 스마트폰, 태블릿PC, 노트북 약 40여개 제품의 수리 편의성을 평가한 보고서 
                ‘여러분의 스마트 기기는 얼마나 쉽게 수리할 수 있을까요?’ 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2017년 10월 완료</h3>
                <p>글로벌 전자제품 제조사 17곳의 에너지, 자원, 화학물질 분야 친환경 점수를 분석한 랭킹 보고서 ‘친환경 전자제품 구매 가이드’ 발행</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>그린피스는 전자제품 제조사를 대상으로 지속가능한 생산방식으로의 전환을 위한 목표 설정과<br> 이행계획을 요구하는 캠페인을 펼쳤습니다<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2017년 3월 완료</h3>
                <p>노트7 폐기 대신 재사용 및 재활용을 요구하는 글로벌 캠페인 ‘갤럭시를 구하라’를 시작하고 서명운동 및 평화적 직접행동 진행</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2017년 10월 완료 후 모니터링 중</h3>
                <p>2017년 6월부터 제품 수리 편의성을 높이고 제품 수명 연장을 요구하는 캠페인 Make IT Last 진행</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img4.jpg');">
    <h1><br></h1>
    <h2>후원으로 변화를 만드세요!</h2>
    <p>여러분의 후원은 환경 보호 활동을 강화하고 자연 생태계를 복원하는 데 큰 힘이 됩니다. 함께 더 나은 지구를 만들어 갑시다.</p>
    <button class="donation-button" onclick="location.href='donation_api.html'">후원하기</button>
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
