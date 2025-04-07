<?php 

require './classes/Generos.php';
require './classes/Mangas.php';

$titulo = 'Gato Preto - Mangás';
include'./includes/header.php';

$manga = new Mangas();
$dadosMangas = $manga->exibirListarMangas();
$generos = new Generos();
$dadosGeneros = $generos->consultarListaGeneros();

include'./includes/manga_lista.php';
include'./includes/footer.php';

?>