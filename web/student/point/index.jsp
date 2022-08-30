<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/teacher/assignment/index.jsp">Bảng điểm của tôi</a></li>
                    <li class="breadcrumb-item active">Danh sách chi tiết</li>
                </ol>
            </div>
        </section>

    <sql:query dataSource = "${db}" var = "list">select * from bang_diem, hoc_phan where bang_diem.MaHP = hoc_phan.MaHP and MaSV = '<%=request.getSession().getAttribute("username")%>'</sql:query>

        <div class="container-fluid my-3">
            <div id="table_dt_wrapper"></div>
        </div>

        <section class="content">
            <div class="container-fluid">
                <table id="table_dt_print" class="table table-bordered table-striped">
                    <thead>
                        <tr class="bg-info">
                            <th>Mã học phần</th>
                            <th>Tên học phần</th>
                            <th>Số tín chỉ</th>
                            <th>Điểm QT</th>
                            <th>Điểm thi</th>
                            <th>Điểm TK (10)</th>
                            <th>Điểm TK (4)</th>
                            <th>Điểm chữ</th>
                            <th>Kết quả</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:set var="gpa4" value="0"></c:set>
                    <c:set var="gpa10" value="0"></c:set>
                    <c:set var="stc" value="0"></c:set>
                    <c:forEach var = "row" items = "${list.rows}">
                        <c:set var="point" value="${(row.DiemQT + row.DiemThi) / 2}"></c:set>
                        <c:if test="${point > 4.0}">
                            <c:set var="gpa4" value="${gpa4 + Helper.GPA4(point, "number")*row.STC}"></c:set>
                            <c:set var="gpa10" value="${gpa10 + point*row.STC}"></c:set>
                            <c:set var="stc" value="${stc + row.STC}"></c:set>
                        </c:if>
                        <tr>
                            <td>${row.MaHP}</td>
                            <td>${row.TenHP}</td>
                            <td>${row.STC}</td>
                            <td>${row.DiemQT}</td>
                            <td>${row.DiemThi}</td>
                            <td>${point}</td>
                            <td>${Helper.GPA4(point, "number")}</td>
                            <td>${Helper.GPA4(point, "text")}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${Helper.GPA4(point, "text") == "F"}">
                                        <i class="fas fa-times text-danger"></i>
                                    </c:when>
                                    <c:otherwise>
                                        <i class="fas fa-check text-success"></i>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="container-fluid">
            <table class="table table-borderless">
                <tbody>
                    <tr>
                        <td width="250"><b>- Điểm trung bình tích lũy hệ 4:</b></td>
                        <td>${gpa4 / stc}</td>
                    </tr>
                    <tr>
                        <td><b>- Điểm trung bình tích lũy hệ 10:</b></td>
                        <td>${gpa10 / stc}</td>
                    </tr>
                    <tr>
                        <td><b>- Số tín chỉ tích lũy:</b></td>
                        <td>${stc}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>