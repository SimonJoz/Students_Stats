<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@include file="../dynamic/css.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<body class="bg-gradient-primary">

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">
            <c:if test="${param.error != null}">
                <div id="error">
                    <spring:message code="message.badCredentials">
                    </spring:message>
                </div>
            </c:if>
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Witaj !</h1>
                                </div>

                                <form:form class="user" method="post"  action="/login">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" name="username"
                                               id="username"
                                               aria-label="login" placeholder="Wprowadź logi...">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                               aria-label="password" placeholder="Hasło" id="password" name="password">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">
                                                Zapamiętaj mnie</label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Login
                                    </button>
                                    <hr>
                                </form:form>

                                <div class="text-center">
                                    <a class="small" href="<c:url value="/register"/>">Utwórz konto!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<%@include file="../dynamic/jsScriptsRegister.jsp" %>

</body>

</html>
