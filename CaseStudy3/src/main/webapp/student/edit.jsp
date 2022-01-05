<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Phần mềm quản lý điểm</title>
    <%@ include file="../layout/head.jsp"%>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <%@ include file="../layout/header.jsp"%>
    <%@ include file="../layout/sidebarleft.jsp"%>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Chỉnh sửa thông tin sinh viên</h1>
                    </div><!-- /.col -->
                    <div class="col-12">
                        <a href="student">Trở về trang quản lý</a>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <%--            Content here--%>
                        <form method="post" class="row">
                            <c:if test="${student != null}">
                                <input type="hidden" name="id" value="${student.getId()}"/>
                            </c:if>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Họ và tên: </label>
                                <input type="text" name="name" class="form-control" id="name" value="${student.getName()}" placeholder="Select the name">
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Giới tính: </label>
                                <select name="gender" class="form-control">
                                    <c:if test="${student.getGender() == 1}">
                                        <option value="1">Nam</option>
                                        <option value="0">Nữ</option>
                                    </c:if>
                                    <c:if test="${student.getGender() == 0}">
                                        <option value="0">Nữ</option>
                                        <option value="1">Nam</option>
                                    </c:if>
                                </select>
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Ngày sinh: </label>
                                <input type="date" name="dob" class="form-control" id="dob" value="${student.getDob()}">
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Email: </label>
                                <input type="email" name="mail" class="form-control" id="mail" value="${student.getMail()}" >
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Địa chỉ: </label>
                                <input type="text" name="address" class="form-control" id="address" value="${student.getAddress()}">
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Số điện thoại: </label>
                                <input type="text" name="phoneNum" class="form-control" id="phoneNum" value="${student.getPhoneNum()}" placeholder="+1 (545) 409-2137">
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Trạng thái: </label>
                                <select name="status" class="form-control">
                                    <c:if test="${student.getStatus() == 1}">
                                        <option value="1">Đang học</option>
                                        <option value="0">Bỏ học</option>
                                    </c:if>
                                </select>
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Hình ảnh: </label>
                                <input type="text" name="image" class="form-control" id="image" value="${student.getImage()}">
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                &nbsp;
                            </div>

                            <div class="form-group col-12 col-sm-12 col-md-2">
                                <button type="submit" class="btn btn-primary" id="submit">Cập nhật</button>
                            </div>
                        </form>
                </div>
            </div>
        </section>
        <!-- /.content-header -->
    </div>
    <%@ include file="../layout/footer.jsp"%>
</div>
</body>
<%@ include file="../layout/script.jsp"%>
</html>