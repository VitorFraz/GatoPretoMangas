<?php

require './classes/Mangas.php';

$titulo = 'Gato Preto Mangas - Início';
include './includes/header.php'; 

 $mangas = new Mangas();
$dados = $mangas->listarMangasBanco();

 echo $dados;

 include './includes/manga_lista.php';

include './includes/footer.php'; 
?>




