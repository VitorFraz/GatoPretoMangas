<?php 

session_start();
if (isset($_SESSION['usuario'])) {
    header("Location: listarmangas.php"); // ou qualquer outra página principal
    exit;
}



$titulo = 'Gato Preto Mangás - Login';
include './includes/header.php';

include './includes/login_card.php';

include './includes/footer.php';
?>