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
                    <input type="text" id="usuario" name="usuario" onblur="validaUsuario()">
                    <span id="mensagem-erro-usuario"></span>
                </div>
                <div class="card-content-area">
                    <label for="senha">Senha</label>
                    <input type="password" id="senha" name="senha" onblur="validaSenha()">
                    <span id="erro-senha"></span>
                </div>
            </div>
            <div class="card-footer">
                <input type="submit" value="Entrar" class="submit">
                <br>
                <label>Esqueceu a senha?</label>
                <a href="./index.php" class="recuperar_senha">Recuperar Senha</a>
                <br>
                <label>Não possui uma conta?</label>
                <a href="./tela_cadastro.php" class="retornar_cadastro">Clique aqui para Cadastrar-se</a>
                <a href="./tela_inicial.php" class="retornar_inicio"> Voltar para a tela inicial</a>
            </div>
        </form>
    </div>
    <script src="./assets/js/validacao.js"></script>
</body>

</html>