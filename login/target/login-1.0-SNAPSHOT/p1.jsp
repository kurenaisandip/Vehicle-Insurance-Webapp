




<%@page import="java.sql.*"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online</title>
</head>
<body>
    
     <%@include file="show.jsp"%>

<%

Connection conn=null;
Statement stm=null;
//RequestDispatcher dispatcher=null;




            String name=request.getParameter("uname");
            String dateofbirth=request.getParameter("dob");
            String email=request.getParameter("uemail");

            String sex=request.getParameter("gender");
            String job=request.getParameter("occupation");
            String card=request.getParameter("ID");
            String Inumber=request.getParameter("IDno");
            String auth=request.getParameter("Auth");
            String istate=request.getParameter("Istate");
            String idate=request.getParameter("Idate");
            String pno=request.getParameter("Pno");
            String man=request.getParameter("Man");
            
            String mdmg=request.getParameter("Mdmg");
            String pplan=request.getParameter("Plan");
            String Verperiod=request.getParameter("Vperiod");
            String number=request.getParameter("mobilenumber");
            String Estvalue=request.getParameter("Evalue");
             


// code to insert data into dattabase

try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/policy","root","");
stm=conn.createStatement();
int i=stm.executeUpdate("insert into details (EMAIL,Gender,Occupation,fullname,DOB,idtype,idnumber,authority,state,date,plateno,manufacturer,motordmg,plan,vperiod, mobilenumber, evalue)VALUES('"+email+"','"+sex+"','"+job+"','"+name+"','"+dateofbirth+"','"+card+"','"+Inumber+"','"+auth+"','"+istate+"','"+idate+"','"+pno+"','"+man+"','"+mdmg+"','"+pplan+"','"+Verperiod+"','"+number+"','"+Estvalue+"')");
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