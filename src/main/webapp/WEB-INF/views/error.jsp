<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jsp" %>

<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper h-100">
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- 404 Error Text -->
                <div class="text-center mt-5">
                    <div class="error mx-auto" data-text="404">404</div>
                    <p class="lead text-gray-800 mb-5">
                        <spring:message code="l.pageNotFound"/>
                    </p>
                    <p class="text-gray-500 mb-0">
                        <spring:message code="l.matrixGlitch"/>
                    </p>
                    <a  href="<c:url value="/"/>">&larr;
                        <spring:message code="l.back.home"/>
                    </a>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->

        <!-- Footer -->
        <%@include file="dynamic/footer.jsp" %>
        <!-- End of Footer -->
    </div>
    <!-- End of Main Content -->
</body>
</html>
