<%@ page import="java.sql.*" %>
<html>
<head>
    <title> Sign in </title>
</head>

<body>

<%
    String uid =request.getParameter("uid");
    String pass= request.getParameter("pass");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root", "ttn");
        PreparedStatement ps = c.prepareStatement("select uid from signup where uid =? and pass = ?");
        ps.setString(1, uid);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();
        System.out.println(rs+"***");
        while (rs.next()) {
           // session.setAttribute("userid", uid);
            response.sendRedirect("welcome.jsp");
            return;
        }
        response.sendRedirect("invalid.jsp");
        return;
    } catch ( SQLException e) {
        System.out.println(e);
    } catch (ClassNotFoundException e) {
        System.out.println(e);
    }
%>

</body>

</html>