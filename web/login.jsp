<%-- 
    Document   : login
    Created on : Oct 31, 2015, 11:34:15 PM
    Author     : limon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN LOGIN FORM</title>
    </head>
    <body>
        <form action="loginprocess.jsp" method="post">
            Enter-Name:<input type="text" name="uname"><br>
            Enter-Password:<input type="password" name="upass"><br>
            <input type="submit" value="Login">
            <input type="reset" value="Reset">
            
        </form>
    </body>
</html>
