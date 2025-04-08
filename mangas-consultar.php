<?php
    require './classes/Mangas.php';
    require './classes/Generos.php';

    include './includes/header.php';


if (isset($_GET['id']) && !empty($_GET['id'])) {
    $mangas = new Mangas();
    $generos = new Generos();

    $dados = $mangas->consultarMangasById($_GET['id']);
    $dadosGeneros = $generos->consultarGeneroByIdManga($_GET['id']);

    include './includes/mangas_detalhe.php';
} else {
    header('location:index.php');
}

include_once './includes/footer.php'

?>