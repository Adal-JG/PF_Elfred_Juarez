<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ include file="/conexion.jsp" %>

<%
String usuario = request.getParameter("usuario");
String contraseña = request.getParameter("contraseña");

Connection con = (Connection) application.getAttribute("conexion");
boolean usuarioValido = false;

if (con != null) {
    String consulta = "CALL spverificar(?,?);";
    try (PreparedStatement pst = con.prepareStatement(consulta)) {
        pst.setString(1, usuario);
        pst.setString(2, contraseña);
        try (ResultSet rs = pst.executeQuery()) {
            if (rs.next()) {
                usuarioValido = true;
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
} else {
    out.println("<p style='color:red;'>Error: No se pudo establecer la conexión con la base de datos.</p>");
}

// Redirigir o mostrar mensaje según el resultado de la verificación
if (usuarioValido) {
    response.sendRedirect("dashboard.jsp");
} else {
%>
    <!-- Mostrar mensaje de error con JavaScript si el usuario no existe -->
    <script type="text/javascript">
        alert("Usuario o contraseña incorrectos. Por favor, inténtalo de nuevo.");
        window.location.href = "index.jsp"; // Redirigir de vuelta a la página de inicio de sesión
    </script>
<%
}
%>