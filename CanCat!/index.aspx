<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CanCat_.index" %>

<!DOCTYPE html>
<html>
<head>
    <title>CanCat!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="icon" href="../img/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e988bbf4e5.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <p class="mb-0 phone pl-md-2">
                        <a href="https://localhost:44345/index.aspx"><span class="fa-solid fa-globe"></span> Traducir</a>
                        <a href="contact.aspx"><span class="fa fa-paper-plane mr-1"></span> Contacts</a>
                        <a href="login.aspx"><span class="fa-solid fa-user-lock"></span>Log in</a>
                    </p>
                </div>
                <div class="col-md-6 d-flex justify-content-md-end">
                    <div class="social-media">
                        <p class="mb-0 d-flex">
                            <a href="https://www.facebook.com/profile.php?id=100084350307084" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                            <a href=" https://twitter.com/CancatV" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                            <a href=" https://www.instagram.com/cancatvetpet/" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
                
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand"><span class="flaticon-pawprint-1 mr-2"></span>CanCat!</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="vet.aspx" class="nav-link">Vet</a></li>
                    <li class="nav-item"><a href="services.aspx" class="nav-link">Services</a></li>
                    <li class="nav-item"><a href="gallery.aspx" class="nav-link">Gallery</a></li>
                    <li class="nav-item"><a href="Tienda.aspx" class="nav-link">Store</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-11 ftco-animate text-center">
                    <h1 class="mb-4"> Your pet always in the BEST HANDS </h1>
                    <p><a href="about.aspx" class="btn btn-primary mr-md-4 py-3 px-4">Lear more<span class="ion-ios-arrow-forward"></span></a></p>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section bg-light ftco-no-pt ftco-intro">
        <div class="container">
            <div class="row">
                <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
                    <div class="d-block services text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="flaticon-blind"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Pet Walk</h3>
                            <p>A recreational service for pets is offered, after an aesthetic service an additional cost is not added, the individual price of the service is $5.</p>
                            <a href="pricing.aspx" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Learn More</i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
                    <div class="d-block services text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="flaticon-dog-eating"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading"> Veterinary Service </h3>
                            <p>CanCat offers basic pet care services, if it is not possible to attend to your pet, you will be provided with the contact of an affiliated veterinarian..</p>
                            <a href="pricing.aspx" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Learn More</i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
                    <div class="d-block services text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="flaticon-grooming"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Pet Grooming</h3>
                            <p>CanCat provides grooming services for pets, including bathing, nail trimming, hair trimming, dental grooming, and deworming..</p>
                            <a href="pricing.aspx" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Learn More</i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row d-flex no-gutters">
                <div class="col-md-5 d-flex">
                    <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0" style="background-image:url(images/GatoDoctor.png);">
                    </div>
                </div>
                <div class="col-md-7 pl-md-5 py-md-5">
                    <div class="heading-section pt-md-5">
                        <h2 class="mb-4">Why choose Cancat?</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-stethoscope"></span></div>
                            <div class="text pl-3">
                                <h4>Care Tips</h4>
                                <p>Cancat offers a wide amount of information about multiple breeds and species of animals, in order to improve the quality of life of your pets and improve the pet-owner relationship.</p>
                            </div>
                        </div>
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-customer-service"></span></div>
                            <div class="text pl-3">
                                <h4> Customer Support </h4>
                                <p>Cancat supports its clients full time and we are always attentive to their doubts, always ready to help their pets.</p>
                            </div>
                        </div>
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-emergency-call"></span></div>
                            <div class="text pl-3">
                                <h4>Emergency Services</h4>
                                <p>CanCat has emergency services 24 hours a day, every day of the year, including home service if it is not possible to transfer the pet in question to a branch.</p>
                            </div>
                        </div>
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-veterinarian"></span></div>
                            <div class="text pl-3">
                                <h4>Veterinary help</h4>
                                <p>Cancat provides excellent care for your pets, as we have a wide variety of medications, in addition to an excellent team of experts, willing to give all their efforts for the well-being of your pets.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-counter" id="section-counter">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="20">0</strong>
                        </div>
                        <div class="text">
                            <span>Customers</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="50">0</strong>
                        </div>
                        <div class="text">
                            <span>Professionals</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="60">0</strong>
                        </div>
                        <div class="text">
                            <span>Products</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="35">0</strong>
                        </div>
                        <div class="text">
                            <span>Housed Pets</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light ftco-faqs">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 order-md-last">
                    <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0" style="background-image:url(images/about.jpg);">
                        <a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
                            <span class="fa fa-play"></span>
                        </a>
                    </div>
                    <div class="d-flex mt-3">
                        <div class="img img-2 mr-md-2" style="background-image:url(images/about-2.jpg);"></div>
                        <div class="img img-2 ml-md-2" style="background-image:url(images/about-3.jpg);"></div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="heading-section mb-5 mt-5 mt-lg-0">
                        <h2 class="mb-3">Frequent questions</h2>
                        <p>In this brief space, Cancat will solve some of the most frequently asked questions that our clients usually ask, in order to be able to help you as soon as possible.</p>
                    </div>
                    <div id="accordion" class="myaccordion w-100" aria-multiselectable="true">
                        <div class="card">
                            <div class="card-header p-0" id="headingOne" role="tab">
                                <h2 class="mb-0">
                                    <button href="#collapseOne" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseOne">
                                        <p class="mb-0">What can I do if my pet has fleas?</p>
                                        <i class="fa" aria-hidden="true"></i>
                                    </button>
                                </h2>
                            </div>
                            <div class="collapse show" id="collapseOne" role="tabpanel" aria-labelledby="headingOne">
                                <div class="card-body py-3 px-0">
                                    <ol>
                                        <li>Flea shampoo works just like regular shampoo. You will only have to apply it and let it act for 5 minutes or the time indicated by the manufacturer. Then rinse with water and brush to remove all the fleas that have remained in the hair.</li>
                                        <li>The spray is a fast, effective and very easy to apply treatment, with an immediate effect. You just have to spray and massage well to distribute it throughout the coat. This is the best option for very large infestations. We recommend bathing your dog afterward so that all the dead fleas fall off, as well as to remove the feces and dirt they leave on the skin. Ideally, if your dog has a large number of fleas, you should first use a spray to eliminate all the possible ones and, later, a pipette in case there are any left and as a preventive measure.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header p-0" id="headingTwo" role="tab">
                                <h2 class="mb-0">
                                    <button href="#collapseTwo" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseTwo">
                                        <p class="mb-0">What food should my pet not eat?</p>
                                        <i class="fa" aria-hidden="true"></i>
                                    </button>
                                </h2>
                            </div>
                            <div class="collapse" id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="card-body py-3 px-0">
                                    <ul>
                                        <li>
                                        <p>In the case of dogs you must avoid at all costs that he consumes these foods:</p>
                                        <p>Avocado, Onion, Coffee, chocolate and raw eggs</p>
                                        <p>When we talk about cats we should not give them:</p>
                                        <p>Onions, garlic, raw eggs, raw meat, bones, Chocolate and caffeinated beverages </p>
                                        <p>Parrots and some kinds of small birds should be prevented from consuming:</p>
                                        <p>Crackers or bread, avocado, rhubarb, onions, garlic, mushrooms, asparagus, eggplant or chocolate. In general, you should avoid feeding them salty, sugary, fried foods or foods containing theine, caffeine or alcohol. </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header p-0" id="headingThree" role="tab">
                                <h2 class="mb-0">
                                    <button href="#collapseThree" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseThree">
                                        <p class="mb-0">How often should I groom my pet?</p>
                                        <i class="fa" aria-hidden="true"></i>
                                    </button>
                                </h2>
                            </div>
                            <div class="collapse" id="collapseThree" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="card-body py-3 px-0">
                                    <ol>
                                        <li>How often to bathe a dog will depend a little on each animal, the state of its health, its breed or if it tends to bad odor, but it is advisable not to bathe it more than once a month. Even twice a year would be enough in some cases.</li>
                                        <li>If your cat does not usually go outdoors, a monthly washing frequency is sufficient. It is also true that if you get your cat used to bathing from the time it is a kitten (from 2 months of age), contact with water should not necessarily be unpleasant for it.</li>
                                        <li>Don't forget to give your parrot a bath at least three or four times a week, making sure it has a place where there is a medium temperature and no drafts.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section" style="background-image: url('images/bg_2.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-center pb-5 mb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <h2>happy customers &amp; coments</h2>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

     <%--Blog--%>

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-center pb-5 mb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <h2>Latest blog news</h2>
                </div>
            </div>
            <div class="row d-flex">
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_1.jpg');">
                        </a>
                        <div class="text p-4">
                            <div class="meta mb-2">
                                <div><a href="#">April 07, 2020</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_2.jpg');">
                        </a>
                        <div class="text p-4">
                            <div class="meta mb-2">
                                <div><a href="#">April 07, 2020</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_3.jpg');">
                        </a>
                        <div class="text p-4">
                            <div class="meta mb-2">
                                <div><a href="#">April 07, 2020</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                    <h2 class="footer-heading">Pet Care</h2>
                    <p>In CanCat we care for the health and proper nutrition of pets, due to our commitment to owners and their pets we provide information on the basic care that animals need so they can live more placidly and for much longer.</p>
                    <ul class="ftco-footer-social p-0">
                        <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="fa fa-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="fa fa-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="fa fa-instagram"></span></a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                    <h2 class="footer-heading">Lastest news</h2>
                    <div class="block-21 mb-4 d-flex">
                        <a class="img mr-4 rounded" style="background-image: url(images/image_1.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex">
                        <a class="img mr-4 rounded" style="background-image: url(images/image_2.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 pl-lg-5 mb-4 mb-md-0">
                    <h2 class="footer-heading">Quick Links</h2>
                    <ul class="list-unstyled">
                        <li><a href="index.aspx" class="py-2 d-block">Home</a></li>
                        <li><a href="vet.aspx" class="py-2 d-block">Vet</a></li>
                        <li><a href="services.aspx" class="py-2 d-block">Services</a></li>
                        <li><a href="gallery.aspx" class="py-2 d-block">Gallery</a></li>
                        <li><a href="contact.aspx" class="py-2 d-block">Contacts</a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                    <h2 class="footer-heading">Do you have any questions?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                             <li><span class="icon fa fa-map"></span><span class="text">Calle Don Bosco y Av. Manuel Gallardo, 1-1, Santa Tecla</span></li>
                            <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+503 7752 5337</span></a></li>
                            <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">cancat.veterinaria.sv@gmail.com</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-12 text-center">

                    <p class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                       <script>document.write(new Date().getFullYear());</script>this model was manufactured by<i class="fa fa-heart" aria-hidden="true"></i> por <a href="https://santacecilia.edu.sv" target="_blank">Colegio Salesiano Santa Cecilia</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>


    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>



</body>
</html>
