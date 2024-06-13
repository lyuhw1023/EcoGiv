<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원 처리</title>
<script type="text/javascript">
    function showPopup(message, redirect) {
        alert(message);
        if (redirect) {
            window.location.href = redirect;
        }
    }
</script>
</head>
<body>
<%@ include file="dbconn_donation.jsp"%>
<%
    try {
        request.setCharacterEncoding("UTF-8");
        String donationType = request.getParameter("donationType");
        String donationName = request.getParameter("donationName");
        String donationAmount = request.getParameter("donationAmount");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String paymentMethod = request.getParameter("paymentMethod");
        String bankName = request.getParameter("bankName");
        String accountNumber = request.getParameter("accountNumber");
        String accountHolderType = request.getParameter("accountHolderType");
        String withdrawalDate = request.getParameter("withdrawalDate");

        Connection dbConnection = (Connection) application.getAttribute("DBConnection2");
        if (dbConnection == null) {
            throw new ServletException("DB 연결이 설정되지 않았습니다.");
        }

        String sql = "INSERT INTO donations (donation_type, donation_name, donation_amount, name, phone, email, payment_method, bank_name, account_number, account_holder_type, withdrawal_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = dbConnection.prepareStatement(sql);
        pstmt.setString(1, donationType);
        pstmt.setString(2, donationName);
        pstmt.setString(3, donationAmount);
        pstmt.setString(4, name);
        pstmt.setString(5, phone);
        pstmt.setString(6, email);
        pstmt.setString(7, paymentMethod);
        pstmt.setString(8, bankName);
        pstmt.setString(9, accountNumber);
        pstmt.setString(10, accountHolderType);
        pstmt.setString(11, withdrawalDate);
        pstmt.executeUpdate();

        out.println("<script type='text/javascript'>showPopup('후원이 성공적으로 처리되었습니다.', 'home.jsp');</script>");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script type='text/javascript'>showPopup('후원 처리에 실패했습니다. 다시 시도해 주세요.', null);</script>");
    }
%>
</body>
</html>
