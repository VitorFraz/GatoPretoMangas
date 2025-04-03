<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="pt-br">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/rec_senha.css">
    <title>Recuperar Senha</title>
</head>

<body>
    
    <div id="recSenha">
        <form class="card">
            <div class="card-header">
                <h1>Recuperar Senha</h1>
            </div>
            <div class="card-content">
                <div class="card-content-area">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" onblur="validaEmail()">
                    <span id="mensagem-erro-email"></span>
                </div>
                <div class="card-content-area">
                    <label for="telephone">Telefone</label>
                    <input type="text" id="telefone" name="telefone" oninput="aplicarMascaraTelefone(event)" onblur="validatelefone()"> <!--"(XX) XXXXX-XXXX" -->
                    <span id="mensagem-erro-telefone"></span> <!-- "(XX)XXXXX-XXXX" -->
                </div>
                <div class="card-content-area">
                    <label for="senha">Nova Senha</label>
                    <input type="password" id="senha" name="senha" onblur="validaSenha()">
                    <span id="mensagem-erro-senha"></span>
                </div>
                <div class="card-footer">
                    <input type="submit" value="Alterar Senha" class="submit">
                </div>
                
        </form>
    </div>
    <script src="./assets/js/validacao.js"></script>
</body>

</html>