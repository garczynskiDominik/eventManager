<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<%@include file="../dynamic/navBar.jspf" %>


<section id="portfolio" class="section-bg">
    <div class="container" data-aos="fade-up">

        <header class="section-header">
            <h3 class="section-title">Events</h3>
        </header>

        <div style="text-align: center">
        <a href='<c:url value="/addEvent"/>'
           class="btn-right btn btn-success" role="button">Add Event</a>
        </div>

        <div class="row" data-aos-delay="100">
            <div class=" col-lg-12">
                <ul id="portfolio-flters">
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-app">App</li>
                    <li data-filter=".filter-card">Card</li>
                    <li data-filter=".filter-web">Web</li>
                </ul>
            </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

            <c:forEach items="${event}" var="eventEach">

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="<c:url value="../resources/img/portfolio/app1.jpg"/>" class="img-fluid" alt="">
                            <a href="<c:url value="../resources/img/portfolio/app1.jpg"/>" data-lightbox="portfolio"
                               data-title="${eventEach.nameOfEvent}"
                               class="link-preview"><i class="bi bi-plus"></i></a>
                            <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                    class="bi bi-link"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">${eventEach.nameOfEvent}</a></h4>
                            <p>${eventEach.description}</p>
                        </div>
                    </div>
                </div>

            </c:forEach>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/web3.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/web3.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="Web 3"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">Web 3</a></h4>
                        <p>Web</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/app2.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/app2.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="App 2"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">App 2</a></h4>
                        <p>App</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/card2.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/card2.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="Card 2"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">Card 2</a></h4>
                        <p>Card</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/web2.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/web2.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="Web 2"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">Web 2</a></h4>
                        <p>Web</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/app3.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/app3.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="App 3"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">App 3</a></h4>
                        <p>App</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/card1.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/card1.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="Card 1"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">Card 1</a></h4>
                        <p>Card</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/card3.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/card3.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="Card 3"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">Card 3</a></h4>
                        <p>Card</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                <div class="portfolio-wrap">
                    <figure>
                        <img src="../resources/img/portfolio/web1.jpg" class="img-fluid" alt="">
                        <a href="../resources/img/portfolio/web1.jpg" class="link-preview portfolio-lightbox"
                           data-gallery="portfolioGallery" title="Web 1"><i class="bi bi-plus"></i></a>
                        <a href="portfolio-details.html" class="link-details" title="More Details"><i
                                class="bi bi-link"></i></a>
                    </figure>

                    <div class="portfolio-info">
                        <h4><a href="portfolio-details.html">Web 1</a></h4>
                        <p>Web</p>
                    </div>
                </div>
            </div>

        </div>

    </div>
</section>
<!-- End Portfolio Section -->
<%@include file="../dynamic/footer.jspf" %>
