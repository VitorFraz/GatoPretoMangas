<?php 
session_start();

if (!isset($_SESSION['cliente_id'])) {
    echo "<script>alert('Você precisa estar logado para acessar esta página!'); window.location.href = './tela_login.php';</script>";
    exit;
}

require './classes/Mangas.php';
require './classes/Generos.php';

$titulo = 'Gato Preto - Mangás';
include './includes/header.php';

$manga = new Mangas();

// Verifica se foi passado um ID via GET para mostrar apenas um mangá
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];
    $dadosMangas = [$manga->buscarPorId($id)];
} else {
    // Caso contrário, lista todos os mangás
    $dadosMangas = $manga->exibirListarMangas();
}

$genero = new Generos();
$dadosGeneros = $genero->consultarListaGeneros();

include './includes/manga_lista.php';
include './includes/footer.php';
?>
