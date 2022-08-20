<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
<%
    String sql = "";
    String id = request.getParameter("id");
    if (request.getParameter("action") != null) {
        String name = request.getParameter("name");
        String stcLT = request.getParameter("stcLT");
        String stcTH = request.getParameter("stcTH");
        int stc = Integer.parseInt(stcLT) + Integer.parseInt(stcTH);
        String subjectType = request.getParameter("subject_type");
        String majorID = request.getParameter("major_id");
        sql = "update hoc_phan set TenHP = '" + name + "', STC = " + stc + ", STCLyThuyet = " + stcLT + ", STCThucHanh = " + stcTH + ", LoaiHP = '" + subjectType + "', MaNganhDT = " + majorID + " where MaHP = '" + id + "'";
    }
%>
<% if (!sql.isEmpty()) {%>
<sql:update dataSource = "${db}" var = "res"><%=sql%></sql:update>
<%
        response.sendRedirect("index.jsp");
    }
%>

<sql:query dataSource = "${db}" var = "res">select * from hoc_phan where MaHP = '<%=id%>';</sql:query>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/subject/index.jsp">Học phần</a></li>
                    <li class="breadcrumb-item active">Sửa</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-header bg-info">
                        <h5 class="m-0">Sửa học phần</h5>
                    </div>
                    <form class="card-body" method="POST">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Mã học phần</label>
                                <input type="text" class="form-control" value="${res.getRows()[0].MaHP}" name="id" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Tên học phần</label>
                            <input type="text" class="form-control" value="${res.getRows()[0].TenHP}" name="name">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số tín chỉ lý thuyết</label>
                            <input type="number" class="form-control" value="${res.getRows()[0].STCLyThuyet}" name="stcLT">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số tín chỉ thực hành</label>
                            <input type="number" class="form-control" value="${res.getRows()[0].STCThucHanh}" name="stcTH">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Loại học phần</label>
                            <select class="form-control select2" name="subject_type">
                                <option value="BB" ${res.getRows()[0].LoaiHP == "BB" ? "selected" : ""}>Bắt buộc</option>
                                <option value="TC" ${res.getRows()[0].LoaiHP == "TC" ? "selected" : ""}>Tự chọn</option>
                            </select>
                        </div>
                        <sql:query dataSource = "${db}" var = "list">select * from nganh_dt;</sql:query>
                            <div class="form-group col-md-6">
                                <label>Ngành đào tạo</label>
                                <select class="form-control select2" name="major_id">
                                <c:forEach var = "row" items = "${list.rows}">
                                    <option value="${row.MaNganhDT}" ${row.MaNganhDT == res.getRows()[0].MaNganhDT ? "selected" : ""}>${row.TenNganhDT}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <button name="action" value="edit" class="btn btn-primary"><i class="fas fa-save"></i> Sửa</button>
                    <a href="/admin/subject/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                </form>
            </div>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>