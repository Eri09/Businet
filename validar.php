<?php
session_start(); 
include("conex.php");

$usuario=$_REQUEST['username'];
$mensaje=$_REQUEST['pass'];  






$sql=$conex->query("SELECT * FROM  `login` where patente='$usuario' and password='$mensaje'" );
 
if (!$sql) {
    die('No se pudo conectar');
}

if($row_cnt = $sql->num_rows>0){
    while ($row = $sql->fetch_array(MYSQLI_ASSOC) ) { 
        $tipo=$row{'rol'};       
        $_SESSION['id']=$row{'id'}; 
        $_SESSION['user']=$row{'user'};    
        $_SESSION['patente']=$row{'patente'}; 
        $_SESSION['rif']=$row{'rif'}; 
        $_SESSION['direccion']=$row{'direccion'}; 
        $_SESSION['Telef']=$row{'Telef'}; 
        $_SESSION['email']=$row{'email'}; 

    }
    if($tipo=='3'){
        
        
    }
    if($tipo=='2'){
       echo "<script>location.href='sistema/panel/agenda.php'</script>";
        
    }     
   
    }
else{
    echo "<script type='text/javascript'>
    alert('Usuario o Contraseña errada porfavor intente de nuevo');
    window.location.href = 'index.html';
</script>";
}
/* liberar la serie de resultados */
$sql->free();
/* cerrar la conexi贸n */
$conex->close();





?>
