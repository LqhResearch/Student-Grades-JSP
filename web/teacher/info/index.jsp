<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="#">Giảng viên</a></li>
                    <li class="breadcrumb-item active">Thông tin cá nhân</li>
                </ol>
            </div>

        <sql:query dataSource = "${db}" var = "res">select * from giang_vien, nganh_dt, bo_mon where giang_vien.MaNganhDT = nganh_dt.MaNganhDT and nganh_dt.MaBM = bo_mon.MaBM and MaGV = '<%=request.getSession().getAttribute("username")%>'</sql:query>

            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="timeline">
                                <div>
                                    <i class="fas fa-user bg-blue"></i>
                                    <div class="timeline-item">
                                        <h3 class="timeline-header"><a href="#">Thông tin giảng viên</a></h3>
                                        <div class="timeline-body">
                                            <table class="table table-borderless">
                                                <tbody>
                                                    <tr>
                                                        <td><b>Mã giảng viên</b></td>
                                                        <td>${res.getRows()[0].MaGV}</td>
                                                    <td><b>Họ tên</b></td>
                                                    <td>${res.getRows()[0].HoTen}</td>
                                                </tr>
                                                <tr>
                                                    <td><b>Giới tính</b></td>
                                                    <td>${res.getRows()[0].GioiTinh}</td>
                                                    <td><b>Ngày sinh</b></td>
                                                    <td>${Helper.Date(res.getRows()[0].NgaySinh)}</td>
                                                </tr>
                                                <tr>
                                                    <td><b>Số điện thoại</b></td>
                                                    <td>${Helper.Phone(res.getRows()[0].Sdt)}</td>
                                                    <td><b>Địa chỉ</b></td>
                                                    <td>${res.getRows()[0].DiaChi}</td>
                                                </tr>
                                                <tr>
                                                    <td><b>Email</b></td>
                                                    <td>${res.getRows()[0].Email}</td>
                                                    <td><b>Số CCCD/CMND</b></td>
                                                    <td>${res.getRows()[0].SoCCCD}</td>
                                                </tr>
                                                <tr>
                                                    <td><b>Ghi chú</b></td>
                                                    <td colspan="3">${res.getRows()[0].GhiChu}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <i class="fas fa-building bg-blue"></i>
                                <div class="timeline-item">
                                    <h3 class="timeline-header"><a href="#">Thông tin đơn vị công tác</a></h3>
                                    <div class="timeline-body">
                                        <table class="table table-borderless">
                                            <tbody>
                                                <tr>
                                                    <td><b>Bộ môn</b></td>
                                                    <td>${res.getRows()[0].TenBM}</td>
                                                    <td><b>Chuyên ngành</b></td>
                                                    <td>${res.getRows()[0].TenNganhDT}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</div>
<jsp:directive.include file="/admin/footer.jsp"></jsp:directive.include>
<script src="/assets/js/main.js"></script>