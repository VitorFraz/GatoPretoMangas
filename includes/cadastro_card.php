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
                    <input type="text" id="email" name="email" onblur="validaEmail()">
                    <span id="mensagem-erro-email"></span>
                </div>
                <div class="card-content-area">
                    <label for="telephone">Telefone</label>
                    <input type="text" id="telefone" name="telefone" oninput="aplicarMascaraTelefone(event)" onblur="validatelefone()" > <!--"(XX) XXXXX-XXXX" -->
                    <span id="mensagem-erro-telefone"></span> <!-- "(XX)XXXXX-XXXX" -->
                </div>
                <div class="card-content-area">
                    <label for="password">CPF</label>
                    <input type="text" id="cpf" name="cpf" oninput="aplicarMascaracpf(event)" onblur="validarcpf()">
                    <span id="mensagem-cpf"></span> <!-- "XXX.XXX.XXX-XX" -->
                </div>
                <div class="card-content-area">
                    <label for="senha">Senha</label>
                    <input type="password" id="senha" name="senha" onblur="validaSenha()">
                    <span id="mensagem-erro-senha"></span>
                </div>
                <div class="card-content-area">
                    <label for="password">Confirmar Senha</label>
                    <input type="password" id="confirmar_senha" name="confirmar_senha" onblur="confirmarSenha()" >
                    <span id="mensagem-erro-confirmar-senha"></span>
                </div>
            </div>
            <div class="card-footer">
                <input type="submit" value="Criar Conta" class="submit">
                <br>
                <label>Ja possui uma conta?</label>
                <br>
                <a href="./tela_login.php" class="retornar_login">Clique aqui para fazer o Login</a>
                <a href="./tela_pagamento.php" class="ver_planos">Ver Planos de Assinatura</a>
            </div>
        </form>
    </div>
    <script src="./assets/js/validacao.js"></script>
</body>

</html>