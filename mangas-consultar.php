<?php
require './classes/Mangas.php';
require './classes/Generos.php';

include './includes/header.php';

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $mangas = new Mangas();
    $generos = new Generos();

    // Corrigido: método é buscarPorId (como te mandei na classe Mangas)
    $dados = $mangas->buscarPorId($_GET['id']);

    // Verifica se o mangá foi encontrado antes de continuar
    if ($dados) {
        // Garante que o método consultarGeneroByIdManga exista e funcione
        $dadosGeneros = $generos->consultarGeneroByIdManga($_GET['id']);
        include './includes/mangas_detalhe.php';
    } else {
        echo "<script>alert('Mangá não encontrado!'); window.location.href = 'index.php';</script>";
    }

} else {
    header('Location: index.php');
    exit;
}

include_once './includes/footer.php';
?>
