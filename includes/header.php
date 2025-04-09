<?php session_start(); ?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?= isset($titulo) ? $titulo : 'Gato Preto Mangás' ?></title>

    <!-- Bootstrap primeiro -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="..." crossorigin="anonymous">

    <!-- Seus estilos personalizados depois -->
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
                <a href="listarmangas.php">Mangas</a>
            </nav>
            <div class="search-container">
                <!-- <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Pesquisar..." aria-label="Search">
                <div class="icons">
                    <a href="./listarmangas.php"><i class="bi bi-search"></i></a>
                </div>
                </form> -->
            </div>

            <div class="icons">
                <a href="./tela_login.php"><i class="bi bi-person"></i></a>
            </div>
        </div>
    </header>