<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    String id = request.getParameter("id");
    if (request.getParameter("action") != null) {
        String name = request.getParameter("name");
        String majorID = request.getParameter("major_id");
        sql = "update lop set TenLop = '" + name + "', MaNganhDT = " + majorID + " where MaLop = '" + id + "'";
    }
%>

<% if (!sql.isEmpty()) {%>
<sql:update dataSource = "${db}" var = "res"><%=sql%></sql:update>
<%
        response.sendRedirect("index.jsp");
    }
%>

<sql:query dataSource = "${db}" var = "res">select * from lop where MaLop = '<%=id%>';</sql:query>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/class/index.jsp">Lớp</a></li>
                    <li class="breadcrumb-item active">Sửa</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-header bg-info">
                        <h5 class="m-0">Sửa lớp</h5>
                    </div>
                    <form class="card-body" method="POST">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Mã lớp</label>
                                <input type="text" class="form-control" value="${res.getRows()[0].MaLop}" name="id" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Tên lớp</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].TenLop}" name=name>
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from nganh_dt;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Ngành đào tạo</label>
                                <select class="form-control select2" name="major_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaNganhDT}" ${row.MaNganhDT == res.getRows()[0].MaNganhDT ? "selected" : ""}>${row.tenNganhDT}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <button name="action" value="edit" class="btn btn-primary"><i class="fas fa-save"></i> Lưu</button>
                    <a href="/admin/class/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>