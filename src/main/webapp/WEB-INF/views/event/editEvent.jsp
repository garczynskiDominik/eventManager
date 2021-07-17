<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>

<section id="portfolio" class="section-bg">
    <div class="container">

        <header class="section-header">
            <h3 class="section-title">Edir event ${event.nameOfEvent}</h3>
        </header>



            <form action='<c:url value="/editEvent/${id}"/>' method="post" name="send">
            <div style="margin-bottom: 20px">
                <strong>Name of event</strong>
                <input class="form-control" type="text" name="nameOfEvent" required pattern="\S+" value="${event.nameOfEvent}">
            </div>

            <div class="row" style="margin-bottom: 20px">
                <div class="col">
                    <strong>Start date</strong>
                    <input  id=start class="form-control" type="date" name="startDate"
                           min="<fmt:formatDate pattern="yyyy-MM-dd" value="${now}"/>"
                    value="${event.startDate}">
                </div>
                <div class="col">
                    <strong>End date</strong>
                    <input id="end" class="form-control" type="date" name="endDate"
                           min="<fmt:formatDate pattern="yyyy-MM-dd" value="${now}"/>" value="${event.endDate}">
                </div>
            </div>
            <div style="margin-bottom: 20px">
                <strong>Url img</strong>
                <input class="form-control" type="text" name="img" required pattern="\S+" value="${event.img}">
            </div>

            <div style="margin-bottom: 20px">
                <strong>Description</strong>
                <textarea class="form-control" rows="2" name="description" minlength="20"></textarea>
            </div>

            <div>
                <input class="btn btn-success pull-left" type="submit" value="Save" style="width: 100%"></input>
            </div>

        </form>
        <form name="send" method="POST" action='<c:url value="/deleteEvent/${event.id}"/>'>
            <input type="submit" class="btn btn-danger pull-left" style="width: 100%"
                   name="delete" value="Delete"/>

        </form>
    </div>

</section>

<script>
    var start = document.getElementById('start');
    var end = document.getElementById('end');

    start.addEventListener('change', function() {
        if (start.value)
            end.min = start.value;
    }, false);
    end.addEventListener('change', function() {
        if (end.value)
            start.max = end.value;
    }, false);
</script>

<!-- End Portfolio Section -->
<%@include file="../dynamic/footer.jspf" %>
