<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container panel panel-info">
		<h3 class="panel-heading">MVC</h3>
		<pre>
		
			이름   널?       유형            
			---- -------- ------------- 
			NO   NOT NULL NUMBER(38)    
			NAME          VARCHAR2(100) 
			AGE           NUMBER        
			IMG           VARCHAR2(200)
			 
		</pre>
		<h4>1. MODEL - TEST </h4>
		<%-- <%
			CDao dao = new CDao();
			out.println(dao.list());
		%> --%>
		<h3>userinfo2</h3>
		<table  class="table table-striped">
			<caption>userinfo2</caption>
			<thead>
				<tr>
					<th scope="col">NO</th><th scope="col">NAME</th> <th scope="col">AGE</th><th scope="col">IMG</th>
				</tr>
			</thead>
			<tbody>
	        	<c:forEach var="i" items="${list}" varStatus="status">
	        	<tr>
	        		<!-- total-- 만으로도 가능 위에 int total = list.size() 로 했다면  -->  
	        		<td>${i.no}</td><%-- < %=total--% > or total-- 여기ㅏ??? bno랑 실제 게시판 글이랑 번호가 달라서 이렇게!--%> 
		            <td>${i.name}</td>
		            <td>${i.age}</td>
		            <td>${i.img}</td>
	        	</tr> 	
		        </c:forEach>
			</tbody>
		</table>
		
	</div>
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<div class="container panel panel-info">
		<h3 class="panel-heading">파일업로드에서 사용되는 cos라이브러리</h3>
		<%-- <form action="${pageContext.request.contextPath}/upload001.do" method="post" enctype="multipart/form-data"> --%>
		<form action="${pageContext.request.contextPath}/create.upload1" method="post" enctype="multipart/form-data">
			<fieldset>
			<legend>파일업로드 basic001</legend>
			<div class="form-group">
				<label for="name">글쓴이</label>
				<input type="text" name="name" id="name" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="age">나이</label>
				<input type="text" name="age" id="age" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="img">파일업로드</label>
				<input type="file" name="img" id="img" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="전송" class="form-control"/>
			</div>
			</fieldset>
		</form>
	</div>
	<div class="container panel panel-info">	 
  	<h3 class="panel-heading">IMG BOARD - VIEW(1) : GALLERY 3단</h3>  
  	<pre>
  		3단 갤러리 : https://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_theme_band_container_grid&stacked=h
  		이미지 : https://www.w3schools.com/bootstrap/bootstrap_ref_css_images.asp
  	</pre>
	<div class="row"><!-- start part -->
  		<c:forEach var="i" items="${list}" varStatus="status">
			<div class="col-sm-4">
				<p><strong>${i.name} - ${i.age }</strong></p><br/>
				<img src="/upload/${i.img}" alt="${i.img}" style="width:255px">	<!-- width나 height 둘 중 하나만 -->
			</div>
	</c:forEach>
    </div><!-- end part -->  
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->   
  	<h3 class="panel-heading">IMG BOARD - VIEW(2) : GALLERY 4단</h3>  
  	<pre>
  		4단 갤러리 : https://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_theme_band_container_grid&stacked=h
  		이미지 : https://www.w3schools.com/bootstrap/bootstrap_ref_css_images.asp
  		아이콘 : https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp
  	</pre>
  	<div class="row"><!-- start part -->
  		<c:forEach var="i" items="${list}" varStatus="status">
			<div class="col-sm-3 well">
				<p><span class="glyphicon glyphicon-ok"></span>NO - <strong>${i.no}</strong></p>
				<p><span class="glyphicon glyphicon-user"></span>NAME - <strong>${i.name}</strong></p>
				<p><span class="glyphicon glyphicon-heart"></span>AGE - <strong>${i.age}</strong></p>
				<img src="/upload/${i.img}" alt="${i.img}" class="img-thumbnail" style="width:255px">	<!-- width나 height 둘 중 하나만 -->
													<!-- img-thumbnail 은 그림 테두리 종류 -->
			</div>
	</c:forEach>
    </div><!-- end part -->  
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<!-- 					 -->
	<h3 class="panel-heading">IMG BOARD - VIEW(3) : SLIDING WINDOW(1) - 1단</h3>  
	<pre>
		https://www.w3schools.com/bootstrap/bootstrap_carousel.asp
	</pre>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators --><!-- 하단에 동그라미 땡땡땡 -->
    <ol class="carousel-indicators">
    <c:forEach var="i" varStatus="status" items="${list}">
      <li data-target="#myCarousel" data-slide-to="${i.no}" <c:if test="${status.first}"> class="active"</c:if>></li><!-- active는 첫번째것만 일단 -->
    </c:forEach>
    </ol>

    <!-- Wrapper for slides -->
	<div class="carousel-inner">
	
    <c:forEach var="i" varStatus="status" items="${list}">
		<div class="item  <c:if test="${status.first}"> active </c:if>"><!-- <div class="item active"> 첫번째만 액티브 -->
			<img src="/upload/${i.img}" alt="${i.img}" style="width:100%; height:400px">
		</div>
	</c:forEach>
    </div>

	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	</div>
  	<h3 class="panel-heading">IMG BOARD - VIEW(2) : GALLERY 4단</h3>  
  	<pre>
		https://www.w3schools.com/bootstrap/bootstrap_carousel.asp
	</pre>
	<!-- 			START			 -->
	<!-- 			START			 -->
	<!-- 			START			 -->
	<!-- 			START			 -->
	<!-- 			START			 -->
	1. 전체개수 ${list.size()} 5개<br/>
	2. 한줄당 들어가야하는 개수 : 4 <br/>
	3. 전체 줄수, 몇 줄인지 확인 : 1.25 / (전체개수)/4 / ${list.size()/4} <br/>
	<c:forEach var="i" varStatus="status" items="${list}">
		<p>★test - ★ 시작 begin: 0,4,8 : ${status.index*4} ★end: ${status.index*4 +3}</p>
	</c:forEach>	
	<div id="myCarousel2" class="carousel slide" data-ride="carousel">
    <!-- Indicators --><!-- 하단에 동그라미 땡땡땡 -->
    <!-- 			만약 전체 개수가 8개라면				 -->
    <!-- 			만약 전체 개수가 8개라면				 -->
    <!-- 			만약 전체 개수가 8개라면				 -->
    
    <ol class="carousel-indicators">
    <c:forEach begin="0" end="${Math.floor(list.size()/4)}" var="i" varStatus="status" items="${list}">
      <li data-target="#myCarousel2" data-slide-to="${status.index}" <c:if test="${status.first}"> class="active"</c:if>></li><!-- active는 첫번째것만 일단 -->
    </c:forEach>
    </ol>
	<!-- 			1. 만약 전체 개수가 8개라면 한칸당 7개가 들어가야 함 							-->
	<!-- 			2. 첫번째 줄에 시작이 0줄 : 0, 1, 2, 3 시작 = 0/ 끝 =전체개수/4			-->
	<!-- 			3. 첫번째 줄에 시작이 1줄 : 4(start), 5, 6, 7							-->
	<!-- 			4. 첫번째 줄에 시작이 2줄 : 8(start), 9, 10, 11						-->
	<!-- 			begin				-->
	
    <!-- Wrapper for slides -->
	<div class="carousel-inner">
	
    <c:forEach var="i" varStatus="status" items="${list}" begin="0" end="${Math.floor(list.size()/4)}">
		<div class="item  <c:if test="${status.first}"> active </c:if>"><!-- <div class="item active"> 첫번째만 액티브 -->
			<c:set var="start" value="${status.index*4}"/>
			<c:set var="end" value="${start+3}"/>
			<c:forEach begin="${start}" end="${end}" var="i" items="${list}">    
    			<div class="col-sm-3"><img src="/upload/${i.img}" alt="${i.img}" style="width:100%; height:400px"></div>
			</c:forEach>
		</div>
	</c:forEach>
    </div>

	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	</div>
</div>
</body>
</html>