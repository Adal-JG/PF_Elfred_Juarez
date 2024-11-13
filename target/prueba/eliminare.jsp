<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ include file="/conexion.jsp" %>

<%
String carnet = request.getParameter("carnete");

Connection con = (Connection) application.getAttribute("conexion");
    if (con != null) {
        String consulta = "CALL speliminare(?);";
        try (PreparedStatement pst = con.prepareStatement(consulta)) {
            pst.setString(1, carnet);
            pst.executeUpdate();
            out.println("<p style='color:green;'>Registro exitoso.</p>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p style='color:red;'>Error en el registro: " + e.getMessage() + "</p>");
        }
    } else {
        out.println("<p style='color:red;'>Error: No se pudo establecer la conexión con la base de datos.</p>");
    }
%>