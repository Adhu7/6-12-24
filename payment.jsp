<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%
String email = (String) session.getAttribute("email");

out.print(email);

if (email == null) {
	response.sendRedirect("log.jsp");

}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .checkout-form {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        .checkout-btn {
            background-color: #007bff;
            border: none;
            width: 100%;
            padding: 12px;
            color: white;
        }
        .checkout-btn:hover {
            background-color: #0056b3;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
        }
        footer {
            background-color: #f8f9fa;
            padding: 1rem 0;
            text-align: center;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <h3>Artevo</h3>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shoppingCart.jsp">Shopping Cart</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Checkout Form Section -->
<div class="container py-5">
    <h2 class="text-center mb-4">Checkout</h2>
    <div class="checkout-form">
        <form action="processCheckout.jsp" method="post">
            <h4>Shipping Information</h4>
            
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            
            <div class="form-group">
                <label for="address">Shipping Address</label>
                <input type="text" class="form-control" id="address" name="address" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" class="form-control" id="phone" name="phone" required>
            </div>
            
            <hr>
            
            
            
            <hr> 
            
            <h4>Order Summary</h4>
            <div class="form-group">
                <p><strong>Subtotal:</strong><b>&#8377;</b> ${subtotal}</p>
                <p><strong>Tax (10%):</strong><b>&#8377;</b> ${tax}</p>
                <p><strong>Shipping:</strong><b>&#8377;</b> ${shipping}</p>
                <p><strong>Total:</strong><b>&#8377;</b> ${totalPrice}</p>
            </div>
            
            <button type="submit" class="btn checkout-btn">Complete Purchase</button>
        </form>
    </div>
</div>

<!-- Footer -->
<footer class="text-center mt-5 py-3">
    <p>&copy; 2024 Artevo. All Rights Reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%
String email = (String) session.getAttribute("email");

out.print(email);

if (email == null) {
    response.sendRedirect("log.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .checkout-form {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        .checkout-btn {
            background-color: #007bff;
            border: none;
            width: 100%;
            padding: 12px;
            color: white;
        }
        .checkout-btn:hover {
            background-color: #0056b3;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
        }
        footer {
            background-color: #f8f9fa;
            padding: 1rem 0;
            text-align: center;
        }
    </style>
    <script>
        // Function for form validation
        function validateForm() {
            var name = document.getElementById("name").value;
            var address = document.getElementById("address").value;
            var phone = document.getElementById("phone").value;

            // Regex Patterns
            var namePattern = /^[a-zA-Z\s]+$/;  // Allows only letters and spaces
            var addressPattern = /^[a-zA-Z0-9\s,.-]+$/;  // Allows alphanumeric, spaces, and common punctuation for address
            var phonePattern = /^[0-9]{10}$/;  // Ensures 10-digit phone number

            // Validate Name (letters and spaces only)
            if (!namePattern.test(name)) {
                alert("Please enter a valid name (letters and spaces only).");
                document.getElementById("name").focus();
                return false;
            }

            // Validate Address (alphanumeric, spaces, and punctuation)
            if (!addressPattern.test(address)) {
                alert("Please enter a valid address (alphanumeric, spaces, commas, periods, and hyphens only).");
                document.getElementById("address").focus();
                return false;
            }

            // Validate Phone number (10-digit)
            if (!phonePattern.test(phone)) {
                alert("Please enter a valid 10-digit phone number.");
                document.getElementById("phone").focus();
                return false;
            }

            return true; // Form is valid
        }
    </script>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <h3>Artevo</h3>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shoppingCart.jsp">Shopping Cart</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Checkout Form Section -->
<div class="container py-5">
    <h2 class="text-center mb-4">Checkout</h2>
    <div class="checkout-form">
        <form action="processCheckout.jsp" method="post" onsubmit="return validateForm()">
            <h4>Shipping Information</h4>
            
               <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" name="name" id="name" >
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" name="address" id="address" >
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" name="city" id="city" >
            </div>
            <div class="form-group">
                <label for="state">State</label>
                <input type="text" name="state" id="state" >
            </div>
            <div class="form-group">
                <label for="zip">ZIP Code</label>
                <input type="text" name="zip" id="zip" >
            </div>
            <div class="form-group">
                <label for="country">Country</label>
                <input type="text" name="country" id="country" >
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" name="phone" id="phone" >
            </div>
           
            <div class="form-group">
                <button type="submit">Submit Payment</button>
            </div>
            
            <hr>

            <h4>Order Summary</h4>
            <div class="form-group">
                <p><strong>Subtotal:</strong><b>&#8377;</b> ${subtotal}</p>
                <p><strong>Tax (10%):</strong><b>&#8377;</b> ${tax}</p>
                <p><strong>Shipping:</strong><b>&#8377;</b> ${shipping}</p>
                <p><strong>Total:</strong><b>&#8377;</b> ${totalPrice}</p>
            </div>
            
            <button type="submit" class="btn checkout-btn">Complete Purchase</button>
        </form>
    </div>
</div>

<!-- Footer -->
<footer class="text-center mt-5 py-3">
    <p>&copy; 2024 Artevo. All Rights Reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 --%>
 <%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="bean.*" %>
<%@ page import="dao.*" %>
<%@ page import="db.ArtDB" %>
<%
String email = (String) session.getAttribute("email");

// Redirect to login page if user is not logged in
if (email == null) {
    response.sendRedirect("log.jsp");
    return;
}

// Fetch userId using the email (assumes you have a method for this in your DAO)

	 UserDao userDao = new UserDao();
        Integer userId = userDao.getUserIdByEmail(email);
        String userEmail = userDao.getUserEmailById(userId);
        if (userId == null || email == null) {
            out.println("User not found");
            return;
        }

        double amount = Double.parseDouble(request.getParameter("amount"));
    %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <style>
        .checkout-form {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        .checkout-btn {
            background-color: #007bff;
            border: none;
            width: 100%;
            padding: 12px;
            color: white;
        }
        .checkout-btn:hover {
            background-color: #0056b3;
        }
        footer {
            background-color: #f8f9fa;
            padding: 1rem 0;
            text-align: center;
        }
    </style>
    <script>
        // Form validation
        function validateForm() {
            var phonePattern = /^[0-9]{10}$/;

            var phone = document.getElementById("phone").value;
            if (!phonePattern.test(phone)) {
                alert("Please enter a valid 10-digit phone number.");
                document.getElementById("phone").focus();
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <h3>Artevo</h3>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shoppingCart.jsp">Shopping Cart</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Checkout Form -->
<div class="container py-5">
    <h2 class="text-center mb-4">Checkout</h2>
    <div class="checkout-form">
        <form action="payAction.jsp" method="post" onsubmit="return validateForm()">
            <h4>Shipping Information</h4>
            <input type="hidden" name="userId" value="<%= userId %>">
            <div class="form-group mb-3">
                <label for="name">Full Name</label>
                <input type="text" name="name" id="name" class="form-control" required>
            </div>
            <div class="form-group mb-3">
                <label for="address">Address</label>
                <input type="text" name="address" id="address" class="form-control" required>
            </div>
            <div class="form-group mb-3">
                <label for="city">City</label>
                <input type="text" name="city" id="city" class="form-control" required>
            </div>
            <div class="form-group mb-3">
                <label for="state">State</label>
                <input type="text" name="state" id="state" class="form-control" required>
            </div>
            <div class="form-group mb-3">
                <label for="zip">ZIP Code</label>
                <input type="text" name="zip" id="zip" class="form-control" required>
            </div>
            <div class="form-group mb-3">
                <label for="country">Country</label>
                <input type="text" name="country" id="country" class="form-control" required>
            </div>
            <div class="form-group mb-3">
                <label for="phone">Phone Number</label>
                <input type="text" name="phone" id="phone" class="form-control" required>
            </div>
            <div class="form-group mb-3">
                <label for="amount">Total Amount</label>
                <input type="number" name="amount" id="amount" class="form-control" value="<%= amount %>" readonly>
            </div>
         <!--    <button type="submit" class="btn checkout-btn">Complete Purchase</button> -->
         <!--    <form id="checkoutForm" action="saveorder.jsp" method="post"> -->
            <input type="hidden" name="userId" value="<%= userId %>">
            <input type="hidden" name="totalAmount" value="<%= amount %>">
            <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id">
            <button type="button" class="btn checkout-btn" id="payBtn">Checkout</button>
        </form>
    </div>

    <script>
    document.getElementById('payBtn').onclick = function(e) {
        e.preventDefault();

        var options = {
            "key": "rzp_test_3FiYqdcHdWq0a2", // Enter the Key ID generated from the Razorpay Dashboard
            "amount": "<%= amount * 100 %>", // Razorpay expects the amount in paise
            "currency": "INR",
            "name": "yumYard",
            "description": "Order payment",
            "handler": function (response){
                // This function handles the payment response
                document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                document.getElementById('checkoutForm').submit(); // Submit the form after payment success
            },
            "prefill": {
                "email": "<%= email %>" // Prefill the user's email in Razorpay payment form
            },
            "theme": {
                "color": "#F37254"
            }
        };
        var rzp1 = new Razorpay(options);
        rzp1.open();
    }
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Artevo. All Rights Reserved.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
