<%@ page import="com.simonjoz.model.Person" %>
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

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Start of Form -->
                <form:form modelAttribute="newTask">

                    <!-- Task Data Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">

                                <div class="card-header p-3">

                                    <!-- Student -->
                                    <div class="form-group row py-3">
                                        <label for="owner" class="col-lg-2 col-form-label">
                                            <spring:message code="l.student"/>
                                        </label>
                                        <div class="col-lg-10">
                                            <select class="custom-select" name="owner" id="owner">
                                                <option><spring:message code="l.choose.person"/></option>
                                                <c:forEach items="${peoples}" var="owner">
                                                    <option value="${owner.id}">
                                                            ${owner.firstName} ${owner.lastName}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <form:errors path="owner.id"
                                                     cssClass="col-lg-10 offset-lg-2 offset-sm-0 text-danger small"/>
                                    </div>

                                    <!-- Deadline Date -->
                                    <div class="form-group row">
                                        <label for="deadline" class="col-lg-2 col-form-label">
                                            <spring:message code="l.task.deadline"/>
                                        </label>
                                        <div class="col-lg-10 input-group mb-3">
                                            <form:input class="form-control border-right-0" path="deadline"
                                                        name="deadline" placeholder="dd/mm/yyyy"/>
                                            <div class="input-group-append">
                                            <span class="input-group-text bg-white border-left-0">
                                                <i class="far fa-calendar-alt pt-1"></i>
                                            </span>
                                            </div>
                                        </div>
                                        <form:errors path="deadline"
                                                     cssClass="col-lg-10 offset-lg-2 offset-xs-0 text-danger small"/>
                                    </div>

                                    <!-- Task description -->
                                    <div class="form-group row">
                                        <label for="description" class="col-lg-2 col-form-label">
                                            <spring:message code="l.task.description"/>
                                        </label>
                                        <div class="col-lg-10">
                                            <form:textarea path="description" class="form-control" rows="5"/>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                    <!--End of Task data Row -->

                    <!-- Level Data Row -->

                    <div class="card shadow card-body mb-3">
                        <div class="form group row py-3 pl-2">
                            <div class="col-lg-2">
                                <label class="mr-5"><spring:message code="l.task.level"/></label>
                            </div>
                            <div class="col-lg-10">
                                <div class="form-check-inline mt-3">
                                    <form:radiobutton path="level" class="form-check-input"
                                                      value="JUNIOR" checked="checked"/>
                                    <i class="btn btn-success btn-circle ml-2 mr-3">J</i> JUNIOR
                                </div>
                                <div class="form-check-inline mt-3">
                                    <form:radiobutton path="level" class="form-check-input" value="JUNIOR_PLUS"/>
                                    <i class="btn btn-info btn-circle ml-2 mr-3">J+</i> JUNIOR PLUS
                                </div>
                                <div class="form-check-inline mt-3">
                                    <form:radiobutton path="level" class="form-check-input" value="MID"/>
                                    <i class="btn btn-warning btn-circle ml-2 mr-3">M</i> MID
                                </div>
                                <div class="form-check-inline mt-3">
                                    <form:radiobutton path="level" class="form-check-input" value="MID_PLUS"/>
                                    <i class="btn btn-primary btn-circle ml-2 mr-3">M+</i> MID PLUS
                                </div>
                                <div class="form-check-inline mt-3">
                                    <form:radiobutton path="level" class="form-check-input" value="SENIOR"/>
                                    <i class="btn btn-danger btn-circle ml-2 mr-3">S</i> SENIOR
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End of Level Data Row -->

                    <!-- Add Buttons -->
                        <input class="btn btn-success" type="submit" value="<spring:message code="b.add.task"/>"
                               id="addButton"/>
                </form:form>
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
<%@include file="dynamic/datepicker.jsp" %>

</body>

</html>
