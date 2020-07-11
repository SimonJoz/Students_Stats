<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jsp" %>
<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <%@include file="dynamic/sideBar.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- TopBar -->
            <%@include file="dynamic/topBar.jsp" %>
            <!-- End of TopBar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Content Row -->
                <div class="row">
                    <h1>TASKS</h1>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

        <!-- Footer -->
        <%@include file="dynamic/footer.jsp" %>
        <!-- End of Footer -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <%@include file="dynamic/scrollTop.jsp" %>

    <!-- Logout Modal-->
    <%@include file="dynamic/logoutModal.jsp" %>

    <%--Js scripts--%>
    <%@include file="dynamic/scriptsLinks.jsp" %>

</body>

</html>
