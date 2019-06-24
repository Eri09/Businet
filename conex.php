<?php
//codigo para conectarse con Base de datos MYSQL
// los parametros de entrada son host(servidor), usuario, contraseña y base de datos
//creamos la variable conex
$servidor="localhost";
$user="root";
$pass="";
$bd="businet";
$conex=mysqli_connect($servidor, $user,$pass, $bd);
$conex->query("SET NAMES 'utf8'");

//valida si esta correcta la conexion y muestra el mensaje
if($conex){ 
//echo "Conexion Correcta!";
}
else{ echo "error en la conexion!";}
?>