<?php
// Autocomplete JSON para sugestões da barra de busca
if (isset($_GET['autocomplete'])) {
    header('Content-Type: application/json');

    $termo = $_GET['autocomplete'];
    
    $dsn = 'mysql:dbname=bd_gato_preto;host=127.0.0.1';
    $user = 'root';
    $password = '';

    
    try {
        $pdo = new PDO($dsn, $user, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $pdo->prepare("SELECT titulo FROM tb_mangas WHERE titulo LIKE :termo LIMIT 10");
        $stmt->execute([':termo' => "%$termo%"]);
        $resultados = $stmt->fetchAll(PDO::FETCH_COLUMN); // Retorna apenas os títulos

        echo json_encode($resultados);
    } catch (PDOException $e) {
        echo json_encode([]);
    }

    exit;
}

// Inicia a sessão caso não tenha sido iniciada ainda
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
        <div class="header d-flex align-items-center justify-content-between px-4 py-3 bg-dark text-white">
            <!-- Logo -->
            <div class="logo d-flex align-items-center">
                <a href="./tela_inicial.php" class="d-flex align-items-center text-white text-decoration-none">
                    <img src="./assets/img/possivellogo.jpg" alt="Logo" style="height: 40px; margin-right: 10px;">
                    <span class="fs-5">Gato Preto Mangás</span>
                </a>
            </div>

            <!-- Navegação -->
            <nav class="d-flex gap-3">
                <a href="listarmangas.php" class="text-white text-decoration-none">Novidades</a>
                <a href="listarmangas.php" class="text-white text-decoration-none">Popular</a>
                <a href="listarmangas.php" class="text-white text-decoration-none">Favoritos</a>
                <a href="listarmangas.php" class="text-white text-decoration-none">Categorias</a>
                <a href="listarmangas.php" class="text-white text-decoration-none">Mangás</a>
            </nav>

            <!-- Busca -->
            <div class="search-container position-relative">
            <form class="d-flex position-relative" action="listarmangas.php" method="GET" role="search">
            <input class="form-control me-2" type="search" name="busca" id="busca" placeholder="Pesquisar..." autocomplete="off">
            <button class="btn btn-outline-light" type="submit"><i class="bi bi-search"></i></button>
            <ul id="sugestoes" class="list-group position-absolute w-100" style="top: 100%; z-index: 1000;"></ul>
 </form>
            </div>

            <!-- Usuário -->
            <!-- Ícone ou nome do usuário -->
             <div class="ms-3 d-flex align-items-center gap-3">
             <?php if (isset($_SESSION['nome'])): ?>
     <div class="d-flex align-items-center gap-2">
         <a href="meus_dados.php" class="text-white text-decoration-none">
             Olá, <?= htmlspecialchars($_SESSION['nome']) ?>
         </a>
         <a href="logout.php" class="btn btn-outline-light btn-sm">Sair</a>
     </div>
 <?php else: ?>
     <a href="./tela_login.php" class="text-white text-decoration-none">
         <i class="bi bi-person fs-4"></i>
     </a>
 <?php endif; ?>
 </div>
 
 
 
 </div>
     </header>
 
     <!-- Script do Bootstrap -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 
     <script>
 document.addEventListener("DOMContentLoaded", function () {
     const inputBusca = document.getElementById('busca');
     const sugestoes = document.getElementById('sugestoes');
 
     inputBusca.addEventListener('input', function () {
         const termo = inputBusca.value.trim();
         if (termo.length < 2) {
             sugestoes.innerHTML = '';
             return;
         }
 
         // Requisição via fetch pra ele mesmo
         fetch('?autocomplete=' + encodeURIComponent(termo))
             .then(res => res.json())
             .then(data => {
                 sugestoes.innerHTML = '';
                 data.forEach(titulo => {
                     const item = document.createElement('li');
                     item.className = 'list-group-item list-group-item-action';
                     item.textContent = titulo;
                     item.style.cursor = 'pointer';
                     item.onclick = () => {
                         inputBusca.value = titulo;
                         sugestoes.innerHTML = '';
                     };
                     sugestoes.appendChild(item);
                 });
             });
     });
 
     document.addEventListener('click', function (e) {
         if (!sugestoes.contains(e.target) && e.target !== inputBusca) {
             sugestoes.innerHTML = '';
         }
     });
 });
 </script>
 
 <?php
 // ⚠️ Requisição AJAX via GET usando ?autocomplete=...
 if (isset($_GET['autocomplete'])) {
     header('Content-Type: application/json');
 
     $termo = $_GET['autocomplete'];
 
     try {
         $pdo = new PDO('mysql:host=127.0.0.1;dbname=bd_gato_preto', 'root', '');
         $stmt = $pdo->prepare("SELECT id, titulo FROM tb_mangas WHERE titulo LIKE :termo LIMIT 10");
 $stmt->execute([':termo' => "%$termo%"]);
 $mangas = $stmt->fetchAll(PDO::FETCH_ASSOC);
 echo json_encode($mangas);
 
     } catch (PDOException $e) {
         echo json_encode([]);
     }
 
     exit; // para não carregar o resto do HTML
 }
 ?>
