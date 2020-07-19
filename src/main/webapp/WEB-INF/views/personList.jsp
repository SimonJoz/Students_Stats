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
                <h1 class="h3 mb-2 text-gray-800"><spring:message code="students.list"/></h1>
                <p class="mb-4"><spring:message code="table.header"/> |
                    <a target="_blank" href="<c:url value="https://sdacademy.pl/"/>">
                        <spring:message code="official.web"/>
                    </a>
                </p>


                <!-- DataTales -->
                <div class="card shadow mb-4">
                    <!-- Table header -->
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary"><spring:message code="l.students.table"/></h6>
                    </div>
                    <!-- End of Table header -->

                    <!-- Table body -->
                    <div class="card-body">

                        <div class="table-responsive">

                            <table class="table action-panel table-bordered" id="dataTable" cellspacing="0">
                                <thead>
                                <tr>
                                    <th><spring:message code="l.name"/></th>
                                    <th><spring:message code="l.surname"/></th>
                                    <th><spring:message code="l.gitURL"/></th>
                                    <th><spring:message code="l.start"/></th>
                                    <th><spring:message code="l.skills"/></th>
                                    <th><spring:message code="l.action"/></th>
                                </tr>
                                </thead>
                                <c:forEach items="${persons}" var="person">
                                    <tbody>
                                    <tr>
                                        <td>${person.firstName}</td>
                                        <td>${person.lastName}</td>
                                        <td class="text-center">
                                            <a href="<c:url value="${person.github}"/>">
                                                <i class='fab fa-github' style='font-size:37px; color: #913399'></i>
                                            </a>
                                        </td>
                                        <td>${person.start}</td>
                                        <td class="text-center">
                                            <a href="#" role="button" class="btn btn-success btn-circle "
                                               data-toggle="modal"
                                               data-target="#skills${person.id}">
                                                <i class="fas fa-check"></i>
                                            </a>
                                        </td>

                                        <td class="text-center">
                                            <a href="<c:url value="/updatePerson/${person.id}"/>"
                                               class="btn-right btn btn-primary" role="button">
                                                <spring:message code="b.edit"/>
                                            </a>
                                        </td>
                                    </tr>

                                    <!-- The Modal -->
                                    <div class="modal" id="skills${person.id}">
                                        <div class="modal-dialog">
                                            <div class="modal-content">

                                                <!-- Modal Header -->
                                                <div class="modal-header">
                                                    <h4 class="modal-title">${person.firstName} ${person.lastName}</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;
                                                    </button>
                                                </div>
                                                <!-- End of Modal Header -->

                                                <!-- Modal body -->
                                                <div class="modal-body">

                                                    <!-- Skills -->
                                                    <div class="card shadow mb-4">
                                                        <div class="card-header py-3">
                                                            <h6 class="m-0 font-weight-bold text-primary">
                                                                <spring:message code="l.skills"/>
                                                            </h6>
                                                        </div>
                                                        <div class="card-body">

                                                            <h4 class="small font-weight-bold">Java <span
                                                                    class="float-right">${person.java}%</span>
                                                            </h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-danger" role="progressbar"
                                                                     style="width: ${person.java}%" aria-valuemin="0"
                                                                     aria-valuemax="100">

                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">
                                                                <spring:message code="l.design.patterns"/>
                                                                <span class="float-right">${person.designPatterns}%</span>
                                                            </h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-warning" role="progressbar"
                                                                     style="width: ${person.designPatterns}%"
                                                                     aria-valuemin="0" aria-valuemax="100">

                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">TDD
                                                                <span class="float-right">${person.tdd}%</span></h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar" role="progressbar"
                                                                     style="width: ${person.tdd}%" aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">
                                                                <spring:message code="l.databases"/>
                                                                <span class="float-right">${person.dataBase}%</span>
                                                            </h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-info" role="progressbar"
                                                                     style="width: ${person.dataBase}%"
                                                                     aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">Hibernate JPA
                                                                <span class="float-right">${person.hibernateJPA}%</span>
                                                            </h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-success" role="progressbar"
                                                                     style="width: ${person.hibernateJPA}%"
                                                                     aria-valuemin="0" aria-valuemax="100">
                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">HTML, CSS
                                                                <span class="float-right">${person.htmlCss}%</span></h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-info" role="progressbar"
                                                                     style="width: ${person.htmlCss}%" aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">JSP
                                                                <span class="float-right">${person.jsp}%</span></h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-info" role="progressbar"
                                                                     style="width: ${person.jsp}%" aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">Thymeleaf
                                                                <span class="float-right">${person.thymeleaf}%</span>
                                                            </h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-info" role="progressbar"
                                                                     style="width: ${person.thymeleaf}%"
                                                                     aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>

                                                            <h4 class="small font-weight-bold">Git
                                                                <span class="float-right">${person.git}%</span></h4>
                                                            <div class="progress mb-4">
                                                                <div class="progress-bar bg-info" role="progressbar"
                                                                     style="width: ${person.git}%" aria-valuemin="0"
                                                                     aria-valuemax="100">
                                                                </div>
                                                            </div>

                                                        </div>

                                                    </div>
                                                    <!-- End of skills -->

                                                </div>
                                                <!-- End of Modal body -->

                                                <!-- Modal footer -->
                                                <div class="modal-footer">
                                                    <a href="<c:url value="/updatePerson/${person.id}"/>">
                                                        <input type="submit" class="btn btn-danger pull-left"
                                                               value="<spring:message code="b.change"/>"/>
                                                    </a>
                                                </div>
                                                <!-- End of Modal footer -->

                                            </div>
                                        </div>
                                    </div>
                                    <!-- End of Modal -->
                                    </tbody>
                                </c:forEach>
                            </table>

                        </div>

                    </div>
                    <!-- End of Table body -->
                </div>
                <!-- End of DataTales -->

            </div>
            <!-- /.container-fluid -->

            <!-- Add new person button -->
            <div class="card-header py-3">
                <a href="<c:url value="/addNewPerson"/>" class="btn btn-info btn-icon-split">
    <span class="icon text-white-50">
    <i class="fas fa-info-circle"></i>
    </span>
                    <span class="text"><spring:message code="b.add.person"/></span>
                </a>
            </div>
            <!-- End of button -->


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

<!-- Print button -->
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/buttons.html5.min.js"/>"></script>
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/buttons.print.min.js"/>"></script>
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/dataTables.buttons.min.js"/>"></script>
<script src="<c:url value="https://cdn.datatables.net/buttons/1.6.0/js/buttons.flash.min.js"/>"></script>


</body>

</html>
