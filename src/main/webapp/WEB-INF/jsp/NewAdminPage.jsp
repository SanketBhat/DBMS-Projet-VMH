<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Datatable - srtdash</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <!-- amcharts css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/newadminstyle.css">
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AdminPageStyle.css">--%>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AdminPageStyle.css">--%>
    <!-- modernizr css -->
</head>
<body>

<div class="tl1">
    <div style="margin-left:20%">
        <div >
            <h1>Welcome to LifePlus</h1>
            <h2>Administrator Page</h2>
        </div>
<%--        <button class="button button1 " type="button" onclick="show(1)">Doctors List</button>--%>
    </div>
</div>
<div>
<%--    <button class="button button1 " type="button" onclick="show(1)">Doctors List</button>--%>
    <!-- data table start -->
    <div class="col-12 mt-5">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Patient List</h4>
                <div class="data-tables">

                    <!--abhishek insert the script ajax call here before table using script tab and refer old AdminPage-->
                    <!-- then go to scripts.js file  copy the code from line 115 to 120 and replace the id which you are giving-->
                    <!-- same applies for everything -->


                    <script>

                        var i, docData;

                        $.ajax({
                            method: "GET",
                            url: "PatientLists",
                            dataType: 'json',
                            async: false,
                            success: function (response) {
                                docData = response.result;
                            }
                        });

                        // function profileInfo(data) {
                        //     var dateformat = getFormattedDate(data.dob);
                        //     setBalance("₹" + data.balance);
                        //     document.write("<div class='w3-sidebar w3-light-grey w3-bar-block' style='width:20%'>  <button style=\"margin: 10;padding: 8px;\" onclick=\"onLogout()\">Logout</button>  <h3 style='margin-top: 0;' class='w3-bar-item'>Profile</h3>" +
                        //         "    <div style='margin-left:7%;font-size: 14;'>" +
                        //         data.pName + "<br>" +
                        //         data.email + "<br>" +
                        //         dateformat + "<br>" +
                        //         "+91 " + data.phone + "<br>" +
                        //         "    </div>" +
                        //         "</div>");
                        // }

                        function getFormattedDate(odate) {
                            var date = odate.toString();
                            var year = date.substring(0, 4);
                            var month = date.substring(5, 7);
                            var day = parseInt(date.substring(8, 10))
                            day = day + 1;
                            day = day.toString();

                            return day + "/" + month + "/" + year;

                        }




                        document.write("<table id='dataTable' class='text-center' " + "><thead class='bg-light text-capitalize' " + "><tr><th>" + "Name" + "</th><th>" + "Email" + "</th> <th>Address</th> <th>PhoneNumber</th> <th>Date of Birth</th> <th>Balance</th>  </tr></thead><tbody>");
                            Object.keys(docData).forEach(function (i) {
                                var dateformat = getFormattedDate(docData[i].dob);
                                 // setBalance("₹" + docData[i].balance);
                                document.write("<tr><td>" + docData[i].pName + "</td><td>" + docData[i].email + "</td><td>" + docData[i].address + "</td><td>" + "+91 " +  docData[i].phone + "</td><td>"+ dateformat +"</td><td>" + docData[i].balance +"</td></tr>");
                            });
                                document.write("</tbody></table>");
                    </script>
                </div>
            </div>
        </div>
    </div>
    <!-- data table end -->
    <!--My Table start-->
    <div class="col-12 mt-5">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Doctor List</h4>
                <div class="data-tables">
                    <script>

                        var i, docData;

                        $.ajax({
                            method: "GET",
                            url: "DoctorLists",
                            dataType: 'json',
                            async: false,
                            success: function (response) {
                                docData = response.result;
                            }
                        });

                        document.write("<table id='dataTable4' class='text-center' " + "><thead class='bg-light text-capitalize' " + "><tr><th>" + "Name" + "</th><th>" + "Email" + "</th> <th>Address</th> <th>PhoneNumber</th> <th>Date of Birth</th> <th>Balance</th>  </tr></thead><tbody>");
                        Object.keys(docData).forEach(function (i) {
                            var dateformat = getFormattedDate(docData[i].dob);
                            document.write("<tr><td>" + docData[i].pName + "</td><td>" + docData[i].email + "</td><td>" + docData[i].address + "</td><td>" + "+91 "+ docData[i].phone + "</td><td>"+ dateformat +"</td><td>" + docData[i].balance  +"</td></tr>");
                        });
                        document.write("</tbody></table>");
                    </script>
<%--                    <table id="dataTable4" class="text-center">--%>
<%--                        <thead class="bg-light text-capitalize">--%>
<%--                        <tr>--%>
<%--                            <th>StudentName</th>--%>
<%--                            <th>Age</th>--%>
<%--                            <th>Address</th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody>--%>
<%--                        <tr>--%>
<%--                            <td>Airi</td>--%>
<%--                            <td>10</td>--%>
<%--                            <td>hyd</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Angelica Ramos</td>--%>
<%--                            <td>45</td>--%>
<%--                            <td>London</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Ashton Cox</td>--%>
<%--                            <td>66</td>--%>
<%--                            <td>San Francisco</td>--%>

<%--                        </tr>--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
                </div>
            </div>
        </div>
    </div>


    <!-- Primary table start -->
    <div class="col-12 mt-5">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Appointment List</h4>
                <div class="data-tables datatable-primary">
<%--                    <table id="dataTable2" class="text-center">--%>
<%--                        <thead class="text-capitalize">--%>
<%--                        <tr>--%>
<%--                            <th>Name</th>--%>
<%--                            <th>Position</th>--%>
<%--                            <th>Office</th>--%>
<%--                            <th>Age</th>--%>
<%--                            <th>Start Date</th>--%>
<%--                            <th>salary</th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody>--%>
<%--                        <tr>--%>
<%--                            <td>Airi Satou</td>--%>
<%--                            <td>Accountant</td>--%>
<%--                            <td>Tokyo</td>--%>
<%--                            <td>33</td>--%>
<%--                            <td>2008/11/28</td>--%>
<%--                            <td>$162,700</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Angelica Ramos</td>--%>
<%--                            <td>Chief Executive Officer (CEO)</td>--%>
<%--                            <td>London</td>--%>
<%--                            <td>47</td>--%>
<%--                            <td>2009/10/09</td>--%>
<%--                            <td>$1,200,000</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Ashton Cox</td>--%>
<%--                            <td>Junior Technical Author</td>--%>
<%--                            <td>San Francisco</td>--%>
<%--                            <td>66</td>--%>
<%--                            <td>2009/01/12</td>--%>
<%--                            <td>$86,000</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Bradley Greer</td>--%>
<%--                            <td>Software Engineer</td>--%>
<%--                            <td>London</td>--%>
<%--                            <td>41</td>--%>
<%--                            <td>2012/10/13</td>--%>
<%--                            <td>$132,000</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Brenden Wagner</td>--%>
<%--                            <td>Software Engineer</td>--%>
<%--                            <td>San Francisco</td>--%>
<%--                            <td>28</td>--%>
<%--                            <td>2011/06/07</td>--%>
<%--                            <td>$206,850</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Caesar Vance</td>--%>
<%--                            <td>Pre-Sales Support</td>--%>
<%--                            <td>New York</td>--%>
<%--                            <td>29</td>--%>
<%--                            <td>2011/12/12</td>--%>
<%--                            <td>$106,450</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Bruno Nash</td>--%>
<%--                            <td>Software Engineer</td>--%>
<%--                            <td>Edinburgh</td>--%>
<%--                            <td>21</td>--%>
<%--                            <td>2012/03/29</td>--%>
<%--                            <td>$433,060</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Bradley Greer</td>--%>
<%--                            <td>Software Engineer</td>--%>
<%--                            <td>London</td>--%>
<%--                            <td>41</td>--%>
<%--                            <td>2012/10/13</td>--%>
<%--                            <td>$132,000</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Brenden Wagner</td>--%>
<%--                            <td>Software Engineer</td>--%>
<%--                            <td>San Francisco</td>--%>
<%--                            <td>28</td>--%>
<%--                            <td>2011/06/07</td>--%>
<%--                            <td>$206,850</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Caesar Vance</td>--%>
<%--                            <td>Pre-Sales Support</td>--%>
<%--                            <td>New York</td>--%>
<%--                            <td>29</td>--%>
<%--                            <td>2011/12/12</td>--%>
<%--                            <td>$106,450</td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>Bruno Nash</td>--%>
<%--                            <td>Software Engineer</td>--%>
<%--                            <td>Edinburgh</td>--%>
<%--                            <td>21</td>--%>
<%--                            <td>2012/03/29</td>--%>
<%--                            <td>$433,060</td>--%>
<%--                        </tr>--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
    <script>

        var i, docData;

        $.ajax({
            method: "GET",
            url: "PatientAppointments",
            dataType: 'json',
            async: false,
            success: function (response) {
                docData = response.result;
            }
        });

        document.write("<table id='dataTable2' class='text-center' " + "><thead class='text-capitalize' " + "><tr><th>" + "Name" + "</th><th>" + "Email" + "</th> <th>Address</th> <th>PhoneNumber</th> <th>Date of Birth</th> <th>Balance</th>  </tr></thead><tbody>");
        Object.keys(docData).forEach(function (i) {
            var dateformat = getFormattedDate(docData[i].dob);
            document.write("<tr><td>" + docData[i].pName + "</td><td>" + docData[i].email + "</td><td>" + docData[i].address + "</td><td>" + "+91 " + docData[i].phone + "</td><td>"+ dateformat +"</td><td>" + docData[i].balance  +"</td></tr>");
        });
        document.write("</tbody></table>");
    </script>
                </div>
            </div>
        </div>
    </div>
    <!-- Primary table end -->
    <!-- Dark table start -->
    <div class="col-12 mt-5">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Data Table Dark</h4>
                <div class="data-tables datatable-dark">
                    <table id="dataTable3" class="text-center">
                        <thead class="text-capitalize">
                        <tr>
                            <th>Name</th>
                            <th>Position</th>
                            <th>Office</th>
                            <th>Age</th>
                            <th>Start Date</th>
                            <th>salary</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Airi Satou</td>
                            <td>Accountant</td>
                            <td>Tokyo</td>
                            <td>33</td>
                            <td>2008/11/28</td>
                            <td>$162,700</td>
                        </tr>
                        <tr>
                            <td>Angelica Ramos</td>
                            <td>Chief Executive Officer (CEO)</td>
                            <td>London</td>
                            <td>47</td>
                            <td>2009/10/09</td>
                            <td>$1,200,000</td>
                        </tr>
                        <tr>
                            <td>Ashton Cox</td>
                            <td>Junior Technical Author</td>
                            <td>San Francisco</td>
                            <td>66</td>
                            <td>2009/01/12</td>
                            <td>$86,000</td>
                        </tr>
                        <tr>
                            <td>Bradley Greer</td>
                            <td>Software Engineer</td>
                            <td>London</td>
                            <td>41</td>
                            <td>2012/10/13</td>
                            <td>$132,000</td>
                        </tr>
                        <tr>
                            <td>Brenden Wagner</td>
                            <td>Software Engineer</td>
                            <td>San Francisco</td>
                            <td>28</td>
                            <td>2011/06/07</td>
                            <td>$206,850</td>
                        </tr>
                        <tr>
                            <td>Caesar Vance</td>
                            <td>Pre-Sales Support</td>
                            <td>New York</td>
                            <td>29</td>
                            <td>2011/12/12</td>
                            <td>$106,450</td>
                        </tr>
                        <tr>
                            <td>Bruno Nash</td>
                            <td>Software Engineer</td>
                            <td>Edinburgh</td>
                            <td>21</td>
                            <td>2012/03/29</td>
                            <td>$433,060</td>
                        </tr>
                        <tr>
                            <td>Bradley Greer</td>
                            <td>Software Engineer</td>
                            <td>London</td>
                            <td>41</td>
                            <td>2012/10/13</td>
                            <td>$132,000</td>
                        </tr>
                        <tr>
                            <td>Brenden Wagner</td>
                            <td>Software Engineer</td>
                            <td>San Francisco</td>
                            <td>28</td>
                            <td>2011/06/07</td>
                            <td>$206,850</td>
                        </tr>
                        <tr>
                            <td>Caesar Vance</td>
                            <td>Pre-Sales Support</td>
                            <td>New York</td>
                            <td>29</td>
                            <td>2011/12/12</td>
                            <td>$106,450</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Dark table end -->
</div>
<!-- jquery latest version -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<!-- bootstrap 4 js -->

<script src="${pageContext.request.contextPath}/resources/js/newadmin/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/newadmin/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/newadmin/slimscroll.min.js"></script>


<!-- Start datatable js -->
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>

<!-- others plugins -->
<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>

</html>
