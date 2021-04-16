<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tax Report</title>
        <style>
            <%@include file="/CSS/login.css"%>
        </style>
    </head>
    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>TAX REPORT<span><span> </span></span></div>
        </div>
        <br>
        <div class="login">
            <form id="form1" action="loginController" method="post">
                <input type="text" placeholder="username" name="txtU"><br>
                <input type="password" placeholder="password" name="txtP"><br>
                <input type="button" value="Log In" onclick="this.parentElement.submit()">
            </form>
        </div>
    </body>
</html>
