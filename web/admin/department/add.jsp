<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    if (request.getParameter("action") != null) {
        String name = request.getParameter("name");
        sql = "INSERT INTO bo_mon VALUES (null, '" + name + "')";
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
                <li class="breadcrumb-item"><a href="/admin/department/index.jsp">Bộ môn</a></li>
                <li class="breadcrumb-item active">Thêm</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid my-3">
            <div class="card">
                <div class="card-header bg-info">
                    <h5 class="m-0">Thêm bộ môn</h5>
                </div>
                <form class="card-body" method="POST">
                    <div class="form-group">
                        <label>Tên bộ môn</label>
                        <input type="text" class="form-control" name="name">
                    </div>
                    <button name="action" value="add" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</button>
                    <a href="/admin/department/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>