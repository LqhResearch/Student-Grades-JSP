<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/student/index.jsp">Sinh viên</a></li>
                    <li class="breadcrumb-item active">Thêm</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-header bg-info">
                        <h5 class="m-0">Thêm sinh viên</h5>
                    </div>
                    <form class="card-body" method="POST">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Mã sinh viên</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Họ và tên</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Ngày sinh</label>
                                <input type="date" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Giới tính</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Dân tộc</label>
                                <select class="form-control select2">
                                    <option value="Kinh">Kinh</option>
                                    <option value="Khmer">Khmer</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Số CMND/CCCD</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Tôn giáo</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Email</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Điện thoại</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Địa chỉ</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Lớp</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Ghi chú</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <button class="btn btn-success"><i class="fas fa-plus"></i> Thêm mới</button>
                        <a href="/admin/student/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                    </form>
                </div>
            </div>
        </section>
    </div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>