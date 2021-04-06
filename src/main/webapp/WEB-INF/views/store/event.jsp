<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
   content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>event</title>

<!-- bootstrap css cdn -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   type="text/css" />
<!-- Css Styles -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/themify-icons.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/elegant-icons.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/nice-select.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/jquery-ui.min.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/slicknav.min.css"
   type="text/css">
<link rel="stylesheet" href="/resources/css/style.css" type="text/css">
<!-- jquery cdn -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

   <script type="text/javascript" src="/resources/js/jquery-1.11.3.min.js"></script> 
   <script type="text/javascript" src="/resources/js/jQueryRotateCompressed.js"></script> 
   <style> 
  	 #image{ 
  	 	margin:50px 50px;z-index:10; 
  	 } 
  	 #n_id{
  	 	position:absolute;left:286px;top:75px;z-index:20;} 
   </style> 
 


  </head> 
<body>
   <!-- header -->
   <%@ include file="/WEB-INF/views/include/header.jsp"%>
 
   
   <img src="/resources/img/goods/roulette.png" id="image">
   <img src="/resources/img/goods/niddle.png" id="n_id"> <br /> 
   <input type='button' value='시작' id='start_btn'></input> 
   <div id="result_id"></div> 
   <div id="result_id2"></div>
<div id="result_id3"></div> 

	<script>
window.onload = function(){ 
	var pArr = ["0","1","2","3","4:꽝","5","6","7","8","9"]; 
	$('#start_btn').click(function(){ 
		rotation(); 
	}); 
	function rotation(){ 
		$("#image").rotate({ 
			angle:0, 
			animateTo:360 * 5 + randomize(0, 360), 
			center: ["50%", "50%"], 
			easing: $.easing.easeInOutElastic, 
			callback: function(){ 
				var n = $(this).getRotateAngle(); 
				endAnimate(n); 
				}, 
			duration:5000 
		}); 
	} 
	
	function endAnimate($n){ 
		var n = $n; 
		$('#result_id').html("<p>움직인각도:" + n + "</p>"); 
		var real_angle = n%360 +18; 
		var part = Math.floor(real_angle/36); 
		
		$('#result_id2').html("<p>상품범위:" + part + "</p>"); 
		
		if(part < 1){ 
			$('#result_id3').html("<p>당첨내역:" + pArr[0] + "</p>"); 
			return; 
		} 
		
		if(part >= 10){ 
			$('#result_id3').html("<p>당첨내역:" + pArr[pArr.length-1] + "</p>"); 
			return; 
		} $('#result_id3').html("<p>당첨내역:" + pArr[part] + "</p>"); } function randomize($min, $max){ return Math.floor(Math.random() * ($max - $min + 1)) + $min; } }; 
		</script> 

 
 
   <!-- Footer -->
   <%@ include file="/WEB-INF/views/include/footer.jsp"%>

   <!-- Bootstrap core JavaScript -->
   <script src="/resources/store/vendor/jquery/jquery.min.js"></script>
   <script
      src="/resources/store/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="/resources/js/jquery-3.3.1.min.js"></script>
   <script src="/resources/js/bootstrap.min.js"></script>
   <script src="/resources/js/jquery-ui.min.js"></script>
   <script src="/resources/js/jquery.countdown.min.js"></script>
   <script src="/resources/js/jquery.nice-select.min.js"></script>
   <script src="/resources/js/jquery.zoom.min.js"></script>
   <script src="/resources/js/jquery.dd.min.js"></script>
   <script src="/resources/js/jquery.slicknav.js"></script>
   <script src="/resources/js/owl.carousel.min.js"></script>
   <script src="/resources/js/main.js"></script>
</body>
</html>

