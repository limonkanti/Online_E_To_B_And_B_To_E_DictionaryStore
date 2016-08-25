<%-- 
    Document   : insert_word_to_dictionary
    Created on : Nov 1, 2015, 12:35:34 AM
    Author     : limon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Word To Dictionary Form</title>
    </head>
    <body>
    <marquee><h3>ENTER WORD AND MEANING TO DICTIONARY!!!</h3></marquee>
    
    <form action="process_insert_word.jsp">  
        Enter English Word : <input type="text" name="name"> 
        Enter Bengali Meaning : <input type="text" name="meaning" > 
        <input type="submit" value="SUBMIT">
        </form>
    
    </body>
</html>
