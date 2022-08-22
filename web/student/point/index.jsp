<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/teacher/assignment/index.jsp">Bảng điểm của tôi</a></li>
                    <li class="breadcrumb-item active">Danh sách chi tiết</li>
                </ol>
            </div>
        </section>

    <sql:query dataSource = "${db}" var = "list">select * from bang_diem, hoc_phan where bang_diem.MaHP = hoc_phan.MaHP and MaSV = '<%=request.getSession().getAttribute("username")%>'</sql:query>

        <div class="container-fluid my-3">
            <div id="table_dt_wrapper"></div>
        </div>

        <section class="content">
            <div class="container-fluid">
                <table id="table_dt_print" class="table table-bordered table-striped">
                    <thead>
                        <tr class="bg-info">
                            <th>Mã học phần</th>
                            <th>Tên học phần</th>
                            <th>Điểm QT</th>
                            <th>Điểm thi</th>
                            <th>Điểm TK</th>
                            <th>Điểm chữ</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var = "row" items = "${list.rows}">
                        <tr>
                            <td>${row.MaHP}</td>
                            <td>${row.TenHP}</td>
                            <td>${row.DiemQT}</td>
                            <td>${row.DiemThi}</td>
                            <td>${(row.DiemQT + row.DiemThi) / 2}</td>
                            <td>${Helper.Point4((row.DiemQT + row.DiemThi) / 2)}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>