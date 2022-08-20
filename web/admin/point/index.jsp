<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String maBM = request.getParameter("MaBM");
    String maLop = request.getParameter("MaLop");
    String maHP = request.getParameter("MaHP");

    String sql = "";
    if (request.getParameter("action") != null) {
        String maBD = request.getParameter("MaBD");
        String maSV = request.getParameter("MaSV");
        String diemQT = request.getParameter("DiemQT");
        String diemThi = request.getParameter("DiemThi");
        if (maBD == "") {
            // Add
            sql = "insert into bang_diem values (null, '" + maLop + "', '" + maHP + "', '" + maSV + "', " + diemQT + ", " + diemThi + ")";
        } else {
            // Update
            sql = "update bang_diem set DiemQT = " + diemQT + ", DiemThi = " + diemThi + " where MaBD = " + maBD;
        }
    }
%>

<% if (!sql.isEmpty()) {%>
<sql:update dataSource = "${db}" var = "res"><%=sql%></sql:update>
<%
    }
%>

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                <li class="breadcrumb-item"><a href="/admin/class/index.jsp">Bảng điểm</a></li>
                <li class="breadcrumb-item active">Danh sách chi tiết</li>
            </ol>
        </div>
    </section>

    <sql:query dataSource = "${db}" var = "find">select * from bang_diem where MaLop = '<%=maLop%>' and MaHP = '<%=maHP%>' LIMIT 1</sql:query>

        <section class="content">
        <% if (request.getSession().getAttribute("role").equals(1)) { %>
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                    <form class="row">
                        <sql:query dataSource = "${db}" var = "list">select * from lop;</sql:query>
                            <div class="form-group col-md-5">
                                <label>Lớp</label>
                                <select class="form-control select2" name="MaLop">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaLop}" ${row.MaLop == find.getRows()[0].MaLop ? "selected" : ""}>${row.MaLop}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from hoc_phan;</sql:query>
                            <div class="form-group col-md-5">
                                <label>Học phần</label>
                                <select class="form-control select2" name="MaHP">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaHP}" ${row.MaHP == find.getRows()[0].MaHP ? "selected" : ""}>${row.TenHP}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label>&nbsp;</label>
                            <button class="btn btn-warning btn-block">Tìm kiếm</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <% }
            if (maLop != null & maHP != null) {
        %>
        <sql:query dataSource = "${db}" var = "list">select MaBD, phan_cong.MaLop, phan_cong.MaHP, sinh_vien.*, ifnull(DiemQT, 0) as DiemQT, ifnull(DiemThi, 0) as DiemThi from phan_cong join sinh_vien on phan_cong.MaLop = sinh_vien.MaLop left join bang_diem on bang_diem.MaSV = sinh_vien.MaSV and bang_diem.MaHP = phan_cong.MaHP where phan_cong.MaLop = '<%=maLop%>' and phan_cong.MaHP = '<%=maHP%>'</sql:query>

            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-body">
                        <table id="table_dt" class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-info">
                                    <th>Mã sinh viên</th>
                                    <th>Họ và tên</th>
                                    <th>Ngày sinh</th>
                                    <th>Giới tính</th>
                                    <th>Điểm QT</th>
                                    <th>Điểm thi</th>
                                    <th>Điểm TB</th>
                                    <th>Điểm chữ</th>
                                    <th width="64">Công cụ</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var = "row" items = "${list.rows}">
                                <tr>
                            <form method="POST">
                                <td>${row.MaSV}</td>
                                <td>${row.HoTen}</td>
                                <td>${row.NgaySinh}</td>
                                <td>${row.GioiTinh}</td>
                                <td><input name="DiemQT" class="form-control form-control-sm text-center" type="text" value="${row.DiemQT}" style="width: 80px;" /></td>
                                <td><input name="DiemThi" class="form-control form-control-sm text-center" type="text" value="${row.DiemThi}" style="width: 80px;" /></td>
                                <td><input class="form-control form-control-sm text-center" type="text" value="${(row.DiemQT + row.DiemThi) / 2}" style="width: 80px;" readonly /></td>
                                <td><input class="form-control form-control-sm text-center" type="text" value="${Helper.Point4((row.DiemQT + row.DiemThi) / 2)}" style="width: 80px;" readonly /></td>
                                <td>
                                    <button name="action" value="save" class="btn btn-sm btn-primary"><i class="fas fa-save"></i> Lưu</button>
                                </td>
                                <input type="hidden" name="MaBD" value="${row.MaBD}" />
                                <input type="hidden" name="MaSV" value="${row.MaSV}" />
                            </form>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <%   }%>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>