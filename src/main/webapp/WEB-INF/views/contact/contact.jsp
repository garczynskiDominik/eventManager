<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>





<!-- ======= Contact Section ======= -->
<section id="contact" class="section-bg">
    <div class="container">

        <div class="section-header">
            <h3>Contact Us</h3>
            <p>If you have any questions, please contact us!</p>
        </div>

        <div class="row contact-info">

            <div class="col-md-4">
                <div class="contact-address">
                    <i class="bi bi-geo-alt"></i>
                    <h3>Address</h3>
                    <address>Podkarpacka 999, 35-082 Rzeszow, Poland </address>
                </div>
            </div>

            <div class="col-md-4">
                <div class="contact-phone">
                    <i class="bi bi-phone"></i>
                    <h3>Phone Number</h3>
                    <p><a href="tel:+48 123 654 327">+48 123 654 327</a></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="contact-email">
                    <i class="bi bi-envelope"></i>
                    <h3>Email</h3>
                    <p><a href="mailto:contact@eventmanager.com">contact@eventmanager.com</a></p>
                </div>
            </div>

        </div>

<%--        <div class="form">--%>
        <%--            <form action="forms/contact.php" method="post" role="form" class="php-email-form">--%>
        <%--                <div class="row">--%>
        <%--                    <div class="form-group col-md-6">--%>
        <%--                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>--%>
        <%--                    </div>--%>
        <%--                    <div class="form-group col-md-6">--%>
        <%--                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--                <div class="form-group">--%>
        <%--                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>--%>
        <%--                </div>--%>
        <%--                <div class="form-group">--%>
        <%--                    <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>--%>
        <%--                </div>--%>
        <%--                <div class="my-3">--%>
        <%--                    <div class="loading">Loading</div>--%>
        <%--                    <div class="error-message"></div>--%>
        <%--                    <div class="sent-message">Your message has been sent. Thank you!</div>--%>
        <%--                </div>--%>
        <%--                <div class="text-center"><button type="submit">Send Message</button></div>--%>
        <%--            </form>--%>
        <%--        </div>--%>

    </div>
</section><!-- End Contact Section -->
<%@include file="../dynamic/footer.jspf" %>
