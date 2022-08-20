<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    if (request.getParameter("action") != null) {
        String name = request.getParameter("name");
        String department_id = request.getParameter("department_id");
        sql = "INSERT INTO nganh_dt VALUES (null, '" + name + "', " + department_id + ")";
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
                <li class="breadcrumb-item"><a href="/admin/major/index.jsp">Ngành đào tạo</a></li>
                <li class="breadcrumb-item active">Thêm</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid my-3">
            <div class="card">
                <div class="card-header bg-info">
                    <h5 class="m-0">Thêm ngành đào tạo</h5>
                </div>
                <form class="card-body" method="POST">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Tên ngành</label>
                            <input type="text" class="form-control" name="name">
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from bo_mon;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Bộ môn</label>
                                <select class="form-control select2" name="department_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaBM}">${row.TenBM}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <button name="action" value="add" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</button>
                    <a href="/admin/major/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>