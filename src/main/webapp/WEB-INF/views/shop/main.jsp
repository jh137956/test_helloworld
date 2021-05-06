<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/main.css" rel="stylesheet">
<%@include file="../common/common.jsp" %>
</head>
<body>
  <div class="wrapper">
    <div class="wrap">
      <div class="usermenu">
        <div class="mainlogo">
          <h1>로고</h1>
        </div>
        <div class="login_menu">
          <ul>
            <li>
              <a href="/member/login"><span>login</span></a>
            </li>
            <li>
              <a href="/member/join"><span>join</span></a>
            </li>
            <li>
              <a href="#"><span>cart</span></a>
            </li>
          </ul>
        </div>  
      </div>

      <div class="navi_bar">
        <h1>네비메뉴</h1>
      </div>
      
      <div class="content">
        <h1>컨텐츠</h1>
      </div>
      
      <div class="pagenav">
          <h1>페이징</h1>
      </div>
    </div>
  </div>	
</body>

</html>