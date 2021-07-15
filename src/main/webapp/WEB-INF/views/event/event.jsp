<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>


<section id="portfolio" class="section-bg">
    <div class="container">

        <header class="section-header">
            <h3 class="section-title">Events</h3>
        </header>

        <div style="text-align: center">
        <a href='<c:url value="/addEvent"/>'
           class="btn-right btn btn-success" role="button">Add Event</a>
        </div>


        <div class="row" data-aos-delay="100">
            <div class=" col-lg-12">
                <ul id="portfolio-flters">
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-app">App</li>
                    <li data-filter=".filter-card">Card</li>
                    <li data-filter=".filter-web">Web</li>
                </ul>
            </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

            <c:forEach items="${event}" var="eventEach">

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="<c:url value="${eventEach.img}"/>" class="img-fluid" alt="">
                            <a href="<c:url value="${eventEach.img}"/>" data-lightbox="portfolio"
                               data-title="${eventEach.nameOfEvent}"
                               class="link-preview"><i class="bi bi-plus"></i></a>
                            <a href='<c:url value="/editEvent/${eventEach.id}"/>' class="link-details" title="More Details"><i
                                    class="bi bi-arrow-clockwise"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">${eventEach.nameOfEvent}</a></h4>
                            <p>${eventEach.description}</p>
                        </div>
                    </div>
                </div>


            </c:forEach>
        </div>

    </div>
</section>
<!-- End Portfolio Section -->
<%@include file="../dynamic/footer.jspf" %>
