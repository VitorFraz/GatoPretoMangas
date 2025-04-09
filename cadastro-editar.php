<?php
// Conexão com o banco
$dsn = 'mysql:host=127.0.0.1;dbname=bd_gato_preto';
$user = 'root';
$password = '';

try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Recebe dados do formulário
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];
    $cpf = $_POST['cpf'];
    $senha = $_POST['senha'];
    $confirmar_senha = $_POST['confirmar_senha'];

    // Validação simples
    if ($senha !== $confirmar_senha) {
        echo "<script>alert('As senhas não coincidem!'); window.history.back();</script>";
        exit;
    }

    // Insere no banco (sem criptografar a senha)
    $sql = "INSERT INTO tb_clientes (email, telefone, cpf, senha) VALUES (:email, :telefone, :cpf, :senha)";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':telefone', $telefone);
    $stmt->bindParam(':cpf', $cpf);
    $stmt->bindParam(':senha', $senha); // senha em texto puro

    $stmt->execute();

    echo "<script>alert('Cadastro realizado com sucesso!'); window.location.href = './tela_login.php';</script>";

} catch (PDOException $e) {
    echo "Erro ao cadastrar: " . $e->getMessage();
}
?>
