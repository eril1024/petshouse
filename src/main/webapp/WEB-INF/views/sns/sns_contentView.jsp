<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>${sns.content}</title>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
p {
	margin: 20px 0px;
}

.i {
	width: 269px;
	height: 269px;
	object-fit: cover;
}

body {
	font-family: Arial;
	margin: 0;
}

.sidebar-section {
	position: relative;
	min-height: 100%;
	padding-left: 40px;
	margin-left: 20px;
	border-left: 1px solid #ededed;
}

* {
	box-sizing: border-box;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
	position: relative;
}

/* Hide the images by default */
.mySlides {
	display: none;
	width: 780px;
	margin: 10px auto;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
	cursor: pointer;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 40%;
	width: auto;
	padding: 40px;
	margin-top: -50px;
	color: white;
	font-weight: bold;
	font-size: 20px;
	border-radius: 0 3px 3px 0;
	user-select: none;
	-webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Six columns side by side */
.column {
	float: left;
	width: 16.66%;
}

/* Add a transparency effect for thumnbail images */
.demo {
	opacity: 0.6;
}

.active, .demo:hover {
	opacity: 1;
}

/* The dots/bullets/indicators */
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}

.profile_box {
	width: 30px;
	height: 30px;
	border-radius: 70%;
	overflow: hidden;
	margin: 5px;
}

.profile_box2 {
	width: 80px;
	height: 80px;
	border-radius: 70%;
	overflow: hidden;
	margin: 5px;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.recent{
	width: 130px;
	height:130px;
	border-radius: 10px;
	margin : 3px;
	}
	

 
	
</style>
<script>
	//로그인 체크
	$(document).ready(function() {
		var member_id = $("#member_id").val();

		function checkLogin() {
			if (member_id == undefined) {
				alert("로그인 후 글을 작성해주세요.");
				location.href = '/login/login';
			}
		}
		//댓글 작성 로그인 체크
		$('#cw').click(function() {
			checkLogin();
		});
	});
</script>

</head>
<body style="padding-top: 200px">

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<form action="commu/sns/modify" method="get">
		<%-- <input type="hidden" name="member_id"
			value="<sec:authentication property="principal.member_id"/>"> --%>
		  
		<div class="mt-150 mb-150">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<input type="hidden" name="board_id" value="${board_id}">
						<input type="hidden" name="boardVO.memberVO.nickname" value="${sns.memberVO.nickname}">
						<div style="float: right">


							<a href="/commu/sns">목록으로</a>

						</div>

						<h4>${sns.categoryVO.categoryname}</h4>
						<c:forEach var="img" items="${img}">
							<div class="mySlides">

								<img src="/resources/img/member/sns/${img.imgname}"
									style=" width: 780px;height:450px;object-fit: cover; border-radius: 10px;">
							</div>
						</c:forEach>
						<div style="text-align: center">
							<span class="dot" onclick="currentSlide(1)"></span> <span
								class="dot" onclick="currentSlide(2)"></span> <span class="dot"
								onclick="currentSlide(3)"></span> <span class="dot"
								onclick="currentSlide(4)"></span> <span class="dot"
								onclick="currentSlide(5)"></span>
						</div>


						<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
							onclick="plusSlides(1)">❯</a>





						<div class="row user_info">

							<div class="profile_box">
								<a href="/myPage/${sns.memberVO.nickname}" style="color: black"><img
									src="/resources/img/member/profile/${sns.memberVO.thumbnail}"
									name="profile" alt="" class="profile" /> 
							</div>
							<p class="nickname" style="padding-top: 7px; font-size:15px;">
								${sns.memberVO.nickname} &nbsp&nbsp</p></a> 
								
						</div>
						
					
						<p>${sns.content}</p>

						<c:set var="hashtag" value="${sns.hashtag}" />
						<c:set var="tag" value="${fn:split(hashtag, ' ')}" />
						<c:forEach var="t" items="${tag}">

							<a href="xxx">${t}</a>

						</c:forEach>

	<div style="float: right">
								<span class="pdate">
								<fmt:formatDate var="formatRegDate" value="${sns.pdate}"
									pattern="yyyy.MM.dd" />${formatRegDate} &nbsp&nbsp </span> 
							<span style="color: gray"> 조회수 ${sns.hit}</span></div>

					</div>
	


	<div class="col-lg-4">
		<div class="sidebar-section">


			<div class="archive-posts">
				<div class="row">
					<div class="row">
						<div class="profile_box2">
							<img
								src="/resources/img/member/profile/${sns.memberVO.thumbnail}"
								name="profile" alt="" class="profile" />
						</div>
						<h4 style="padding-top: 30px;">${sns.memberVO.nickname}</h4>
						<a href="/myPage/${sns.memberVO.nickname}"  style="padding-top:35px;"> &nbsp 팔로우
						</a>
					</div>


				</div>
			</div>
			<br>
			<br>

			<div class="recent-posts" >
				<h4>Recent Posts</h4>
				<ul>
						
						<c:forEach var="user" items="${user}">
 						<a href="/commu/sns/${user.boardVO.board_id}">
						<img src="/resources/img/member/sns/${user.imgname}" class="recent"></a>
 					    </c:forEach>
					
				</ul>
			</div>
			<br>
			<br>

			<div style="float: right">
				<sec:authentication property="principal" var="buttonhidden" />
				<sec:authorize access="isAuthenticated()">

					<!-- 현재 접속된 닉네임과 댓글보드에 저장된 닉네임을 비교해서 일치 하면 보이게 함 -->
					<c:if test="${buttonhidden.nickname eq sns.memberVO.nickname}">

						<button id="modify_button" type="button" class="btn btn-warning"
							onclick="modify_event();">수정</button>

						<button id="delete_button" type="button" class="btn btn-warning"
							onclick="button_event();">삭제</button>
					</c:if>
				</sec:authorize>



			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
</form>

	<div class="container" style="margin-top: 100px;">

		<input type="hidden" id="pgroup" value="${sns.board_id}">
		
		<div>
			<div>
				<h4>
					<strong>댓글&nbsp(${count})</strong>
				</h4>
			</div>
			<div>
				<div id="inputContent">
					<table class="table" style="margin: 10px;">
						<td class="row"><textarea style="resize: none;"
							class="form-control col-8" id="content" placeholder="댓글을 입력하세요"></textarea>
						<button id="cw" class="col-1 btn btn-outline-secondary" onClick="getComment()">등록</button>
					</td>

					</table>
				</div>
			</div>
		</div>


		<div class="container">
		<c:forEach items="${comment}" var="m">
			<div id="comment" style="width: 800px;">

			 
				<!-- 여기서부터 시큐리티 권한을준다 -->
			    <sec:authentication property="principal" var="pinfo" />
			    <sec:authorize access="isAuthenticated()">	
	
				<!-- 현재 접속된 닉네임과 댓글보드에 저장된 닉네임을 비교해서 일치 하면 보이게 함 -->
			<c:if test="${pinfo.nickname eq m.memberVO.nickname}">
		
			<a class="a-del" style="float: right;"  href="/commu/comment/delete?board_id=${m.board_id}"><b>삭제</b></a>
			</c:if> 
			</sec:authorize> 
					<div class="row">
						<div class="profile_box">
							<a href="/myPage/${m.memberVO.nickname}">
								<img src="/resources/img/member/profile/${m.memberVO.thumbnail}"
								name="profile" alt="" class="profile" />
						</div>
						<div style="padding: 5px; color:black;"><b>${m.memberVO.nickname}</b></div></a></div>
						<div style="padding-left:40px;">${m.content}</div>
						<div style="padding-left:40px;"><fmt:formatDate var="formatRegDate" value="${m.pdate}" pattern="yyyy.MM.dd" />${formatRegDate}"</div>
					    <hr></div>
				</c:forEach>

			</div>


			<div class="container">
				<form id="commentListForm" name="commentListForm" method="post">
					<div id="commentList"></div>
				</form>
			</div>
		</div>

	<div class="later col-lg-12 text-center">
		<button type="button" class="btn btn-warning" onClick="btnClick()">더보기</button>
	</div>



	<script type="text/javascript">
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			var captionText = document.getElementById("caption");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			captionText.innerHTML = dots[slideIndex - 1].alt;
		}

		function getFormatDate(pdate) {

			var date = date.substr(0, 17);
			var date = date.split("T");
			var date = date[0] + " " + date[1];
			return pdate;
		}
	</script>


<script type="text/javascript">
	function getFormatDate(pdate) {

			var date = date.substr(0, 17);
			var date = date.split("T");
			var date = date[0] + " " + date[1];
			return pdate;
		}
	</script>
	<script type="text/javascript">
	function button_event() {
		if (confirm("정말 삭제하시겠습니까?") == true) { //확인
			location.href = '${pageContext.request.contextPath}/commu/sns/delete?board_id=${sns.board_id}'
		} else { //취소
			return;
		}
	}

	function modify_event() {
		if (confirm("수정하시겠습니까?") == true) { //확인
			location.href = '${pageContext.request.contextPath}/commu/sns/modify_view?board_id=${sns.board_id}'
		} else { //취소
			return;
		}
	}
</script>

	<script type="text/javascript">
		// 댓글 작성 및 ajax로 댓글 불러오기 프로필사진, 닉네임, 내용, 날짜 넘김
		function getComment() {

			var member_id = $("#member_id").val();
			var thumbnail = $("#thumbnail").val();
			console.log(member_id);
			var pgroup = $("#pgroup").val();
			var content = $("#content").val();

			$
					.ajax({
						url : "/commu/sns/comment",
						type : "post",
						data : {
							member_id : member_id,
							pgroup : pgroup,
							content : content,
							thumbnail : thumbnail
						},
						success : function(data) {

							html = "<div class='row'><div class='profile_box'><a href='/myPage/"+data.memberVO.nickname+"'><img src='/resources/img/member/profile/" + data.memberVO.thumbnail +"' class='profile'></div><div style='padding:8px; color:black;'><b>"
							+ data.memberVO.nickname
							+ "</b></a></div></div>"
							+ "<div style='padding-left:32px;'>"
							+ data.content
							+ "</div>"
							+ "<div style='padding-left:32px;'>"
						  	+ data.pdate
							+ "</div>"  
						
							+ "<hr>"
								 
						  	$("#comment").prepend(html);
							document.getElementById("content").value = '';

						}, //ajax 성공 시 end$

						/* 
							 error : function(request, status, error) {
							 alert("code:" + request.status + "\n" + "message:"
							 + request.responseText + "\n" + "error:" + error);

							 } // ajax 에러 시 end */
						})

			}
		 
		// 댓글 삭제
			$(".a-del").click(function(event) { //id는 한번만 calss는 여러번 선택 가능.
			
			   //하나의 id는 한 문서에서 한 번만 사용이 가능(가장 마지막 혹은 처음게 선택). 하나의 class는 
			
			   event.preventDefault(); 
			  
			
			   var tr = $(this).parent();//자바스크립트 클로저

			   $.ajax({
			      type : 'delete', //method
			      url : $(this).attr("href"), //주소를 받아오는 것이 두 번째 포인트.
			      cache : false,
			      success : function(result) {
			         console.log("result: " + result);
			         if (result == "SUCCESS") {
			            $(tr).remove();
			            alert("삭제되었습니다.");
			         }
			      },
			      errer : function(e) {
			         console.log(e);
			      }
			   }); //end of ajax
			 }); // 삭제 종료
			
		       

		//더보기
		var pageNum = 1;

		function btnClick() {

			pageNum += 1;
			console.log(pageNum);

			$
					.ajax({
						type : "POST",
						url : "/commu/scmorelist",
						data : {
							pageNum : pageNum,
							board_id : "${sns.board_id}"
						},
						success : function(data) {
							console.log(data);
							var comment = data.comment;

							html = " "
							for ( var i in comment) {
								html += "<div id='comment'style = 'width : 800px;'>"
										+ "<div class='row'><div class='profile_box'>"
										+ "<img src='/resources/img/member/profile/"+comment[i].memberVO.thumbnail+"' name='profile' alt='' class='profile' /></div>"
										+ comment[i].memberVO.nickname
										+ "</div>"
										+ "<div>"
										+ comment[i].content
										+ "</div>"
										+ "<div>"
										+ comment[i].pdate
										+ "</div>"
										+ "<hr>" + "</div>"
							}

							$("#comment").append(html);

						},
						//success end
						error : function(request, status, error) {
							alert("code:" + request.status + "\n" + "message:"
									+ request.responseText + "\n" + "error:"
									+ error);
						} // ajax 에러 시 end
					}); //ajax end	 
		}; //click end
	</script>

<div style="margin-top: 500px;">
		<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	</div>

</body>


<!-- Js Plugins -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
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