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

            <!-- Topbar -->
            <%@include file="dynamic/topBar.jsp"%>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label for="firstName" class="col-2 col-form-label">Imię</label>
                                    <div class="col-10">
                                        <input class="form-control" id="firstName" type="text" placeholder="Uzupełnij imię">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="lastName" class="col-2 col-form-label">Nazwisko</label>
                                    <div class="col-10">
                                        <input class="form-control" id="lastName" type="text" placeholder="Uzupełnij nazwisko">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="github" class="col-2 col-form-label">URL Git</label>
                                    <div class="col-10">
                                        <input class="form-control" id="github" type="text" placeholder="Uzupełnij url do gita">
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="start" class="col-2 col-form-label">Od czego się zaczęło:</label>
                                    <div class="col-10">
                                <textarea class="form-control" rows="5" id="start"
                                          placeholder="Napisz kilka słów co Cię zmotywowało aby zostać programistą..."></textarea>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

                <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"/>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <%@include file="dynamic/footer.jsp"%>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<%@include file="dynamic/scrollTop.jsp"%>

<!-- Logout Modal-->
<%@include file="dynamic/logoutModal.jsp"%>

<%--Js scripts--%>
<%@include file="dynamic/scriptsLinks.jsp" %>

</body>

</html>
