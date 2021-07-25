<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>


<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form method="post" action='<c:url value="/login"/>' class="box">
                    <h1>Login</h1>
                    <p class="text-muted"> Please enter your login and password!</p> <input type="text" name="nick" placeholder="Username">
                    <input type="password" name="password" placeholder="Password">
                    <a class="forgot text-muted" href='<c:url value="/register"/>'>Register in</a>
                    <input type="submit" name="" value="Login">
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file="../dynamic/javaScript.jspf" %>



