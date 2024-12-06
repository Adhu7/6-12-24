<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
    <title>Payment Success</title>
</head>
<body>
    <%
        String paymentId = request.getParameter("razorpay_payment_id");
        String userId = request.getParameter("userId");
        String amount = request.getParameter("amount");

        if (paymentId != null && !paymentId.isEmpty()) {
            // Payment was successful
            // TODO: Insert order details into the database, and send confirmation email to the user
           
            out.println("<h2>Payment Successful!</h2>");
            out.println("<p>Payment ID: " + paymentId + "</p>");
            out.println("<p>User ID: " + userId + "</p>");
            out.println("<p>Total Amount: &#8377;" + amount + "</p>");
        } else {
            // Payment failed or was canceled
            out.println("<h2>Payment Failed!</h2>");
            out.println("<p>Please try again.</p>");
        }
    %>
</body>
</html>
