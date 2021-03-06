<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>

<section id="portfolio" class="section-bg">
    <div class="container">
        <header class="section-header">
            <h3 class="section-title">Add new event</h3>
        </header>
        <form method="post" action='<c:url value="/event/addEvent"/>'>
            <div style="margin-bottom: 20px">
                <strong>Name of event</strong>
                <input class="form-control" type="text" name="nameOfEvent" required>
                <strong>Type</strong>
                <input class="form-control" type="text" name="type" required>
            </div>
            <div class="row" style="margin-bottom: 20px">
                <div class="col">
                    <strong>Start date</strong>
                    <input  id=start class="form-control" type="date" name="startDate"
                           min="<fmt:formatDate pattern="yyyy-MM-dd" value="${now}"/>">
                </div>
                <div class="col">
                    <strong>End date</strong>
                    <input id="end" class="form-control" type="date" name="endDate"
                           min="<fmt:formatDate pattern="yyyy-MM-dd" value="${now}"/>">
                </div>
            </div>
            <div style="margin-bottom: 20px">
                <strong>Image URL</strong>
                <input class="form-control" type="text" name="img" required pattern="\S+">
            </div>
            <div style="margin-bottom: 20px">
                <strong>Description</strong>
                <textarea class="form-control" rows="2" name="description" minlength="20" maxlength="255"></textarea>
            </div>
            <div>
                <input class="btn btn-success pull-left" type="submit" value="Add" style="width: 100%">
            </div>
        </form>
    </div>
</section>
<!-- End Portfolio Section -->
<%@include file="../dynamic/footer.jspf" %>
