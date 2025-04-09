<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/cadastro_card_style.css">
    <title>Gato Preto Mangás - Cadastro</title>
</head>
<body>
    <div id="login">
        <form action="./cadastro-editar.php" method="POST">
            <div class="card-header">
                <h2>Cadastrar</h2>
            </div>
            <div class="card-content">
                <div class="card-content-area">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="card-content-area">
                    <label for="telefone">Telefone</label>
                    <input type="text" id="telefone" name="telefone" required>
                </div>
                <div class="card-content-area">
                    <label for="cpf">CPF</label>
                    <input type="text" id="cpf" name="cpf" required>
                </div>
                <div class="card-content-area">
                    <label for="senha">Senha</label>
                    <input type="password" id="senha" name="senha" minlength="6" required>
                </div>
                <div class="card-content-area">
                    <label for="confirmar_senha">Confirmar Senha</label>
                    <input type="password" id="confirmar_senha" name="confirmar_senha" minlength="6" required>
                </div>
            </div>
            <div class="card-footer">
                <input type="submit" value="Criar Conta" class="submit">
                <br>
                <label>Já possui uma conta?</label>
                <br>
                <a href="./tela_login.php" class="retornar_login">Clique aqui para fazer o Login</a>
                <a href="./tela_pagamento.php" class="ver_planos">Ver Planos de Assinatura</a>
            </div>
        </form>
    </div>
</body>
</html>
