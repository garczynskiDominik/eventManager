<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>


<section id="hero">
    <div class="hero-container">
        <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
            <ol id="hero-carousel-indicators" class="carousel-indicators"></ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active" style="background-image: url(/resources/img/hero-carousel/main.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">Welcome to our website</h2>
                            <p class="animate__animated animate__fadeInUp">Here you will find many interesting events
                                that you can participate in.</p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(/resources/img/hero-carousel/2.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">At vero eos et accusamus</h2>
                            <p class="animate__animated animate__fadeInUp">Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p>
                            <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(/resources/img/hero-carousel/3.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">Temporibus autem quibusdam</h2>
                            <p class="animate__animated animate__fadeInUp">Beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt omnis iste natus error sit voluptatem accusantium.</p>
                            <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(/resources/img/hero-carousel/4.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">Nam libero tempore</h2>
                            <p class="animate__animated animate__fadeInUp">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum.</p>
                            <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(/resources/img/hero-carousel/5.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">Magnam aliquam quaerat</h2>
                            <p class="animate__animated animate__fadeInUp">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            <a href="#featured-services" class="btn-get-started scrollto animate__animated animate__fadeInUp">Get Started</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>