<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>


<section id="portfolio" class="section-bg">
    <div class="container">

        <header class="section-header">
            <h3 class="section-title">Events</h3>
        </header>

        <div style="text-align: center">
            <sec:authorize access="hasRole('ADMIN')">
                <c:forEach items="${event}" var="title">
                    <a href='<c:url value="/event/addEvent"/>'
                       class="btn-right btn btn-success" role="button">Add Event</a>
                </c:forEach>
            </sec:authorize>
        </div>


        <div class="row">
            <div class=" col-lg-12">
                <ul id="portfolio-flters">
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-app">App</li>
                    <li data-filter=".filter-card">Card</li>
                    <li data-filter=".filter-web">Web</li>
                </ul>
            </div>
        </div>

        <div class="row portfolio-container">

            <c:forEach items="${event}" var="eventEach">

                <div class="col-lg-4 col-md-6 portfolio-item filter-${eventEach.type}">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="<c:url value="${eventEach.img}"/>" class="img-fluid" alt="">

                            <a href='<c:url value="/event/editEvent/${eventEach.id}"/>' class="link-details"
                               title="More Details"><i
                                    class="bi bi-arrow-clockwise"></i></a>
                            <a href='<c:url value="/event/editEvent/${eventEach.id}"/>' class="link-details"
                               title="Edit"><i
                                    class="bi bi-hammer"></i></a>
                        </figure>
                        <div class="btn-right btn btn-success" role="banner">
                                ${eventEach.type}
                        </div>


                        <div class="portfolio-info">
                            <h4><a href='<c:url value="/event/infoEvent/${eventEach.id}"/>'>${eventEach.nameOfEvent}</a>
                            </h4>
                            <h4><a href="portfolio-details.html">${eventEach.type}</a></h4>
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
