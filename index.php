<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<head>
	<title>Divisima | eCommerce Template</title>
	<meta charset="UTF-8">
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->
	<!-- <link rel="stylesheet" href="css/bootstrap.min.css"/> -->
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/style.css"/> 
	<link rel="stylesheet" href="css/mycss.css"/> 

	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body >



<?php include 'includes/navbar.php'; ?>
<img class="js_gdexp_lazy js-geshopImg-lazyload js_gbexp_lazy js-rendered" width="1200" height="180" alt="" data-original="https://uidesign.zafcdn.com/ZF/image/624/150%2B.jpg" src="https://uidesign.zafcdn.com/ZF/image/624/150%2B.jpg" data-logsss-browser-value="{ 'pm':'md','p':'p-922','bv':{'cpID':'769675','cpnum':'U000071','cplocation':'1','mdID':'https://uidesign.zafcdn.com/ZF/image/624/150%2B.jpg','cporder':'3','rank':'1'} }" 
			style="margin-left: 45px; margin-right: 0px; vertical-align: top; display: inline;">
			

			<?php
	
	$stmt =  $conn->prepare("SELECT *,MAX(id) FROM products GROUP BY id desc ");
$i=0;
	$stmt->execute();
	echo "
								   
	<section class='hero-section'>
	<div class='hero-slider owl-carousel'>";
	foreach ($stmt as $row) {
		$i=$i+1;
		$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
		echo "
	
	<div class='hs-item set-bg' data-setbg='".$image."'>
				<div class='container'>
					<div class='row'>
						<div class='col-xl-6 col-lg-7 text-white'>
							<span>New Arrivals</span>
							<h2>denim jackets</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
							<a href='#' class='site-btn sb-line'>DISCOVER</a>
							<a href='#' class='site-btn sb-white'>ADD TO CART</a>
						</div>
					</div>
					<div class='offer-card text-white'>
						<span>from</span>
						<h2>$29</h2>
						<p>SHOP NOW</p>
					</div>
				</div>
			</div>
			
		
							   ";
	}
							   
	echo "
								</div>
		<div class='container'>
			<div class='slide-num-holder' id='".$i."'></div>
		</div>
	</section>";					   
	?>

	<!-- Hero section end -->


	<img class="js_gdexp_lazy js-geshopImg-lazyload js_gbexp_lazy js-rendered" width="1200" 
	height="171" alt="" data-original="https://uidesign.zafcdn.com/ZF/image/624/category.jpg" 
	src="https://uidesign.zafcdn.com/ZF/image/624/category.jpg" 
	data-logsss-browser-value="{ 'pm':'md','p':'p-922','bv':{'cpID':'769678','cpnum':'U000071',
	'cplocation':'1','mdID':'https://uidesign.zafcdn.com/ZF/image/624/category.jpg','cporder':'8',
	'rank':'1'} }" 
	style="margin-left: 45px; margin-right: 0px; vertical-align: top; display: inline;">
	


	<section class="content">
	        <div class="row">
	        	<div >
				
					
				<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>
			
			

			
			</b></h3>
	  	</div>
	  	<div class="box-body">
	  		<ul id="trending">
			  
	  		<?php
	  			$now = date('Y-m-d');
	  			$conn = $pdo->open();

	  			$stmt = $conn->prepare("SELECT * FROM Category");
	  			$stmt->execute(['now'=>$now]);
	  			foreach($stmt as $row){
					$image = (!empty($row['image'])) ? 'images/'.$row['image'] : 'images/noimage.jpg';
			
					  echo "
	       							<div class='col-sm-3'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body' style='    height: 325px;
											   width: 288px;'>
		       									<img src='".$image."' width='100%' height='300px' class='thumbnail'>
		       								
												   <li><a 
												   style='color: black;    color: black;
												   font: 25px ProximaNova-Semibold,Arial; margin-left:70px;'  
												   href='category.php?category=".$row['cat_slug']."'>".$row['name']."</a></li>
		       								</div>
		       							
	       								</div>
	       							</div>
	       						";
	  			}

	  			$pdo->close();
	  		?>
	    	<ul>
	  	</div>
	</div>
</div>

				

		       	
						  <ul>
						</div>
								

			</section>


























<img src="images/mostview.jpg" style="margin-left:60px;">
	<!-- letest product section -->
	<section class="content">
	        <div class="row">
	        	<div class="col-sm-9" style="    display: contents;">
				
					
				<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>
			
			

			
			</b></h3>
	  	</div>
	  	<div class="box-body">
	  		<ul id="trending">
			  
	  		<?php
	  			$now = date('Y-m-d');
	  			$conn = $pdo->open();

	  			$stmt = $conn->prepare("SELECT * FROM products WHERE date_view=:now ORDER BY counter DESC LIMIT 10");
	  			$stmt->execute(['now'=>$now]);
	  			foreach($stmt as $row){
					$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
			
					  echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b style='    float: right;'>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	  			}

	  			$pdo->close();
	  		?>
	    	<ul>
	  	</div>

			  
	  		<?php
	  			$now = date('Y-m-d');
	  			$conn = $pdo->open();

	  			$stmt = $conn->prepare("SELECT * FROM products");
	  			$stmt->execute(['now'=>$now]);
	  			echo "
<TABLE BORDER='1'>
<CAPTION> Voici le titre du tableau </CAPTION>
	  			<tr> <th> image </th> <th> slug </th> <th> name </th> </tr>";
	  			foreach($stmt as $row){
			
			
					  echo "<tr><td>".$row['slug']."</td><td>".$row['name']."</td><td>".
		       							$row['price']."</td></tr>";
	       						
	  			}
	  			echo "</table>";

	  			$pdo->close();
	  		?>
	    	

	</div>
</div>

				

		       	
						  <ul>
						</div>
								

			</section>





	<!-- letest product section end -->



	<!-- Product filter section -->

	<!-- Product filter section end -->


	


	<!-- Footer section -->
		<?php include 'includes/footer.php'; ?>
	
	<!-- Footer section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/main.js"></script>

</body>
<script src="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.js" data-cfasync="false"></script>
<script>
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#000"
    },
    "button": {
      "background": "#f1d600"
    }
  }
});
</script>
	        	
</html>