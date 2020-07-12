<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

                <!-- Add task header -->
                <div class="card-body pt-1 pb-1">
                    <a href="<c:url value="/addTask"/>" class="btn btn-warning col-12" role="button">
                        <i class="fas fa-exclamation-triangle text-white pb-1 pt-1"> Dodaj taska</i>
                    </a>
                </div>
                <!-- End of Add task header -->

                <!-- Body -->
                <div class="card-body">
                    <div class="row">

                        <!-- Legend column -->
                        <div class="col-2 mr-auto text-white">
                            <div class="card pl-4 mb-1 bg-success pt-3">
                                <div class="card-body">
                                    <h4>Nowicjusz</h4>
                                    <p>Level: Junior</p>
                                </div>
                            </div>
                            <div class="card pl-4 mb-1 bg-info pt-3">
                                <div class="card-body">
                                    <h4>Dojrzewajacy</h4>
                                    <p>Level: Junior +</p>
                                </div>
                            </div>
                            <div class="card pl-4 mb-1 bg-dark pt-3">
                                <div class="card-body">
                                    <h4>Wie co robi</h4>
                                    <p>Level: Mid</p>
                                </div>
                            </div>
                            <div class="card pl-4 mb-1 bg-primary pt-3">
                                <div class="card-body">
                                    <h4>Doswiadczony</h4>
                                    <p>Level: Mid +</p>
                                </div>
                            </div>
                            <div class="card pl-4 mb-1  bg-danger pt-3">
                                <div class="card-body ">
                                    <h4>Wyjadacz</h4>
                                    <p>Level: Senior</p>
                                </div>
                            </div>
                        </div>
                        <!-- End of Legend column -->
                        <!-- Tasks column -->
                        <div class="col-10">
                            <ul class="list-group">
                                <c:forEach items="${tasks}" var="task">
                                    <li class="card card-body h-50 border border-left-${task.level.color} mb-3 pt-3">
                                        <!-- Tasks Content -->
                                        <div class="row">
                                            <div class="col-10">
                                                <p class="text-primary">${task.owner.firstName} ${task.owner.lastName} |
                                                    <b>DODANO</b>: ${task.addDate} | <b>DEADLINE</b>: ${task.deadline}
                                                </p>
                                                <p class="text-dark text-xl">${task.description}</p>
                                            </div>

                                            <div class="col-2 text-right mt-5 px-4">
                                                <a href="#" role="button" class="btn btn-success mr-2"
                                                   data-toggle="modal"
                                                   data-target="#editModal${task.id}">Edytuj
                                                </a>
                                                <button type="button" class="btn btn-danger" data-toggle="modal"
                                                        data-target="#deleteModal${task.id}">Usuń
                                                </button>
                                            </div>
                                        </div>
                                        <!-- End of Task Content-->
                                        <form name="submitChanges" method="post"
                                              action="<c:url value="/updateTask/${task.id}"/>">
                                            <!-- Edit Task Modal -->
                                            <div class="modal fade" id="editModal${task.id}">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">

                                                        <!-- Modal header -->
                                                        <div class="modal-header">
                                                            <p class="text-primary">${task.owner.firstName} ${task.owner.lastName}
                                                                | <b>DODANO</b>: ${task.addDate} |
                                                                <b>DEADLINE</b>: ${task.deadline}
                                                            </p>
                                                            <button type="button" class="close" data-dismiss="modal">
                                                                &times;
                                                            </button>
                                                        </div>
                                                        <!--End of Modal header -->

                                                        <!-- Modal body -->
                                                        <div class="modal-body">

                                                            <!-- Task Data Row -->

                                                            <!-- Student -->
                                                            <div class="form-group py-3">
                                                                <label for="owner"
                                                                       class="col-form-label">Kursant</label>
                                                                <select class="form-control" name="owner" id="owner">
                                                                    <c:forEach items="${peoples}" var="owner">
                                                                        <option
                                                                                <c:if test="${owner.id eq
                                                                        task.owner.id}">selected</c:if>
                                                                                value="${owner.id}">
                                                                                ${owner.firstName} ${owner.lastName}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <!-- Deadline Date  -->

                                                            <label for="deadline"
                                                                   class="col-form-label">Deadline</label>
                                                            <div class="input-group mb-3">
                                                                <input class="form-control border-right-0"
                                                                        <fmt:parseDate value="${task.deadline}"
                                                                                       pattern="yyyy-MM-dd"
                                                                                       var="parsedDate" type="date"/>
                                                                       value="<fmt:formatDate value="${parsedDate}"
                                                                                        type="date" pattern="dd/MM/yyyy"/>"
                                                                       name="deadline" id="deadline"
                                                                       placeholder="dd/mm/rrrr"/>
                                                                <div class="input-group-append">
                                                                <span class="input-group-text bg-white">
                                                                     <i class="far fa-calendar-alt pt-1"></i>
                                                                </span>
                                                                </div>
                                                            </div>

                                                            <!-- Task description -->
                                                            <div class="form-group">
                                                                <label for="description" class="col-form-label">
                                                                    Treść zadania
                                                                </label>
                                                                <textarea class="form-control" name="description"
                                                                          id="description"
                                                                          rows="5">${task.description}</textarea>
                                                            </div>

                                                            <!-- Level -->
                                                            <label>Task level: </label>
                                                            <div class="form-check-inline ml-2 pt-3 pl-5">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input"
                                                                           name="level"
                                                                           value="${task.level}"
                                                                           <c:if test="${task.level eq 'JUNIOR' ||
                                                                            task.level eq null}">checked</c:if>>
                                                                    <i class="btn btn-success btn-circle">J</i>
                                                                </label>
                                                            </div>

                                                            <div class="form-check-inline ml-2 pt-3">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input"
                                                                           name="level"
                                                                           value="${task.level}"
                                                                           <c:if test="${task.level eq 'JUNIOR_PLUS'}">checked</c:if>>
                                                                    <i class="btn btn-info btn-circle">J+</i>
                                                                </label>
                                                            </div>

                                                            <div class="form-check-inline ml-2 pt-3">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input"
                                                                           name="level"
                                                                           value="${task.level}"
                                                                           <c:if test="${task.level eq 'MID'}">checked</c:if>>
                                                                    <i class="btn btn-warning btn-circle">M</i>
                                                                </label>
                                                            </div>

                                                            <div class="form-check-inline ml-2 pt-3">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input"
                                                                           name="level"
                                                                           value="${task.level}"
                                                                           <c:if test="${task.level eq 'MID_PLUS'}">checked</c:if>>
                                                                    <i class="btn btn-primary btn-circle">M+</i>
                                                                </label>
                                                            </div>

                                                            <div class="form-check-inline ml-2 pt-3">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input"
                                                                           name="level"
                                                                           value="${task.level}"
                                                                           <c:if test="${task.level eq 'SENIOR'}">checked</c:if> >
                                                                    <i class="btn btn-danger btn-circle">S</i>
                                                                </label>
                                                            </div>

                                                        </div>
                                                        <!-- End of Modal body -->

                                                        <!-- Modal footer -->
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">Odrzuć zmiany
                                                            </button>
                                                            <input class="btn btn-success" type="submit"
                                                                   value="Zapisz zmiany" id="submitChanges"/>
                                                        </div>
                                                        <!-- End of Modal footer -->

                                                    </div>
                                                </div>
                                            </div>
                                            <!--End of Edit Modal -->
                                        </form>
                                        <!-- Delete Task Modal -->
                                        <div class="modal" id="deleteModal${task.id}">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Czy na pewno chcesz usunąć taska
                                                            ?</h4>
                                                        <button type="button" class="close" data-dismiss="modal">
                                                            &times;
                                                        </button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <div class="modal-body">
                                                        Jeżeli usuniesz to już nie będzie odwrotu
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <form name="deleteTask" method="post"
                                                          action="<c:url value="/delete/${task.id}"/>">
                                                        <div class="modal-footer">
                                                            <input type="submit" name="delete"
                                                                   class="btn btn-danger pull-left"/>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End of Delete Task Modal -->
                                    </li>

                                </c:forEach>
                            </ul>
                        </div>
                        <!-- End of Tasks column -->

                    </div>
                </div>
                <!-- End of Body -->

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
<%@include file="dynamic/datepicker.jsp" %>
</body>

</html>
