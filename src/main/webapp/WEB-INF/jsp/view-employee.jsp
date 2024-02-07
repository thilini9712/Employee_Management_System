<%@include file="header.jsp" %>
<%@include file="nav-bar.jsp"%>

<section class="class-page-section ">
    <div class="row me-0 p-4">
        <%--        Table--%>
        <div class="col-7">
            <div class="row me-0 p-4">
                <div class="row mb-4">
                    <div class="col">
                        <label class="form-label">Select Post</label>
                        <select class="select form-control" id="post">
                            <option value="1">Manager</option>
                            <option value="2">Supervisor</option>
                            <option value="2">employee</option>
                            <option value="2">clack</option>
                        </select>
                    </div>
                    <div class="col">
                        <label class="form-label">Select Work City</label>
                        <select class="select form-control" id="orkCity">
                            <option value="1">Colombo</option>
                            <option value="2">Galle</option>
                            <option value="2">Kottawa</option>
                            <option value="2">Kalutara</option>
                        </select>
                    </div>
                </div>
            </div>
            <table class="table align-middle mb-0 bg-white" id="data_table">
                <thead class="bg-light">
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>DOB</th>
                    <th>Marital Statusl</th>
                    <th>Post</th>
                    <th>Work City</th>
                    <th>Work Tel</th>
                    <th>Start Date</th>
                    <th>Salary</th>
                </tr>
                </thead>
                <tbody id="tabledata">

                </tbody>
            </table>

<%--            <div class="text-center text-lg-start mt-4 pt-2 d-flex flex-row align-items-center justify-content-center">--%>
<%--                <button type="submit" name="submit"--%>
<%--                        class="btn btn-primary btn-lg form-control login-btn  form-control-lg input-admin w-25"--%>
<%--                >--%>
<%--                    Add Employees--%>
<%--                </button>--%>
<%--            </div>--%>
        </div>

        <div class="col-5">
            <div class="container-xl px-4 mt-4 ">
                <div class="row row-margin d-flex justify-content-center">
                        <div class="card mb-4 body-radius">
                            <div class="card-body">
                                <form class="row  form-inline">
                                    <div class="col input-search">
                                        <p class="sub-heading-name-para">
                                            Registration ID
                                        </p>
                                        <input type="text" class="form-control student-id-input w-25" placeholder="0000"
                                               disabled
                                               name="id" id="id" value="${id}">

                                    </div>
                                    <div class="form-align">
                                        <div class="form-group row">
                                            <label for="name" class="col-sm-2 col-form-label label-width">Name </label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class="border-none" id="name" name="name" disabled
                                                       value="${firstName}${" "}${lastName}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="dob" class="col-sm-2 col-form-label label-width">Addrss</label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class=" border-none" id="dob" name="dob" disabled
                                                       value="${dob}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="school"
                                                   class="col-sm-2 col-form-label label-width">Phone </label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class="border-none" id="school" name="school"
                                                       disabled
                                                       value="${school}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="gender"
                                                   class="col-sm-2 col-form-label label-width">Email </label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class="border-none" id="gender" name="gender"
                                                       disabled
                                                       value="${gender}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="address" class="col-sm-2 col-form-label label-width">Date Of
                                                Birth </label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class="border-none" id="address" name="address"
                                                       disabled
                                                       value="${address}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="guardianName" class="col-sm-2 col-form-label label-width">Marital
                                                Statusl</label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class="border-none" id="guardianName"
                                                       name="guardianName"
                                                       disabled value="${guardianName}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="contactNo"
                                                   class="col-sm-2 col-form-label label-width">Post</label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class="border-none" id="contactNo" name="contactNo"
                                                       disabled
                                                       value="${guardianPhone}">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="contactNo" class="col-sm-2 col-form-label label-width">Work
                                                City</label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="text" class="border-none" id="city" name="city" disabled
                                                       value="${guardianPhone}">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="contactNo" class="col-sm-2 col-form-label label-width">Work
                                                Telephone No</label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="tel" class="border-none" id="wTel" name="wTel" disabled
                                                       value="${guardianPhone}">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="contactNo" class="col-sm-2 col-form-label label-width">Start
                                                Date</label>
                                            <div class="col-sm-10 input-width-view-std" id="startDate" name="startDate"
                                                 value="${guardianPhone}">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="contactNo"
                                                   class="col-sm-2 col-form-label label-width">Salary</label>
                                            <div class="col-sm-10 input-width-view-std">
                                                <input type="number" class="border-none" id="salary" name="salary"
                                                       disabled
                                                       value="${guardianPhone}">
                                            </div>
                                        </div>
                                        <!--button-->
                                        <div class="row mb-4 button-width">
                                            <div class="col ">
                                                <a href="${pageContext.request.contextPath}/home">
                                                    <button type="button" class=" btn reset-btn-class "
                                                    >Exit
                                                    </button>
                                                </a>
                                            </div>

                                            <div class="col ">
                                                <button type="button" id="update" onclick="getStudentDetails()"
                                                        class="btn-primary btn " style="position:absolute;right: 100px;"
                                                >
                                                    update
                                                </button>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>

</section>

<%@include file="footer.jsp" %>

<script>
    // $('#update').click(function () {
    function getStudentDetails() {
        window.location.href = "${pageContext.request.contextPath}/student/update-view?id=${id}";
    }
</script>
