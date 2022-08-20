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
        String ethnic = request.getParameter("ethnic");
        String idCard = request.getParameter("id_card");
        String religion = request.getParameter("religion");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String classID = request.getParameter("class_id");
        String note = request.getParameter("note");
        sql = "update sinh_vien set HoTen = '" + name + "', NgaySinh = '" + birthday + "', GioiTinh = '" + gender + "', MaDT = '" + ethnic + "', SoCCCD = '" + idCard + "', TonGiao = '" + religion + "', Email = '" + email + "', Sdt = '" + phone + "', DiaChi = '" + address + "', MaLop = '" + classID + "', GhiChu = '" + note + "' where MaSV = '" + id + "'";
    }
%>
<% if (!sql.isEmpty()) {%>
<sql:update dataSource = "${db}" var = "res"><%=sql%></sql:update>
<%
        response.sendRedirect("index.jsp");
    }
%>

<sql:query dataSource = "${db}" var = "res">select * from sinh_vien where MaSV = '<%=id%>';</sql:query>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/student/index.jsp">Sinh viên</a></li>
                    <li class="breadcrumb-item active">Sửa</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-header bg-info">
                        <h5 class="m-0">Sửa sinh viên</h5>
                    </div>
                    <form class="card-body" method="POST">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Mã sinh viên</label>
                                <input type="text" class="form-control" value="${res.getRows()[0].MaSV}" name="id" readonly>
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
                        <sql:query dataSource = "${db}" var = "list">select * from dan_toc;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Dân tộc</label>
                                <select class="form-control select2" name="ethnic">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaDT}" ${res.getRows()[0].MaDT == row.MaDT ? "selected" : ""}>${row.TenDT}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số CMND/CCCD</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].SoCCCD}" name="id_card">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Tôn giáo</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].TonGiao}" name="religion">
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
                        <sql:query dataSource = "${db}" var = "list">select * from lop;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Lớp</label>
                                <select class="form-control select2" name="class_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaLop}" ${res.getRows()[0].MaLop == row.MaLop ? "selected" : ""}>${row.TenLop}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ghi chú</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].GhiChu}" name="note">
                        </div>
                    </div>
                    <button name="action" value="edit" class="btn btn-primary"><i class="fas fa-save"></i> Lưu</button>
                    <a href="/admin/student/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>