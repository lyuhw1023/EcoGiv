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
        <li><a href="home.jsp" class="menu">Home</a></li>
        <li><a href="introduce.jsp" class="menu">Campaign</a></li>
        <li><a href="donation.jsp" class="menu">Donation</a></li>
        <li><a href="community.jsp" class="menu">Community</a></li>
        <li><a href="login.jsp" class="menu">Login</a></li>
    </ul>
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

    <!-- 서비스 섹션 -->
    <section id="our-service">
    	<div class="container">
        	<!-- 제목과 소제목 -->
        	<div class="section-header">
            	<h1>주요 기능 소개</h1>
<!--             	<p>EcoGiv의 주 기능 3가지로 바로 이동합니다.</p> -->
        	</div>
        
        	<!-- 서비스 박스 컨테이너 -->
        	<div class="services-container">
            	<!-- 개별 서비스 박스 -->
            	<div class="service-box">
                	<span class="service-number">01</span>
                	<h2>캠페인 소개</h2>
                	<p>EcoGiv는 다양한 환경 보호 캠페인을 소개합니다. 각 캠페인을 통해 우리가 환경을 지키는 방법들을 쉽게 배울 수 있습니다.</p>
                	<button class="service-button">Learn More</button>
            	</div>
            	<div class="service-box">
                	<span class="service-number">02</span>
                	<h2>기부하기</h2>
                	<p>여러분의 작은 기부가 큰 변화를 만들어 나갑니다. 지금 기부 페이지를 방문하여 지구를 지키는 데 동참해보세요.</p>
                	<button class="service-button">Learn More</button>
            	</div>
            	<div class="service-box">
                	<span class="service-number">03</span>
                	<h2>커뮤니티</h2>
                	<p>환경 보호에 관심 있는 사람들과 소통해 보세요. 커뮤니티에서 다양한 의견을 나누고 유용한 정보를 공유하세요.</p>
                	<button class="service-button">Learn More</button>
            	</div>
        	</div>
    	</div>
	</section>
    

    <!-- 소개 섹션 -->
    <section id="about-company">
    	<div class="container">
        	<!-- 왼쪽 섹션 -->
        	<div class="left-section">
            	<h1>EcoGiv</h1>
            	<p class="subtitle">환경 보호 캠페인 플랫폼</p>
            	<p>지구를 지키기 위한 우리의 작은 노력이 모여 큰 변화를 만듭니다. EcoGiv는 환경 보호를 위한 다양한 캠페인을 소개하며, 
            	누구나 쉽게 참여할 수 있는 방법을 제공합니다. 환경 보호가 일상이 되는 세상을 꿈꾸며, 모두가 함께할 수 있는 기회를 만듭니다.</p>
            	<img src="images/main.jpg" alt="EcoGiv 이미지 1">
        	</div>
        	<!-- 오른쪽 섹션 -->
        	<div class="right-section">
            	<div class="image-row">
                	<img src="images/img2.jpg" alt="EcoGiv 이미지 2">
                	<img src="images/img1.jpg" alt="EcoGiv 이미지 3">
            	</div>
            	<p>EcoGiv는 총 12가지의 다양한 환경 보호 캠페인을 통해 환경을 지키는 방법들을 여러분께 소개합니다. 쉽게 참여할 수 있는 다양한 활동들을 만나보세요.</p>
            	<p>또한, 기부 페이지를 통해 환경 보호에 동참할 수 있습니다. 여러분의 작은 기부가 큰 변화를 만들 수 있습니다.</p>
            	<p>커뮤니티 페이지에서는 환경 보호에 관심 있는 사용자들이 모여 의견을 나누고, 서로의 경험을 공유할 수 있습니다. 함께 소통하고 협력하여 더 나은 미래를 만들어가길 바랍니다.</p>
            	<p class="bold">EcoGiv는 여러분의 작은 행동들이 모여 큰 변화를 만들 수 있다고 믿습니다.<br>지금 바로 참여해보세요. 여러분의 참여가 세상을 바꿉니다.</p>
        	</div>
    	</div>
	</section>


    <script src="main.js"></script>
</body>
</html>
