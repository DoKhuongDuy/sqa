<%-- 
    Document   : thongbaoAdmin-QLSP
    Created on : Dec 28, 2020, 5:43:18 AM
    Author     : Hiep Le
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="zz()">
        <form action="show_Siteadmin_quanlySP" method="get" id="form2" name="form2"></form>
    </body>
    <script type="text/javascript">
        function zz()
        {         
            alert('<%=session.getAttribute("thongbao_admin") %>');
            document.form2.submit();
            
        }
    </script>
</html>
