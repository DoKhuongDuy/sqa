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
        <div class="display-container size-header">
            <div class="display-container title-header">
            </div>
            <div class="display-container detail-header">
                <a href="#" style="color: #fff;text-decoration: none"><form action="logoutController" method="get">Log out</form></a>
            </div>
        </div>


        <div class="display-container">
            <div class="sidebar display-container">
                <ul>
                    <li><a><form action="showDanhsach" method="get">View Tax Report</form></a></li>
                    <li><a><form action="show_Baocao" method="get">Export Tax Report</form></a></li>
                    <li><a><form action="show_Cauhinh" method="get">Config Tax</form></a></li>
                </ul>
            </div>

            <div class="content display-container">
                <div id="about-product" class="modal"> 
                    <form class="modal-content animate" action="save_Phanhoi" method="post">
                        <div class="container">
                            <div class="display-container" style="width: 100%">
                                <div class="form-info">
                                    <input id = "txt0" type="hidden" name="txt_ID" required>
                                    <textarea name="txt_ND" rows="10" cols="60"></textarea>
                                </div>
                            </div>		        
                        </div>

                        <div class="container" style="background-color:#f1f1f1">
                            <button type="submit">Lưu lại</button>
                            <button type="button" onclick="document.getElementById('about-product').style.display = 'none'" class="cancelbtn">Back</button>
                        </div>
                    </form>
                </div>
                <div class="show-btn3" id="site2">                       
                    <div class="list-info-member display-container" id="modul1">					
                        <div>
                            <h1>Tax Reports</h1>
                            <div style="display : flex">                                       
                                <div class="dropdown">
                                    <button>Chosse Tax Type</button>
                                    <div class="dropdown-content">
                                        <a href="#"><form action="show_Loaithue" method="get">Từ hoạt động kinh doanh<input type="hidden" name="loaithue" value="1"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ đầu tư vốn<input type="hidden" name="loaithue" value="2"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ chuyển nhượng vốn<input type="hidden" name="loaithue" value="3"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ trúng thưởng<input type="hidden" name="loaithue" value="4"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ thừa kế<input type="hidden" name="loaithue" value="5"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ bản quyền<input type="hidden" name="loaithue" value="6"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ nhượng quyền thương mại<input type="hidden" name="loaithue" value="7"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ chuyển nhượng bất động sản<input type="hidden" name="loaithue" value="8"></form></a>
                                        <a href="#"><form action="show_Loaithue" method="get">Từ lương tháng<input type="hidden" name="loaithue" value="9"></form></a>
                                    </div>
                                </div>
                            </div>


                            <table class="table-info" id="tb_info">
                                <tr>
                                    <th style="width: 10%">ID</th>
                                    <th style="width: 20%">Name</th>
                                    <th style="width: 10%">Tax Type</th>
                                    <th style="width: 10%">Phone</th>
                                    <th style="width: 15%">Tax Value</th>
                                    <th style="width: 15%">Date</th>
                                    <th style="width: 10%">Status</th>

                                </tr>
                                <%

                                    if (session.getAttribute("dsThue") != null) {
                                        ArrayList< Pair<TaxReport, Integer>> danhsach = (ArrayList< Pair<TaxReport, Integer>>) session.getAttribute("dsThue");
                                        for (Pair<TaxReport, Integer> i : danhsach) {
                                %>
                                <tr>
                                    <td><%=i.getKey().getId()%></td>
                                    <td><%=i.getKey().getTaxPayer().getName()%></td>
                                    <td><%=i.getKey().getTaxDetail().getIncomeTax().getType()%></td>
                                    <td><%=i.getKey().getTaxPayer().getPhoneNumber()%></td>
                                    <td><%=i.getValue()%></td>
                                    <td><%=i.getKey().getDate()%></td>
                                    <td><%=i.getKey().getStatus()%></td>

                                </tr>            
                                <%
                                        }
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
    </body>
    <script src="JS/admin.js">
    </script>
    <script src="JS/submit_tag_a.js">
    </script>
    <script type="text/javascript">
        function show_Lienhe(z)
        {
            document.getElementById("about-product").style.display = "block";
            var myTab = document.getElementById('tb_info');
            var vitri = z.closest("tr").rowIndex;

            var objCells = myTab.rows.item(vitri).cells;

            var str = "";
            str = str + objCells.item(0).innerHTML;
            document.getElementById("txt0").value = str;

        }
    </script>
</html>


