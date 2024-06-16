<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <title>매칭 테스트</title>
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

    <!-- 질문 섹션 -->
    <div class="question-container">
        <%
            // 질문 목록
            String[] questions = {
                "나는 쉬는 날 가족들과 휴가를 가기로 했다. <br><br>이 때 내가 가고 싶은 곳은?<br><br>",
                "나는 친구들과 주말에 모여 놀기로 했다. <br><br>이 때 숙소를 선택한다면?<br><br>",
                "내가 애인과 데이트를 할 때 가장 하고 싶은 활동은?<br><br>",
                "교수님이 갑자기 휴강을 하셨다. <br><br>지금 내가 당장 하고 싶은 것은?<br><br>",
                "다음 중 더 위험하다고 생각하는 것은?<br><br>",
                "강원도로 놀러가기로 했다. <br><br>이번 여행의 주제는 자연! 어디로 갈까?<br><br>"
            };

            // 각 질문에 대한 답변 목록
            String[][] answers = {
                {"산", "바다"},
                {"촌캉스", "호캉스"},
                {"백화점 쇼핑", "요트 투어"},
                {"공지천으로 자전거 타러 가기", "집에서 넷플릭스 보기"},
                {"재생 에너지 부족", "방사능"},
                {"대관령", "가평"}
            };

            // 현재 질문 번호를 가져옴 (기본값은 0)
            int questionNumber = 0;
            if (request.getParameter("q") != null) {
                questionNumber = Integer.parseInt(request.getParameter("q"));
            }

            // 세션에 저장된 답변 목록을 가져옴
            Map<Integer, Integer> userAnswers = (Map<Integer, Integer>) session.getAttribute("userAnswers");
            if (userAnswers == null) {
                userAnswers = new HashMap<>();
            }

            // 이전 질문에 대한 답변 저장
            if (request.getParameter("a") != null) {
                int answer = Integer.parseInt(request.getParameter("a"));
                userAnswers.put(questionNumber - 1, answer);
                session.setAttribute("userAnswers", userAnswers);
            }

            // 모든 질문에 답변이 완료된 경우 결과 페이지로 이동
            if (questionNumber >= questions.length) {
                response.sendRedirect("match_result.jsp");
                return;
            }
        %>

        <div class="question-box">
            <h2><%= questions[questionNumber] %></h2>
            <a href="match.jsp?q=<%= questionNumber + 1 %>&a=1" class="answer-button"><%= answers[questionNumber][0] %></a>
            <a href="match.jsp?q=<%= questionNumber + 1 %>&a=2" class="answer-button"><%= answers[questionNumber][1] %></a>
        </div>
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
