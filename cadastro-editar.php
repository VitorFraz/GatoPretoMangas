<?php
// Conexão com o banco
$dsn = 'mysql:dbname=bd_gato_preto;host=127.0.0.1';
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
    $nome = $_POST['nome'];

    // Validação simples
    if ($senha !== $confirmar_senha) {
        echo "<script>alert('As senhas não coincidem!'); window.history.back();</script>";
        exit;
    }

    // Insere no banco (sem criptografar a senha)
    $sql = "INSERT INTO tb_clientes (email, telefone, cpf, senha, nome) VALUES (:email, :telefone, :cpf, :senha, :nome)";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':telefone', $telefone);
    $stmt->bindParam(':cpf', $cpf);
    $stmt->bindParam(':senha', $senha); 
    $stmt->bindParam(':nome', $nome);

    $stmt->execute();

    echo "<script>alert('Cadastro realizado com sucesso!'); window.location.href = './tela_login.php';</script>";

} catch (PDOException $e) {
    echo "Erro ao cadastrar: " . $e->getMessage();
}
?>
