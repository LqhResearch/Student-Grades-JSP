<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/student/index.jsp">Sinh viên</a></li>
                    <li class="breadcrumb-item active">Danh sách chi tiết</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <a href="/admin/student/add.jsp" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</a>
            </div>

            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-body">
                        <table id="table_dt" class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-info">
                                    <th>Mã sinh viên</th>
                                    <th>Họ và tên</th>
                                    <th>Ngày sinh</th>
                                    <th>Giới tính</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>
                                    <th>Lớp</th>
                                    <th width="118">Công cụ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>110119035</td>
                                    <td>Tô Trọng Nhân</td>
                                    <td>08/05/2001</td>
                                    <td>Nam</td>
                                    <td>0123456789</td>
                                    <td>nhan@gmail.com</td>
                                    <td>DA19TTA</td>
                                    <td>
                                        <a href="/admin/student/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>110119035</td>
                                    <td>Tô Trọng Nhân</td>
                                    <td>08/05/2001</td>
                                    <td>Nam</td>
                                    <td>0123456789</td>
                                    <td>nhan@gmail.com</td>
                                    <td>DA19TTA</td>
                                    <td>
                                        <a href="/admin/student/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>110119035</td>
                                    <td>Tô Trọng Nhân</td>
                                    <td>08/05/2001</td>
                                    <td>Nam</td>
                                    <td>0123456789</td>
                                    <td>nhan@gmail.com</td>
                                    <td>DA19TTA</td>
                                    <td>
                                        <a href="/admin/student/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>110119035</td>
                                    <td>Tô Trọng Nhân</td>
                                    <td>08/05/2001</td>
                                    <td>Nam</td>
                                    <td>0123456789</td>
                                    <td>nhan@gmail.com</td>
                                    <td>DA19TTA</td>
                                    <td>
                                        <a href="/admin/student/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
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