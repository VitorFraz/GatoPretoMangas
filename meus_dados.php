<?php
session_start();
include 'includes/header.php';
// Verifica se o usuário está logado
if (!isset($_SESSION['cliente_id'])) {
    header("Location: tela_login.php");
    exit;
}

$dsn = 'mysql:host=127.0.0.1;dbname=bd_gato_preto';
$user = 'root';
$password = '';

try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $id = $_SESSION['cliente_id'];

    $sql = "SELECT * FROM tb_clientes WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();

    $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$usuario) {
        echo "Usuário não encontrado.";
        exit;
    }

} catch (PDOException $e) {
    echo "Erro de conexão: " . $e->getMessage();
    exit;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Meus Dados</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex flex-column min-vh-100">
    <div class="container mt-5 flex-grow-1">
    <h2 class="mb-4">Meus Dados</h2>

    <ul class="list-group mb-4">
        <li class="list-group-item"><strong>Nome:</strong> <?= htmlspecialchars($usuario['nome']) ?></li>
        <li class="list-group-item"><strong>Email:</strong> <?= htmlspecialchars($usuario['email']) ?></li>
        <li class="list-group-item"><strong>Telefone:</strong> <?= htmlspecialchars($usuario['telefone']) ?></li>
        <li class="list-group-item"><strong>CPF:</strong> <?= htmlspecialchars($usuario['cpf']) ?></li>
    </ul>

    <a href="editar_dados.php" class="btn btn-primary">Editar meus dados</a>
    </div>
    <?php include 'includes/footer.php';?>
</body>
</html>
