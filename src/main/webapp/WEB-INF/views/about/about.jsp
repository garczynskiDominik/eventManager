<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>


<!-- ======= About Us Section ======= -->
<section id="about">
    <div class="container">

        <header class="section-header">
            <h3>About Us</h3>
            <p>We are students of the Java programming course.
            As part of the final project, we had to create an event aggregation website.
            <br>The website is being developed all the time.</p>
        </header>

        <div class="row about-cols">

            <div class="col-md-4">
                <div class="about-col">
                    <div class="img">
                        <img src="resources/img/about-mission.jpg" alt="" class="img-fluid">
                        <div class="icon"><i class="bi bi-bar-chart"></i></div>
                    </div>
                    <h2 class="title"><a href="#">Our Mission</a></h2>
                    <p>
                        Our website is designed to display current events to the user. Anyone can create an account on
                        our website and then sign up for a selected event.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="about-col">
                    <div class="img">
                        <img src="resources/img/about-plan.jpg" alt="" class="img-fluid">
                        <div class="icon"><i class="bi bi-brightness-high"></i></div>
                    </div>
                    <h2 class="title"><a href="#">Our Plan</a></h2>
                    <p>
                        The plans were to create the website within 42 hours of the course for this section,
                        and to refine it in the spare time.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="about-col">
                    <div class="img">
                        <img src="resources/img/about-vision.jpg" alt="" class="img-fluid">
                        <div class="icon"><i class="bi bi-calendar4-week"></i></div>
                    </div>
                    <h2 class="title"><a href="#">Our Vision</a></h2>
                    <p>
                        Our vision is to create a website that will be used by people all over the world.
                        A website with a large database of events, with an easy-to-use interface, all in one place.
                    </p>
                </div>
            </div>

        </div>

    </div>

</section>

<%@include file="../dynamic/footer.jspf" %>

