<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Phần mềm quản lý </title>
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
                        <h1 class="m-0 text-dark">Tạo giảng viên</h1>
                    </div><!-- /.col -->
                    <div class="col">

                    </div>
                    <div class="col">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- Main content -->
<%--        <p>--%>
<%--            <c:if test='${requestScope["message"] != null}'>--%>
<%--                <span class="message">${requestScope["message"]}</span>--%>
<%--            </c:if>--%>
<%--        </p>--%>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <%--            Content here--%>

                        <form method="post" >

                                <label>Họ và tên: </label>
                                <input type="text" name="name" class="form-control" id="name" placeholder="Select the name">


                                <label>Giới tính: </label>
                                <select name="gender" class="form-control">
                                    <option value="1">Nam</option>
                                    <option value="0">Nữ</option>
                                </select>


                                <label>Email: </label>
                                <input type="email" name="mail" class="form-control" id="mail" >


                                <label>Địa chỉ: </label>
                                <input type="text" name="address" class="form-control" id="address" >


                                <label>Số điện thoại: </label>
                                <input type="text" name="phoneNum" class="form-control" id="phoneNum" placeholder="+1 (545) 409-2137">


<%--                            <div class="form-group col-12 col-sm-12 col-md-2">--%>
<%--                                <button type="submit" class="btn btn-primary" id="submit">Thêm mới</button>--%>
<%--                                <button type="submit" class="btn btn-primary" href="student">Quay lại</button>--%>
<%--                                <a href="#" class="btn btn-success" id="submit">Thêm mới</a>--%>
<%--                                <a href="#" class="btn btn-warning" href="student">Quay lại </a>--%>
                            <input type="submit" value="Thêm mới" class="btn btn-success" id="submit">
                            <a class="btn btn-warning" href="instructor">Quay lại </a>
<%--                            </div>--%>
                        </form>
                </div>
            </div>
        </section>
        <!-- /.content-header -->
    </div>
    <%@ include file="../layout/footer.jsp"%>
</div>
<div id="alert" style="display:none">
    <c:if test='${requestScope["success"] != null  }'>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'New student was created',
                showConfirmButton: false,
                timer: 1500
            })
        </script>
    </c:if>
    <c:if test='${requestScope["error"] != null}'>
        <div class="alert alert-danger" style="position: fixed; bottom: 0; right: 0; left: 0">
            <button type="button" class="close" data-dismiss="alert">x</button>
            <strong>Error!</strong> ${requestScope["error"]}
        </div>
        <script>
            $(document).ready(function() {
                $("#submit").click(function () {
                    // $(".alert-danger").show();
                    $(".alert-danger").slideUp("slow");
                });

                $(".close").click(function () {
                    // $(".alert-danger").hide();
                    $(".alert-danger").slideUp("slow");
                });
            });
        </script>
    </c:if>
    <c:if test='${requestScope["warning"] != null}'>
        <div class="alert alert-warning" style="position: fixed; bottom: 0; right: 0; left: 0">
            <button type="button" class="close" data-dismiss="alert">x</button>
            <strong>Warning!</strong> ${requestScope["warning"]}
        </div>
        <script>
            $(document).ready(function() {
                $("#submit").click(function () {
                    // $(".alert-warning").show();
                    $(".alert-warning").slideUp("slow");
                });
                $(".close").click(function () {
                    // $(".alert-warning").hide();
                    $(".alert-warning").slideUp("slow");
                });

            });
        </script>
    </c:if>
</div>
</body>
<%@ include file="../layout/script.jsp"%>
</html>