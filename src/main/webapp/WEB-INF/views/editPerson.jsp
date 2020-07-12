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
                <form name="send" method="post" action="<c:url value="/updatePerson/${person.id}"/>">
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <!-- NAME -->
                                    <div class="form-group row">
                                        <label for="firstName" class="col-2 col-form-label">Imię</label>
                                        <div class="col-10">
                                            <input class="form-control" name="firstName" id="firstName"
                                                   value="${person.firstName}" type="text">
                                        </div>
                                    </div>
                                    <!-- SURNAME -->
                                    <div class="form-group row">
                                        <label for="lastName" class="col-2 col-form-label">Nazwisko</label>
                                        <div class="col-10">
                                            <input class="form-control" name="lastName" id="lastName"
                                                   value="${person.lastName}" type="text">
                                        </div>
                                    </div>

                                    <!-- GIT URL -->
                                    <div class="form-group row">
                                        <label for="github" class="col-2 col-form-label">URL Git</label>
                                        <div class="col-10">
                                            <input class="form-control" name="github" id="github" type="text"
                                                   value="${person.github}">
                                        </div>
                                    </div>

                                    <!-- START DESC -->
                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Od czego się
                                            zaczęło:</label>
                                        <div class="col-10">
                                            <textarea class="form-control" name="start" id="start"
                                                      rows="5">${person.start}</textarea>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Czy opanowałeś jakieś technologie
                                            ?</label>
                                        <div class="col-1">
                                            <label class="radio-inline">
                                                <input class="form-check-input" type="radio" value="1" name="checkbox"
                                                       data-toggle="collapse" data-target=".statModal:not(.show)" aria-expanded="true"
                                                       <c:if test="${person.checkbox eq 1}">checked</c:if>>&nbsp;TAK
                                            </label>
                                        </div>
                                        <div class="col-1">
                                            <label class="radio-inline">
                                                <input class="form-check-input" type="radio" value="0" name="checkbox"
                                                       data-toggle="collapse" data-target=".statModal.show" aria-expanded="false"
                                                       <c:if test="${person.checkbox eq 0 ||
                                                            person.checkbox eq null}">checked</c:if>>&nbsp;NIE
                                            </label>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- End of Content Row -->

                        <!-- Statistics -->
                        <c:choose>
                        <c:when test="${person.checkbox eq 1}">
                            <div class="collapse show statModal" aria-expanded="true">
                                <%@include file="dynamic/editTechStats.jsp"%>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="collapse statModal" aria-expanded="false">
                                <%@include file="dynamic/editTechStats.jsp"%>
                            </div>
                        </c:otherwise>
                        </c:choose>
                        <!-- End of Statistics -->

                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Zapisz zmiany" id="searchButton"/>
                    <!-- Button to Open the Modal -->
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">
                        Usuń
                    </button>
                </form>

            </div>
            <!-- /.container-fluid -->

            <!-- Delete Modal -->
            <div class="modal" id="deleteModal">
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
                        <form name="send" method="post" action="<c:url value="/deletePerson/${person.id}"/>">
                            <div class="modal-footer">
                                <input type="submit" name="delete" class="btn btn-danger pull-left" value="Tak"/>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
            <!-- End of Delete Modal -->


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
