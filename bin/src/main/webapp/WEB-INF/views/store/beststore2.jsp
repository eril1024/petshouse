<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
  <title>beststore</title>

<!-- bootstrap css cdn -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css" />

<!-- jquery cdn -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <script type="text/javascript">
    $(document).ready(function(){	    	
    	$.fn.generateStars = function() {
    	    return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*16));});
    	};

    	// 숫자 평점을 별로 변환하도록 호출하는 함수
    	$('.star-prototype').generateStars();
    	
    	

    })    
  </script>
  
<style>
    .single-banner{
    	padding-bottom: 40px;
    }

    
    span.star-prototype, span.star-prototype > * {
    height: 16px; 
    background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
    display: inline-block;
	}
 
	span.star-prototype > * {
	    background-position: 0 0;
	    max-width:80px; 
	}
	
	
  </style>
</head>

<body>
 <!-- header -->
 <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!-- Best Products  -->
    <section class="latest-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Best Products</h2>
                    </div>
                </div> 
             </div>
          
         	<!-- category -->
             <div class="row">           
                <div class="col-lg-2">
                    <div class="single-banner">                                      
                        <a href="${pageContext.request.contextPath}/store/beststore/1"><img src="/resources/img/category/cat.jpg"></a>
                     </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                       <a href="${pageContext.request.contextPath}/store/beststore/2"><img src="/resources/img/category/dog.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="${pageContext.request.contextPath}/store/beststore/3"><img src="/resources/img/category/reptile.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="${pageContext.request.contextPath}/store/beststore/4"><img src="/resources/img/category/bird.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="${pageContext.request.contextPath}/store/beststore/5"><img src="/resources/img/category/fish.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="${pageContext.request.contextPath}/store/beststore/6"><img src="/resources/img/category/other.jpg"></a>
                    </div>
                </div>
            </div>
  		  <!-- Category End -->   
  		  
         <div class="row">
           <c:forEach items="${best}" var="dto">
          
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="/resources/img/goods/goods_01.jpg" alt="">
                            <div class="sale">Best ${dto.rnum}</div>     
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name"> </div>
                            <a href="#">
                                <h5>${dto.goodsname}</h5>
                            </a>
                            <div class="product-price">
                                 ${dto.price}원                           
                            </div>
                              <c:forEach items="${rate1}" var="rate1">
									<c:if test="${dto.goods_id eq rate1.goodsVO.goods_id}">
						              별점 <span class="star-prototype"> ${rate1.avgscore}</span> <span> &nbsp; 리뷰 ${dto.count}</span>         
						       		</c:if>
					              </c:forEach>
                        </div>
                    </div>
          
                </div>
                 </c:forEach>  
          
            </div>
            
             <div class="row">
           <c:forEach items="${catebest}" var="catebest">
             <c:forEach items="${rate2}" var="rate2">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                       
                        <c:if test="${rate2.board_id eq image.board_id}">
                            <img src="/resources/img/file/${image.imgname}">
                          </c:if>
                          
                            <div class="sale">Best ${catebest.rnum}</div>     
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name"> </div>
                            <a href="#">
                                <h5>${catebest.goodsname}</h5>
                            </a>
                            <div class="product-price">
                                 ${catebest.price}원                           
                            </div>
                            
									<c:if test="${catebest.goods_id eq rate2.goodsVO.goods_id}">
						              별점 <span class="star-prototype"> ${rate2.avgscore}</span> <span> &nbsp; 리뷰 ${dto.count}</span>         
						       		</c:if>
							
                        </div>
                        
                    </div>
          
                </div>
                </c:forEach>
                </c:forEach>
            </div>
         </div>
    </section>
    <!-- Related Products Section End -->
   
   <!-- Footer -->
 <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>
  

  