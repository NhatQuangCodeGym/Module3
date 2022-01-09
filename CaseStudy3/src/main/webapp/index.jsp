<%--
  Created by IntelliJ IDEA.
  User: macbookprom1
  Date: 29/12/2021
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>This is a WebPage using Bootstrap 4</title>
  <!-- Import Boostrap css, js, font awesome here -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
  </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link href="home/css/style.css" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
  <div class="container-fluid">
    <a class="navbar-branch" href="#">
      <img src="home/images/logo.png" height="80">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarResponsive">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Team</a>
        </li>
        <li class="nav-item" data-toggle="dropdown">
          <a class="nav-link" href="#">Connect"</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- Carousel -->
<div id="slides" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#slides" data-slide-to="0" class="active"></li>
    <li data-target="#slides" data-slide-to="1"></li>
    <li data-target="#slides" data-slide-to="2"></li>
    <li data-target="#slides" data-slide-to="3"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="home/images/IELTS.jpg">
      <!-- <div class="carousel-caption">
          <h1 class="display-2">Example</h1>
          <h3>Autolayout with Boostrap</h3>
          <button type="button" class="btn btn-outline-light btn-lg">
              VIEW TUTORIALS
          </button>
          <button type="button" class="btn btn-primary btn-lg">Get started</button>
      </div> -->
    </div>
    <div class="carousel-item">
      <img src="home/images/ielts-banner.jpg">
    </div>
    <div class="carousel-item">
      <img src="home/images/Basic-Spoken-English-Course-Lets-Talk-English-speaking-Institute-in-Mumbai-Thane.jpg">
    </div>
    <div class="carousel-item">
      <img src="home/images/English course progression.jpeg">
    </div>
  </div>
</div>
<!-- jumbotron -->
<div class="container-fluid">
  <div class="jumbotron">
    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10" >
      <p style="text-align: center;" >Ready for the future</p>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2 mx-auto"  >
      <a href="#">
        <button  type="button" class="btn btn-outline-secondary" >Open at : 7.30 a.m</button>
      </a>
    </div>
  </div>
</div>
<div class="container-fluid padding">
  <div class="row welcome text-center">
    <div class="col-12">
      <h1 class="display-4">Trung tâm Anh Ngữ Mr.Q</h1>
    </div>
    <!-- Horizontal Rule -->
    <hr>
    <div class="col-12">
      <p>Welcome to my institution. This is where you can find yourself confident and helpful</p>
    </div>
  </div>
</div>
<div class="container-fluid padding">
  <div class="row text-center padding">
    <div class="col-xs-12 col-sm-6 col-md-4 ">
      <i class="fab fa-react"></i>
      <h3>FOUNDATION FOR IELTS</h3>
      <p>The ELTS Foundation is a course designed specifically for those who want to take the IELTS test, but their level is still low and basic, at the pre-intermediate level.  </p>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
      <i class="fab fa-angular"></i>
      <h3>English Academy</h3>
      <p>For High-school Students</p>
    </div>
    <div class="col-sm-12 col-md-4">
      <i class="fab fa-css3"></i>
      <h3>CSS3 , HTML5</h3>
      <p>Customize your web UI with Html5 and Css3</p>
    </div>
  </div>
  <hr class="my-4">
</div>
<div class="container-fluid padding">
  <div class="row padding">
    <div class="col-md-12 col-lg-6">
      <h2>If you build it...</h2>
      <p>Arduino is an open-source hardware, software and content platform with a global community. It’s intended for anyone making interactive projects.</p>
      <p>Arduino Education is a dedicated team formed by education experts, content developers, engineers and interaction designers from all around the world</p>
      <br>
    </div>
    <div class="col-lg-6">
      <img src="home/images/laptop.JPG" class="img-fluid">
    </div>
  </div>
</div>
<hr class="my-2">
<button class="fun" data-toggle="collapse" data-target="#emoji">
  Click for fun
</button>
<div id="emoji" class="collapse">
  <div class="container-fluid padding">
    <div class="row text-center">
      <div class="col-sm-6 col-md-3">
        <img class="gif" src="home/images/gif/blinkEyes.gif" width="100" height="100">
      </div>
      <div class="col-sm-6 col-md-3">
        <img class="gif" src="home/images/gif/blinkGirl.gif" width="100" height="100">
      </div>
      <div class="col-sm-6 col-md-3">
        <img class="gif" src="home/images/gif/faceHaha.gif" width="100" height="100">
      </div>
      <div class="col-sm-6 col-md-3">
        <img class="gif" src="home/images/gif/haha.gif" width="100" height="100">
      </div>
    </div>
  </div>
</div>
<div class="container-fluid padding">
  <div class="row welcome text-center">
    <div class="col-12">
      <h1 class="display-4">Meet our staff</h1>
    </div>
  </div>
</div>
<div class="container-fluid padding">
  <div class="row padding">
    <div class="col-md-4">
      <div class="card">
        <img class="card-img-top" src="home/images/QuangLe.jpg" height="500px">
        <div class="card-body">
          <h4 class="card-title">Nhat Quang Le</h4>
          <p class="card-text">Co-Founder of English Mr.Q</p>
          <a href="#" class="btn btn-outline-secondary">See profile</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img class="card-img-top" src="home/images/TrangMember.png" height="500px">
        <div class="card-body">
          <h4 class="card-title">
            Trang Le
          </h4>
          <p class="card-text">Trang Le </p>
          <a href="#" class="btn btn-outline-secondary">See profile</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img class="card-img-top" src="home/images/Natasha.png">
        <div class="card-body">
          <h4 class="card-title">
            Natasha
          </h4>
          <p class="card-text">Natasha is a web designer, she has 5 years of experiences in UI/UX</p>
          <a href="#" class="btn btn-outline-secondary">See profile</a>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="container-fluid padding">
  <div class="row padding">
    <div class="col-md-12 col-lg-6">
      <h2>Our vision</h2>
      <p>All our work is for customer satisfaction with high quality products</p>
      <p>We make outsourcing all softwares relating to CMS, Database, Education</p>
      <br>
    </div>
    <div class="col-lg-6">
      <img src="home/images/mission.jpg" class="img-fluid">
    </div>
  </div>
  <hr class="my-4">
</div>
<div class="container-fluid padding">
  <div class="row text-center padding">
    <div class="col-12">
      <h2>Contact us</h2>
    </div>
    <div class="col-12 social padding">
      <a href="#"><i class="fab fa-facebook"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-google-plus-g"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
      <a href="#"><i class="fab fa-youtube"></i></a>
    </div>
  </div>
</div>
<footer>
  <div class="container-fluid padding">
    <div class="row text-center">
      <div class="col-md-4">
        <img src="home/images/logo.png">
        <hr class="light">
        <p>111-222-3333</p>
        <p>mymail@gmail.com</p>
        <p>Bach Mai street, Hanoi, Vietnam</p>
      </div>
      <div class="col-md-4">
        <hr class="light">
        <h5>Working hours</h5>
        <hr class="light">
        <p>Monday-Friday: 8am - 5pm</p>
        <p>Weekend: 8am - 12am</p>
      </div>
      <div class="col-md-4">
        <hr class="light">
        <h5>Services</h5>
        <hr class="light">
        <p>Outsourcing</p>
        <p>Website development</p>
        <p>Mobile applications</p>
      </div>
      <div class="col-12">
        <hr class="light-100">
        <h5>&copy; WebPro</h5>
      </div>
    </div>
  </div>
</footer>
</body>
</html>

