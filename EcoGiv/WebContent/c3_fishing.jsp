<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>불법 어업 근절</title>
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

<div id="sub_main" style="background-image: url('images/img3.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">불법 어업 근절</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>2013년 미국과 유럽연합으로부터 각각 불법어업국과 예비 불법어업국으로 지정된 대한민국의 불법어업 근절을 위해<br> 원양산업발전법 개정을 정부에 요구했습니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?<br><br></h3>
            <p>세계적 원양강국인 대한민국이 지난 2013년 불법어업국 및 예비 불법어업국으로 지정돼, 국제적 망신과 함께 엄청난 경제 손실 위기에 처했습니다.<br><br><br><br></p>
        </div>
        <div class="about-image">
            <img src="images/img3_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>2013년 미국과 유럽연합은 한국을 각각 ‘불법어업국’과 ‘예비 불법어업국’으로 지정했습니다. 한국 원양어선들이 지속적으로 불법어업을 자행했고, 해양수산부는 업계를 비호하며 해당 사건을 은폐하고 소극적 대응으로 일관했기 때문입니다.

불법어업국 지정은 국제적 망신에만 그치지 않고, 미국과 유럽연합의 강력한 제재로 엄청난 경제적 손실이 예상되었습니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>그린피스는 2013년 4월 한국 원양어업 불법어업 실태 보고서를 발간해 10개 이상의 국내 기업이 30여건이 넘는 불법어업을 자행했다는 사실을 폭로했습니다. 
    또한 한국이 ‘원양산업발전법’ 개정안을 국제법에 맞는 수위로 개정할 수 있도록 해당 법과 정책을 조사해 제안서를 발행했습니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2013년 4월 완료</h3>
                <p>국내 기업들의 불법어업을 폭로하는 ‘한국 원양어업 불법어업(IUU) 실태 보고서’ 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2014년 6월 완료</h3>
                <p>현행 법령의 허점 및 법안 추가 제안을 담은 ‘원양수산정책 개혁안’ 발행</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2014년 11월 완료</h3>
                <p>국회 계류 중인 재개정안을 검토한 ‘원양산업발전법 개정안에 대한 그린피스 제안서’ 발행</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>그린피스는 한국의 불법어업국 및 예비 불법어업국 지정을 적극적으로 미디어와 시민에게 알리고, 해양수산부에 원양산업발전법 개정 및 원양산업에 대한 엄격한 관리 감독을 촉구했습니다. 또한 불법어업을 자행한 기업들에게 불법어업 근절 메세지를 전달했습니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2013년 4월 완료됨</h3>
                <p>2013년 한국 불법어업국 지정을 은폐한 한국 정부를 그린피스 보고서를 통해 국내에 폭로</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2014년 6월 완료됨</h3>
                <p>한국 원양산업 발전법 개정을 위해 국회의원 및 해양수산부에 로비활동 시행하고 한국 원양수산법을 면밀히 검토하여 개정방향을 제안</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2014년 8월 완료됨</h3>
                <p>한국의 불법어업문제에 대한 시민들의 관심과 참여를 촉국하기 위해 ‘그린피스 시민경찰’들과 함께 온라인 캠페인을 진행</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2014년 11월 완료됨</h3>
                <p>국회 계류중이었던 원양산업발전법 개정안을 재검토해 법적 허점을 지적하고 보완책을 제시</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2014년 11월 완료됨</h3>
                <p>불법어업 후 국내로 들어온 인성 3호에 ‘불법어업 그만!’ 메세지를 전달하고 프로펠러를 묶는 직접행동 펼침</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2015년 2월 완료됨</h3>
                <p>한국 불법어업국 지정 철회</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img3.jpg');">
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
