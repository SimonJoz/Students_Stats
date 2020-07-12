<%@ page import="com.simonjoz.model.Person" %>
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

                <!-- Start of Form -->
                <form name="send" method="post" action="<c:url value="/addTask"/>">

                    <!-- Task Data Row -->
                    <div class="row">

                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">

                                <div class="card-header p-3">
                                    <!-- Student -->

                                    <div class="form-group row py-3">
                                        <label for="owner" class="col-2 col-form-label">Kursant</label>
                                        <div class="col-10">
                                            <select class="custom-select" name="owner" id="owner">
                                                <option>wybierz osobe..</option>
                                                <c:forEach items="${peoples}" var="owner">
                                                    <option value="${owner.id}">
                                                            ${owner.firstName} ${owner.lastName}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>

                                    <!-- Deadline Date -->
                                    <div class="form-group row">
                                        <label for="deadline" class="col-2 col-form-label">Deadline</label>
                                        <div class="col-10 input-group mb-3">
                                            <input class="form-control border-right-0" type="date" name="deadline" id="deadline"
                                                   placeholder="dd/mm/rrrr"/>
                                            <div class="input-group-append">
                                            <span class="input-group-text bg-white border-left-0">
                                                <i class="far fa-calendar-alt pt-1"></i>
                                            </span>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Task description -->
                                    <div class="form-group row">
                                        <label for="description" class="col-2 col-form-label">Treść zadania</label>
                                        <div class="col-10">
                                        <textarea class="form-control" name="description" id="description" rows="5"></textarea>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <!--End of Task data Row -->

                    <!-- Level Data Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header p-3">
                                    <div class="form-group row py-3">

                                        <div class="col-10">
                                            <div class="col-2">
                                                <label>Task level: </label>
                                            </div>
                                            <div class="form-check-inline col-2 pt-3 pl-xl-5">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="level"
                                                           value="JUNIOR" checked>
                                                    <i class="btn btn-success btn-circle">J</i>
                                                    <span class="ml-2"> JUNIOR </span>
                                                </label>
                                            </div>

                                            <div class="form-check-inline col-2 pt-3">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="level"
                                                           value="JUNIOR_PLUS">
                                                    <i class="btn btn-info btn-circle">J+</i>
                                                    <span class="ml-2">JUNIOR PLUS</span>
                                                </label>
                                            </div>

                                            <div class="form-check-inline col-2 pt-3">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="level"
                                                           value="MID">
                                                    <i class="btn btn-warning btn-circle">M</i>
                                                    <span class="ml-2">MID</span>
                                                </label>
                                            </div>
                                            <div class="form-check-inline col-2 pt-3">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="level"
                                                           value="MID_PLUS">
                                                    <i class="btn btn-primary btn-circle">M+</i>
                                                    <span class="ml-2">MID PLUS</span>
                                                </label>
                                            </div>
                                            <div class="form-check-inline col-2 pt-3">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="level"
                                                           value="SENIOR">
                                                    <i class="btn btn-danger btn-circle">S</i>
                                                    <span class="ml-2">SENIOR</span>
                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of Level Data Row -->

                    <!--  Add Buttons -->
                    <input class="btn btn-success pull-left" type="submit" value="Dodaj" id="addButton"/>
                </form>
                <!-- End of Form -->
            </div>
            <!-- /.container-fluid -->

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

<!-- Bootstrap Date-Picker Plugin -->
<%@include file="dynamic/datepicker.jsp"%>

</body>

</html>
