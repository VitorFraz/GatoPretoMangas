// Validação do Usuario
function validaUsuario() {
    const usuario = document.getElementById("usuario").value;
    const usuarioError = document.getElementById('mensagem-erro-usuario');
    if (usuario.length < 5) {
        usuarioError.textContent = "usuario deve ter no mínimo 5 caracteres.";
        usuarioError.style.color = "#f14040";
        document.getElementById("usuario").focus();

    } else if (usuario.length > 60) {
        usuarioError.textContent = "usuario deve ter no máximo 60 caracteres.";
        usuarioError.style.color = "#f14040";
        document.getElementById("usuario").focus();

    } else if (usuario === "") {
        usuarioError.textContent = "O campo usuario não pode estar vazio!";
        usuarioError.style.color = "#f14040";
        document.getElementById("usuario").focus();

    } else {
        usuarioError.textContent = "OK";
        usuarioError.style.color = "#89f596";
    }
}

//Validar Senha
function validaSenha() {
    const senha = document.getElementById('senha').value;
    const SenhaError = document.getElementById('mensagem-erro-senha');
    const regexMaiusculo = /[A-Z]/;
    const regexEspecial = /[!@#$%^&*(),.?":{}|<>]/;
    const regexNumero = /\d/;

    if (senha === "") {
        SenhaError.textContent = "Senha não pode ser vazia";
        SenhaError.style.color = "#f14040";
        document.getElementById("senha").focus();

    } else if (senha.length > 60) {
        SenhaError.textContent = "Senha não pode ser maior que 60 digitos";
        SenhaError.style.color = "#f14040";
        document.getElementById("senha").focus();

    } else if (senha.length < 8) {
        SenhaError.textContent = "Senha não pode ser menor que 8 digitos";
        SenhaError.style.color = "#f14040";
        document.getElementById("senha").focus();

    } else if (!regexMaiusculo.test(senha)) {
        SenhaError.textContent = "Senha tem que ter Letras Maiúsculas";
        SenhaError.style.color = "#f14040";
        document.getElementById("senha").focus();

    } else if (!regexEspecial.test(senha)) {
        SenhaError.textContent = "Senha tem que ter Caracter Especial";
        SenhaError.style.color = "#f14040";
        document.getElementById("senha").focus();

    } else if (!regexNumero.test(senha)) {
        SenhaError.textContent = "Senha tem que ter números";
        SenhaError.style.color = "#f14040";
        document.getElementById("senha").focus();

    } else {
        SenhaError.textContent = "OK";
        SenhaError.style.color = "#89f596";
    }
}

// Validação do E-mail
function validaEmail() {
    const email = document.getElementById('email').value;
    const emailError = document.getElementById('mensagem-erro-email');
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

    if (email === "") {
        emailError.textContent = "E-mail é obrigatório.";
        emailError.style.color = "#f14040";
        document.getElementById("email").focus();
    } else if (email.length > 100) {
        emailError.textContent = "E-mail deve ter no máximo 100 caracteres.";
        emailError.style.color = "#f14040";
        document.getElementById("email").focus();
    } else if (email.length < 5) {
        emailError.textContent = "E-mail deve ter no mínimo 5 caracteres.";
        emailError.style.color = "#f14040";
        document.getElementById("email").focus();
    }
    else if (!emailPattern.test(email)) {
        emailError.textContent = "E-mail inválido.";
        emailError.style.color = "#f14040";
        document.getElementById("email").focus();
    } else {
        emailError.textContent = "OK";
        emailError.style.color = "#89f596";
    }
}

// Telefone com Máscara
function aplicarMascaraTelefone(event) {
    let input = event.target;
    let valor = input.value;

    // Remove todos os caracteres não numéricos
    valor = valor.replace(/\D/g, '');

    // Aplica a máscara (formato: (XX)XXXXX-XXXX)
    if (valor.length <= 10) {
        valor = valor.replace(/(\d{2})(\d{0,5})(\d{0,4})/, "($1)$2-$3");
    } else {
        valor = valor.replace(/(\d{2})(\d{5})(\d{4})/, "($1)$2-$3");
    }

    input.value = valor;
}


// Validação do Telefone com Máscara
function validatelefone() {

    const telefone = document.getElementById('telefone').value;
    const mensagemErroTelefone = document.getElementById('mensagem-erro-telefone');

    // Valida se o telefone tem 14 dígitos
    if (telefone.length !== 14) {
        mensagemErroTelefone.textContent = 'Telefone inválido! (XX) XXXXX-XXXX.';
        mensagemErroTelefone.style.color = '#f14040';
        document.getElementById("telefone").focus();
    } else {
        mensagemErroTelefone.textContent = "OK";
        mensagemErroTelefone.style.color = "#89f596";
    }
}

// Validação da Confirmação de Senha

function confirmarSenha() {
    const confirmarSenha = document.getElementById('confirmar_senha').value;
    const senha = document.getElementById('senha').value;
    const confirmarSenhaError = document.getElementById('mensagem-erro-confirmar-senha');

    if (confirmarSenha !== senha) {
        confirmarSenhaError.textContent = "As senhas não coincidem.";
        confirmarSenhaError.style.color = "#f14040";
        document.getElementById("confirmar_senha").focus();

    } else if (confirmarSenha === "") {
        confirmarSenhaError.textContent = "Preencha o campo";
        confirmarSenhaError.style.color = "#f14040";
        document.getElementById("confirmar_senha").focus();
    } else {
        confirmarSenhaError.textContent = "OK";
        confirmarSenhaError.style.color = "#89f596";
    }
}

// Aplicar Máscara CPF
function aplicarMascaracpf(event) {
    let input = event.target;
    let valor = input.value;

    // Remove todos os caracteres não numéricos
    valor = valor.replace(/\D/g, '');

    // Aplica a máscara (formato: XXX.XXX.XXX-XX)
    if (valor.length <= 11) {
        valor = valor.replace(/(\d{3})(\d{3})(\d{3})/, "$1.$2.$3-");
    } else {
        valor = valor.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, "$1.$2.$3-$4");
    }

    input.value = valor;
}


//Validação CPF 
function validarcpf() {
    const cpf = document.getElementById('cpf').value;
    const mensagemCpf = document.getElementById('mensagem-cpf');
    if (cpf.length < 14 || cpf.length > 14) {
        mensagemCpf.textContent = "O CPF deve ter 11 caracteres.";
        mensagemCpf.style.color = "#f14040";
        document.getElementById("cpf").focus();
    } else {
        mensagemCpf.textContent = "OK";
        mensagemCpf.style.color = "#89f596";
    }
}
