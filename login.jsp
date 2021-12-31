<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<script>
{
 alert("Successfully Registered!");
 window.location.href="ind.html";
}
</script>
<%
try{
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/login","root","");
PreparedStatement ps=conn.prepareStatement("insert into signin values(?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,phone);
ps.executeUpdate();

ps.close();
conn.close();
}
catch(Exception e)
{out.println(e);
}
%>