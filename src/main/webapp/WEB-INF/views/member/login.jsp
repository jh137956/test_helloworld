<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@include file="../common/common.jsp" %>
    <style>
    <link href="resources/member/login.css" rel="stylesheet">
    </style>
    <title>Login page</title>
  </head>
  <body>
    <div id="login">
        <h3 class="text-center text-white pt-5"></h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form login-box" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="userid" class="text-info">id:</label><br>
                                <input type="text" name="userid" id="userid" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">password:</label><br>
                                <input type="text" name="password" id="password" class="form-control">
                            </div>
                            <div class="btn-login">
                                <input type="submit" name="submit" class="btn btn-info btn-md align"  value="submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

   
  </body>
</html>