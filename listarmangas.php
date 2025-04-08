<?php 

require './classes/Mangas.php';
require './classes/Generos.php';

$titulo = 'Gato Preto - Mangás';
include'./includes/header.php';

$manga = new Mangas();
$dadosMangas = $manga->exibirListarMangas();


$genero = new Generos();
$dadosGeneros = $genero->consultarListaGeneros();

include'./includes/manga_lista.php';
include'./includes/footer.php';

?>