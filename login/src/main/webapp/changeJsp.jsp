<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Changed</title>
</head>
<body>
        <%@include file="login.jsp"%>
    
    <!--This code is written to update the password from database-->
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
PreparedStatement ps=conn.prepareStatement("update user set upass=? WHERE uname=?");
ps.setString(2, username);
ps.setString(1, password);
int i=ps.executeUpdate();
if(i>0){
response.sendRedirect("login.jsp");

}
else{

response.sendRedirect("error.jsp");
}



}
catch(Exception e){

System.out.println("Error Occured:"+e);
}



%>

</body>
</html>