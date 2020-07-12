<%@ page contentType="text/html; charset=UTF-8" %>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="/"/>">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Kursanci<sup> SDA</sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0"/>

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/"/>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Home</span>
        </a>
    </li>

    <!-- Nav Item - Kursanci -->
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/personList"/>">
            <i class="fas fa-users"></i>
            <span>Kursanci</span>
        </a>
    </li>

    <!-- Nav Item - Kurs -->
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/course"/>">
            <i class="fas fa-laptop"></i>
            <span>Kurs</span>
        </a>
    </li>


    <!-- Nav Item - Tasks -->
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/tasksList"/>">
            <i class="fas fa-clipboard-list"></i>
            <span>Taski</span>
        </a>
    </li>


    <!-- Nav Item - Technologie -->
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/technology"/>">
            <i class="fas fa-cogs"></i>
            <span>Technologie</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">Inne</div>


    <!-- Nav Item - Blank -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-angle-double-left"></i>
            <span>Ocena</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>