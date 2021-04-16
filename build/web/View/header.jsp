<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            <%@include file="/CSS/giohang.css" %>
            <%@include file="/CSS/trangchu.css" %>
            <%@include file="/CSS/header.css" %>
            <%@include file ="/CSS/site-shopping.css" %>
        </style>
    </head>
    <body>
    <div id="id01" class="modal">

      <form class="modal-content animate" action="LoginController" method="post">
        <div class="imgcontainer">
          <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
          
        </div>

        <div class="container">
          <label for="uname"><b>Tên đăng nhập</b></label>
          <input type="text" placeholder="Nhập tài khoản" name="txtU" required>

          <label for="psw"><b>Mật khẩu</b></label>
          <input type="password" placeholder="Nhập mật khẩu" name="txtP" required>

          <button type="submit">Đăng nhập</button>
          <label>
            <input type="checkbox" checked="checked" name="remember"> Nhớ đăng nhập
          </label>
        </div>

        <div class="container" style="background-color:#f1f1f1">
          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Quay lại</button>
          <span class="psw">Quên <a href="#">mật khẩu?</a></span>
        </div>
      </form>
    </div>

    <div id="id02" class="modal">

      <form class="modal-content animate" action="" method="post">
        <div class="imgcontainer">
          <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
          
        </div>

        <div class="container">
          <label for="uname"><b>Tên đăng nhập</b></label>
          <input type="text" placeholder="Nhập tài khoản" name="txtU" required>

          <label for="psw"><b>Mật khẩu</b></label>
          <input type="password" placeholder="Nhập mật khẩu" name="txtP" required>



          <label for="uname"><b>Số điện thoại</b></label>
          <input type="text" placeholder="Nhập số điện thoại" name="txtS" required>

          <label for="uname"><b>Địa chỉ</b></label>
          <input type="text" placeholder="Nhập địa chỉ" name="txtD" required>

          <label for="uname"><b>Email</b></label>
          <input type="text" placeholder="Nhập email" name="txtE" required>

          <button type="submit">Đăng ký</button>

        </div>

        <div class="container" style="background-color:#f1f1f1">
          <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Quay lại</button>

        </div>
      </form>
    </div>
        
        
        
        <div id = "header" style="height: 40px;background-color: #cce6ff;">

        <%
            if(session.getAttribute("thanhvien")==null)
            {     
        %>
            <div class="menu">
                <a href="#" onclick="document.getElementById('id02').style.display='block'"><img src="img/dangki.png" width="120" height="32"></a>
                <a href="#" onclick="document.getElementById('id01').style.display='block'"><img src="img/dangnhap.png" width="100" height="30"></a>                                           
            </div>
        <%
            }
            else
            {
                User user = new User();
                user = (User)session.getAttribute("thanhvien");
        %>
            <div class="menu">
                <a href="#"><form action="show_Trangcanhan" method="get">Xin chào <%=user.getPosition()%></form></a>
                <a href="#"><form action="LogoutController" method="post">Đăng xuất</form></a>
            </div>
        <%
            }
        %>
    </div>
    </body>
</html>
