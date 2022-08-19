<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/class/index.jsp">Lớp</a></li>
                    <li class="breadcrumb-item active">Danh sách chi tiết</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <a href="/admin/class/add.jsp" class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</a>
            </div>

            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-body">
                        <table id="table_dt" class="table table-bordered table-striped">
                            <thead>
                                <tr class="bg-info">
                                    <th>Mã lớp học</th>
                                    <th>Tên lớp học</th>
                                    <th>Ngành đào tạo</th>
                                    <th>Trạng thái</th>
                                    <th width="186">Công cụ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>DA19TTA</td>
                                    <td>DH Công nghệ thông tin A</td>
                                    <td>CNTT</td>
                                    <td>Đang học</td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=1" class="btn btn-sm btn-warning"><i class="fas fa-eye"></i> Xem</a>
                                        <a href="/admin/class/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>DA19TTA</td>
                                    <td>DH Công nghệ thông tin A</td>
                                    <td>CNTT</td>
                                    <td>Đang học</td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=1" class="btn btn-sm btn-warning"><i class="fas fa-eye"></i> Xem</a>
                                        <a href="/admin/class/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>DA19TTA</td>
                                    <td>DH Công nghệ thông tin A</td>
                                    <td>CNTT</td>
                                    <td>Đang học</td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=1" class="btn btn-sm btn-warning"><i class="fas fa-eye"></i> Xem</a>
                                        <a href="/admin/class/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
                                        <div onclick="RemoveRow(1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Xoá</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>DA19TTA</td>
                                    <td>DH Công nghệ thông tin A</td>
                                    <td>CNTT</td>
                                    <td>Đang học</td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=1" class="btn btn-sm btn-warning"><i class="fas fa-eye"></i> Xem</a>
                                        <a href="/admin/class/edit.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Sửa</a>
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