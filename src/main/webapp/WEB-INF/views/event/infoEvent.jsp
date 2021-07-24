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

        <div class="row" style="margin-bottom: 20px">
            <div class="col">
                <strong style="color: #18d26e">Name of event: </strong>
                ${event.nameOfEvent}<br>
                <strong style="color: #18d26e">Author: </strong>
                ${event.author.nick}<br>
                <strong style="color: #18d26e">Type: </strong>
                ${event.type}<br>
                <strong style="color: #18d26e">Start date: </strong>
                <fmt:formatDate pattern="yyyy-MM-dd" value="${event.startDate}"/><br>
                <strong style="color: #18d26e">End date: </strong>
                <fmt:formatDate pattern="yyyy-MM-dd" value="${event.endDate}"/><br>
                <strong style="color: #18d26e">Description: </strong>
                ${event.description}

            </div>

            <div class="col">
                <img src="<c:url value="${event.img}"/>" class="img-fluid" alt=""
                     style="width: 400px; height: 400px; border-radius: 8px">
            </div>
        </div>


        <div class="col-lg-3 col-md-6">
            <table class=" table table-light">
                <thead>
                <tr>
                    <th scope="col">Participants: </th>
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