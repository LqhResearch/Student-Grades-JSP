<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    if (request.getParameter("action") != null) {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String majorID = request.getParameter("major_id");
        String note = request.getParameter("note");
        String idCard = request.getParameter("id_card");
        sql = "INSERT INTO giang_vien VALUES ('" + id + "', '" + name + "', '" + gender + "', '" + birthday + "', '" + phone + "', '" + address + "', '" + email + "', '" + idCard + "', '" + note + "', " + majorID + ")";
    }
%>

<% if (!sql.isEmpty()) {%>
<sql:update dataSource = "${db}" var = "res"><%=sql%></sql:update>
<%
        response.sendRedirect("index.jsp");
    }
%>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                <li class="breadcrumb-item"><a href="/admin/teacher/index.jsp">Giảng viên</a></li>
                <li class="breadcrumb-item active">Thêm</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid my-3">
            <div class="card">
                <div class="card-header bg-info">
                    <h5 class="m-0">Thêm giảng viên</h5>
                </div>
                <form class="card-body" method="POST">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Mã giảng viên</label>
                            <input type="text" class="form-control" name="id">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Họ và tên</label>
                            <input type="text" class="form-control" name="name">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ngày sinh</label>
                            <input type="date" class="form-control" name="birthday">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Giới tính</label>
                            <select class="form-control select2" name="gender">
                                <option value="Nam">Nam</option>
                                <option value="Nữ">Nữ</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số CMND/CCCD</label>
                            <input type="text" class="form-control" name="id_card">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Email</label>
                            <input type="text" class="form-control" name="email">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Điện thoại</label>
                            <input type="text" class="form-control" name="phone">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" name="address">
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from nganh_dt;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Chuyên ngành</label>
                                <select class="form-control select2" name="major_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaNganhDT}">${row.TenNganhDT}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ghi chú</label>
                            <input type="text" class="form-control" name="note">
                        </div>
                    </div>
                    <button name="action" value="add" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</button>
                    <a href="/admin/teacher/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>