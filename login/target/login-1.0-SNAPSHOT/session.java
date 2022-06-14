import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
  
  
public class session extends HttpServlet {  
  
public void doGet(HttpServletRequest request, HttpServletResponse response){  
        try{  
//  Code to print the session 
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
          
        String n=request.getParameter("email");  
        
        out.print("Welcome "+n);  
          
        HttpSession session=request.getSession();  
        session.setAttribute("email",n);  
  
        out.print("<a href='s2.java'>visit</a>");  
                  
        out.close();  
  
                }catch(Exception e){System.out.println(e);}  
    }  
  
}  