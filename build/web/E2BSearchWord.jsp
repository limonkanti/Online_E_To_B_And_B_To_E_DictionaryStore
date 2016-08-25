<%-- 
    Document   : SearchWord
    Created on : Oct 31, 2015, 9:43:09 PM
    Author     : limon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SEARCH E2B WORD</title>
    <script>
        var request;
        function sendInfo()
        {
            var v = document.myform.t1.value;
            
            var url = "E2BProcessWord.jsp?val=" + v;
            if (window.XMLHttpRequest)
            {
                request = new XMLHttpRequest();
            }
            else if (window.ActiveXObject)
            {
                request = new ActiveXObject("Microsoft.XMLHTTP");
            }

            try
            {
                request.onreadystatechange = getInfo;
                request.open("GET", url, true);
                request.send();
            }
            catch (e)
            {
                alert("Unable to connect to server");
            }

        }
        function getInfo()
        {
            if (request.readyState === 4)
            {
                var val = request.responseText;
                document.getElementById('a').innerHTML = val;
            }
        }
    </script>
    </head>


    <body>

    <marquee><h3>WELCOME TO YOU ONLINE DICTIONARY WORLD!!!</h3></marquee>
    
    <form name="myform">  
        English to Bengali : <input type="text" name="t1"> 
        <input type="button" value="SEARCH" onClick="sendInfo()">
        </form>
    <span id="a"></span>

</body>
</html>
