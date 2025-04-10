<?php
$dsn = 'mysql:dbname=bd_gato_preto;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    // Criando a conexão PDO
    $conn = new PDO($dsn, $username, $password);
    
    // Configurar para lançar exceções em caso de erro
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Supondo que o ID do usuário seja passado via GET ou POST
    $user_id = $_GET['id']; // Ou use $_POST se estiver usando um formulário

    // Sanitização do input para evitar SQL Injection
    $user_id = filter_var($user_id, FILTER_SANITIZE_NUMBER_INT);

    // Preparando a consulta SQL para excluir o usuário
    $sql = "DELETE FROM tb_usuarios WHERE id = :id";
    
    // Preparando a consulta
    $stmt = $conn->prepare($sql);
    
    // Vinculando o valor do ID
    $stmt->bindParam(':id', $user_id, PDO::PARAM_INT);
    
    // Executando a consulta
    $stmt->execute();
    
    echo "Usuário excluído com sucesso.";
} catch (PDOException $e) {
    echo "Erro ao excluir usuário: " . $e->getMessage();
} finally {
    // Fechar a conexão
    $conn = null;
}
?>
