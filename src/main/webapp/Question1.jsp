<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
    <title>Watch</title>
</head>
<body>
<p>hello</p>
<%="Hello! The time is now..."%>

<%=new SimpleDateFormat("H:mm:s a").format(new Date()) %>

</body>
</html>
