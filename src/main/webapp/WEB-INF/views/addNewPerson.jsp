<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

            <!-- New person form -->
            <form:form modelAttribute="newPerson">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">

                            <!-- Person data -->
                            <div class="card shadow mb-4">

                                <div class="card-header py-3">
                                    <!-- Name -->
                                    <div class="form-group row">
                                        <label for="firstName" class="col-2 col-form-label">Imię</label>
                                        <div class="col-10">
                                            <form:input path="firstName" class="form-control" placeholder="Uzupełnij imię"/>
                                        </div>
                                    </div>

                                    <!-- Surname -->
                                    <div class="form-group row">
                                        <label for="lastName" class="col-2 col-form-label">Nazwisko</label>
                                        <div class="col-10">
                                            <form:input class="form-control" path="lastName" placeholder="Uzupełnij nazwisko"/>
                                        </div>
                                    </div>

                                    <!-- github URL -->
                                    <div class="form-group row">
                                        <label for="github" class="col-2 col-form-label">URL Git</label>
                                        <div class="col-10">
                                            <form:input class="form-control" path="github" placeholder="Uzupełnij url do gita"/>
                                        </div>
                                    </div>

                                    <!-- Start description -->
                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Od czego się zaczęło:</label>
                                        <div class="col-10">
                                            <form:textarea class="form-control" path="start" rows="5"
                                                           placeholder="Napisz kilka słów co Cię zmotywowało aby zostać programistą..."/>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- End of Person data -->

                        </div>
                    </div>
                    <!-- End of Content Row -->

                    <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="savePerson"/>

                </div>
                <!-- /.container-fluid -->
            </form:form>
            <!-- End of new person form -->


        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <%@include file="dynamic/footer.jsp" %>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

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
