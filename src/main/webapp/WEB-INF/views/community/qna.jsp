<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>펫츠하우스</title>

<!-- bootstrap css cdn -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	type="text/css" />

<!-- jquery cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>

.jumbotron {
	text-align: center;
}

.qcontent{
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  width: 1000px;
  height: 20px;
}

a:link {text-decoration: none; color: #333333;}
a:visited {text-decoration: none; color: #333333;}
a:active {text-decoration: none; color: #333333;}
a:hover {text-decoration:none;}
</style>


</head>

<body>
	<!-- Header -->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>


	<div class="container">
		<div class="jumbotron">
			<h3 class="display-5">무엇이든 물어보세요!</h3>
			<hr class="my-4">


			<div class="questions-header__form__search col">
				<span class="icon icon-etc-find-sm-gray-dark search"
					aria-hidden="true"></span> <span
					class="icon icon-pointer-x-bold-gray clear clear-inactive hide"
					aria-hidden="false" role="button"></span> <span
					class="icon icon-pointer-x-bold-dark clear clear-active hide"
					aria-hidden="false" role="button"></span> <input type="text"
					name="query" id="questions-header__form__search" value=""
					class="form-control" style="text-align: center; height: 60px;"
					placeholder="내 반려동물에 대한 모든 궁금증!" autocomplete="off">
			</div>

		</div>
	</div>

	<!-- 동물 카테고리, 정렬, 글쓰기 버튼 -->
	<div class="container" style="padding-bottom: 30px;">
	
		<!-- 정렬 카테고리 -->
		<div class="btn-group" role="group"
			aria-label="Button group with nested dropdown">
			<button type="button" class="btn btn-primary">최신순</button>
			<div class="btn-group" role="group">
				<button id="btnGroupDrop1" type="button"
					class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"></button>
				<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
					<a class="dropdown-item" href="#">Dropdown link</a> <a
						class="dropdown-item" href="#">Dropdown link</a>
				</div>
			</div>
		</div>
		
		<!-- 동물 카테고리 -->
		<div class="btn-group" role="group"
			aria-label="Button group with nested dropdown">
			<button type="button" class="btn btn-primary">강아지</button>
			<div class="btn-group" role="group">
				<button id="btnGroupDrop1" type="button"
					class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"></button>
				<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
					<a class="dropdown-item" href="#">Dropdown link</a> <a
						class="dropdown-item" href="#">Dropdown link</a>
				</div>
			</div>
		</div>
		
		<a class="btn btn-warning float-right" href="qna_write">질문하기</a>
	
	</div>

	<!-- 게시글 끌고와야함 글 제목, 사진?, 작성자, 날짜, 댓글수, 해시태그? 그리고 테이블은 td만 쓰면 될듯..? -->

	<div class="container">
	
	
	<c:forEach items="${qna}" var="qna">
		<table class="table table-hover">
		
			<thead>
			</thead>
			<tbody>

				<td> <a href="${pageContext.request.contextPath}/commu/qna_view?board_id=${qna.board_id}">
					<div style="font-weight:bold; font-size:18px;">${qna.title}</div>
					<div>${qna.content}</div> 
					<span>${qna.memberVO.nickname}</span> 
					<span style="font-size:13px; color:gray;">${qna.pdate}</span> <span style="font-size:13px; color:gray;"> 조회수 ${qna.hit}</span> <a scope="row">키워드 버튼 나열</a>
					</a></td>

			</tbody>
		</table>
		</c:forEach>
	</div>

	<!-- 페이징 -->
	<ul class="pagination justify-content-center"
		style="padding-bottom: 50px; padding-top: 50px;">
		<c:if test="${pageMaker.prev}">
			<li class="page-item"><a class="page-link"
				href="qna${pageMaker.makeQuery(pageMaker.startPage - 1) }">
					Previous</a></li>
		</c:if>

		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
			var="idx">
			<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
			<li class="page-item"><a class="page-link"
				href="qna${pageMaker.makeQuery(idx)}">${idx}</a></li>
		</c:forEach>

		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<li class="page-item"><a class="page-link"
				href="qna${pageMaker.makeQuery(pageMaker.endPage +1) }">Next</a></li>
		</c:if>
	</ul>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
