<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/assignment/index.jsp">Phân công</a></li>
                    <li class="breadcrumb-item active">Danh sách chi tiết</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <a href="/admin/assignment/add.jsp" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</a>
            </div>

            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-body">
                        <table id="table_dt" class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-info">
                                    <th>Năm học</th>
                                    <th>Học kỳ</th>
                                    <th>Lớp</th>
                                    <th>Môn học</th>
                                    <th>Giảng viên</th>
                                    <th width="118">Công cụ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>2020 - 2022</td>
                                    <td>I</td>
                                    <td>DA19TTA</td>
                                    <td>Lập trình Java</td>
                                    <td>Trịnh Quốc Việt</td>
                                    <td>
                                        <a href="/admin/assignment/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2020 - 2022</td>
                                    <td>I</td>
                                    <td>DA19TTA</td>
                                    <td>Lập trình Java</td>
                                    <td>Trịnh Quốc Việt</td>
                                    <td>
                                        <a href="/admin/assignment/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2020 - 2022</td>
                                    <td>I</td>
                                    <td>DA19TTA</td>
                                    <td>Lập trình Java</td>
                                    <td>Trịnh Quốc Việt</td>
                                    <td>
                                        <a href="/admin/assignment/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>