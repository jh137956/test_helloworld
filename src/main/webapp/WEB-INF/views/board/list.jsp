<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Starter Template · Bootstrap v4.6</title>

    
<%@include file="../common/common.jsp" %>

<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/resources/starter-template.css" rel="stylesheet">
    <script>
    	$(document).ready(function(){
	        $("#regBtn").click(function(){
	          location.href = "/board/register";
	        });
      });
    </script>
  </head>
  <body>

<main role="main" class="container">

  <div class="starter-template">
    
    <div class="row">
    	<div class="col-lg-12">
    		<h1 class="page-header">Tables List</h1>
    	</div>
    </div>
        
    <div class="row">
    	<div class="col-lg-12">
    		<div class="panel panel-default">
    			<div class="panel-heading text-right">
    			 <button id="regBtn" type="button" class="btn btn-primary pull-right">글쓰기</button>
    			</div>
    			
    			<div class="panel-body">
    			 <!-- 리스트 -->
    			 <table class="table table-striped">
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">제목</th>
				      <th scope="col">작성자</th>
				      <th scope="col">작성일</th>
				      <th scope="col">수정일</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${list }" var="brdVO">
				    <tr>
				      <th scope="row"><c:out value="${board.bod_num }"></c:out></th>
				      <td><a class="move" href="${board.bod_title }"><c:out value="${board.bod_title }"></c:out></a></td>
				      <td><c:out value="${board.mb_id }"></c:out></td>
				      <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.bod_regdate }"/></td>
				      <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.bod_update_date }"/></td>
				    </tr>
				   </c:forEach>
				   </tbody>
				</table>
    			</div>
    		</div>
    	</div>
    </div>
    
  
    
     
  </div>

</main><!-- /.container -->




</body>
</html>
