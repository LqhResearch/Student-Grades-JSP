<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="/admin/" class="brand-link">
        <img width="100%" src="/assets/img/logo.png" alt="Logo">
    </a>

    <div class="sidebar">
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="/assets/img/admin.png" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block"><%=request.getSession().getAttribute("fullname")%></a>
            </div>
        </div>

        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Tìm kiếm" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <% if (request.getSession().getAttribute("role").equals(1)) { %>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>Danh mục quản lý
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/admin/department/index.jsp" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Bộ môn</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/major/index.jsp" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Ngành đào tạo</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/class/index.jsp" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Lớp</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/subject/index.jsp" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Học phần</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-user"></i>
                        <p>Thông tin cá nhân
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/admin/teacher/index.jsp" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Giảng viên</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/student/index.jsp" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Sinh viên</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="/admin/assignment/index.jsp" class="nav-link">
                        <i class="nav-icon fas fa-boxes"></i>
                        <p>Quản lý Phân công</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/point/index.jsp" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>Quản lý Bảng điểm</p>
                    </a>
                </li>
                <% } else if (request.getSession().getAttribute("role").equals(2)) { %>
                <li class="nav-item">
                    <a href="/teacher/assignment/index.jsp" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>Phân công của tôi</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/teacher/info/index.jsp" class="nav-link">
                        <i class="nav-icon fas fa-info"></i>
                        <p>Thông tin cá nhân</p>
                    </a>
                </li>
                <% } else if (request.getSession().getAttribute("role").equals(3)) { %>
                <li class="nav-item">
                    <a href="/student/point/index.jsp" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>Bảng điểm của tôi</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/student/info/index.jsp" class="nav-link">
                        <i class="nav-icon fas fa-info"></i>
                        <p>Thông tin cá nhân</p>
                    </a>
                </li>
                <% }%>
                <li class="nav-item">
                    <a href="/admin/account/index.jsp" class="nav-link">
                        <i class="nav-icon fas fa-key"></i>
                        <p>Đổi mật khẩu</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</aside>
