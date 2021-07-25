<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>


<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form name="send" method="post" action='<c:url value="/addUser"/>' class="box">
                    <h1>Register</h1>
                    <p class="text-muted"> Please enter your email</p>
                    <input type="text" name="email" placeholder="Email">
                    <p class="text-muted"> Please enter your password!</p>
                    <input type="password" name="password" placeholder="Password">
                    <p class="text-muted"> Please enter your nick</p>
                    <input type="text" name="nick" placeholder="Nick">
                    <input type="submit" name="" value="Register">
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file="../dynamic/javaScript.jspf" %>



