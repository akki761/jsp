<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<body>
<%
    try{
        String fn = request.getParameter("fname");
        String ln = request.getParameter("lname");
        int mb = Integer.parseInt(request.getParameter("telno"));
        String em= request.getParameter("email");
        String uid = request.getParameter("uid");
        String pass= request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root", "ttn");
        PreparedStatement pst = con.prepareStatement("insert into signup values(?,?)");
        pst.setString(1,uid);
        pst.setString(2,pass);
        int i = pst.executeUpdate();
        if(i!=0)
        {
            session.setAttribute("userid", uid);
            response.sendRedirect("success.jsp");
        }
        else{
            response.sendRedirect("notSuccess.jsp");
        }
    }
    catch (Exception e){
        out.println(e);
    }
%>
</body>
</html>