<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>



<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>펫츠하우스</title>

<style>
#social ul li {
	display: inline;
}
</style>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

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

</head>

<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<!-- Register Section Begin -->
	<div class="register-login-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="login-form">
						<h2>
							<img src="/resources/img/logo.png" width="270px" height="70px">
						</h2>
						<br>

						<form action="/login/login-processing" method='POST'>
							<%-- <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> --%>
							<div class="group-input">
								<label for="username">이메일</label> <input type="text"
									class="form-control" id="id" name="id" placeholder="Email">
							</div>
							<div class="group-input">
								<label for="pass">비밀번호</label> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="Password">
							</div>
							<div class="group-input gi-check">
								<div class="gi-more">
									<label for="save-id"> 아이디 기억하기 <input type="checkbox"
										id="save-id" name="remember-me"> <span
										class="checkmark"></span>
									</label> <a href="#" class="forget-pass">Forget your Password</a>
								</div>
							</div>
							<button type="submit" class="site-btn login-btn">로그인</button>
						</form>
						<div class="switch-login">
							<a href="/login/register" class="or-login">회원가입</a>
						</div>

						<hr>

						<div id="social" class="row text-center" style="margin: 20px">
							<div style="width: 100%; float: none; margin: 0 auto">
								<p style="font-size: 9pt; font-weight: bold;">sns계정으로 간편
									로그인/회원가입</p>

								<ul>

									<li class="col-sm"><a href="/oauth2/authorization/google"><img
											src="/resources/logo/google.png" width="48px" height="48px"></a></li>

									<li class="col-sm"><a href="#"><img
											src="/resources/logo/kakao.png" width="48px" height="48px"></a></li>
									<li class="col-sm"><a href="#"><img
											src="/resources/logo/naver.png" width="48px" height="48px"></a></li>
								</ul>
							</div>

						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Form Section End -->

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		<c:if test="${not empty msg}">
		alert("${msg}");
		</c:if>
	});
</script>
<!-- Js Plugins -->
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
</html>