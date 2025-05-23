<?php
session_start();
include 'includes/header.php';

if (!isset($_SESSION['cliente_id'])) {
    header("Location: tela_login.php");
    exit;
}

$dsn = 'mysql:dbname=bd_gato_preto;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $id = $_SESSION['cliente_id'];
    $erro = '';

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $telefone = $_POST['telefone'];
        $senha = $_POST['senha'];
        $confirmar_senha = $_POST['confirmar_senha'];

        if (!empty($senha) && $senha !== $confirmar_senha) {
            $erro = "As senhas não coincidem!";
        } else {
            if (!empty($senha)) {
                $stmt = $pdo->prepare("UPDATE tb_clientes SET nome = :nome, email = :email, telefone = :telefone, senha = :senha WHERE id = :id");
                $stmt->bindParam(':senha', $senha);
            } else {
                $stmt = $pdo->prepare("UPDATE tb_clientes SET nome = :nome, email = :email, telefone = :telefone WHERE id = :id");
            }

            $stmt->bindParam(':nome', $nome);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':telefone', $telefone);
            $stmt->bindParam(':id', $id);

            if ($stmt->execute()) {
                $_SESSION['nome'] = $nome;
                header("Location: editar_dados.php?msg=atualizado");
                exit;
            } else {
                $erro = "Erro ao atualizar os dados!";
            }
        }
    }

    $stmt = $pdo->prepare("SELECT * FROM tb_clientes WHERE id = :id");
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$usuario) {
        echo "Usuário não encontrado!";
        exit;
    }

} catch (PDOException $e) {
    echo "Erro ao conectar com o banco: " . $e->getMessage();
    exit;
}
?>

<?php if (isset($_GET['msg']) && $_GET['msg'] === 'atualizado'): ?>
<script>
    alert('Dados atualizados com sucesso!');
    window.location.href = 'tela_inicial.php';
</script>
<?php endif; ?>


<div class="container mt-5">
    <h2 class="mb-4">Editar Meus Dados</h2>

    <?php if (!empty($erro)): ?>
        <div class="alert alert-danger"><?= $erro ?></div>
    <?php endif; ?>

    <form method="POST">
        <div class="mb-3">
            <label for="nome" class="form-label">Nome:</label>
            <input type="text" name="nome" id="nome" class="form-control" value="<?= htmlspecialchars($usuario['nome']) ?>" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" name="email" id="email" class="form-control" value="<?= htmlspecialchars($usuario['email']) ?>" required>
        </div>
        <div class="mb-3">
            <label for="telefone" class="form-label">Telefone:</label>
            <input type="text" name="telefone" id="telefone" class="form-control" value="<?= htmlspecialchars($usuario['telefone']) ?>">
        </div>
        <div class="mb-3">
            <label for="senha" class="form-label">Nova Senha:</label>
            <input type="password" name="senha" id="senha" class="form-control">
        </div>
        <div class="mb-3">
            <label for="confirmar_senha" class="form-label">Confirmar Senha:</label>
            <input type="password" name="confirmar_senha" id="confirmar_senha" class="form-control">
        </div>
        <button type="submit" class="btn btn-success">Salvar Alterações</button>
        <a href="tela_inicial.php" class="btn btn-secondary">Cancelar</a>
    </form>
</div>

<?php include 'includes/footer.php'; ?>
