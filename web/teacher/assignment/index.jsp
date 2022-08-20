<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/teacher/assignment/index.jsp">Phân công của tôi</a></li>
                    <li class="breadcrumb-item active">Danh sách phân công</li>
                </ol>
            </div>
        </section>

        <sql:query dataSource = "${db}" var = "list">select * from phan_cong, hoc_phan where phan_cong.MaHP = hoc_phan.MaHP and MaGV = '<%=request.getSession().getAttribute("username")%>'</sql:query>
        
        <section class="content">
            <div class="container-fluid">
                <table id="table_dt" class="table table-bordered table-striped">
                    <thead>
                        <tr class="bg-info">
                            <th>Năm học</th>
                            <th>Học kỳ</th>
                            <th>Lớp</th>
                            <th>Môn học</th>
                            <th width="118">Công cụ</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var = "row" items = "${list.rows}">
                        <tr>
                            <td>${row.NamHoc}</td>
                            <td>${row.HocKy}</td>
                            <td>${row.MaLop}</td>
                            <td>${row.TenHP}</td>
                            <td>
                                <a href="/admin/point/index.jsp?MaLop=${row.MaLop}&MaHP=${row.MaHP}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa điểm</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>