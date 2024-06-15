<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>후원하기</title>
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
            <% HttpSession currentSession = request.getSession(false);
                String username = null;
                if (currentSession != null) {
                    username = (String) currentSession.getAttribute("username");
                }
                if (username != null) { %>
                <span><%= username %>님</span>
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="logout.jsp" class="login-button">로그아웃</a>
            <% } else { %>
                <a href="donation_do.jsp" class="donate-button">후원하기</a>
                <a href="login.jsp" class="login-button">로그인</a>
            <% } %>
        </div>
    </nav>
    
    <div id="main" style="background-image: url('images/donation2.jpg'); background-size: cover; background-position: center;">
        <div id="contents">
            <h1 id="main_txt_b">후원하기</h1><br><br>
        </div>
    </div>

    <div class="donation-form-container">
        <h2>후원정보</h2>
        <form action="donation_process.jsp" method="post">
            <div class="donation-info">
                <div class="input-group">
                    <label>후원주기</label>
                    <div class="button-group">
                        <button type="button" class="toggle-button active" data-value="정기후원">정기후원</button>
                        <button type="button" class="toggle-button" data-value="일시후원">일시후원</button>
                        <input type="hidden" name="donationType" value="정기후원">
                    </div>
                </div>
                
                <div class="input-group">
                    <label for="donationName">후원명</label>
                    <input type="text" id="donationName" name="donationName" placeholder="후원명" required>
                </div>

                <div class="input-group">
                    <label>후원금액</label>
                    <div class="donation-amount">
                        <input type="radio" id="amount1" name="donationAmount" value="10000" checked>
                        <label for="amount1">10,000원</label>
                        <input type="radio" id="amount2" name="donationAmount" value="20000">
                        <label for="amount2">20,000원</label>
                        <input type="radio" id="amount3" name="donationAmount" value="30000">
                        <label for="amount3">30,000원</label>
                        <input type="radio" id="amount4" name="donationAmount" value="50000">
                        <label for="amount4">50,000원</label>
                        <input type="radio" id="amount5" name="donationAmount" value="100000">
                        <label for="amount5">100,000원</label>
                        <input type="radio" id="customAmount" name="donationAmount" value="custom">
                        <label for="customAmount">직접입력</label>
                    </div>
                </div>
            </div>
			<br><br><br>
			
            <h2>기본정보</h2>
            <div class="basic-info">
                <div class="input-group">
                    <label for="name">이름</label>
                    <input type="text" id="name" name="name" placeholder="이름" required>
                </div>
                <div class="input-group">
                    <label for="phone">핸드폰</label>
                    <input type="text" id="phone" name="phone" placeholder="핸드폰" required>
                </div>
                <div class="input-group">
                    <label for="email">이메일</label>
                    <input type="email" id="email" name="email" placeholder="이메일">
                </div>
            </div>
			<br><br><br>
			
            <h2>결제정보</h2>
            <div class="payment-info">
                <div class="input-group">
                    <label>결제수단</label>
                    <div class="button-group">
                        <button type="button" class="toggle-button active" data-value="CMS자동이체">CMS자동이체</button>
                        <button type="button" class="toggle-button" data-value="신용카드">신용카드</button>
                        <button type="button" class="toggle-button" data-value="kakaopay">카카오페이</button>
                        <button type="button" class="toggle-button" data-value="payco">PAYCO</button>
                        <input type="hidden" name="paymentMethod" value="CMS자동이체">
                    </div>
                </div>
                <div class="input-group">
                    <label for="bankName">은행명</label>
                    <select id="bankName" name="bankName">
                        <option value="">은행을 선택해 주세요</option>
                        <option value="국민은행">국민은행</option>
                        <option value="농협은행">농협은행</option>
                        <option value="신한은행">신한은행</option>
                        <option value="KEB하나은행">KEB하나은행</option>
                        <option value="우리은행">우리은행</option>
                        <option value="우체국">우체국</option>
                    </select>
                </div>
                <div class="input-group">
                    <label for="accountNumber">계좌번호</label>
                    <input type="text" id="accountNumber" name="accountNumber" placeholder="휴대폰번호 형식의 계좌번호 사용불가">
                </div>
                <div class="input-group">
                    <label for="accountHolderType">예금주구분</label>
                    <select id="accountHolderType" name="accountHolderType">
                        <option value="개인(개인사업자)">개인(개인사업자)</option>
                        <option value="법인/단체">법인/단체</option>
                    </select>
                </div>
                <div class="input-group">
                    <label for="withdrawalDate">출금일</label>
                    <select id="withdrawalDate" name="withdrawalDate">
                        <option value="10">매월 10일</option>
                        <option value="25">매월 25일</option>
                    </select>
                </div>
            </div>
            <br><br><hr><br><br>

            <div class="agreement">                
                <input type="checkbox" id="agreePersonalInfo" name="agreePersonalInfo" required>
                <label for="agreePersonalInfo">개인정보수집 및 이용동의</label>
                
                <input type="checkbox" id="agreeTerms" name="agreeTerms" required>
                <label for="agreeTerms">이용약관</label>
            </div>

            <button type="submit" class="donation-submit-button">신청하기</button>
        </form>
    </div>
    
    
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
