




<%@page import="java.sql.*"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
    <%@include file="login.jsp"%>

<%
   
Connection conn=null;
Statement stm=null;
//RequestDispatcher dispatcher=null;

//This code is used to save the data in database.

String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");




try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
stm=conn.createStatement();
int i=stm.executeUpdate("insert into user (uname,email, upass)VALUES('"+username+"','"+email+"','"+password+"')");
//dispatcher=request.getRequestDispatcher("index.jsp");
//if(i>0){
//request.setAttribute("status", "success");



//}
//else{
//request.setAttribute("status", "failed");



//}
//dispatcher.forward(request, response);



conn.close();




}
catch(Exception e){
out.print("Exception error:"+e);




}




%>


</body>
</html>