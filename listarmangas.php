<?php 
if (isset($_GET['autocomplete'])) {
    header('Content-Type: application/json');

    $termo = $_GET['autocomplete'];

    try {
        $pdo = new PDO('mysql:host=127.0.0.1;dbname=bd_gato_preto', 'root', '');
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $pdo->prepare("SELECT id, titulo FROM tb_mangas WHERE titulo LIKE :termo LIMIT 10");
        $stmt->execute([':termo' => "%$termo%"]);
        $titulos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($titulos);
        
    } catch (PDOException $e) {
        echo json_encode([]);
    }

    exit;
}
session_start();



if (!isset($_SESSION['cliente_id'])) {
    echo "<script>alert('Você precisa estar logado para acessar esta página!'); window.location.href = './tela_login.php';</script>";
    exit;
}
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