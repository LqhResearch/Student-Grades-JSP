<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="dbconnect.jsp"></jsp:directive.include>

<%
    String sql = "";
    if (request.getParameter("action") != null) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        sql = "select * from tai_khoan where TenDangNhap = '" + username + "' and MatKhau = md5('" + password + "')";
    }
%>

<% if (!sql.isEmpty()) {%>
<sql:query dataSource = "${db}" var = "user"><%=sql%></sql:query>
<c:set var = "username" scope = "session" value = "${user.getRows()[0].TenDangNhap}"/>
<c:set var = "fullname" scope = "session" value = "${user.getRows()[0].HoTen}"/>
<c:set var = "role" scope = "session" value = "${user.getRows()[0].MaLoaiTK}"/>
<%
        Object role = request.getSession().getAttribute("role");
        if (role.equals(1)) {
            response.sendRedirect("/admin/index.jsp");
        } else if (role.equals(2)) {
            response.sendRedirect("/teacher/info/index.jsp");
        } else if (role.equals(3)) {
            response.sendRedirect("/student/info/index.jsp");
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Đăng nhập</title>
        <link rel="icon" href="/assets/img/favicon.png">

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="/adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css">
        <style>
            body {
                background: bottom / cover no-repeat url("/assets/img/logo_bg.png");
            }
        </style>
    </head>
    <body class="hold-transition login-page">
        <div class="login-logo">
            <h1 class="text-warning"><b>Phần mềm quản lý điểm sinh viên khoa Kỹ thuật - Công nghệ</b></h1>
        </div>

        <div class="login-box">
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg text-primary"><b>Đăng nhập để bắt đầu phiên làm việc</b></p>

                    <form method="POST">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="username">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" name="password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-7">
                                <div class="icheck-primary">
                                    <input type="checkbox" id="remember">
                                    <label for="remember">Nhớ đăng nhập</label>
                                </div>
                            </div>
                            <div class="col-5">
                                <button name="action" value="submit" class="btn btn-primary btn-block">Đăng nhập</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="/adminlte/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="/adminlte/dist/js/adminlte.min.js"></script>
    </body>
</html>
