<?php

require './classes/Mangas.php';

$titulo = 'Gato Preto Mangas - Início';
include './includes/header.php'; 
// include './includes/banner.php';\\

$mangas = new Mangas();
$dadosMangas = $mangas->exibirListarMangas(24);

include './includes/manga_lista.php';

include './includes/footer.php'; 
?>




