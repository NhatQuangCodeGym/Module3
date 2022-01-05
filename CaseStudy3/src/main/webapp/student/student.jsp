<%--
  Created by IntelliJ IDEA.
  User: macbookprom1
  Date: 29/12/2021
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <h1 class="m-0 text-dark">Danh sách học sinh</h1>
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
                        <div class="col-sm-12">
                            <div class="card-box table-responsive">
                                <div class="row justify-content-between mb-2 mr-2 ml-2">
                                    <a href="${pageContext.request.contextPath}/student?action=create" class="btn btn-sm btn-outline-primary my-2 my-sm-0"><i class="fas fa-plus"></i> Thêm mới</a>
                                    <form class="form-inline my-2 my-lg-0" method="post" action="${pageContext.request.contextPath}/student?action=search">
                                        <input class="form-control form-control-sm mr-sm-2" name="string-search" type="search" placeholder="Search" aria-label="Search">
                                        <button class="btn btn-sm btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                                    </form>
                                </div>

                                <table id="myTable" class="table table-colored-bordered table-bordered table-bordered-teal dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                    <tr class="text-center">
                                        <th scope="col" >ID</th>
                                        <th scope="col">Họ và tên</th>
                                        <th scope="col">Giới tính</th>
                                        <th scope="col">Ngày sinh</th>
                                        <%--                                        <th scope="col">Email</th>--%>
                                        <th scope="col">Địa chỉ</th>
                                        <th scope="col">Số điện thoại</th>
                                        <th scope="col">Trạng thái</th>
                                        <th scope="col">Thao tác</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="student" items="${requestScope['listStudent']}">

                                        <tr class="text-center" >
                                            <td scope="row">${student.id}</td>
                                            <td>${student.getName()}</td>

                                            <c:if test="${student.getGender() == 1}">
                                                <td>Nam</td>
                                            </c:if>
                                            <c:if test="${student.getGender() == 0}">
                                                <td>Nữ</td>
                                            </c:if>

                                            <td>${student.getDob()}</td>
                                                <%--                                            <td>${student.getMail()}</td>--%>
                                            <td>${student.getAddress()}</td>
                                            <td>${student.getPhoneNum()}</td>

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

                                            <td>
                                                <a href="${pageContext.request.contextPath}/student?action=edit&id=${student.getId()}"
                                                   title="Edit" class="btn-me" id="btn-edit">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a data-id="${student.id}" title="Delete" data-toggle="modal"
                                                   class="btn-me delete" id="btn-trash">
                                                    <i class="fa fa-trash"></i>
                                                </a>
                                                <a href="${pageContext.request.contextPath}/student?action=info&id=${student.getId()}"
                                                   title="Information" class="btn-me">
                                                    <i class="fas fa-info-circle"></i>
                                                </a>
                                            </td>

                                        </tr>

                                    </c:forEach>
                                    </tbody>
                                </table>

                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
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
