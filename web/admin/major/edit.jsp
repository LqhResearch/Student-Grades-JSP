<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="/admin/major/index.jsp">Ngành đào tạo</a></li>
                    <li class="breadcrumb-item active">Sửa</li>
                </ol>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid my-3">
                <div class="card">
                    <div class="card-header bg-info">
                        <h5 class="m-0">Sửa ngành đào tạo</h5>
                    </div>
                    <form class="card-body" method="POST">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Mã ngành</label>
                                <input type="text" class="form-control" readonly>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Tên ngành</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Bộ môn</label>
                                <select class="form-control select2">
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                        </div>
                        <button class="btn btn-primary"><i class="fas fa-save"></i> Lưu</button>
                        <a href="/admin/major/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                    </form>
                </div>
            </div>
        </section>
    </div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>