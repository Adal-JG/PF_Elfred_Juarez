<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>

<%
String URL= "jdbc:mysql://localhost:3306/proyecto";
String User = "root";
String Password = "Adal1108";

Connection conexion = null;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conexion = DriverManager.getConnection(URL,User,Password);
    application.setAttribute("conexion",conexion);
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
    out.println("Error a conectarse a la BD:"+e.getMessage());
}
%>
