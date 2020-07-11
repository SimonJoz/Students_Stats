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
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label for="firstName" class="col-2 col-form-label">Imię</label>
                                    <div class="col-10">
                                        <input class="form-control" id="firstName" type="text" placeholder="Imię">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="lastName" class="col-2 col-form-label">Nazwisko</label>
                                    <div class="col-10">
                                        <input class="form-control" id="lastName" type="text" placeholder="Nazwisko">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="github" class="col-2 col-form-label">URL Git</label>
                                    <div class="col-10">
                                        <input class="form-control" id="github" type="text" placeholder="github">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="start" class="col-2 col-form-label">Od czego się zaczęło:</label>
                                    <div class="col-10">
                                        <textarea class="form-control" id="start" rows="5" placeholder="zacznij pisac.."></textarea>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Czy opanowałeś jakieś technologie ?</label>
                                    <div class="col-1">
                                        <label class="radio-inline">
                                            <input type="radio" value="1" name="checkbox">&nbsp; TAK</label>
                                    </div>
                                    <div class="col-1">
                                        <label class="radio-inline">
                                            <input type="radio" value="0" name="checkbox" checked>&nbsp; NIE</label>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <!-- Content Row -->

                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">

                                <div class="row">
                                    <div class="col-2">
                                        <label for="java" class="col-form-label">Java</label>
                                        <input class="form-control" type="text" value="%" id="java" name="java">
                                    </div>


                                    <div class="col-2">
                                        <label for="bestpractice" class="col-form-label">Wzorce projektowe</label>
                                        <input class="form-control" type="text" value="%" id="bestpractice"
                                               name="bestpractice">
                                    </div>


                                    <div class="col-2">
                                        <label for="tdd" class="col-form-label">TDD</label>
                                        <input class="form-control" type="text" value="%" id="tdd" name="tdd">
                                    </div>


                                    <div class="col-2">
                                        <label for="question" class="col-form-label">Bazy danych SQL</label>
                                        <input class="form-control" type="text" value="%" id="question" name="question">
                                    </div>


                                    <div class="col-2">
                                        <label for="hibernate" class="col-form-label">Hibernate JPA</label>
                                        <input class="form-control" type="text" value="%" id="hibernate" name="hibernate">
                                    </div>


                                    <div class="col-2">
                                        <label for="html" class="col-form-label">HTML_CSS</label>
                                        <input class="form-control" type="text" value="%" id="html" name="html">
                                    </div>


                                    <div class="col-2">
                                        <label for="jsp" class="col-form-label">JSP</label>
                                        <input class="form-control" type="text" value="%" id="jsp" name="jsp">
                                    </div>

                                    <div class="col-2">
                                        <label for="thymeleaf" class="col-form-label">Thymeleaf</label>
                                        <input class="form-control" type="text" value="%" id="thymeleaf" name="thymeleaf">
                                    </div>

                                    <div class="col-2">
                                        <label for="git" class="col-form-label">GIT</label>
                                        <input class="form-control" type="text" value="%" id="git" name="git">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <input class="btn btn-success pull-left" type="submit" value="Zapisz zmiany" id="searchButton"/>


                <!-- Button to Open the Modal -->
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                    Usuń
                </button>

                <!-- The Modal -->
                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Czy na pewno chcesz usunąć osobę ?</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                Jeżeli usuniesz to już nie będzie odwrotu
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-danger pull-left" value="Tak"/>
                            </div>

                        </div>

                    </div>
                </div>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <%@include file="dynamic/footer.jsp"%>>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<%@include file="dynamic/scrollTop.jsp"%>>

<!-- Logout Modal-->
<%@include file="dynamic/logoutModal.jsp"%>

<%--Js scripts--%>
<%@include file="dynamic/scriptsLinks.jsp" %>

</body>

</html>
