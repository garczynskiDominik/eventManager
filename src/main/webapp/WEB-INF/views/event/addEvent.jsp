<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>

<section id="portfolio" class="section-bg">
    <div class="container" data-aos="fade-up">

        <header class="section-header">
            <h3 class="section-title">Add new event</h3>
        </header>

        <form method="post" action="event.jsp">

            <div>
                <strong>Name of event</strong>
                <input class="form-control" type="text" name="nameOfEvent" value="">
            </div>

            <div>
                <strong>Start date</strong>
                <input class="form-control" type="date" name="startDate" value="" placeholder="">
            </div>

            <div>
                <strong>End date</strong>
                <input class="form-control" type="date" name="endDate" value="" placeholder="">
            </div>

            <div>
                <strong>Description</strong>
                <textarea class="form-control" rows="2" name="description">Description</textarea>
            </div>

        </form>
    </div>
</section>

<!-- End Portfolio Section -->
<%@include file="../dynamic/footer.jspf" %>
