<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        history.pushState(null, null, location.href);
        window.addEventListener('popstate', function () {
            history.pushState(null, null, location.href);
        });
        </script> 
</head>
<body class="body-index">
    <div class ="wrapper">
        <div class="form-box login">
            <h2>Iniciar Sesión</h2>
            <form action="verificar.jsp" method="post">
                <div class = input-box>
                    <span class = icon></span>
                    <input type="text" name="usuario" required>
                    <label>Usuario</label>
                </div>
                <div class = input-box>
                    <span class = icon></span>
                    <input type="password" name="contraseña" required>
                    <label>Contraseña</label>
                </div>
                <button type="submit" class="btn">Ingresar</button>
            </form>  
        </div>
    </div>
    
</body>
</html>