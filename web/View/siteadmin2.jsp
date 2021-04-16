<%@page import="javafx.util.Pair"%>
<%@page import="Model.TaxReport"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        <%@ include file ="/CSS/site_admin.css" %>
    </style>
</head>
<body>
<!--    <div class="display-container size-header">
        <div class="display-container title-header">
            <a href="#" style="color: #fff;text-decoration: none"><form action="show_Trangchu" method="get">Về trang SHOPPING</form></a>
                
        </div>

        <div class="display-container detail-header">
        
        </div>
    </div>-->
    <div class="display-container">
        <div class="sidebar display-container">
                <ul>
                    <li><a><form action="show_Baocaothuechitiet" method="get">CẤU HÌNH THUẾ</form></a></li>
                    <li><a><form action="show_Baocao" method="get">XUẤT BÁO CÁO THUẾ</form></a></li>
                    <li><a><form action="show_Danhsach" method="get">XEM DANH SÁCH THUẾ</form></a></li>
                </ul>
        </div>

        <div class="content display-container">                  
                <div id="site2">
                    <form action="search_KH" method="get">
                        <div class="list-btn display-container">
                            <input type="text" placeholder="nhập tên khách hàng" name="tenkhachhang">
                            <div style="display: flex;align-items: center;"><button style="width: 153px; height: 43px;">Tìm kiếm</button></div>
                        </div>
                    </form>
                        <div class="list-info-member display-container" id="modul1">					
                                <div>
                                    <h1>DANH SÁCH BÁO CÁO THUẾ</h1>
                                                                                       
                                <table class="table-info" id="tb_info">
                                        <tr>
                                                <th style="width: 10%">ID</th>
                                                <th style="width: 20%">Họ và tên</th>
                                                <th style="width: 10%">Loại thuế</th>
                                                <th style="width: 10%">CMND/CCCD</th>
                                                <th style="width: 15%">Số tiền phải nộp</th>
                                                <th style="width: 15%">Ngày nộp</th>
                                                <th style="width: 10%">Tình trạng</th>
                                                <th style="width: 20%">Thao tác</th>
                                                                                                
                                        </tr>
                                        <%
                                            
                                            if(session.getAttribute("dsNguoinopthue")!=null)
                                            {
                                                ArrayList< Pair<TaxReport,Integer>> danhsach = (ArrayList< Pair<TaxReport,Integer>>)session.getAttribute("dsNguoinopthue");
                                                for(Pair<TaxReport,Integer> i : danhsach)
                                                {
                                                    %>
                                        <tr>
                                                <td><%=i.getKey().getId() %></td>
                                                <td><%=i.getKey().getTaxPayer().getName()%></td>
                                                <td><%=i.getKey().getTaxDetail().getIncomeTax().getType()%></td>
                                                <td><%=i.getKey().getTaxPayer().getPhoneNumber()%></td>
                                                <td><%=i.getValue() %></td>
                                                <td><%=i.getKey().getDate() %></td>
                                                <td><%=i.getKey().getStatus() %></td>
                                                <td>
                                                <div>
                                                    <form action="show_Baocaochitiet" method="get">
                                                        <input type="hidden" value="<%=i.getKey().getId() %>" name="idBaocao">
                                                        <input id="btn_fix" type="submit" value="xem báo cáo">
                                                    </form>
                                                </div>
                                                </td>
                                        </tr>            
                                                    <%
                                                }
                                            }
                                        %>
                                </table>
                            </div>
                        </div>
                </div>
                                        
                <div id="about-product" class="modal"> 
                    <form class="modal-content animate" action="fix_Sanpham" method="post" enctype="multipart/form-data">
                      <div class="container">
                          <div class="display-container" style="width: 100%">
                                  <div class="form-img">
                                      <img src="anh1.png" style="width: 80%; margin: 0 auto;" id="anhSP">
                                      <input type="file" name="txt_HA">
                                  </div>

                                  <div class="form-info">
                                        <input id = "txt0" type="hidden" name="txt_Id" required>
                                        <label for="uname"><b>Tên sản phẩm</b></label>
                                        <input id = "txt1" type="text" name="txt_TenSP" required>
                                        <label for="uname"><b>Giá tiền</b></label>
                                        <input id = "txt2" type="text" name="txt_Giatien" required>
                                        <label for="uname"><b>Thể loại</b></label>
                                        <input id = "txt3" type="text" name="txt_Theloai" required>
                                        
                                        <input id = "txt4" type="hidden" name="txt_HAA" required>
                                  </div>
                          </div>		        
                      </div>

                      <div class="container" style="background-color:#f1f1f1">
                          <button type="submit">Lưu lại</button>
                          <button type="button" onclick="document.getElementById('about-product').style.display='none'" class="cancelbtn">Quay lại</button>
                      </div>
                    </form>
                </div>
                
                <div id="addSP" class="modal"> 
                    <form class="modal-content animate" action="add_Sanpham" method="post" enctype="multipart/form-data">
                      <div class="container">
                           <label for="uname"><b>Tên sản phẩm</b></label>
                            <input id = "txt1" type="text" name="txt_TenSP" required>
                            <label for="uname"><b>Giá tiền</b></label>
                            <input id = "txt2" type="text" name="txt_Giatien" required>
                            <label for="uname"><b>Thể loại</b></label>
                            <input id = "txt3" type="text" name="txt_Theloai" required>
                            <label for="uname"><b>Chọn ảnh</b></label>
                            <input type="file" name="txt_HA">
                      </div>

                      <div class="container" style="background-color:#f1f1f1">
                          <button type="submit">Lưu lại</button>
                          <button type="button" onclick="document.getElementById('addSP').style.display='none'" class="cancelbtn">Quay lại</button>
                      </div>
                    </form>
                </div>
                                                         
</body>
<script src="JS/admin.js">
</script>
<script src="JS/submit_tag_a.js">
</script>
<script type="text/javascript">
    function show_Sanpham(z)
    {
        document.getElementById("about-product").style.display = "block";
        var myTab = document.getElementById('tb_info');
        var vitri = z.closest("tr").rowIndex;

        var objCells = myTab.rows.item(vitri).cells;

        for (var j = 0; j < objCells.length-1; j++) {
            var str = "";
            str = str + objCells.item(j).innerHTML;
            var id = "txt";
            id = id + j;                     
            document.getElementById(id).value = str;                               
        }
        var ha = document.getElementById("txt4").value;
        document.getElementById("anhSP").src = ha;
    }
    
    function add_new()
    {
        document.getElementById("addSP").style.display = "block";
        
    }
    function show_form_delete2(z)
    {                

        document.getElementById("delSP").style.display = "block";

        var myTab = document.getElementById('tb_info');
        var vitri = z.closest("tr").rowIndex;

        var objCells = myTab.rows.item(vitri).cells;
        var str = "";

        str = str + objCells.item(0).innerHTML;


        document.getElementById("del_id").value = str;

    }
</script>
</html>


