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
        <a href="home.jsp" id="logo">EcoGiv</a>
        <ul>
            <li><a href="home.jsp" class="menu">홈</a></li>
            <li><a href="donation.jsp" class="menu">기부하기</a></li>
            <li><a href="quiz.jsp" class="menu">매칭테스트</a></li>
            <li><a href="community.jsp" class="menu">커뮤니티</a></li>
            <li><a href="login.jsp" id="signup">로그인/회원가입</a></li>
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
                <h1>Our Service</h1>
                <p>Voluptates architecto provident deserunt.</p>
            </div>
            
            <!-- 서비스 박스 컨테이너 -->
            <div class="services-container">
                <!-- 개별 서비스 박스 -->
                <div class="service-box">
                    <span class="service-number">01</span>
                    <h2>Beatae quo</h2>
                    <p>Lorem ipsum dolor sit amet, quasi cupiditate voluptate debitis saepe dolorem totam dolor repudiandae quo nihil, repellendus nesciunt ab fuga quae, minima reprehenderit sequi fugit.</p>
                    <button class="service-button">Learn More</button>
                </div>
                <div class="service-box">
                    <span class="service-number">02</span>
                    <h2>Delectus Suscipit</h2>
                    <p>Lorem ipsum dolor sit amet, quasi cupiditate voluptate debitis saepe dolorem totam dolor repudiandae quo nihil, repellendus nesciunt ab fuga quae, minima reprehenderit sequi fugit.</p>
                    <button class="service-button">Learn More</button>
                </div>
                <div class="service-box">
                    <span class="service-number">03</span>
                    <h2>Itaque harum</h2>
                    <p>Lorem ipsum dolor sit amet, quasi cupiditate voluptate debitis saepe dolorem totam dolor repudiandae quo nihil, repellendus nesciunt ab fuga quae, minima reprehenderit sequi fugit.</p>
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
                <h1>About Company</h1>
                <p class="subtitle">Architecto provident deserunt</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate molestiae temporibus et tenetur unde quasi, cum nemo quo, molestias architecto alias voluptatibus corrupti corporis earum. Necessitatibus maxime modi ipsam, quod!</p>
                <img src="images/main.jpg" alt="Company Image 1">
            </div>
            <!-- 오른쪽 섹션 -->
            <div class="right-section">
                <div class="image-row">
                    <img src="images/img2.jpg" alt="Company Image 2">
                    <img src="images/img16.jpg" alt="Company Image 3">
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo iusto quidem laborum atque, sapiente ipsa excepturi fuga cum sed in assumenda eos quasi harum culpa laboriosam nulla, incidunt quae. Voluptatum.</p>
                <p class="bold">Aliquid fuga sunt velit, temporibus molestias ab. Ipsa nesciunt totam, aliquid dignissimos.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt ut a dolorem, consectetur, eos suscipit consequatur magnam est dolore obcaecati adipisci expedita, vero, iste ducimus qui numquam animi facilis officia?</p>
            </div>
        </div>
    </section>

    <!-- 캠페인 섹션 -->
    <section id="campaign">
        <div class="container">
            <h1>Campaign</h1>
            <table class="gallery-table">
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign1.jsp"><img src="images/img1.jpg" alt="Image 1"></a>
                            <div class="overlay">Overlay Text 1</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign2.jsp"><img src="images/img2.jpg" alt="Image 2"></a>
                            <div class="overlay">Overlay Text 2</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign3.jsp"><img src="images/img3.jpg" alt="Image 3"></a>
                            <div class="overlay">Overlay Text 3</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign4.jsp"><img src="images/img4.jpg" alt="Image 4"></a>
                            <div class="overlay">Overlay Text 4</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign5.jsp"><img src="images/img5.jpg" alt="Image 5"></a>
                            <div class="overlay">Overlay Text 5</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign6.jsp"><img src="images/img6.jpg" alt="Image 6"></a>
                            <div class="overlay">Overlay Text 6</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign7.jsp"><img src="images/img7.jpg" alt="Image 7"></a>
                            <div class="overlay">Overlay Text 7</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign8.jsp"><img src="images/img8.jpg" alt="Image 8"></a>
                            <div class="overlay">Overlay Text 8</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign9.jsp"><img src="images/img9.jpg" alt="Image 9"></a>
                            <div class="overlay">Overlay Text 9</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign10.jsp"><img src="images/img10.jpg" alt="Image 10"></a>
                            <div class="overlay">Overlay Text 10</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign11.jsp"><img src="images/img11.jpg" alt="Image 11"></a>
                            <div class="overlay">Overlay Text 11</div>
                        </div>
                    </td>
                    <td>
                        <div class="gallery-item">
                            <a href="campaign12.jsp"><img src="images/img12.jpg" alt="Image 12"></a>
                            <div class="overlay">Overlay Text 12</div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </section>

    <script src="main.js"></script>
</body>
</html>
