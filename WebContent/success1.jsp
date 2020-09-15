<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.vsc.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.vsc.Employee"> </jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		int status = EmployeeDAO.insetEmployee(obj);
		if (status>0)
		{
			out.println("Successfully Updated");
			
		}
		else
		{
			
			out.println("fail to update");
			
		}
	
	%>
</body>
</html>