<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.vsc.branch.Branch"
     import = "java.sql.*"
    import = "com.vsc.*"
    %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Map</title>
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

   <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
   integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
   crossorigin=""/>

   <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
   integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
   crossorigin=""></script>

<style >
    #mapid { height: 400px; width:900px }

</style>

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

          <li class="drop-down"><a href="#"></a>
            <ul>
              <li><a href="#">Edit Employee</a></li>
              <li><a href="delete.jsp">Delete Employee</a></li>

            </ul>
          </li>

          <li><a href="index.jsp">Add Employee</a></li>
          <li><a href="viewEmployees.jsp">View Employees</a></li>
          <li><a href="viewBranch.jsp">View Branches</a></li>
          <li><a href="map.jsp">View Map</a></li>
          

          
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


   <div class="row">
   </div>
<div class="col">
   </div>
   <table  border="5" align="center" width="900px" height="100px">
                        <thead>
                            <tr>
                            
                                <th>Full Name</th>
                                <th>Telephone Number</th>
                                <th>Home Location</th>
                                <th> Branch Name</th>
                                <th>Branch Location</th>
                                
                                
                               
                                
                         
                            </thead>
                            <tbody>
                              <tr>
          <%
    try{
      Connection conn = null;
      PreparedStatement statement = null;
      
      
      conn = OpenConnection.getConnection();
      String sql = "select e.emp_name,e.emp_surname, e.emp_tel_no,e.emp_location, b.branch_name , b.branch_location from public.employees e, public.branch b where e.emp_branchID=b.branch_id ";
      
      statement=conn.prepareStatement(sql);
      
      ResultSet rs = statement.executeQuery();
      while (rs.next())
      {
        %>
        <tr>
        <td><%=rs.getString("emp_name") + " " + rs.getString("emp_surname") %></td>
        <td  > <%= rs.getString("emp_tel_no")%></td>
        <td  ><%= rs.getString("emp_location")%> </td>
        <td  ><%= rs.getString("branch_name")%> </td>
        <td  ><%= rs.getString("branch_location")%> </td>
        
        </tr>
         <%        
        
        
      
      
      }
    }   
  catch (Exception ex)
  {
    
    
  }
  
  
  %>
                                
             
                      
                   </table>


  <div id="mapid">
    
<centre>
    <script>
      
      const map =L.map('mapid').setView([-26.205, 28.200], 11);
       L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
      '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
      'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    id: 'mapbox/streets-v11',

  }).addTo(map);
       
       <%try{
    Connection conn = null;
    PreparedStatement statement = null;
    
    
    conn = OpenConnection.getConnection();
    String sql = "SELECT * FROM public.branch ";
    
    statement=conn.prepareStatement(sql);
    
    ResultSet rs = statement.executeQuery();
    while(rs.next())
    {%> 
        var marker = L.marker([<%=rs.getString("branch_location")%>]).addTo(map);
    
    <%
      
      
    }
    
      
      
    }
       
    catch (Exception er)
    {
      
      
    }       
       %>
       




    </script>
    </centre>
  </div>

</body>
</html>