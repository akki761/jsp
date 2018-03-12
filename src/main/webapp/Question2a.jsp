<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% int number = Integer.valueOf(request.getParameter("input-number"));
if(number > 1){
    for (int i =1 ; i <=number; i++) {%>
<%=i%>
<br/>
<%}
}else{%>
<%= "Please enter the positive number."%>
<% } %>
</body>
</html>
