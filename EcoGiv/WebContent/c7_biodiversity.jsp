<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>생물 다양성</title>
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

<div id="sub_main" style="background-image: url('images/img7.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">생물 다양성</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>2022년 78억 마리, 2023년 140억 마리의 벌이 겨울 사이에 사라졌습니다. 
        벌의 집단 폐사 규모는 매년 커지고 있습니다. <br>야생벌은 더욱 위험한 것으로 추정됩니다. 기후변화 속에서도 벌이 살 수 있는 환경을 조성해야 합니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br></h3>
            <p>벌의 멸종은 식량안보와 생태계 파괴로 이어집니다. 전 세계 개화식물의 87%, 100대 농작물 중 70% 이상이 벌을 비롯한 수분매개자의 화분매개에 의존하기 때문입니다.
             따라서 벌의 멸종은 과일과 채소를 먹지 못하는 것을 넘어, 인류의 생존마저 위협하는 6차 대멸종의 가속으로 이어질 수 있습니다.<br></p>
        </div>
        <div class="about-image">
            <img src="images/img7_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>꿀벌의 실종에는 기후변화, 살충제, 병해충 등 다양한 요인이 복합적으로 작용하고 있지만, 그중에서도 벌들의 먹이가 되는 밀원식물의 부족이 가장 시급한 문제로 대두되고 있습니다. 
            밀원 면적은 지난 50여 년간 무려 70%가 줄었습니다. 밀원식물이 줄어들면서 벌은 영양이 부족해 허약해지고, 기생충과 살충제 피해에 더욱 취약해 집니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>기후변화와 그로 인한 생물다양성의 저하 문제를 연구하며, <br>최근 생태계의 대표적인 수분매개자인 벌을 살리기 위한 조사를 진행하고 있습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>22021년 11월(발행)</h3>
                <p>기후변화와 생물다양성 연구조사보고서(부제: 사라지는 것들의 초상)</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2022년 2월(발행)</h3>
                <p>기후위기 식량 보고서: 사라지는 것들의 초상 — 식량편</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2023년 5월(발행)</h3>
                <p>벌의 위기와 보호 정책 제안 보고서</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>우리나라에서 꿀벌은 소, 돼지, 닭과 같은 축산으로 분류되어 농식품부만 주로 담당하고 있습니다. 
    그러나 벌이 살기 좋은 환경을 조성하기 위해서는 환경부나 국토교통부 등 다른 부처의 협업이 필수적입니다. 
    그린피스는 벌의 가치를 대중에게 전하고, 정부에 벌을 보호할 국무총리 산하 '꿀벌 살리기 위원회'의 설립을 요구하고 있습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2023년 2월(완료)</h3>
                <p>'꿀벌의 집단 폐사의 원인이 응애 방제 실패'라 밝힌 정부를 대상으로 <br>성명서 발행</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2023년 6~9월(예정)</h3>
                <p>H벌을 살리기 위한 시민참여 캠페인 검토 및 진행</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2023년 9~12월(예정)</h3>
                <p>벌의 문제를 알리고 정부에 보다 적극적인 보호 활동을 요구하는 전시회 진행</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img7.jpg');">
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
