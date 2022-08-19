<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
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
                                <input type="text" class="form-control" readonly>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Tên học phần</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Số tín chỉ lý thuyết</label>
                                <input type="number" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Số tín chỉ thực hành</label>
                                <input type="number" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Loại học phần</label>
                                <select class="form-control select2">
                                    <option value="BB">Bắt buộc</option>
                                    <option value="TC">Tự chọn</option>
                                </select>
                            </div>
                        </div>
                        <button class="btn btn-primary"><i class="fas fa-save"></i> Sửa</button>
                        <a href="/admin/subject/index.jsp" class="btn btn-danger"><i class="fas fa-ban"></i> Huỷ</a>
                    </form>
                </div>
            </div>
        </section>
    </div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>