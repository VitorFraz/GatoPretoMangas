<?php

require './classes/Mangas.php';

$titulo = 'Gato Preto Mangas - Início';
include './includes/header.php'; 
// include './includes/banner.php';

 $mangas = new Mangas();
$dados = $mangas->listarMangasBanco();

 echo $dados;

<<<<<<< HEAD
 include './includes/manga_lista.php';
=======
include './includes/manga_lista.php';
>>>>>>> c74024866e0e40589c1b291d4bfdae0eed9a1add

include './includes/footer.php'; 
?>




