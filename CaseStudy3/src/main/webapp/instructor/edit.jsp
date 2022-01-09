<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Phần mềm quản lý giảng viên</title>
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
                        <h1 class="m-0 text-dark">Chỉnh sửa thông tin giảng viên</h1>
                    </div><!-- /.col -->
                    <div class="col-12">
                        <a href="instructor">Trở về trang quản lý</a>
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
                            <c:if test="${instructor != null}">
                                <input type="hidden" name="id" value="${instructor.getId()}"/>
                            </c:if>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Họ và tên: </label>
                                <input type="text" name="name" class="form-control" id="name" value="${instructor.getName()}" placeholder="Select the name">
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Giới tính: </label>
                                <select name="gender" class="form-control">
                                    <c:choose>
                                        <c:when test="${instructor.getGender() == 1}">
                                            <option value="1" selected>Nam</option>
                                            <option value="0">Nữ</option>
                                        </c:when>
                                        <c:when test="${instructor.getGender() == 0}">
                                            <option value="1" >Nam</option>
                                            <option value="0 selected">Nữ</option>
                                        </c:when>
                                    </c:choose>
<%--                                    <c:if test="${instructor.getGender() == 1}">--%>
<%--                                        <option value="1" selected>Nam</option>--%>
<%--                                        <option value="0">Nữ</option>--%>
<%--                                    </c:if>--%>

<%--                                    <c:if test="${instructor.getGender() == 0}">--%>
<%--                                        <option value="0">Nữ</option>--%>
<%--                                        <option value="1">Nam</option>--%>
<%--                                    </c:if>--%>
                                </select>
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Email: </label>
                                <input type="email" name="mail" class="form-control" id="mail" value="${instructor.getMail()}" >
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Địa chỉ: </label>
                                <input type="text" name="address" class="form-control" id="address" value="${instructor.getAddress()}">
                            </div>
                            <div class="form-group col-12 col-sm-12 col-md-4">
                                <label>Số điện thoại: </label>
                                <input type="text" name="phoneNum" class="form-control" id="phoneNum" value="${instructor.getPhoneNum()}" placeholder="+1 (545) 409-2137">
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