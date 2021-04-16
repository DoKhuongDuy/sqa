<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="test1.css" rel="stylesheet" type="text/css" />
        <style>
            <%@ include file ="/CSS/test1.css" %>
        </style>
</head>
<body>
   
    <div class="main-content">
    <div>
      <!-- Table -->
        
      <div class="row">
        <div class="col-xl-8 m-auto order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Trang cá nhân</h3>
                </div>                
              </div>
            </div>
            <div class="card-body">
              
                <h6 class="heading-small text-muted mb-4">Thông tin tài khoản</h6>
                <div class="pl-lg-4">
                    
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Tài khoản</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="" disabled>
                        </div>
                      </div>
                    </div>
                <form action="change_Matkhau" method="post">
                  <div class="row" style="display: none;" id="mk">
                      
                      <div class="col-lg-4">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-city">Mật khẩu cũ</label>
                          <input type="hidden" value="" id="mk_cu">
                          <input type="password" id="mkcu" class="form-control form-control-alternative" name="MKcu">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-country">Mật khẩu mới</label>
                          <input type="password" id="mkmoi" class="form-control form-control-alternative" name="MKmoi">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label class="form-control-label" for="input-country">Nhập mật khẩu mới</label>
                          <input type="password" id="mkmoi2" class="form-control form-control-alternative" name="MKmoi2">
                        </div>
                      </div>
                      <div style="display: flex; align-items: center;justify-content: center;">                       
                          <input type="submit" class="btn btn-sm btn-primary" value="thay đổi" style="margin-left: 14px;">
                      </div>
                      
                  </div>
                </form>
                <form action="update_Thongtin" method="post">
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Họ tên</label>
                          <input id="input-address" class="form-control form-control-alternative" value="" type="text">
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Email</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="">
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Số điện thoại</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="">
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Địa chỉ</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="">
                        </div>
                      </div>
                  </div>                     
                </form>
                </div>
                <hr class="my-4">
                <!-- Address -->              
            </div>
              
            <div class="card-body">
              
                <h6 class="heading-small text-muted mb-4">Chi tiết thuế</h6>
                <div class="pl-lg-4">
                    
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Mã số thuế</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="" disabled>
                        </div>
                      </div>
                    </div>
               
                <form action="update_Thongtin" method="post">
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Khoản giảm trừ</label>
                          <input id="input-address" class="form-control form-control-alternative" value="" type="text">
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Email</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="">
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Số điện thoại</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="">
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                        <div class="form-group focused">
                          <label class="form-control-label" for="input-address">Địa chỉ</label>
                          <input id="input-address" class="form-control form-control-alternative" type="text" value="">
                        </div>
                      </div>
                  </div>
                    <div style="display: flex; align-items: center;justify-content: center;">                       
                       <input type="submit" class="btn btn-sm btn-primary" value="cập nhật thông tin" >
                   </div>     
                </form>
                </div>
                <hr class="my-4">
                <!-- Address -->              
            </div>
              
              
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="footer">
    <div class="row align-items-center justify-content-xl-between">
      <div class="col-xl-6 m-auto text-center">
        <div class="copyright">
          <p>Made with <a href="https://www.creative-tim.com/product/argon-dashboard" target="_blank">Argon Dashboard</a> by Creative Tim</p>
        </div>
      </div>
    </div>
  </footer>
</body>
<script src="JS/main.js"></script>
<script type="text/javascript">
	function show()
	{
		document.getElementById("mk").style.display = "flex";
	}
        
        
</script>
</html>
