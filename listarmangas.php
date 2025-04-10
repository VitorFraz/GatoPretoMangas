<?php
session_start();

// Verifica se o usuário está logado
if (!isset($_SESSION['cliente_id'])) {
    echo "<script>alert('Você precisa estar logado para acessar esta página!'); window.location.href = './tela_login.php';</script>";
    exit;
}

require './classes/Mangas.php';
require './classes/Generos.php';

$titulo = 'Gato Preto - Mangás';
include './includes/header.php';

$manga = new Mangas();
$genero = new Generos();

// Verifica se foi feita uma busca
if (isset($_GET['busca']) && !empty($_GET['busca'])) {
    $termoBusca = $_GET['busca'];
    $dadosMangas = $manga->buscarPorTitulo($termoBusca); // Função que criaremos abaixo
} else {
    $dadosMangas = $manga->exibirListarMangas(); // Aleatório
}

$dadosGeneros = $genero->consultarListaGeneros();

// Exibe os cards
include './includes/manga_lista.php';

include './includes/footer.php';
?>
