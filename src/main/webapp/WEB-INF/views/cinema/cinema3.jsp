<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="cinema.cloud.com.dao.CinemaDAO"%>
<%@page import="cinema.cloud.com.dto.CinemaVO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../header.jsp" %>
<% 
	CinemaVO vo = new CinemaVO();

	List <CinemaVO> cinemaList = (List)session.getAttribute("cinemalist");
	List <CinemaVO> theaterList = (List)session.getAttribute("theaterlist"); 
	List <CinemaVO> cinemainfoList = (List)session.getAttribute("cinemainfolist"); 
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main.css">

<style>
section{
	width: 1500px;
	height:1500px;
/* 	border:1px solid blue; */
	margin:auto;
}

.container {
    width: 100%;
    height: 1500px;
   /*  border: 1px solid red; */
   
}
.contents1 {
    width: 33%;
    height: 32%;
    
    float:left;
}
.contents2 {
    width: 65%;
    height: 32%;
    
    float:right;
}
.contents3 {
	padding-top: 20px;
    width: 100%;
    height: 67%;
    clear: both;
    float:right;
}
.content_1_header {
    width: 100%;
    height: 40px;
    text-align:center;
    background-color:#cccccc;
    border: 1px solid gray;
}
.content_1_header button{
   margin-top: 8px;
   margin-right: 3px;
   border: 0px;
}
.content_1_content {
	width: 100%;
	height: 360px;
	border: 1px solid gray;
	
	table-layout:fixed;
}
.content_1_content table td {
	float:left;
	margin:3px;
}

.content_2_header {
    width: 100%;
    height: 40px;
     background-color:#cccccc;
    border: 1px solid gray;
    font-size: x-large;
}
.content_2_content {
    width: 100%;
    height: 360px;
    border: 1px solid gray;
   
    
}


.content_3_header {
    width: 100%;
    height: 4%;
     background-color:#cccccc;
    border: 1px solid gray;
    font-size: x-large;
}
.content_3_content {
    width: 100%;
    height: 95.5%;
    /* border: 1px solid gray; */
}
.theater{
	border : 0px solid gray;
	display: inline-block;
}
.theaterInfo img{
	height:300px;
}
#map{
	width:100%; 
	height:300px;
	border: 1px solid gray;
}

.theaterInfo pre{
	font-size: x-large;
	font-weight: bold; 
}


</style>

<!-- CSS -->


<!--  script -->
<script src="resources/js/loginpopup.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>

$(document).ready(function(){	
    $("#btn1").click(function(){
        $(".theater").hide(500);
        $("#btn1").click(function(){
        	$(".theater").show(500);
        })
    });
});
$(document).ready(function(){
    $("#btn2").click(function(){
    	$(".theater").hide(500);
        $("#btn2").click(function(){
        	$(".theater").show(500);
        })
    });
});
    $(document).ready(function(){
    $("#btn3").click(function(){
    	$(".theater").hide(500);
        $("#btn3").click(function(){
        	$(".theater").show(500);
        })
    });
});
    $(document).ready(function(){
    $("#btn4").click(function(){
    	$(".theater").hide(500);
        $("#btn4").click(function(){
        	$(".theater").show(500);
        })
    });
});
    
    
    $(document).ready(function(){	
        $("#").click(function(){
            $(".theaterInfo").hide(500);
            $("#map").hide(500);
          
            $("#").click(function(){
            	$(".theaterInfo").show(500);
            	$("#map").show(500);
            })
        });
    });

</script>
<!--  script -->


<title>CinemaPage</title>
</head>
<body>



<section>
	<h1>영화관 선택</h1>
    <div class="container">
    	<div class="contents1">
    		<div class="content_1_header">
    			<!-- 지역 수 만큼 버튼생성 (서울 경기 인천 부천) -->
    				<form action="cinema2">
    					<Input id="btn1" type="submit" name="c_LOC" value="서울">
    					<Input id="btn2" type="submit" name="c_LOC" value="경기">
    					<Input id="btn3" type="submit" name="c_LOC" value="인천">
    					<Input id="btn4" type="submit" name="c_LOC" value="부산">
    				</form>
    		</div>
    		
    			<!-- 지역당 영화관 수 만큼 버튼생성 (서울_ 강남,화곡,신촌,이대...)  -->
    			
    <div class="content_1_content">
    <c:forEach items="<%=theaterList%>" var="t">
	<c:choose>
		
		<c:when test="${t.c_LOC eq '서울'}">
	
				<div class="theater">
					<table>
							<td>
							<form action="cinema3">
    						<Input id="${t.c_NAME}" type="submit" name="c_NAME" value="${t.c_NAME}">
    						</form>
    						</td>	
 					</table>
				</div>
		</c:when>
		
		<c:when test="${t.c_LOC eq '경기'}">
		
				<div class="theater">
					<table>
					
							<td>
							<form action="cinema3">
    						<Input id="${t.c_NAME}" type="submit" name="c_NAME" value="${t.c_NAME}">
    						</form>
    						</td>				
					
 					</table>
				</div>
		</c:when>
		
		<c:when test="${t.c_LOC eq '인천'}">
	
				<div class="theater">
					<table>
						
							<td>
							<form action="cinema3">
    						<Input id="${t.c_NAME}" type="submit" name="c_NAME" value="${t.c_NAME}">
    						</form>
    						</td>	
 					</table>
				</div>
		</c:when>			
		<c:when test="${t.c_LOC eq '부산'}">
	
				<div class="theater">
					<table>
								
							<td>
							<form action="cinema3">
    						<Input id="${t.c_NAME}" type="submit" name="c_NAME" value="${t.c_NAME}">
    						</form>
    						</td>	
								
							<%-- <td><button id="${t.c_NAME}">${t.c_NAME}</button></td>			 --%>	
						
 					</table>
				</div>
		</c:when>		
		
	</c:choose>	

</c:forEach>
</div>

  </div>
    
    	<div class="contents2">
    		<div class="content_2_header">
    		<div class="theaterInfo">
    		<c:forEach  items="<%=cinemainfoList %>" var="ci">
    		<c:if test="${ci.c_NAME eq param.c_NAME  }">
    		<strong>${ci.c_NAME }&nbsp;정보</strong>
    		</c:if>
    		</c:forEach>
    		</div>
    		</div>
    		<div class="content_2_content">
    		<div class="theaterInfo">
    			<c:forEach  items="<%=cinemainfoList %>" var="ci">
    				
    			<c:if test="${ci.c_NAME eq param.c_NAME  }">
    				<img src="${ci.c_PIC}">
    				
    				<p>${ci.c_INFO }&nbsp;:&nbsp;${ci.c_ADR }</p>
    			</c:if>
    			</c:forEach>
    			</div>
    		</div>
    	</div>
    	<tr>
    	<div class="contents3">
    		<div class="content_3_header">
    			<div class="theaterInfo">
    			<c:forEach  items="<%=cinemainfoList %>" var="ci">
    			<c:if test="${ci.c_NAME eq param.c_NAME  }">
    			<strong>${ci.c_NAME }&nbsp;지도/교통편</strong> 
    			</c:if>
    			</c:forEach>
    			</div>
    		</div>
    		
    		<div class="content_3_content">
    			<div class="theaterInfo">
    			
    			<c:forEach  items="<%=cinemainfoList %>" var="ci">
    				 
    			<c:if test="${ci.c_NAME eq param.c_NAME  }">
    				<div id="map">
    				<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBChswagTPcrwJFonalM64O9w0PLLfyhtE&callback=initMap" async defer></script>
    			<script>
      				function initMap() {
			        var uluru = {lat: ${ci.c_MAPX } , lng: ${ci.c_MAPY}};
			        var map = new google.maps.Map(document.getElementById('map'), {
			          zoom: 16,
			          center: uluru
			        });
			        var marker = new google.maps.Marker({
			          position: uluru,
			          map: map
			        });
      				}
    			</script>

    				</div>
    				<p>주소&nbsp;:&nbsp;${ci.c_ADR }</p>
    				<pre>[${ci.c_NAME } 교통 안내]</pre>
    				<pre>${ci.c_TRANS }</pre>
    			</c:if>
    			</c:forEach>
    			</div>
    		</div>
    	</div>
    </div>
	

    
</section>

    <!-- 우측 퀵메뉴 -->
    <aside class="bms-quick-banner">
		<ul><li><a href="ticketing"><img src="resources/images/quick/quick.png" alt="빠른예매"></a></li>
		<li><a href="ticketing"><img src="resources/images/quick/list.png" alt="예매내역" /></a></li>
		<li><a href="cinema"><img src="resources/images/quick/loc.png" alt="영화관정보" /></a></li>
		<li><a href="#"><img src="resources/images/quick/top.png" alt="상단 이동" /></a></li>
		</ul>
	</aside>
	<script src="resources/js/q.js"></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<!-- 우측 퀵메뉴 -->
	




<%@ include file="../footer.jsp" %>




</body>
</html>