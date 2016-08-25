<%-- 
    Document   : loginprocess
    Created on : Oct 31, 2015, 11:37:50 PM
    Author     : limon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PROCESS</title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>  

        <%
            String uname = request.getParameter("uname");
            String upass=request.getParameter("upass");
            
            if ((uname.length()==0) &&(upass.length()==0))
            {
                out.println("Please enter correct username and password!!!");
                out.println("Invalid Username and Password <a href='login.jsp'>try again</a>");
                //response.sendRedirect("login.jsp");
            } 
            else
            {
 
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bangla", "root", "");
                    PreparedStatement ps = con.prepareStatement("select * from  registration where uname=? and upass=?");
                    ps.setString(1, uname);
                    ps.setString(2, upass);
                    ResultSet rs = ps.executeQuery();
               
                    if(rs.next()) {
                        response.sendRedirect("success.jsp");
                        
                    }
                    else
                    {
                        out.println("Invalid password <a href='login.jsp'>try again</a>");
                    }
                   
                } catch (Exception e) {
                 
                   out.println("Error is:\t"+e.toString());
                }
                
                 
            }
        %>  
        
      
    </body>
</html>
