<?php

$titulo = 'Gato Preto Mangas - Início';
include './includes/header.php';

include './includes/banner.php';
include './includes/carrossel.php';

include_once('classes/Mangas.php');

$mangas = new Mangas();
$dadosMangas = $mangas -> exibirListarMangas(50);

//$genero = new Generos();

include './includes/manga_lista.php';


include './includes/footer.php';
?>