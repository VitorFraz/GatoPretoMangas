<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$dsn = 'mysql:dbname=bd_gato_preto;host=127.0.0.1';
    $user = 'root';
    $password = '';


try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $email = $_POST['usuario'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM tb_clientes WHERE email = :email AND senha = :senha";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':senha', $senha);

    $stmt->execute();
    $cliente = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($cliente) {
        session_start();
        $_SESSION['cliente_id'] = $cliente['id'];
        $_SESSION['cliente_email'] = $cliente['email'];
        $_SESSION['nome'] = $cliente['nome'];
        $_SESSION['usuario'] = $cliente['email']; // ✅ ESSENCIAL PARA FUNCIONAR COM mangas_detalhes

        header("Location: ./listarmangas.php");
        exit;
    } else {
        echo "<script>alert('Usuário ou senha incorretos!'); window.location.href='tela_login.php';</script>";
        exit;
    }

} catch (PDOException $e) {
    echo "Erro no login: " . $e->getMessage();
}
