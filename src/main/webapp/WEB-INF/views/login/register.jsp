<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>


<div class="container">


    <form action='<c:url value="/addUser"/>' method="post" name="send">
    <div class="row">
        <div class="col-md-6">
            <div class="card">

                    <h1>Login</h1>
                    <p class="text-muted"> Please enter your e-mail</p>
                    <input type="text" name="email" placeholder="Email">
                    <p class="text-muted"> Please enter your password!</p>
                    <input type="password" name="password" placeholder="Password">
                    <p class="text-muted"> Please enter your nick to sow</p>
                    <input type="text" name="nick" placeholder="Nick">

                    <input type="submit" name="" value="Login" >
                    <div class="col-md-12">
                        <ul class="social-network social-circle">
                            <li><a href="#" class="icoFacebook" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#" class="icoTwitter" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#" class="icoGoogle" title="Google +"><i class="fab fa-google-plus"></i></a></li>
                        </ul>
                    </div>

            </div>
        </div>
    </div>
    </form>
</div>