<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="PT-BR">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./assets/css/cadastro_card_style.css">
    <title>Gato Preto Mangás - Cadastro</title>
</head>
<body>
<div id="login">
<form class="card">
    <div class="card-header">
        <h2>Cadastrar</h2>
    </div>
    <div class="card-content">
        <div class="card-content-area">
            <label for="email">Email</label>
            <input type="text" id="email" autocomplete="off">
        </div>
        <div class="card-content-area">
            <label for="telephone">Telefone</label>
            <input type="text" id="telefone" autocomplete="off">
        </div>
        <div class="card-content-area">
            <label for="password">CPF</label>
            <input type="text" id="cpf" autocomplete="off">
        </div>
        <div class="card-content-area">
            <label for="password">Senha</label>
            <input type="password" id="password" autocomplete="off">
        </div>
        <div class="card-content-area">
            <label for="password">Confirmar Senha</label>
            <input type="password" id="password" autocomplete="off">
        </div>
    </div>
    <div class="card-footer">
        <input type="submit" value="Criar Conta" class="submit">
        <br>
        <label>Ja possui uma conta?</label>
        <br>
        <a href="./tela_login.php" class="retornar_login">Clique aqui para fazer o Login</a>
    </div>
</form>
</div>
</body>
</html>