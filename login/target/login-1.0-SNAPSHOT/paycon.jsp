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
    
     <%@include file="paymentsucessful.jsp"%>

<%
Connection conn=null;
Statement stm=null;
//RequestDispatcher dispatcher=null;



String fullname=request.getParameter("fullname");
String mail=request.getParameter("mail");
String cardname=request.getParameter("cardname");
String location=request.getParameter("location");


String State=request.getParameter("State");
String zcode=request.getParameter("zcode");


// code to insert data in to databse


try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/payment","root","");
stm=conn.createStatement();
int i=stm.executeUpdate("insert into pay(fname, email, noc, address, state, zipcode)VALUES('"+fullname+"','"+mail+"','"+cardname+"','"+location+"','"+State+"','"+zcode+"')");
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