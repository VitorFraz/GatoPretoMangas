<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= isset($titulo) ? $titulo : 'Gato Preto Mangás' ?></title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/manga_cards.css">
</head>

<body>
    <header>
        <div class="header">
            <div class="logo">
                <a href="./tela_inicial.php">
                    <img src="./assets/img/possivellogo.jpg" alt="Logo">
                    <span>Gato Preto Mangás</span>
                </a>
            </div>

            <nav>
                <a href="index.php">Novidades</a>
                <a href="index.php">Popular</a>
                <a href="index.php">Favoritos</a>
                <a href="index.php">Categorias</a>
                <a href="listarmangas.php">Mangás</a>
            </nav>

            <div class="search-container">
                <form class="d-flex" action="listarmangas.php" method="GET" role="search">
                    <input class="form-control me-2" type="search" name="busca" placeholder="Pesquisar..." aria-label="Pesquisar">
                    <button class="btn btn-outline-light" type="submit"><i class="bi bi-search"></i></button>
                </form>
            </div>

            <div class="icons">
    <?php if (isset($_SESSION['nome'])): ?>
        <span class="text-light">Olá, <?= $_SESSION['nome'] ?></span>
    <?php else: ?>
        <a href="./tela_login.php"><i class="bi bi-person"></i></a>
    <?php endif; ?>
</div>
    </header>
