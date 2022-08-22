<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    if (request.getParameter("action") != null) {
        String year = request.getParameter("year");
        String semesterID = request.getParameter("semester_id");
        String classID = request.getParameter("class_id");
        String subjectID = request.getParameter("subject_id");
        String teacherID = request.getParameter("teacher_id");
        sql = "INSERT INTO phan_cong VALUES (null, '" + classID + "', '" + subjectID + "', '" + teacherID + "', '" + year + "', " + semesterID + ")";
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
                <li class="breadcrumb-item"><a href="/admin/class/index.jsp">Phân công</a></li>
                <li class="breadcrumb-item active">Thêm</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid my-3">
            <div class="card">
                <div class="card-header bg-info">
                    <h5 class="m-0">Thêm phân công</h5>
                </div>
                <form class="card-body" method="POST">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Năm học</label>
                            <select class="form-control select2" name="year">
                                <c:forTokens var = "row" items = "2022 - 2023,2021 - 2022,2020 - 2021,2019 - 2020" delims=",">
                                    <option value="${row}">${row}</option>
                                </c:forTokens>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Học kỳ</label>
                            <select class="form-control select2" name="semester_id">
                                <option value="1">Học kỳ 1</option>
                                <option value="2">Học kỳ 2</option>
                                <option value="3">Học kỳ 3</option>
                            </select>
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from lop;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Lớp</label>
                                <select class="form-control select2" name="class_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaLop}">${row.MaLop}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from hoc_phan;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Học phần</label>
                                <select class="form-control select2" name="subject_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaHP}">${row.TenHP}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from giang_vien;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Giảng viên</label>
                                <select class="form-control select2" name="teacher_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaGV}">${row.HoTen}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <button name="action" value="add" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</button>
                    <a href="/admin/assignment/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>