<html>
	<head>
		<title>Ama Bootstarp Website Template | Home :: w3layouts</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		 <script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/theme-style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----font-Awesome----->
   		<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
   		<!----font-Awesome----->
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
		<!----start-slider-script---->
			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });

			    });
			  </script>
			<!----//End-slider-script---->
			<!---- Slider ------>
	 <link rel="stylesheet" href="css/slider.css" type="text/css" />
	<script type="text/javascript" src="js/jquery.cslider.js"></script>
	<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
	<script type="text/javascript">
			$(function() {

				$('#da-slider').cslider({
					autoplay	: true,
					bgincrement	: 450
				});

			});
		</script>
		<script type="text/javascript">
			$(function() {

				$('#da-slider1').cslider({
					autoplay	: true,
					bgincrement	: 450
				});

			});
		</script>
</head>
	<body>
		<!-----start-top-header----->
		<div id="hello" class="top-header">
		<!-- Slideshow 4 -->
			    <div  id="top" class="callbacks_container">
			      <ul class="rslides" id="slider4">
			        <li>
			          <img src="images/slide.jpg" alt="">
			          <div class="caption text-center">
			          	<div class="slide-text-info">
			          		<h1>Capture and Share</h1>
			          		<div class="slide-text-info-btns">
			          			<a class="apple" href="#"><span> </span></a>
			          			<a class="play-btn" href="#"><span> </span></a>
			          		</div>
			          	</div>
			          </div>
			        </li>
			        <li>
			          <img src="images/slide.jpg" alt="">
			          <div class="caption text-center">
			          	<div class="slide-text-info">
			          		<h1>Capture and Share</h1>
			          		<div class="slide-text-info-btns">
			          			<a class="apple" href="#"><span> </span></a>
			          			<a class="play-btn" href="#"><span> </span></a>
			          		</div>
			          	</div>
			          </div>
			        </li>
			        <li>
			          <img src="images/slide.jpg" alt="">
			           <div class="caption text-center">
			           	<div class="slide-text-info">
			          		<h1>Capture and Share</h1>
			          		<div class="slide-text-info-btns">
			          			<a class="apple" href="#"><span> </span></a>
			          			<a class="play-btn" href="#"><span> </span></a>
			          		</div>
			          	</div>
			          </div>
			        </li>
			      </ul>
			    </div>
			    <div class="clear"> </div>
			<!---- //End-slider----->
		<!-----start-conatiner---->
		<div class="container">
			<!-----start-header---->
			<div class="header">
				<div class="container">
				<div class="logo">
					<a href="#">ama</a>
				</div>
				<!----start-top-nav---->
				 <nav class="top-nav">
					<ul class="top-nav">
						<li class="active"><a href="#hello" class="scroll">Hello</a></li>
						<li class="page-scroll"><a href="#over" class="scroll">Overview</a></li>
						<li class="page-scroll"><a href="#share" class="scroll">Share</a></li>
						<li class="page-scroll"><a href="#fea" class="scroll">Servis</a></li>
						<li class="page-scroll"><a href="#gall" class="scroll">Gallery</a></li>
						<li class="contatct-active" class="page-scroll"><a href="#down" class="scroll">Download </a></li>
						<li class="page-scroll"><a href="#comp" class="scroll">Compatibility</a></li>
					</ul>
					<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
				  </nav>

				<div class="clear"> </div>
			</div>
			<!-----//End-header---->
			</div>
			<!-----start-top-header----->
		</div>
		</div>
