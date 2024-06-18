<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
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
                <a href="donation_api.html">
                    <img src="images/donation.png" alt="후원하기" class="feature-icon">
                    <div class="feature-text">
                        <h3>후원하기</h3>
                        <p>바로가기 ></p>
                    </div>
                </a>
            </div>
            <div class="feature-box">
                <a href="matching_test.jsp">
                    <img src="images/match.png" alt="커뮤니티" class="feature-icon">
                    <div class="feature-text">
                        <h3>매칭테스트</h3>
                        <p>바로가기 ></p>
                    </div>
                </a>
            </div>
        </div>
    </section> 
    
    <!-- 소개 섹션 -->
<section id="introduction">
    <div class="description-container">
        <div class="description-image">
            <img src="images/main.jpg" alt="환경 보호 이미지">
        </div>
        <div class="description-text">
            <h2>EcoGiv <span class="horizontal-line"></span></h2>
            <h1>환경 보호 캠페인 플랫폼</h1>
            <p>2023년은 더위, 해빙, 홍수, 산불 등 역대급 기록을 남겼으며, 이러한 환경 변화가 더욱 심각해질 것으로 보입니다. 
            지구의 평균 해수 온도가 사상 최고치를 기록하는 등, 기후 변화에 대한 경고가 지속되고 있습니다. 이러한 상황을 해결하고자, 환경 보호에 관한 내용을 담은 웹사이트를 구현하고자 했습니다.</p>
            <p>EcoGiv는 환경 보호를 위한 다양한 캠페인을 소개하며, 누구나 쉽게 참여할 수 있는 방법을 제공합니다. 총 12가지의 환경 보호 캠페인을 통해 환경을 지키는 방법을 소개하고 환경보호를 위해
            기부할 수 있는 환경을 제공합니다. 또한, 커뮤니티 페이지를 통해 사용자들과 같이 캠페인에 동참하며 더욱 쉽게 참여할 수 있도록 도웁니다.</p>
        </div>
    </div>
</section>
<br><br><br><br><br><br>

<!-- 기부하기 섹션 -->
<section id="introduction">
    <div class="description-container">
        <div class="description-text">
        	<h2><span class="horizontal-line"></span>&nbsp;Let's Do It!</h2>
            <p>EcoGiv는 기부를 통해 환경 보호에 동참할 수 있는 기회를 제공합니다. 여러분의 소중한 기부는 우리 모두가 꿈꾸는 더 깨끗하고 건강한 지구를 만들어갑니다. 
            기부 페이지에서 작은 기부가 어떻게 큰 변화를 만드는지 확인하고, 지금 바로 참여해보세요.</p>
            <p>기부를 통해 우리는 다양한 환경 보호 활동을 지원하고, 지구의 미래를 위한 지속 가능한 변화를 만들어가고 있습니다. 기부는 단순한 금전적 지원을 넘어, 
            더 나은 세상을 만드는 중요한 행동입니다.</p>
        </div>
        <div class="description-image">
            <img src="images/donation2.jpg" alt="기부 이미지">
        </div>
    </div>
</section>
<br><br><br><br><br><br>

<!-- 매칭테스트 섹션 -->
    <section id="introduction">
        <div class="description-container">
            <div class="description-image">
                <img src="images/matching.jpg" alt="커뮤니티 이미지">
            </div>
            <div class="description-text">
                <h2>Matching<span class="horizontal-line"></span></h2>
                <p>EcoGiv는 재미있는 매칭 테스트를 통해 여러분에게 딱 맞는 환경 보호 캠페인을 추천해 드립니다. 다양한 질문에 답변하면 여러분의 관심사와 성향에 맞는 캠페인을 찾아드립니다.</p> 
                <p>여러분의 소중한 참여가 더 깨끗하고 건강한 지구를 만드는데 큰 도움이 됩니다. 지금 테스트를 통해 나에게 맞는 캠페인을 찾아보세요.</p>
                <p>환경 보호는 우리의 미래를 위한 중요한 행동입니다. 지금 테스트를 시작해 나에게 꼭 맞는 캠페인을 찾아보세요! 함께 더 나은 세상을 만들어 갑시다.<br><br></p>
            </div>
        </div>
    </section>
    <br><br><br><br><br><br>


<!-- 커뮤니티 섹션 -->
    <section id="introduction">
        <div class="description-container">
            <div class="description-text">
                <h2><span class="horizontal-line"></span>Together</h2>
                <p>EcoGiv의 커뮤니티 페이지에서는 환경 보호에 관심 있는 사용자들이 의견을 나누고, 경험을 공유할 수 있습니다. 여러분의 생각과 경험이 다른 사람들에게 영감을 주고, 
                함께 환경을 지키는 힘이 될 수 있습니다. 커뮤니티에 참여해 다양한 정보를 얻고, 더 나은 미래를 위한 아이디어를 나눠보세요.</p>
                <p>커뮤니티는 환경 보호를 위한 활동을 함께 계획하고, 캠페인에 참여하며, 서로의 경험을 통해 배우는 공간입니다. 다른 사람들과의 소통을 통해 더 많은 사람들이 
                환경 보호에 관심을 가지게 되고, 더 큰 변화를 만들어낼 수 있습니다.</p>
                <p>EcoGiv는 작은 행동들이 큰 변화를 만든다고 믿습니다. 지금 바로 커뮤니티에 참여해보세요. 여러분의 참여가 세상을 바꿉니다.</p>
            </div>
            <div class="description-image">
                <img src="images/community.jpg" alt="커뮤니티 이미지">
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
