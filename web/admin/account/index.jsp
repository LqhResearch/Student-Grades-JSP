<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    String sql1 = "";
    String username = (String) request.getSession().getAttribute("username");
    int role = (int) request.getSession().getAttribute("role");

    if (request.getParameter("action") != null) {
        String password = request.getParameter("password");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        sql = "select count(*) as count from tai_khoan where TenDangNhap = '" + username + "' and MatKhau = md5('" + password + "')";
        if (password1.equals(password2)) {
            sql1 = "update tai_khoan set MatKhau = md5('" + password1 + "') where TenDangNhap = '" + username + "'";
        }

    }
%>

<% if (!sql.isEmpty()) {%>
<sql:query dataSource = "${db}" var = "res"><%=sql%></sql:query>
<c:if test="${res.getRows()[0].count > 0}">
    <% if (!sql1.isEmpty()) {%>
    <sql:update dataSource = "${db}" var = "res"><%=sql1%></sql:update>
    <%}%>
</c:if>
<%}%>

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                <li class="breadcrumb-item"><a href="#">Tài khoản</a></li>
                <li class="breadcrumb-item active">Đổi mật khẩu</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                    <form class="row" method="POST">
                        <div class="form-group col-md-6">
                            <label>Tên đăng nhập</label>
                            <input type="text" name="username" class="form-control" value="<%=username%>" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Mật khẩu cũ</label>
                            <input type="password" name="password" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Mật khẩu mới</label>
                            <input type="password" name="password1" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Nhập lại mật khẩu mới</label>
                            <input type="password" name="password2" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <button name="action" value="submit" class="btn btn-primary"><i class="fas fa-save"></i> Lưu</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>