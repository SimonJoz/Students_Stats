<div class="col-xl-12 col-md-12 mb-12">
    <div class="card shadow mb-4">
        <div class="card-header py-3">

            <!-- SKILLS STATISTICS -->
            <div class="row">

                <!-- JAVA -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="java" class="col-form-label">Java</label>
                    <form:input path="java" class="form-control"/>
                    <form:errors path="java" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- TDD -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="tdd" class="col-form-label">TDD</label>
                    <form:input path="tdd" class="form-control"/>
                    <form:errors path="tdd" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- HTML - CSS -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="htmlCss" class="col-form-label">HTML, CSS</label>
                    <form:input path="htmlCss" class="form-control"/>
                    <form:errors path="htmlCss" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- JSP -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="jsp" class="col-form-label">JSP</label>
                    <form:input path="jsp" class="form-control"/>
                    <form:errors path="jsp" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- THYMELEAF -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="thymeleaf" class="col-form-label">Thymeleaf</label>
                    <form:input path="thymeleaf" class="form-control"/>
                    <form:errors path="thymeleaf" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- GIT -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="git" class="col-form-label">GIT</label>
                    <form:input path="git" class="form-control"/>
                    <form:errors path="git" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- DESIGN PATTERNS -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="designPatterns" class="col-form-label">
                        <spring:message code="l.design.patterns"/>
                    </label>
                    <form:input path="designPatterns" class="form-control"/>
                    <form:errors path="designPatterns" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- DATABASES SQL -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="dataBase" class="col-form-label"><spring:message code="l.databases"/></label>
                    <form:input path="dataBase" class="form-control"/>
                    <form:errors path="dataBase" cssClass="ml-1 text-danger small"/>
                </div>

                <!-- HIBERNATE JPA -->
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <label for="hibernateJPA" class="col-form-label">Hibernate JPA</label>
                    <form:input path="hibernateJPA" class="form-control"/>
                    <form:errors path="hibernateJPA" cssClass="ml-1 text-danger small"/>
                </div>

            </div>

        </div>
    </div>
</div>