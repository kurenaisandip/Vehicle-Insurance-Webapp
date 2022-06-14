<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logging In</title>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">





<%
String username=request.getParameter("email");
String userpassword=request.getParameter("password");
Connection conn;
PreparedStatement stm;
HttpSession s=request.getSession();
RequestDispatcher dispatcher=null;



//This code is written to get data data from database

try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
stm=conn.prepareStatement("SELECT * FROM user WHERE email=? and upass=?");
stm.setString(1, username);
stm.setString(2, userpassword);
ResultSet rs=stm.executeQuery();
if(rs.next()){
session.setAttribute("email", rs.getString("email"));
String un=(String)session.getAttribute("email");  
System.out.println(un);
dispatcher=request.getRequestDispatcher("dashboard.jsp");



}
else{
request.setAttribute("status", "failed");
dispatcher=request.getRequestDispatcher("login.jsp");
}
dispatcher.forward(request, response);




}
catch(Exception e){
e.printStackTrace();
out.print("Error occured:"+e);




}





%>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script><!-- comment -->
<link rel="stylesheet" href="alert/distsweetalert.css"/>
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="failed"){
swal("sorry","Wrong email and password","failed");



}





</body>
</html>