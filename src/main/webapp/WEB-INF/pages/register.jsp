<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Ghar Dalali</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/normalize.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/styles.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/auth.css">
</head>

<body>
    <!-- Navigation Bar -->
    

    <!-- Register Section -->
    <section class="auth-section">
        <div class="container">
            <div class="auth-container">
                <div class="auth-content">
                    <h2>Create an Account</h2>
                    <p>Join Ghar Dalali to find your dream property or list your own.</p>

                    <div class="auth-social">
                        <p>Register with</p>
                        <div class="social-buttons">
                            <button type="button" class="social-btn google">
                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round">
                                    <path
                                        d="M20.283 10.356h-8.327v3.451h4.792c-.446 2.193-2.313 3.453-4.792 3.453a5.27 5.27 0 0 1-5.279-5.28 5.27 5.27 0 0 1 5.279-5.279c1.259 0 2.397.447 3.29 1.178l2.6-2.599c-1.584-1.381-3.615-2.233-5.89-2.233a8.908 8.908 0 0 0-8.934 8.934 8.907 8.907 0 0 0 8.934 8.934c4.467 0 8.529-3.249 8.529-8.934 0-.528-.081-1.097-.202-1.625z">
                                    </path>
                                </svg>
                                Google
                            </button>
                            <button type="button" class="social-btn facebook">
                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round">
                                    <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                                </svg>
                                Facebook
                            </button>
                        </div>
                    </div>

                    <div class="auth-divider">
                        <span>or</span>
                    </div>
<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null && !errorMessage.isEmpty()) {
%>
    <p style="color: red; font-weight: bold;">Error: <%= errorMessage %></p>
<%
    }
%>
                    <form class="auth-form" action = "<%= request.getContextPath() %>/register" method= "post">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="username">User Name</label>
                                <input type="text" name="username" id="first-name" placeholder="Enter your User-name" required>
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" name = "email" id="email" placeholder="Enter your email" required>
                        </div>

                        <div class="form-group">
                            <label for="phone">Contact Number</label>
                            <input type="tel" name = "contactNumber" id="phone" placeholder="Enter your phone number" required>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name = "password" id="password" placeholder="Create a password" required>
                        </div>

                        <div class="form-group">
                            <label for="confirm-password">Confirm Password</label>
                            <input type="password" name = "confirmPassword" id="confirm-password" placeholder="Confirm your password" required>
                        </div>

                        <div class="form-options">
                            <div class="terms-agreement">
                                <input type="checkbox" id="terms" required>
                                <label for="terms" required>I agree to the <a href="${pageContext.request.contextPath}/view?page=terms">Terms of Service</a> and <a
                                        href="${pageContext.request.contextPath}/view?page=policy">Privacy Policy</a></label>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                    </form>

                    <div class="auth-footer">
                        <p>Already have an account? <a href="<%= request.getContextPath() %>/app/login">Login</a></p>
                    </div>
                </div>

                <div class="auth-image">
                    <img src="<%= request.getContextPath() %>/images/register-bg.jpg" alt="Register" loading="lazy">
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">
                    <h2>Ghar Dalali</h2>
                    <p>Your trusted partner in finding the perfect home.</p>
                </div>
                <div class="footer-links">
                    <h3>Quick Links</h3>
                    <ul>  
                       <li><a href="${pageContext.request.contextPath}/view?page=terms">Terms of Service</a></li>
                        <li><a href="${pageContext.request.contextPath}/view?page=policy">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h3>Contact Us</h3>
                    <p>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z">
                            </path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                        info@ghardalali.com
                    </p>
                    <p>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path
                                d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z">
                            </path>
                        </svg>
                        +977 1234567890
                    </p>
                    <div class="social-links">
                        <a href="#" class="social-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round">
                                <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                            </svg>
                        </a>
                        <a href="#" class="social-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round">
                                <path
                                    d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z">
                                </path>
                            </svg>
                        </a>
                        <a href="#" class="social-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round">
                                <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
                                <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2025 Ghar Dalali. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="../js/main.js"></script>
</body>

</html>