<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Administrativo</title>
</head>
<body class="body-dash">
    <div class="menu_bar">
        <h1 class="logo">Inicio Administrativo</h1>
        <ul>
            <li><a href="#" onclick="showForm('reportesForm')">Inicio</a></li>
            <li>
                <a href="#">Estudiantes <i class="fas fa-caret-down"></i></a>
                <div class="dropdown_menu1">
                    <ul>
                        <li><a href="#" onclick="showForm('ingresarEstudianteForm')">Ingresar</a></li>
                        <li><a href="#" onclick="showForm('eliminarEstudianteForm')">Eliminar</a></li>
                        <li><a href="#" onclick="showForm('buscarEstudianteForm')">Buscar</a></li>
                        <li><a href="#" onclick="showForm('actualizarEstudianteForm')">Actualizar</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="#">Artículos <i class="fas fa-caret-down"></i></a>
                <div class="dropdown_menu">
                    <ul>
                        <li><a href="#" onclick="showForm('ingresarArticuloForm')">Ingresar</a></li>
                        <li><a href="#" onclick="showForm('eliminarArticuloForm')">Eliminar</a></li>
                        <li><a href="#" onclick="showForm('buscarArticuloForm')">Buscar</a></li>
                        <li><a href="#" onclick="showForm('actualizarArticuloForm')">Actualizar</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="#" onclick="showForm('reportesForm')">Reportes</a></li>
            <li><a href="index.jsp">Logout</a></li>
        </ul>
    </div>
    <div id="ingresarEstudianteForm" class="form-container">
        <div class="form-box login">
            <h2>Ingresar Estudiante</h2>
            <form action="ingresarE.jsp" method="post">
                <div class="input-box">
                    <input type="text" name = carnet required>
                    <label>Carnet</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Pnombre required>
                    <label>Primer nombre</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Snombre required>
                    <label>Segundo nombre</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Papellido required>
                    <label>Primer apellido</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Sapellido required>
                    <label>Segundo apellido</label>
                </div>
                <div class="input-box">
                    <input type="text" name = telefono required>
                    <label>Telefono</label>
                </div>
                <button type="submit" class="btn">Ingresar</button>
            </form>
        </div>
    </div>
    <div id="eliminarEstudianteForm" class="form-container">
        <div class="form-box login">
            <h2>Eliminar Estudiante</h2>
            <form action="eliminare.jsp" method="post">
                <div class="input-box">
                    <input type="text" name="carnete" required>
                    <label>Carnet</label>
                </div>
                <button type="submit" class="btn">Eliminar</button>
            </form>
        </div>
    </div>
    <div id="buscarEstudianteForm" class="form-container">
        <div class="form-box login">
            <h2>Buscar Estudiante</h2>
            <form action="bucarA.jsp" method="post">
                <div class="input-box">
                    <input type="text" required>
                    <label>Carnet</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Primer nombre</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Segundo nombre</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Primer apellido</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Segundo apellido</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Telefono</label>
                </div>
                <button type="submit" class="btn">Buscar</button>
            </form>
        </div>
    </div>
    <div id="actualizarEstudianteForm" class="form-container">
        <div class="form-box login">
            <h2>Actualizar Estudiante</h2>
            <form action="actualizarE.jsp" method="post">
                <div class="input-box">
                    <input type="text" name = carnet required>
                    <label>Carnet</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Pnombre required>
                    <label>Primer nombre</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Snombre required>
                    <label>Segundo nombre</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Papellido required>
                    <label>Primer apellido</label>
                </div>
                <div class="input-box">
                    <input type="text" name = Sapellido required>
                    <label>Segundo apellido</label>
                </div>
                <div class="input-box">
                    <input type="text" name = telefono required>
                    <label>Telefono</label>
                </div>
                <button type="submit" class="btn">Actualizar</button>
            </form>
        </div>
    </div>
    <div id="ingresarArticuloForm" class="form-container">
        <div class="form-box login">
            <h2>Ingresar Artículo</h2>
            <form action="ingresarA.jsp" method="post">
                <div class="input-box">
                    <input type="text" name="id" required>
                    <label>Codigo</label>
                </div>
                <div class="input-box">
                    <input type="text" name="nombre" required>
                    <label>Articulo</label>
                </div>
                <div class="input-box">
                    <input type="text" name="almacen" required>
                    <label>Total almacen</label>
                </div>
                <div class="input-box">
                    <input type="text" name="info" required>
                    <label>Comentarios</label>
                </div>
                <button type="submit" class="btn">Ingresar</button>
            </form>
        </div>
    </div>
    <div id="eliminarArticuloForm" class="form-container">
        <div class="form-box login">
            <h2>Eliminar Artículo</h2>
            <form action="eliminara.jsp" method="post" >
                <div class="input-box">
                    <input type="text"name="id" required>
                    <label>Codigo</label>
                </div>
                <button type="submit" class="btn">Eliminar</button>
            </form>
        </div>
    </div>
    <div id="actualizarArticuloForm" class="form-container">
        <div class="form-box login">
            <h2>Actualizar Artículo</h2>
            <form action="actualizarA.jsp" method="post">
                <div class="input-box">
                    <input type="text" name="id" required>
                    <label>Codigo</label>
                </div>
                <div class="input-box">
                    <input type="text" name="nombre" required>
                    <label>Articulo</label>
                </div>
                <div class="input-box">
                    <input type="text" name="almacen" required>
                    <label>Total almacen</label>
                </div>
                <div class="input-box">
                    <input type="text" name="info" required>
                    <label>Comentarios</label>
                </div>
                <button type="submit" class="btn">Actualizar</button>
            </form>
        </div>
    </div>
    <div id="buscarArticuloForm" class="form-container">
        <div class="form-box login">
            <h2>Buscar Artículo</h2>
            <form action="bucarA.jsp" method="post">
                <div class="input-box">
                    <input type="text"name="codigo" required>
                    <label>Codigo</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Articulo</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Total almacen</label>
                </div>
                <div class="input-box">
                    <input type="text">
                    <label>Comentarios</label>
                </div>
                <button type="submit" class="btn">Buscar</button>
            </form>
        </div>
    </div>
    <script>
        function showForm(formId) {
            const forms = document.querySelectorAll('.form-container');
            forms.forEach(form => form.style.display = 'none');  // Oculta todos los formularios
            document.getElementById(formId).style.display = 'flex';  // Muestra el formulario seleccionado
        }
        window.addEventListener('click', function(event) {
            const forms = document.querySelectorAll('.form-container');
            forms.forEach(form => {
                if (event.target === form) {
                    form.style.display = 'none';
                }
            });
        });
    </script>
</body>
</html>