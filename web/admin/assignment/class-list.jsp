<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<% String classID = request.getParameter("id");%>

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                <li class="breadcrumb-item"><a href="/admin/assignment/index.jsp">Phân công</a></li>
                <li class="breadcrumb-item"><a href="/admin/assignment/index.jsp">Danh sách chi tiết</a></li>
                <li class="breadcrumb-item active">Danh sách sinh viên</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <sql:query dataSource = "${db}" var = "list">select * from sinh_vien where MaLop = '<%=classID%>'</sql:query>

            <div class="container-fluid my-3">
                <div id="table_dt_wrapper"></div>
                <div class="card">
                    <div class="card-body">
                        <table id="table_dt_print" class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-info">
                                    <th>Mã sinh viên</th>
                                    <th>Tên sinh viên</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var = "row" items = "${list.rows}">
                                <tr>
                                    <td>${row.MaSV}</td>
                                    <td>${row.HoTen}</td>
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