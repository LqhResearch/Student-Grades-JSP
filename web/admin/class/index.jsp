<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    if (request.getParameter("del-id") != null) {
        String id = request.getParameter("del-id");
        sql = "delete from lop where MaLop = '" + id + "'";
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
                <li class="breadcrumb-item"><a href="/admin/class/index.jsp">Lớp</a></li>
                <li class="breadcrumb-item active">Danh sách chi tiết</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <a href="/admin/class/add.jsp" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</a>
        </div>

        <sql:query dataSource = "${db}" var = "list">select * from lop, nganh_dt WHERE lop.MaNganhDT = nganh_dt.MaNganhDT;</sql:query>

            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-body">
                        <table id="table_dt" class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-info">
                                    <th>Mã lớp học</th>
                                    <th>Tên lớp học</th>
                                    <th>Ngành đào tạo</th>
                                    <th width="186">Công cụ</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var = "row" items = "${list.rows}">
                                <tr>
                                    <td>${row.MaLop}</td>
                                    <td>${row.TenLop}</td>
                                    <td>${row.TenNganhDT}</td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=${row.MaLop}" class="btn btn-sm btn-warning"><i class="fas fa-eye"></i> Xem</a>
                                        <a href="/admin/class/edit.jsp?id=${row.MaLop}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow('${row.MaLop}')" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
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