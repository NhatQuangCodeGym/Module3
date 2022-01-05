<%--
  Created by IntelliJ IDEA.
  User: macbookprom1
  Date: 29/12/2021
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
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
                        <h1 class="m-0 text-dark">Dashboard</h1>
                    </div><!-- /.col -->
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
                    <div class="container-fluid">
                        <div class="col-12">
                            <h2 class="page-title">Thông tin học sinh</h2>
                        </div>
                        <div class="col-12">
                            <a href="student">Trở về trang quản lý</a>
                        </div>

                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-4">
                                <figure class="figure">
                                    <img src="${student.getImage()}" class="figure-img img-fluid rounded"
                                         style="width: 370px; height: 370px" alt="Lỗi">
                                </figure>
                            </div>
                            <div class="col-12 col-sm-12 col-md-8">
                                <div class="row">
                                    <label class="col-8"><span class="font-weight-bold">Họ và tên:</span> ${student.getName()}</label>
                                </div>
                                <c:if test="${student.getGender()} == 1">
                                    <div class="row">
                                        <label class="col-8"><span class="font-weight-bold">Giới tính:</span> Nam</label>
                                    </div>
                                </c:if>
                                <c:if test="${student.getGender()} == 0">
                                    <div class="row">
                                        <label class="col-8"><span class="font-weight-bold">Giới tính:</span> Nữ</label>
                                    </div>
                                </c:if>
                                <div class="row">
                                    <label class="col-8"><span class="font-weight-bold">Ngày sinh:</span> ${student.getDob()}</label>
                                </div>
                                <div class="row">
                                    <label class="col-8"><span class="font-weight-bold">Email:</span> ${student.getMail()}</label>
                                </div>
                                <div class="row">
                                    <label class="col-8"><span class="font-weight-bold">Địa chỉ:</span> ${student.getAddress()}</label>
                                </div>
                                <div class="row">
                                    <label class="col-8"><span class="font-weight-bold">Số điện thoại:</span> ${student.getPhoneNum()}</label>
                                </div>
                                <div class="row">
                                    <label class="col-8">
                                        <span class="font-weight-bold">Trạng thái:</span>
                                        <c:if test="${student.getStatus() == 1}">
                                            <td>
                                                <span class="badge badge-primary">Đang học</span>
                                            </td>
                                        </c:if>
                                        <c:if test="${student.getStatus() == 0}">
                                            <td>
                                                <span class="badge badge-danger">Nghỉ học</span>
                                            </td>
                                        </c:if>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div><a href="student">Trở về trang quản lý</a></div>

                    </div>
                    <!-- end container-fluid -->
                </div>
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
