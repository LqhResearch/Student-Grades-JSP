<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    String id = request.getParameter("id");
    if (request.getParameter("action") != null) {
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String majorID = request.getParameter("major_id");
        String note = request.getParameter("note");
        String idCard = request.getParameter("id_card");
        sql = "update giang_vien set HoTen = '" + name + "', NgaySinh = '" + birthday + "', GioiTinh = '" + gender + "', SoCCCD = '" + idCard + "', Email = '" + email + "', Sdt = '" + phone + "', DiaChi = '" + address + "', GhiChu = '" + note + "', MaNganhDT = " + majorID + " where MaGV = '" + id + "'";
    }
%>
<% if (!sql.isEmpty()) {%>
<sql:update dataSource = "${db}" var = "res"><%=sql%></sql:update>
<%
        response.sendRedirect("index.jsp");
    }
%>

<sql:query dataSource = "${db}" var = "res">select * from giang_vien where MaGV = '<%=id%>';</sql:query>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/teacher/index.jsp">Giảng viên</a></li>
                    <li class="breadcrumb-item active">Sửa</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-header bg-info">
                        <h5 class="m-0">Sửa giảng viên</h5>
                    </div>
                    <form class="card-body" method="POST">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Mã giảng viên</label>
                                <input type="text" class="form-control" value="${res.getRows()[0].MaGV}" name="id" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Họ và tên</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].HoTen}" name="name">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ngày sinh</label>
                            <input type="date" class="form-control" value="${res.getRows()[0].NgaySinh}" name="birthday">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Giới tính</label>
                            <select class="form-control select2" name="gender">
                                <option value="Nam" ${res.getRows()[0].GioiTinh == "Nam" ? "selected" : ""}>Nam</option>
                                <option value="Nữ" ${res.getRows()[0].GioiTinh == "Nữ" ? "selected" : ""}>Nữ</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số CMND/CCCD</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].SoCCCD}" name="id_card">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Email</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].Email}" name="email">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Điện thoại</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].Sdt}" name="phone">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].DiaChi}" name="address">
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from nganh_dt;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Chuyên ngành</label>
                                <select class="form-control select2" name="major_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaNganhDT}" ${res.getRows()[0].MaNganhDT == row.MaNganhDT ? "selected" : ""}>${row.TenNganhDT}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ghi chú</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].GhiChu}" name="note">
                        </div>
                    </div>
                    <button name="action" value="edit" class="btn btn-primary"><i class="fas fa-save"></i> Lưu</button>
                    <a href="/admin/teacher/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>