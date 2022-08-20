<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    if (request.getParameter("action") != null) {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String stcLT = request.getParameter("stcLT");
        String stcTH = request.getParameter("stcTH");
        int stc = Integer.parseInt(stcLT) + Integer.parseInt(stcTH);
        String subjectType = request.getParameter("subject_type");
        String majorID = request.getParameter("major_id");
        sql = "INSERT INTO hoc_phan VALUES ('" + id + "', '" + name + "', " + stc + ", " + stcLT + ", " + stcTH + ", '" + subjectType + "', '" + majorID + "')";
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
                <li class="breadcrumb-item active">Thêm</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid my-3">
            <div class="card">
                <div class="card-header bg-info">
                    <h5 class="m-0">Thêm học phần</h5>
                </div>
                <form class="card-body" method="POST">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Mã học phần</label>
                            <input type="text" class="form-control" name="id">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Tên học phần</label>
                            <input type="text" class="form-control" name="name">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số tín chỉ lý thuyết</label>
                            <input type="number" class="form-control" name="stcLT">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số tín chỉ thực hành</label>
                            <input type="number" class="form-control" name="stcTH">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Loại học phần</label>
                            <select class="form-control select2" name="subject_type">
                                <option value="BB">Bắt buộc</option>
                                <option value="TC">Tự chọn</option>
                            </select>
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from nganh_dt;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Ngành đào tạo</label>
                                <select class="form-control select2" name="major_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaNganhDT}">${row.TenNganhDT}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <button name="action" value="add" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</button>
                    <a href="/admin/subject/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>