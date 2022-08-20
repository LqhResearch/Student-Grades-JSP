<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    if (request.getParameter("del-id") != null) {
        String id = request.getParameter("del-id");
        sql = "delete from hoc_phan where MaHP = '" + id + "'";
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
                <li class="breadcrumb-item"><a href="/admin/subject/index.jsp">Học phần</a></li>
                <li class="breadcrumb-item active">Danh sách chi tiết</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <a href="/admin/subject/add.jsp" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</a>
        </div>

        <sql:query dataSource = "${db}" var = "list">select * from hoc_phan, nganh_dt WHERE hoc_phan.MaNganhDT = nganh_dt.MaNganhDT;</sql:query>

            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-body">
                        <table id="table_dt" class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-info">
                                    <th>Mã học phần</th>
                                    <th>Tên học phần</th>
                                    <th>Số tín chỉ</th>
                                    <th>STC lý thuyết</th>
                                    <th>STC thực hành</th>
                                    <th>Loại môn học</th>
                                    <th>Ngành đào tạo</th>
                                    <th width="118">Công cụ</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var = "row" items = "${list.rows}">
                                <tr>
                                    <td>${row.MaHP}</td>
                                    <td>${row.TenHP}</td>
                                    <td>${row.STC}</td>
                                    <td>${row.STCLyThuyet}</td>
                                    <td>${row.STCThucHanh}</td>
                                    <td>${row.LoaiHP}</td>
                                    <td>${row.TenNganhDT}</td>
                                    <td>
                                        <a href="/admin/subject/edit.jsp?id=${row.MaHP}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow('${row.MaHP}')" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>