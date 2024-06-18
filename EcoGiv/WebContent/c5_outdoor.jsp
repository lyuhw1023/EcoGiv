<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>디톡스 아웃도어</title>
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

<div id="sub_main" style="background-image: url('images/img5.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">디톡스 아웃도어</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>의류, 신발 등 아웃도어 제품에 방수/방품/투습 효과를 위해 사용되는 <br>유해물질 PFC(과불화화합물)의 업계 퇴출을 요구합니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br><br></h3>
            <p>노스페이스, 마무트, 블랙야크를 포함해 그린피스가 조사한 11개 아웃도어 브랜드 전부가 유해물질 PFC를 사용하고 있었습니다.<br><br><br><br></p>
        </div>
        <div class="about-image">
            <img src="images/img5_2.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>PFC(poly- & per-flourinated chemicals, 과불화화합물)는 아웃도어 제품의 방수, 발수 기능을 위해 사용됩니다.

공기중으로 휘발하거나 물에 녹는 성질을 가진 PFC는 제품의 제조-사용-폐기 전 과정에 걸쳐 우리가 마시는 물과 공기로 유출됩니다.

유출된 PFC는 자연을 오염시킬 뿐 아니라 인체로 유입돼 건강에도 악영향을 미칠 수 있습니다.

PFC는 인간의 혈액에 축적될 수 있으며, 일부 PFC가 생식력 저하 및 종양의 성장, 호르몬 시스템 교란 등 다양한 문제를 일으킨다는 사실도 연구를 통해 밝혀진 바 있습니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>그린피스는 전 세계 3만여 시민들의 추천으로 선정된 11개 아웃도어 브랜드 총 40개 제품에 대해 PFC 검출 여부를 조사했습니다. 
    그 결과, 조사 대상 11개 브랜드 전부가 유해물질 PFC를 사용하고 있다는 충격적인 사실이 확인되었습니다. 
    특히 대한민국의 아웃도어 대표 브랜드 중 하나인 블랙야크의 재킷을 포함한 총 18개 제품에서는 발암 가능성이 있고 
    독성에 대한 우려가 큰 PFOA(긴 사슬 PFC의 일종)가 검출됐습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2016년 1월 완료됨</h3>
                <p>시민이 선정한 11개 아웃도어 브랜드 40개 제품에 대해 PFC 검출 실험을 시행해 과학 보고서 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2016년 1월 완료</h3>
                <p>극한의 기후에서도 PFC없이 등반이 가능하다는 것을 보여주기 위해 전문 산악인 데이비드 바치오 함께 PFC-프리 의류 및 장비만으로 파타고니아 세로토레 정상 등반</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>22016년 7월 완료됨</h3>
                <p>아웃도어 제품을 파는 매장 내부의 공기를 채취해 매장 내부 공기가 휘발성 PFC로 오염되어 있다는 사실을 폭로</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>전 세계 유명 아웃도어 브랜드와 PFC 소재를 만드는 제조사에 PFC퇴출을 적극 요구하는 캠페인 활동을 벌였습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2016년 1월 완료됨</h3>
                <p>유럽 최대 스포츠용품 박람회 이스포(ISPO) 현장에서 세계 각국 언론에 PFC의 문제점과 대안에 대해 알리는 기자회견 개최</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2016년 2월 완료됨</h3>
                <p>노스페이스, 마무트, 하그로프스, 블랙야크 등 아웃도어 기업을 대상으로 전 세계 21개국에서 무려 150개가 넘는 평화적 직접행동 진행</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2016년 7월 완료됨</h3>
                <p>아웃도어 브랜드 파라모(Paramo), 로타우프(Rotauf), 바우데(Vaude)의<br> 디톡스 선언</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2017년 2월 완료됨</h3>
                <p>고어텍스(GORE-TEX®)의 제조사이자 노스페이스, 마무트, 하그로프스, 
                블랙야크 등 전 세계 수많은 아웃도어 브랜드에 소재를 공급하는 고어社 섬유사업부(Gore Fabrics)가 유해성 PFC 퇴출 선언</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img5.jpg');">
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
