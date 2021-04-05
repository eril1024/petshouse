<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>펫츠하우스</title>
<script src="/resources/ckeditor/ckeditor.js"></script>
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


<!-- bootstrap css cdn -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	type="text/css" />

<!-- jquery cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/css/select-style.css"
	type="text/css">
<link rel="stylesheet" href="/resources/js/select-index.js"
	type="text/css">

<style>
.jumbotron {
	text-align: center;
}

.qcontent {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 1000px;
	height: 20px;
}

a:link {
	text-decoration: none;
	color: #333333;
}

a:visited {
	text-decoration: none;
	color: #333333;
}

a:active {
	text-decoration: none;
	color: #333333;
}

a:hover {
	text-decoration: none;
}

select {
	width: 100px; /* 원하는 너비설정 */
	padding: .4em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	background: url('이미지 경로') no-repeat 95% 50%;
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border-radius: 5px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}
</style>

</head>

<body>
	<!-- Header -->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<div class="container" style="width: 800px;">

		

		<form action="${pageContext.request.contextPath}/commu/tips" enctype="multipart/form-data" method="post">
		
			<input type="hidden" class="form-control" name="memberVO.member_id" value="<sec:authentication property='name'/>">
			<h2 style="margin-top: 30px;">노하우</h2>
			
			
			<select name="categoryVO.category_id"
			style="vertical-align: middle; text-align-last: center">
			
			<option value="1">고양이</option>
			<option value="2">강아지</option>
			<option value="3">파충류</option>
			<option value="4">조류</option>
			<option value="5">어류</option>
			<option value="6">기타</option>
			</select>
	
    <input type="file" name="file" multiple="multiple"/>
   

			<input type="text" class="form-control" name="title" placeholder="제목"
				style="margin-top: 30px; margin-bottom: 20px;">
	
			

			 <textarea id="editor4" name="content"></textarea>

			<script>
					CKEDITOR.replace('editor4');
				</script>  
					<div id='ui-widget'>
					
					<input type="text" class="form-control" name="hashtag" placeholder="태그를 입력해주세요 (최대 5개)"
				style="margin-top: 30px; margin-bottom: 20px;">
				

			</div>

			<button type="submit" class="btn btn-warning float-right"
				style="float: right; margin-top: 30px;"
				onclick="location.href='${pageContext.request.contextPath}/commu/tips'">노하우
				등록</button>

		</form>
	</div>

	

	<!-- Footer -->
	<div style="margin-top: 100px">
		<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	</div>


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

</body>
</html>
