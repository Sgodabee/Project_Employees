<%@page import="com.vsc.branch.Branch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "java.sql.*"
    import = "com.vsc.*"
    
    %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>View Employees</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
 


</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.jsp">VSC JOHANNESBURG</a></h1>
      
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>

          <li class="drop-down"><a href="#">Edit and Delete</a>
            <ul>
              <li><a href="editData.jsp">Edit Employee</a></li>
              <li><a href="delete.jsp">Delete Employee</a></li>

            </ul>
          </li>

          <li><a href="index.jsp">Add Employee</a></li>
          <li><a href="viewEmployees.jsp">View Employees</a></li>
          <li><a href="viewBranch.jsp">View Branches</a></li>
          
          

          
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1>Welcome to VSC management</h1>
      <h2> Employee list</h2>
     
     
    </div>
  </section><!-- End Hero -->

  <main id="main">
  	    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="fade-in">



      </div>
    </section>
  
  
   <div class="col">
   </div>
 	<table border="2" align="center" width="600px">
		<thead>
			<tr>
				<th>Full name</th>
				<th>Birthday</th>
				<th>Telephone</th>
				<th>Maritual Status</th>
				<th>Home Location</th>
				<th>Branch ID</th>
				<th>Employee ID</th>
				<th></th>
		</thead>
		<tbody>
			<tr>
				<%
					try {
					Connection conn = null;
					PreparedStatement statement = null;

					conn = OpenConnection.getConnection();
					String sql = "SELECT * FROM public.employees ";

					statement = conn.prepareStatement(sql);

					ResultSet rs = statement.executeQuery();
					while (rs.next()) {
				%>
			
			<tr>
				<td><%=rs.getString("emp_name") + " " + rs.getString("emp_surname") %></td>
				<td><%=rs.getString("emp_birthday")%></td>
				<td><%=rs.getString("emp_tel_no") %></td>
				<td><%=rs.getString("emp_marital_status")%></td>
				<td><%=rs.getString("emp_location")%></td>
				<td></td>
				<td><%=rs.getString("emp_Id")%></td>
				<td> 
				<a href='edit.jsp?emp_id=<%=rs.getString("emp_id") %>' class="btn btn-danger"> Edit</a>
				</td>
			</tr>
			<%
				}
			} catch (Exception ex) {

			}
			%>
		
	</table>
  </main><!-- End #main -->

 

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>