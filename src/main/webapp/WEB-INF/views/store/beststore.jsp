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
    	$('.category').click(function(event){
    		event.preventDefault();
    		
    		var category_id = $(this).attr('value');
    		
    		var url = "store/beststore/" + category_id;
    		var keyWord = encodeURI(url);
    		console.log(keyWord);
    		
    		var form = {
    				category_id: category_id
    		};    		
    		
    		$.ajax({        
    			type: "GET",
    			url: url,
    			contentType: 'application/json; charset=utf-8',
			    data: JSON.stringify(form),
    			success: function(data){
					console.log(data);		
				},
				error: function(e){
					console.log(e);
				}
    		});
    		
    	});
    	
    	
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
                        <a class="category" href="${pageContext.request.contextPath}/store/beststore" value="1" name="categoryVO.category_id"><img src="/resources/img/category/cat.jpg"></a>
                     </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                       <a class="category" href="${pageContext.request.contextPath}/store/beststore" value="2"><img src="/resources/img/category/dog.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="${pageContext.request.contextPath}/store/beststore/3" target="_self"><img src="/resources/img/category/reptile.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="조류카테고리" target="_self"><img src="/resources/img/category/bird.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="어류카테고리" target="_self"><img src="/resources/img/category/fish.jpg"></a>
                    </div>
                </div>
                
                <div class="col-lg-2">
                    <div class="single-banner">
                        <a href="기타카테고리" target="_self"><img src="/resources/img/category/other.jpg"></a>
                    </div>
                </div>
            </div>
  		  <!-- Category End -->   
  		  
  		  <div class="product-slider owl-carousel">
                    <c:forEach items="${store}" var="dto">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="/resources/img/goods/goods_01.jpg" alt=""> 
                                 <div class="sale">BEST ${dto.rnum}</div>                                
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
					             <c:forEach items="${rate}" var="rate">
									<c:if test="${dto.goods_id eq rate.goodsVO.goods_id}">
						              별점 <span class="star-prototype"> ${rate.avgscore}</span> <span> &nbsp; 리뷰 ${dto.count}</span>         
						       		</c:if>
					            </c:forEach>                                                              
                            </div>
                        </div>
                  </c:forEach>
              </div>
  		  
  		  
  		  
  		  
  		  
  		  
  		   
      
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="/resources/img/products/women-1.jpg" alt="">
                            <div class="sale">Sale</div>
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
                            <div class="catagory-name">Coat</div>
                            <a href="#">
                                <h5>Pure Pineapple</h5>
                            </a>
                            <div class="product-price">
                                $14.00
                                <span>$35.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="/resources/img/products/women-2.jpg" alt="">
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
                            <div class="catagory-name">Shoes</div>
                            <a href="#">
                                <h5>Guangzhou sweater</h5>
                            </a>
                            <div class="product-price">
                                $13.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="/resources/img/products/women-3.jpg" alt="">
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
                            <div class="catagory-name">Towel</div>
                            <a href="#">
                                <h5>Pure Pineapple</h5>
                            </a>
                            <div class="product-price">
                                $34.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="/resources/img/products/women-4.jpg" alt="">
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
                            <div class="catagory-name">Towel</div>
                            <a href="#">
                                <h5>Converse Shoes</h5>
                            </a>
                            <div class="product-price">
                                $34.00
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    </section>
    <!-- Related Products Section End -->
    
   <!-- Footer -->
 <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>
  

  