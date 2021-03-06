<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>


<section id="portfolio" class="section-bg">
    <div class="container">
        <header class="section-header">
            <h3 class="section-title">Events</h3>
        </header>
        <div style="text-align: center">
            <sec:authorize access="isAuthenticated()">
                <a href='<c:url value="/event/addEvent"/>'
                   class="btn-right btn btn-success" role="button">Add Event</a>
            </sec:authorize>
        </div>
        <br>
        <div style="text-align: center">
            <form action='<c:url value="/event/search/${value}"/>' method="get">
                <input type="text" name="value"
                       style="height: 37px; vertical-align: middle; border-color: #18d26e; border-radius: 0.25rem">
                <input class="btn-right btn btn-success" type="submit" value="Search">
            </form>
        </div>
        <br>
        <div class="row portfolio-container">
            <c:forEach items="${event}" var="eventEach">
                <div class="col-lg-4 col-md-6 portfolio-item filter-${eventEach.type}">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="<c:url value="${eventEach.img}"/>" class="img-fluid" alt="">
                            <sec:authorize access="hasRole('ADMIN')">
                                <a href='<c:url value="/event/editEvent/${eventEach.id}"/>' class="link-details"
                                   title="Edit"><i
                                        class="bi bi-hammer"></i></a>
                            </sec:authorize>
                        </figure>
                        <div class="btn-right btn btn-success" role="banner">
                                ${eventEach.type}
                        </div>
                        <sec:authorize access="isAuthenticated()">
                            <a href='<c:url value="/event/saveOnEvent/${eventEach.id}"/>' class="link-details"
                               title="Sign In"><i class="bi bi-plus-circle"></i></a>
                            <a href='<c:url value="/event/deleteFromEvent/${eventEach.id}"/>' class="link-details"
                               title="Sign Off"><i class="bi bi-calendar-minus"></i></a>
                        </sec:authorize>
                        <div class="portfolio-info">
                            <h4><a href='<c:url value="/event/infoEvent/${eventEach.id}"/>'>${eventEach.nameOfEvent}</a>
                            </h4>
                            <h4><fmt:formatDate pattern="yyyy-MM-dd" value="${eventEach.startDate}"/> - <fmt:formatDate
                                    pattern="yyyy-MM-dd" value="${eventEach.endDate}"/></h4>
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
