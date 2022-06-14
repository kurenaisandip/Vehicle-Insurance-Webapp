<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="dashboard.jsp"%>

<%            HttpSession s = request.getSession();
    RequestDispatcher dispatcher = null;

    try {
        dispatcher = request.getRequestDispatcher("login.jsp");
        s.invalidate();
        // End session
        dispatcher.forward(request, response);

    } catch (Exception e) {
        e.printStackTrace();
        out.print("Error occured:" + e);
    }
%>