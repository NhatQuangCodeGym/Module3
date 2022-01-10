<div class="content-page">
  <!-- Start content -->
  <div class="content">
    <!-- Start container-fluid-->
    <div class="container-fluid">

      <!-- start page title -->
      <div class="col-12">
        <h2 class="page-title">Thêm học sinh</h2>
      </div>
      <div class="col-12">
        <a href="student">Trở về trang quản lý</a>
      </div>
      <!-- end page title -->

      <form method="post" class="row">
        <div class="form-group col-12 col-sm-12 col-md-4">
          <label>Họ và tên: </label>
          <input type="text" name="name" class="form-control" id="name" placeholder="Select the name">
        </div>
        <div class="form-group col-12 col-sm-12 col-md-4">
          <label>Giới tính: </label>
          <select name="gender" class="form-control">
            <option value="1">Nam</option>
            <option value="0">Nữ</option>
          </select>
        </div>
        <div class="form-group col-12 col-sm-12 col-md-4">
          <label>Ngày sinh: </label>
          <input type="date" name="dob" class="form-control" id="dob" >
        </div>
        <div class="form-group col-12 col-sm-12 col-md-4">
          <label>Email: </label>
          <input type="email" name="mail" class="form-control" id="mail" >
        </div>
        <div class="form-group col-12 col-sm-12 col-md-4">
          <label>Địa chỉ: </label>
          <input type="text" name="address" class="form-control" id="address" >
        </div>
        <div class="form-group col-12 col-sm-12 col-md-4">
          <label>Số điện thoại: </label>
          <input type="text" name="phoneNum" class="form-control" id="phoneNum" placeholder="+1 (545) 409-2137">
        </div>

        <div class="form-group col-12 col-sm-12 col-md-2">
          <button type="submit" class="btn btn-primary" id="submit">Thêm mới</button>
        </div>
      </form>

    </div>
    <!-- end container-fluid -->
  </div>
  <!-- end content -->

  <!-- Footer Start -->
  <%@ include file="/layout/footer.jsp"%>
  <!-- end Footer -->
</div>
<!-- End Page content -->
</div>