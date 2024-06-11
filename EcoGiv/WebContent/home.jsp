<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>EcoGiv</title>
    <link href="mainstyle.css" rel="stylesheet">
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
        <a href="donation_do.jsp" class="donate-button">후원하기</a>
        <a href="login.jsp" class="login-button">로그인</a>
    </div>
</nav>



    <div id="main">
        <div id="contents">
            <h1 id="main_txt">EcoGiv</h1><br><br>
            <p id="sub_txt">환경 보호, 우리의 선택이 미래를 만듭니다.</p>
        </div>
    </div>

    <div>
        <img class="msg_img1" src="images/msg1.png" alt="double_mark1"/>
        <p class="msg_txt"><br>사람의 손으로 만든 모든 것은 반드시 아름답거나 추한 모습을 띠게 된다. <br><br>
            만약 자연과 조화를 이루면 아름다운 것이고, <br><br>
            자연과 조화를 이루지 못하거나 자연에 위협을 가하면 추한 것이다. <br><br>
            - 윌리암 모리스 -<br></p>
        <img class="msg_img2" src="images/msg2.png" alt="double_mark2"/>
    </div>
    <img class="sec_img" src="images/main6.jpg" alt="wind"/>

 
<!-- 주요 기능 섹션 -->
<section id="key-features">
    <div class="feature-container">
        <div class="feature-box">
            <a href="introduce.jsp">
                <img src="images/introduce.png" alt="캠페인소개" class="feature-icon">
                <div class="feature-text">
                    <h3>캠페인 소개</h3>
                    <p>바로가기 ></p>
                </div>
            </a>
        </div>
        <div class="feature-box">
            <a href="donation.jsp">
                <img src="images/donation.png" alt="후원하기" class="feature-icon">
                <div class="feature-text">
                    <h3>후원하기</h3>
                    <p>바로가기 ></p>
                </div>
            </a>
        </div>
        <div class="feature-box">
            <a href="community.jsp">
                <img src="images/community.png" alt="커뮤니티" class="feature-icon">
                <div class="feature-text">
                    <h3>커뮤니티</h3>
                    <p>바로가기 ></p>
                </div>
            </a>
        </div>
    </div>
</section>

<!-- 웹페이지 설명 섹션 -->
<section id="page-description">
    <div class="description-container">
        <div class="description-image">
            <img src="images/main.jpg" alt="기능 설명 이미지">
        </div>
        <div class="description-text">
            <h2>EcoGiv <span class="horizontal-line"></span></h2>
            <h1>환경 보호 캠페인 플랫폼</h1>
            <p>EcoGiv는 환경 보호를 위한 다양한 캠페인을 소개하며, 누구나 쉽게 참여할 수 있는 방법을 제공합니다.</p>
			<p>총 12가지의 환경 보호 캠페인을 통해 환경을 지키는 방법을 소개합니다. 쉽게 참여할 수 있는 다양한 활동들을 만나보세요.</p>
			<p>기부 페이지를 통해 환경 보호에 동참할 수 있습니다. 여러분의 작은 기부가 큰 변화를 만듭니다.</p>
			<p>커뮤니티 페이지에서 환경 보호에 관심 있는 사용자들이 의견을 나누고, 경험을 공유할 수 있습니다.</p>
			<p class="bold">EcoGiv는 작은 행동들이 큰 변화를 만든다고 믿습니다.<br> 지금 바로 참여해보세요. 여러분의 참여가 세상을 바꿉니다.</p>

        </div>
    </div>
</section>


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
