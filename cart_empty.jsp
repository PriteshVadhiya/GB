<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Guidance Boutique :: Cart</title>
    <link href="include/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
    <link href="include/css/ionicons.min.css" rel="stylesheet" type="text/css">
    <link href="include/css/animsition.min.css" rel="stylesheet" type="text/css">
    <link href="include/css/slick.css" rel="stylesheet" type="text/css">
    <link href="include/css/slick-theme.css" rel="stylesheet" type="text/css">
    <link href="include/css/style.css" rel="stylesheet" type="text/css">
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body class="home">
<!-- LOADER  -->
<div id="loading">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <div class="object" id="object_one"></div>
            <div class="object" id="object_two"></div>
            <div class="object" id="object_three"></div>
        </div>
    </div>
</div>
<div class="animsition">
<!--header start-->
 <jsp:include page="header.jsp"/>
  <!--header end-->
  
  <!--banner-container start-->
    <div class="inner-banner-container" style="background-image:url(include/images/banner15.jpg)">
  		<div class="banner-title">
        	<h1>CART</h1>
            <h2>Collect your Choices</h2>
        </div>
  </div>
  <!--banner-container end-->
  
 
  
  <!-- inner container start -->
  <div class="inner-container" >
 		<div class="container">
        	<div class="row mar-60">
                 <div class="col-md-12 col-sm-12">
                 	<h5>Your cart is currently empty.</h5>
                    <p><a href="shop-list.html" class="btn btn-primary btn-xs"><i class="ion ion-ios-undo"></i> Return to Shop</a></p>
                    
                  

                 </div>
			 </div>
        </div>
  </div>
  <!-- inner container end -->
    
    
<!--bottom container start-->
<div class="bottom-container">
	<div class="container">
    	<div class="row">
        	<div class="col-sm-12">
            	<div class="bottom-content">
                    <h2>WANT TO DISCUSS ?</h2>
                    <p><a href="contact-us.html" class="btn btn-primary">LET'S TALK</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--bottom container end-->

 
<!--footer start-->
 <jsp:include page="footer.jsp"/>
  <!--footer end-->
	</div>
	<script type="text/javascript" src="include/js/jquery.min.js"></script>
    <script type="text/javascript" src="include/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="include/js/animsition.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script type="text/javascript" src="include/js/slick.js"></script>  
    <script type="text/javascript" src="include/js/jquery.countTo.js"></script>  
    <script type="text/javascript" src="include/js/scroll.js"></script> 
    <script type="text/javascript" src="include/js/imagesloaded.js"></script>
    <script type="text/javascript" src="include/js/masonry-3.1.4.js"></script>
    <script type="text/javascript" src="include/js/masonry.filter.js"></script> 
    <script type="text/javascript" src="include/js/jquery.vide.js"></script>
    <script type="text/javascript" src="include/js/custom.js"></script> 

  </body>
</html>