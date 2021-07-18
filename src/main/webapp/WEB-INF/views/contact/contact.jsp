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
                    <address>Rzeszow, Poland </address>
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

    </div>
</section><!-- End Contact Section -->
<%@include file="../dynamic/footer.jspf" %>
