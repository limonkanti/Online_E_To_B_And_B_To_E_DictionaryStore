<%-- 
    Document   : B2EProcessWord
    Created on : Nov 2, 2015, 9:47:43 AM
    Author     : limon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROCESS E2B WORD</title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>  

        <%
            String s = request.getParameter("val");
            if (s == null || s.trim().equals("")) {
                out.print("Please enter correct word!!!");
            } else {
              //  int id = Integer.parseInt(s);
               // String name=String.valueOf(s);
               // out.print(id);
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bangla?useUnicode=true&characterEncoding=UTF-8", "root", "");
                    PreparedStatement ps = con.prepareStatement("select * from  bangladata where meaning=?");
                    //ps.setString(1, s);
                    ps.setString(1, s);
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) 
                    {
                       // out.print(rs.getString(1) + " = " + rs.getString(2));
                        out.print(rs.getString(2) + " = " + rs.getString(1));
                    }
                    else
                    {
                        out.println("Sorry!!! Word Not Found...");
                    }
                    //con.close();
                } catch (Exception e) {
                    //e.printStackTrace();
                   out.println("Error is:\t"+e.toString());
                }
                
                 
            }
        %>  
    </body> 
</html>
