<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="PT-BR">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./assets/css/login_card_style.css">
    <title>Gato Preto Mangas - Login</title>
</head>
<body>
<div id="login">
<form class="card">
    <div class="card-header">
        <h2>Login</h2>
    </div>
    <div class="card-content">
        <div class="card-content-area">
            <label for="usuario">Usuário</label>
            <input type="text" id="usuario" autocomplete="off">
        </div>
        <div class="card-content-area">
            <label for="password">Senha</label>
            <input type="password" id="password" autocomplete="off">
        </div>
    </div>
    <div class="card-footer">
        <input type="submit" value="Entrar" class="submit">
        <label>Esqueceu a senha?</label>
        <a href="./tela_cadastro.php" class="retornar_cadastro">Clique aqui para Cadastrar-se</a>
    </div>
</form>
</div>
</body>
</html>