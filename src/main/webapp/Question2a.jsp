<%--
  Created by IntelliJ IDEA.
  User: himanshi
  Date: 7/3/18
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
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
