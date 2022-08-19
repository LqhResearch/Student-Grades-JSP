<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
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
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Học kỳ</label>
                                <select class="form-control select2">
                                    <option value="1">I</option>
                                    <option value="2">II</option>
                                    <option value="3">III</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Lớp</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Môn học</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Giảng viên</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                        </div>
                        <button class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</button>
                        <a href="/admin/class/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                    </form>
                </div>
            </div>
        </section>
    </div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>