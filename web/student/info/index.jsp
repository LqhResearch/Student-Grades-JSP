<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.include file="/admin/header.jsp"></jsp:directive.include>
<jsp:directive.include file="/admin/sidebar.jsp"></jsp:directive.include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin/"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="#">Sinh viên</a></li>
                    <li class="breadcrumb-item active">Thông tin cá nhân</li>
                </ol>
            </div>
        </section>

    <sql:query dataSource = "${db}" var = "res">select * from sinh_vien, dan_toc, lop, nganh_dt, bo_mon where sinh_vien.MaDT = dan_toc.MaDT and sinh_vien.MaLop = lop.MaLop and lop.MaNganhDT = nganh_dt.MaNganhDT and nganh_dt.MaBM = bo_mon.MaBM and sinh_vien.MaSV = '<%=request.getSession().getAttribute("username")%>'</sql:query>

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
                                                    <td><b>Mã sinh viên</b></td>
                                                    <td>${res.getRows()[0].MaSV}</td>
                                                <td><b>Họ tên</b></td>
                                                <td>${res.getRows()[0].HoTen}</td>
                                            </tr>
                                            <tr>
                                                <td><b>Giới tính</b></td>
                                                <td>${res.getRows()[0].GioiTinh}</td>
                                                <td><b>Ngày sinh</b></td>
                                                <td>${res.getRows()[0].NgaySinh}</td>
                                            </tr>
                                            <tr>
                                                <td><b>Số điện thoại</b></td>
                                                <td>${res.getRows()[0].Sdt}</td>
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
                                                <td><b>Dân tộc</b></td>
                                                <td>${res.getRows()[0].TenDT}</td>
                                                <td><b>Tôn giáo</b></td>
                                                <td>${res.getRows()[0].TonGiao}</td>
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
                                <h3 class="timeline-header"><a href="#">Thông tin đào tạo</a></h3>
                                <div class="timeline-body">
                                    <table class="table table-borderless">
                                        <tbody>
                                            <tr>
                                                <td><b>Bộ môn</b></td>
                                                <td>${res.getRows()[0].TenBM}</td>
                                                <td><b>Ngành đào tạo</b></td>
                                                <td>${res.getRows()[0].TenNganhDT}</td>
                                            </tr>
                                            <tr>
                                                <td><b>Mã lớp</b></td>
                                                <td>${res.getRows()[0].MaLop}</td>
                                                <td><b>Tên lớp</b></td>
                                                <td>${res.getRows()[0].TenLop}</td>
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