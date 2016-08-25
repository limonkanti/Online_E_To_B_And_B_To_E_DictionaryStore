<%-- 
    Document   : process_insert_word
    Created on : Nov 1, 2015, 12:43:25 AM
    Author     : limon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Word of Dictionary </title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>  

        <%
            String s = request.getParameter("name");
            String s1 = request.getParameter("meaning");
            if (s.length()==0&&s1.length()==0) 
            {
                out.print("Please enter correct word!!!");
            } 
            else 
            {

                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bangla?useUnicode=true&characterEncoding=UTF-8", "root", "");

                    PreparedStatement ps = con.prepareStatement("insert into bangladata(name,meaning) values(?,?)");

                    ps.setString(1, s);
                    ps.setString(2, s1);
                    int i = ps.executeUpdate();
                    if (i > 0) 
                    {
                        out.print("Success!!!");
                    } 
                    else 
                    {
                        out.print("Worng!!!");
                    }

                    //con.close();
                }
                catch (Exception e) 
                {
                    //e.printStackTrace();
                    out.println("Record Already Inserted!!!");
                }

            }
        %>  
    </body>
</html>
