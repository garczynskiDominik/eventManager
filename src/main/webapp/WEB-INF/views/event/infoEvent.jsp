<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>

<section id="portfolio" class="section-bg">
    <div class="container">

        <header class="section-header">
            <h3 class="section-title">${event.nameOfEvent}</h3>
        </header>

        <div style="margin-bottom: 20px">
            <strong>Name of event</strong>
            ${event.nameOfEvent}
        </div>
        <div style="margin-bottom: 20px">
            <strong>Type</strong>
            ${event.type}
        </div>

        <div class="row" style="margin-bottom: 20px">
            <div class="col">
                <strong>Start date</strong>
                ${event.startDate}
            </div>
            <div class="col">
                <strong>End date</strong>${event.endDate}
            </div>
        </div>
        <div style="margin-bottom: 20px">
            <strong>Url img</strong>
            ${event.img}
        </div>

        <div style="margin-bottom: 20px">
            <strong>Description</strong>
            ${event.description}
        </div>
    </div>


    <div class="col-lg-3 col-md-6">
        <table class=" table table-light">
            <thead>
            <tr>
                <th scope="col">Email</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${event.users}" var="eventEach">
                <tr>
                    <td>${eventEach.email}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

<%--    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">--%>
<%--    <hr>--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>

<%--            <div class="media">--%>
<%--                <div class="media-left">--%>
<%--                    <img src="http://fakeimg.pl/50x50" class="media-object" style="width:40px">--%>
<%--                </div>--%>
<%--                <div class="media-body">--%>
<%--                    <h4 class="media-heading title">Fahmi Arif</h4>--%>
<%--                    <p class="komen">--%>
<%--                        kalo bisa ya ndak usah gan biar cepet<br>--%>
<%--                        <a href="#">reply</a>--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="geser">--%>
<%--                <div class="media">--%>
<%--                    <div class="media-left">--%>
<%--                        <img src="http://fakeimg.pl/50x50" class="media-object" style="width:40px">--%>
<%--                    </div>--%>
<%--                    <div class="media-body">--%>
<%--                        <h4 class="media-heading title">Fahmi Arif</h4>--%>
<%--                        <p class="komen">--%>
<%--                            kalo bisa ya ndak usah gan biar cepet<br>--%>
<%--                            <a href="#">reply</a>--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>


<%--        </div>--%>
<%--    </div>--%>

</section>

<script>
    var start = document.getElementById('start');
    var end = document.getElementById('end');

    start.addEventListener('change', function () {
        if (start.value)
            end.min = start.value;
    }, false);
    end.addEventListener('change', function () {
        if (end.value)
            start.max = end.value;
    }, false);
</script>

<!-- End Portfolio Section -->
<%@include file="../dynamic/footer.jspf" %>