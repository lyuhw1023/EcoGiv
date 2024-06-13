<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>기업 100% 재생에너지 전환</title>
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

<div id="sub_main" style="background-image: url('images/img10.jpg');">
    <div id="sub_contents">
        <h1 id="main_txt_w">기업 100% 재생에너지 전환</h1><br><br>
    </div>
</div>

	
    <!-- about -->
    <div class="about-container">
    <header class="about-header">
        <div class="about-line"></div>
        <h1 class="green_h1">캠페인 목표</h1>
        <h2>기후 위기에 대응하기 위해 재생에너지로의 전환이 시급합니다. 재생에너지는 온실가스를 배출하지 않는 친환경 에너지원이기 때문입니다.

기업은 우리나라 전체 전력의 절반 이상을 소비하고 있습니다. 화석연료 전력에 기반한 기업 운영은 더 이상 살아남을 수 없습니다.

그린피스는 기업이 100% 재생에너지로 전환하도록 정부와 기업에 요구하고 있습니다.</h2>
    </header>
    <div class="about-content">
        <div class="about-section know">
            <h3>알고 계셨나요?</h3>
            <p>화석연료에 기반한 전력을 대량 소비하는 기업은 막대한 양의 온실가스를 배출하고 있습니다. 
            지금과 같은 속도와 양으로 온실가스가 배출된다면 한반도는 머지않아 아열대 기후로 바뀌고, 연안 도시는 물에 잠길 것으로 예측됩니다. 기업은 기후 위기에 책임을 가지고 서둘러 재생에너지로 전환해야 합니다.</p>
        </div>
        <div class="about-image">
            <img src="images/img10_1.jpg" alt="Coffee Splash" class="center-image">
        </div>
        <div class="about-section matter">
            <h3>문제점</h3>
            <p>주요 경제 선진국들은 이산화탄소 배출량을 0으로 만드는 '탄소제로' 경제 체제로의 전환에 동참하고 있습니다. 한국에서 기업은 재생에너지를 살 수 없어 이러한 변화에 선제적으로 대응하기 어렵습니다. 
            기업이 재생에너지를 직접 확보할 수 있는 법과 제도가 필요합니다.</p>
        </div>
    </div>
</div>

	<!-- 연구 및 조사 -->
<div class="timeline-container">
<div class="about-line"></div>
    <h1 class="green_h1">연구 및 조사</h1>
    <h2>국내 10대 에너지 다소비 기업이 100% 재생에너지로 전환할 경우, 온실가스 배출량 2700만 톤을 줄일 수 있습니다. 이는 약 520만대의 내연기관 차량을 운행하지 않아야 감축할 수 있는 수치입니다. 
    재생에너지 구매 제도인 기업 전력구매계약(Power Purchase Agreement, PPA)은 기업의 100% 재생에너지 전환을 가장 효과적으로 달성할 수 있는 정책입니다.<br><br><br><br></h2>
    <div class="timeline">
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2015년 6월 완료</h3>
                <p>국내 IT 기업 친환경 점수를 공개한 ‘당신의 인터넷은 깨끗한가요?’ <br>보고서 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2015년 6월 완료</h3>
                <p>한국인들이 자주 방문하는 100여개 웹사이트가 어떤 에너지원으로 운영되는지 보여주는 ‘그린 스코어카드’출시 및 ‘클릭 클린 점수표’ 발표</p>
            </div>
        </div>
        <div class="timeline-item left">
            <div class="timeline-content">
                <h3>2017년 1월 완료</h3>
                <p>‘깨끗하게 클릭하세요 2017’ 보고서 발행</p>
            </div>
        </div>
        <div class="timeline-item right">
            <div class="timeline-content">
                <h3>2019년 8월 완료 </h3>
                <p>국내 환경에서 기업의 재생가능에너지 구매를 앞당기기 위해 필요한 제도 및 여건을 조사하는 연구 보고서 발행</p>
            </div>
        </div>
    </div>
</div>

<!-- 캠페인 활동 -->
<div class="campaign-container">
    <h1 class="green_h1">캠페인 활동</h1>
    <h2>그린피스는 세계 시장에서 영향력이 큰 주요 기업이 100% 재생에너지 사용 목표를 충실히 이행해 갈 수 있도록 지속적인 모니터링을 통해 관련 자료를 공개합니다. 
    아울러 정부에 기업의 100% 재생에너지 전환 달성에 필요한 정책을 마련할 것을 적극적으로 요구합니다.<br><br><br><br></h2>
    <div class="campaign-timeline">
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2015년 6월 완료 후 모니터링 중</h3>
                <p>네이버, 국내 최초로 자사 데이터센터 100% 재생에너지로 운영 약속</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2016년 9월 완료</h3>
                <p>IT와 100% 재생가능에너지 포럼 개최</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2017년 1월 완료</h3>
                <p>삼성SDS에 100% 재생에너지 전환을 요구하는 퍼포먼스 진행</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2017년 11월 - 2018년 6월 완료</h3>
                <p>삼성전자, 100% 재생에너지로! 요구 캠페인 시작</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2017년 12월 - 2018년 1월 완료</h3>
                <p>삼성전자에 100% 재생에너지 사용 요구하는 퍼포먼스 전 세계 동시 진행</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2018년 6월 완료 후 모니터링 중</h3>
                <p>삼성전자, 2020년까지 유럽, 미국, 중국에서 제조 공장 포함 모든 사업장의 100% 재생에너지 사용 약속</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2018년 11월 완료</h3>
                <p>그린피스 등 시민사회 단체와 국회 신재생에너지포럼이 공동 주최한 ‘재생에너지 선택권 이니셔티브’ 출범식에서 삼성전자 포함 12개 기업의 “재생에너지 사용 확대 및 지지” 선언</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2019년 2월 완료</h3>
                <p>기업의 재생에너지 사용을 앞당기기 위해 “기업PPA” 제도 도입을 요구하는 캠페인 시작</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2019년 3월 완료</h3>
                <p>기업 재생에너지 사용 확대를 위한 정책 토론회 개최</p>
            </div>
        </div>
        <div class="campaign-item right">
            <div class="campaign-content">
                <h3>2019년 4월 완료</h3>
                <p>제 3차 에너지기본계획 공청회와 산업부 장관 앞에 청개구리 마스크를 쓰고 등장해, 기업 PPA도입을 촉구하는 퍼포먼스 진행</p>
            </div>
        </div>
        <div class="campaign-item left">
            <div class="campaign-content">
                <h3>2019년 6월 완료</h3>
                <p>산업통상자원부, 3차 에너지기본계획에 ‘기업PPA 도입 검토’ 명시</p>
            </div>
        </div>
    </div>
</div>

	<!-- 기부하기 섹션 -->
<div class="donation-container" style="background-image: url('images/img10.jpg');">
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
