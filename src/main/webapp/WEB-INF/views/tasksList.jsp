<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Content Row -->

                <!-- Add task button -->
                <div class="card-body pt-1 pb-1 ">
                    <a href="<c:url value="/addTask"/>" class="btn btn-warning btn-block" role="button">
                        <i class="fas fa-exclamation-triangle text-white pb-1 pt-1">&nbsp;<spring:message
                                code="b.add.task"/></i>
                    </a>
                </div>
                <!-- End of Add task button -->

                <!-- Body -->
                <div class="card-body">

                    <%-- Upper Legend --%>
                    <div class="row mb-3 text-white d-md-block d-lg-none">
                        <div class="row card-body justify-content-center text-center ">
                            <div class="col-xs-2 card card-body bg-success d-inline-block">Junior</div>
                            <div class="col-xs-2 card card-body bg-info d-inline-block">Junior +</div>
                            <div class="col-xs-2 card card-body bg-dark d-inline-block">Mid</div>
                            <div class="col-xs-2 card card-body bg-primary d-inline-block">Mid +</div>
                            <div class="col-xs-2 card card-body bg-danger d-inline-block">Senior</div>
                        </div>
                    </div>
                    <%-- End of Upper Legend --%>

                    <!-- Legend column -->
                    <div class="row">
                        <div class="col-lg-3 mr-auto text-white d-none d-lg-block">
                            <div class="card align-items-center bg-success pt-3">
                                <div class="card-body">
                                    <p class="h5"><spring:message code="junior"/></p class="h5">
                                    <p><spring:message code="l.level"/> Junior</p>
                                </div>
                            </div>
                            <div class="card align-items-center bg-info pt-3">
                                <div class="card-body">
                                    <p class="h5"><spring:message code="junior.plus"/></p>
                                    <p><spring:message code="l.level"/>Junior +</p>
                                </div>
                            </div>
                            <div class="card align-items-center bg-dark pt-3">
                                <div class="card-body">
                                    <p class="h5"><spring:message code="mid"/></p>
                                    <p><spring:message code="l.level"/> Mid</p>
                                </div>
                            </div>
                            <div class="card align-items-center bg-primary pt-3">
                                <div class="card-body">
                                    <p class="h5"><spring:message code="mid.plus"/></p>
                                    <p><spring:message code="l.level"/> Mid +</p>
                                </div>
                            </div>
                            <div class="card align-items-center bg-danger pt-3">
                                <div class="card-body">
                                    <p class="h5"><spring:message code="senior"/></p>
                                    <p><spring:message code="l.level"/> Senior</p>
                                </div>
                            </div>
                        </div>
                        <!-- End of Legend column -->
                        <!-- Tasks column -->
                        <div class="col-lg-9">
                            <ul class="list-group">
                                <c:forEach items="${tasks}" var="task">
                                    <li class="card card-body h-50 border border-left-${task.level.color} mb-3 pt-3">
                                        <!-- Tasks Content -->
                                        <div class="row">
                                            <div class="col-xl-9 col-lg-8">
                                                <p class="text-primary">${task.owner.firstName}
                                                        ${task.owner.lastName} |
                                                    <span class="d-inline-block">
                                                        <b><spring:message code="l.added.upper"/></b>:
                                                            ${task.addDate} |
                                                    </span>
                                                    <span class="d-inline-block">
                                                        <b><spring:message code="l.deadline.upper"/></b>:
                                                            ${task.deadline}
                                                    </span>
                                                <p class="text-dark text-xl">${task.description}</p>
                                            </div>

                                            <div class="col-xl-3 col-lg-4 justify-content-end text-right mt-auto">
                                                <a href="#" role="button" class="btn btn-success px-1"
                                                   style="min-width: 65px"
                                                   data-toggle="modal"
                                                   data-target="#editModal${task.id}"><spring:message
                                                        code="b.edit"/>
                                                </a>
                                                <button type="button" class="btn btn-danger px-1"
                                                        style="min-width: 65px" data-toggle="modal"
                                                        data-target="#deleteModal${task.id}">
                                                    <spring:message code="b.delete"/>
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
                                                            <p class="text-primary">${task.owner.firstName}
                                                                    ${task.owner.lastName} |
                                                                <span class="d-inline-block">
                                                                    <b><spring:message code="l.added.upper"/></b>
                                                                    : ${task.addDate} |
                                                                </span>
                                                                <span class="d-inline-block">
                                                                    <b><spring:message code="l.deadline.upper"/></b>:
                                                                        ${task.deadline}
                                                                </span>
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
                                                                <label for="owner" class="col-form-label">
                                                                    <spring:message code="l.student"/>
                                                                </label>
                                                                <select class="form-control" name="owner"
                                                                        id="owner">
                                                                    <c:forEach items="${peoples}" var="owner">
                                                                        <option
                                                                                <c:if test="${owner.id eq
                                                                        task.owner.id}">selected</c:if>
                                                                                value="${owner.id}">
                                                                                ${owner.firstName} ${owner.lastName}
                                                                        </option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>

                                                            <!-- Deadline Date  -->
                                                            <label for="deadline" class="col-form-label">
                                                                <spring:message code="l.task.deadline"/>
                                                            </label>
                                                            <div class="input-group mb-3">
                                                                <input class="form-control border-right-0"
                                                                        <fmt:parseDate value="${task.deadline}"
                                                                                       pattern="yyyy-MM-dd"
                                                                                       var="parsedDate"
                                                                                       type="date"/>
                                                                       value="<fmt:formatDate value="${parsedDate}"
                                                                                        type="date" pattern="dd/MM/yyyy"/>"
                                                                       name="deadline" id="deadline"
                                                                       placeholder="dd/mm/yyyy"/>
                                                                <div class="input-group-append">
                                                                <span class="input-group-text bg-white">
                                                                     <i class="far fa-calendar-alt pt-1"></i>
                                                                </span>
                                                                </div>
                                                            </div>

                                                            <!-- Task description -->
                                                            <div class="form-group">
                                                                <label for="description" class="col-form-label">
                                                                    <spring:message code="l.task.description"/>
                                                                </label>
                                                                <textarea class="form-control" name="description"
                                                                          id="description"
                                                                          rows="5">${task.description}</textarea>
                                                            </div>

                                                            <!-- Level -->
                                                            <div class="row">
                                                                <div class="col-xs-12 col-lg-2">
                                                                    <label class="pt-2">
                                                                        <spring:message code="l.task.level"/>
                                                                    </label>
                                                                </div>
                                                                <div class="col-xs-12 col-lg-10">
                                                                    <div class="form-check-inline ml-lg-3 ml-md-2 ml-sm-1 pt-lg-2">
                                                                        <label class="form-check-label ml-3">
                                                                            <input type="radio" class="form-check-input"
                                                                                   name="level"
                                                                                   value="${task.level}"
                                                                                   <c:if test="${task.level eq 'JUNIOR' ||
                                                                            task.level eq null}">checked</c:if>>
                                                                            <i class="btn btn-success btn-circle">J</i>
                                                                        </label>
                                                                    </div>

                                                                    <div class="form-check-inline ml-lg-3 ml-lg-3 ml-md-2 ml-sm-1 pt-lg-2">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input"
                                                                                   name="level"
                                                                                   value="${task.level}"
                                                                                   <c:if test="${task.level eq 'JUNIOR_PLUS'}">checked</c:if>>
                                                                            <i class="btn btn-info btn-circle">J+</i>
                                                                        </label>
                                                                    </div>

                                                                    <div class="form-check-inline ml-lg-3 ml-md-2 ml-sm-1 pt-lg-2">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input"
                                                                                   name="level"
                                                                                   value="${task.level}"
                                                                                   <c:if test="${task.level eq 'MID'}">checked</c:if>>
                                                                            <i class="btn btn-warning btn-circle">M</i>
                                                                        </label>
                                                                    </div>

                                                                    <div class="form-check-inline ml-lg-3 ml-md-2 ml-sm-1 pt-lg-2">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input"
                                                                                   name="level"
                                                                                   value="${task.level}"
                                                                                   <c:if test="${task.level eq 'MID_PLUS'}">checked</c:if>>
                                                                            <i class="btn btn-primary btn-circle">M+</i>
                                                                        </label>
                                                                    </div>

                                                                    <div class="form-check-inline ml-lg-3 ml-md-2 ml-sm-1 pt-lg-2">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input"
                                                                                   name="level"
                                                                                   value="${task.level}"
                                                                                   <c:if test="${task.level eq 'SENIOR'}">checked</c:if> >
                                                                            <i class="btn btn-danger btn-circle">S</i>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- End of Modal body -->

                                                        <!-- Modal footer -->
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal"><spring:message
                                                                    code="b.abort"/>
                                                            </button>
                                                            <input class="btn btn-success" type="submit"
                                                                   value="<spring:message code="b.save.changes"/>"
                                                                   id="submitChanges"/>
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
                                                        <h4 class="modal-title">
                                                            <spring:message code="confirm.delete.task"/>
                                                        </h4>
                                                        <button type="button" class="close" data-dismiss="modal">
                                                            &times;
                                                        </button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <div class="modal-body">
                                                        <spring:message code="delete.warning"/>
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <form name="deleteTask" method="post"
                                                          action="<c:url value="/delete/${task.id}"/>">
                                                        <div class="modal-footer">
                                                            <input type="submit" class="btn btn-danger pull-left"
                                                                   value="<spring:message code="b.delete"/>"/>
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
