<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Campaign</title>
    <link href="intro.css" rel="stylesheet">
</head>
<body>
    <nav id="navbar">
        <a href="home.jsp" id="logo">
        <img src="images/logo.png" alt="Logo" class="logo-image">EcoGiv</a>
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
            <h1 id="main_txt">캠페인 소개</h1><br><br>
        </div>
    </div>
    
    
    <!-- 텍스트 및 괄호 이미지 섹션 -->
	<section id="intro-text">
    	<div class="container">
        	<img src="images/open.png" alt="Left Bracket" class="bracket">
        	<div class="intro-text-content">
            	<h2><span class="highlight">EcoGiv</span>에서는 <span class="highlight">어떤 캠페인</span>을 소개해주나요?</h2>
            	<p>EcoGiv는 환경 보호를 위한 다양한 캠페인을 소개합니다.<br> 우리는 모두가 환경 보호에 동참하고, 캠페인을 통해 배우고 성장하여 건강한 사회로 나아갈 수 있도록 돕습니다.</p>
        	</div>
        	<img src="images/close.png" alt="Right Bracket" class="bracket">
    	</div>
	</section>


    <!-- 캠페인 섹션 -->
    <section id="campaign">
        <div class="container">
            <table class="gallery-table">
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign1.jsp"><img src="images/img1.jpg" alt="Image 1"></a>
                            <div class="overlay">해양 보호</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign2.jsp"><img src="images/img2.jpg" alt="Image 2"></a>
                            <div class="overlay">플라스틱 제로</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign3.jsp"><img src="images/img3.jpg" alt="Image 3"></a>
                            <div class="overlay">불법 어업 근절</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign4.jsp"><img src="images/img4.jpg" alt="Image 4"></a>
                            <div class="overlay">Rethink IT</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign5.jsp"><img src="images/img5.jpg" alt="Image 5"></a>
                            <div class="overlay">디톡스 아웃도어</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign6.jsp"><img src="images/img6.jpg" alt="Image 6"></a>
                            <div class="overlay">아마존 보호</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign7.jsp"><img src="images/img7.jpg" alt="Image 7"></a>
                            <div class="overlay">생물 다양성</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign8.jsp"><img src="images/img8.jpg" alt="Image 8"></a>
                            <div class="overlay">기후참정권</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign9.jsp"><img src="images/img9.jpg" alt="Image 9"></a>
                            <div class="overlay">탈원전</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign10.jsp"><img src="images/img10.jpg" alt="Image 10"></a>
                            <div class="overlay">기업 100% 재생 에너지 전환</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign11.jsp"><img src="images/img11.jpg" alt="Image 11"></a>
                            <div class="overlay">위험한 석탄투자</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign12.jsp"><img src="images/img12.jpg" alt="Image 12"></a>
                            <div class="overlay">북극 보호</div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </section>
</body>
</html>
