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

  <title>Index</title>
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
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.jsp"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="#">Home</a></li>

          <li class="drop-down"><a href="#">Edit and Delete</a>
            <ul>
              <li><a href="editData.jsp">Edit Employee</a></li>
              <li><a href="delete.jsp">Delete Employee</a></li>

            </ul>
          </li>

          <li><a href="index.jsp">Add Employee</a></li>
          <li><a href="viewEmployees.jsp">View Employees</a></li>
          <li><a href="viewBranches.jsp">View Branches</a></li>
			<li><a href="map.jsp">View Map</a></li>          

          
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1>Welcome to VSC management</h1>
      <h2> edit Employee</h2>
      
    </div>
  </section><!-- End Hero -->

  <main id="main">
 <%
 String id = request.getParameter("emp_id");
 try{
		Connection conn = null;
		Statement statement = null;

		conn = OpenConnection.getConnection();
		String sql = "SELECT * FROM public.employees where emp_id='"+id+"'";

		statement = conn.createStatement();

		ResultSet rs = statement.executeQuery(sql);
		
		while(rs.next())
		{
				%>
				<div class="row">
          
            <form  method= "post" action ="update.jsp" >
               
                  <div class="col">
                    <br>
                    <input type="text" class="form-control" name="name" placeholder="Name" value="<%= rs.getString("emp_name") %>">
                    <br>
                  </div>
        <div class="col">
            <input type="text" class="form-control"name="surname" placeholder="surname" value="<%= rs.getString("emp_surname") %>">
            <br>
        </div>
        
                <div class="col">
            <input type="text" class="form-control" name="birthday"placeholder="Birthday" value="<%= rs.getString("emp_birthday") %>" >
             <br>
        </div>
        
                <div class="col">
            <input type="text" class="form-control" name="telephone"placeholder="Telephone"  value="<%= rs.getString("emp_tel_no") %>">
             <br>
        </div>

                <div class="col">
            <input type="text" class="form-control" name="location" placeholder="Location" value="<%= rs.getString("emp_location") %>">
             <br>
        </div>
                <div class="col">
                
            <input type="text" class="form-control" name="marital_stat"placeholder="Marital Status" value="<%= rs.getString("emp_marital_status") %>">
             <br>


        </div>

        
      


          <input type="submit" class="col-sm-10" value="UPDATE "/>
       
      </form>


        </div>
				
				
				<% 
			
		}
	 
 }
 catch (Exception er)
 {
	 
	 
 }
 
 %>
 
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row justify-content-end">
          <div class="col-lg-11">
            <div class="row justify-content-end">

              


            </div>
          </div>
        </div>

       </div>
    </section><!-- End About Section -->


    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="fade-in">



      </div>
    </section><!-- End Cta Section -->

    
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 

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