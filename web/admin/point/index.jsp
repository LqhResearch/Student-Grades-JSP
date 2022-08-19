<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/class/index.jsp">Bảng điểm</a></li>
                    <li class="breadcrumb-item active">Danh sách chi tiết</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="form-group col-md-4">
                                <label>Bộ môn</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label>Lớp</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label>Môn học</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
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
                                    <th>Điểm QT</th>
                                    <th>Điểm thi</th>
                                    <th>Điểm TB</th>
                                    <th>Điểm chữ</th>
                                    <th width="64">Công cụ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>110119035</td>
                                    <td>Tô Trọng Nhân</td>
                                    <td>5-9-2022</td>
                                    <td>Nam</td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="7" style="width: 80px;" /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="9" style="width: 80px;" /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="8" style="width: 80px;" readonly /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="B+" style="width: 80px;" readonly /></td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-save"></i> Lưu</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>110119035</td>
                                    <td>Tô Trọng Nhân</td>
                                    <td>5-9-2022</td>
                                    <td>Nam</td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="7" style="width: 80px;" /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="9" style="width: 80px;" /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="8" style="width: 80px;" readonly /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="B+" style="width: 80px;" readonly /></td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-save"></i> Lưu</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>110119035</td>
                                    <td>Tô Trọng Nhân</td>
                                    <td>5-9-2022</td>
                                    <td>Nam</td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="7" style="width: 80px;" /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="9" style="width: 80px;" /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="8" style="width: 80px;" readonly /></td>
                                    <td><input class="form-control form-control-sm text-center" type="text" value="B+" style="width: 80px;" readonly /></td>
                                    <td>
                                        <a href="/admin/class/view.jsp?id=1" class="btn btn-sm btn-primary"><i class="fas fa-save"></i> Lưu</a>
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