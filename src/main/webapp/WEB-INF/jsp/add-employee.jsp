<%@include file="header.jsp" %>
<%@include file="nav-bar.jsp" %>

<section class="class-page-section ">
    <div class="row me-0 p-4">
        <div class="col">
            <form class="emp-form-align">
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <h2 class="text-center">Basic Employment Information Sheet</h2>
                <p style="font-size:20px;font-weight:bold;">Employee Information</p>
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="firstname" class="form-control"/>
                            <label class="form-label">First name</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="text" id="lastname" class="form-control"/>
                            <label class="form-label">Last name</label>
                        </div>
                    </div>
                </div>

                <div class="form-outline mb-4">
                    <input type="text" class="form-control" id="address"/>
                    <label class="form-label">Home Address</label>
                </div>

                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="tel" class="form-control" id="land"/>
                            <label class="form-label">Phone (Fixed)</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="tel" class="form-control" id="mobile"/>
                            <label class="form-label">Mobile</label>
                        </div>
                    </div>
                </div>

                <!-- Email input -->
                <div class="form-outline mb-4">
                    <input type="email"  class="form-control" id="email"/>
                    <label class="form-label">Email</label>
                </div>

                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="date" class="form-control" id="dob"/>
                            <label class="form-label">Date Of birth</label>
                        </div>
                    </div>
                    <div class="col">
                        <select class="select form-control" id="Marital">
                            <option value="1">Married</option>
                            <option value="2">UnMarried</option>
                        </select>
                        <label class="form-label select-label">Marital Statusl</label>
                    </div>
                </div>
                <!-- Text input -->
                <!-- Email input -->

                <p style="font-size:20px;font-weight:bold;">Job Information</p>
                <div class="row mb-4">
                    <div class="col">
                        <select class="select form-control" id="post">
                            <option value="1">Manager</option>
                            <option value="2">Supervisor</option>
                            <option value="2">employee</option>
                            <option value="2">clack</option>
                        </select>
                    </div>
                    <div class="col">
                        <select class="select form-control" id="city">
                            <option value="1">Colombo</option>
                            <option value="2">Galle</option>
                            <option value="2">Kottawa</option>
                            <option value="2">Kalutara</option>
                        </select>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="tel" class="form-control" id="wPhone"/>
                            <label class="form-label" f>Work Phone</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="tel" class="form-control" id="wMobile"/>
                            <label class="form-label">Mobile</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                        <div class="form-outline">
                            <input type="date" class="form-control" id="date"/>
                            <label class="form-label">Start Date</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline">
                            <input type="number" class="form-control" id="salary"/>
                            <label class="form-label">Salary</label>
                        </div>
                    </div>
                </div>

                <!-- Checkbox -->
                <div class="form-check d-flex justify-content-center mb-4">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form6Example8" checked/>
                    <label class="form-check-label"> Create an account? </label>
                </div>

                <!-- Submit button -->
                <button type="button" class="btn btn-primary btn-block mb-4" id="add_data">Add Column</button>
            </form>
        </div>

        <%--        Table--%>
        <div class="col">
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

            <div class="text-center text-lg-start mt-4 pt-2 d-flex flex-row align-items-center justify-content-center">
                <button type="submit" name="submit"
                        class="btn btn-primary btn-lg form-control login-btn  form-control-lg input-admin w-25"
                        >
                    Add Employees
                </button>
            </div>
        </div>
    </div>

</section>

<%@include file="footer.jsp" %>

<script>
    $('#add_data').click(function () {
        var firstname = $("#firstname").val()
        var lastname = $("#lastname").val()
        var address = $("#address").val()
        var land = $("#land").val()
        var mobile = $("#mobile").val()
        var email = $("#email").val()
        var dob = $("#dob").val()
        const Marital = $("#Marital option:selected").text();
        const post = $("#post option:selected").text();
        const city = $("#city option:selected").text();
        var wPhone = $("#wPhone").val()
        var wMobile = $("#wMobile").val()
        var date = $("#date").val();
        var salary = $("#salary").val();


        // append inputs to table
        $('#data_table tbody:last-child').append(
            '<tr>' +
            '<td>' + firstname + '  ' + lastname + '</td>' +
            '<td>' + address + '</td>' +
            '<td>' + land + '<br/>' + mobile + '</td>' +
            '<td>' + email + '</td>' +
            '<td>' + dob + '</td>' +
            '<td>' + Marital + '</td>' +
            '<td>' + post + '</td>' +
            '<td>' + city + '</td>' +
            '<td>' + wPhone + '<br/>' + wMobile + '</td>' +
            '<td>' + date +'</td>' +
            '<td>' + salary +'</td>' +
            // '<td> <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"  name="delete" onclick="delStudent(this);"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a> </td>' +
            '</tr>'
        );

    });


</script>



