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


                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Kursanci</h1>
                <p class="mb-4">Wszyscy kursanci biorący udział w szkoleniu - SDA | <a
                        target="_blank" href="<c:url value= "https://datatables.net"/>">official DataTables documentation"</a>.</p>


                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Tabela Kursantów</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table action-panel table-bordered" id="dataTable" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Imię</th>
                                    <th>Nazwisko</th>
                                    <th>URL Git</th>
                                    <th>Od czego się zaczęło</th>
                                    <th>Umiejętności</th>
                                    <th>Akcja</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Imię</th>
                                    <th>Nazwisko</th>
                                    <th>URL Git</th>
                                    <th>Od czego się zaczęło</th>
                                    <th>Umiejętności</th>
                                    <th>Akcja</th>
                                </tr>
                                </tfoot>
                                <tbody>

                                <tr>
                                    <td>Przykładowe Imię</td>
                                    <td>Przykładowe Nazwisko</td>
                                    <td><a href="" class="btn btn-info btn-circle">
                                        <i class="fas fa-info-circle"></i>
                                    </a></td>
                                    <td>Start</td>
                                    <td><a href="#" role="button" class="btn btn-success btn-circle" data-toggle="modal"
                                           data-target="#umiejetnosci"><i class="fas
                                        fa-check"></i></a></td>

                                    <td><a href="<c:url value="/editPerson"/>"
                                           class="btn-right btn btn-primary" role="button">Edytuj</a>
                                    </td>
                                </tr>


                                <!-- The Modal -->
                                <div class="modal" id="umiejetnosci">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Imię Nazwisko</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;
                                                </button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">


                                                <!-- Project Card Example -->
                                                <div class="card shadow mb-4">
                                                    <div class="card-header py-3">
                                                        <h6 class="m-0 font-weight-bold text-primary">Umiejętności</h6>
                                                    </div>
                                                    <div class="card-body">
                                                        <h4 class="small font-weight-bold">Java <span
                                                                class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar bg-danger" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="20" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">Wzorce
                                                            projektowe
                                                            <span
                                                                    class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar bg-warning" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="40" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">TDD <span
                                                                class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="60" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">Bazy danych SQL
                                                            <span class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar bg-info" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="80" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>

                                                        <h4 class="small font-weight-bold">Hibernate JPA
                                                            <span class="float-right">50%</span></h4>
                                                        <div class="progress">
                                                            <div class="progress-bar bg-success" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="100"
                                                                 aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                        <br>

                                                        <h4 class="small font-weight-bold">HTML, CSS
                                                            <span class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar bg-info" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="80" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">JSP
                                                            <span class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar bg-info" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="80" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">Thymeleaf
                                                            <span class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar bg-info" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="80" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>
                                                        <h4 class="small font-weight-bold">GIT
                                                            <span class="float-right">50%</span></h4>
                                                        <div class="progress mb-4">
                                                            <div class="progress-bar bg-info" role="progressbar"
                                                                 style="width: 50%" aria-valuenow="80" aria-valuemin="0"
                                                                 aria-valuemax="100"></div>
                                                        </div>

                                                    </div>
                                                </div>


                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <a href="#">
                                                    <input type="submit" class="btn btn-danger pull-left"
                                                           value="Poprawiam"/></a>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

            <div class="card-header py-3">

                <a href="<c:url value="/addNewPerson"/>" class="btn btn-info btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-info-circle"></i>
                    </span>
                    <span class="text">Dodaj nowego</span>
                </a>


            </div>


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

<!-- Print button -->
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/buttons.html5.min.js"/>"></script>
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/buttons.print.min.js"/>"></script>
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/dataTables.buttons.min.js"/>"></script>
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/buttons.flash.min.js"/>"></script>


</body>

</html>
