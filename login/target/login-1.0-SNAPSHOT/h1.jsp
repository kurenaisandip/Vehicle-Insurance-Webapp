<%--
Document : database
Created on : Apr 16, 2022, 11:17:44 AM
Author : nitro 5
--%>




<%@page import="java.sql.*"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>payment</title>
</head>
<body>
    
     <%@include file="helpsucessful.jsp"%>

<%
Connection conn=null;
Statement stm=null;
//RequestDispatcher dispatcher=null;



String Uname=request.getParameter("Uname");
String mail=request.getParameter("mail");
String mess=request.getParameter("mess");


//code to save data into database


try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/help","root","");
stm=conn.createStatement();
int i=stm.executeUpdate("insert into contactus (uname, email, message)VALUES('"+Uname+"','"+mail+"','"+mess+"')");
//dispatcher=request.getRequestDispatcher("index.jsp");
//if(i>0){
//request.setAttribute("status", "success");


out.println("connected sucessfully");
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