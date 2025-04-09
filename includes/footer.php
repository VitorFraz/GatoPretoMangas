<footer class="footer">
    <main class="container">
        <div class="row">

            <div class="col-md-3">
                <h5 class="font-weight-bold">MENU</h5>
                <ul class="list-unstyled mt-3">
                    <li><a href="./index.php">Inicio</a></li>
                    <li><a href="./index.php">Mangás</a></li>
                    <li><a href="./index.php">Lançamentos</a></li>
                    <li><a href="./index.php">Data de estreia</a></li>
                </ul>
            </div>

            <div class="col-md-3">
                <h5 class="font-weight-bold">Redes Sociais</h5>
                <ul class="list-unstyled  mt-3">
                    <li><a target="_blank" href="https://www.facebook.com/?locale=pt_BR">Facebook</a></li>
                    <li><a target="_blank" href="https://www.instagram.com/">Instagram</a></li>
                    <li><a target="_blank" href="https://x.com/?lang=pt">X</a></li>
                    <li><a target="_blank" href="https://www.youtube.com/">Youtube</a></li>
                </ul>
            </div>

            <div class="col-md-3">
                <h5 class="font-weight-bold">Contate-nos</h5>

                <ul class="col-md-6 list-unstyled  mt-3">
                    <li><a href="sobre.php">Sobre</a></li>
                    <li><a href="./politic.html">Política de Privacidade</a></li>
                </ul>

            </div>
            <div class="col-md-3">
                <h5 class="font-weight-bold">Descubra Mais</h5>
                <ul class="col-md-6 list-unstyled  mt-3">
                    <li><a href="./tela_login.php">Login</a></li>
                    <li><a href="./tela_cadastro.php">Criar Conta</a></li>
                    <li><a href="./tela_parceiros.php">Parceiros</a></li>
                    <li><a href="./tela_pagamento.php">Planos de Assinatura</a></li>
                </ul>
            </div>
        </div>
        <div class=" footer-bottom">
            <p>&copy; 2025. Este site foi desenvolvido com a turma de TI24. Não reservamos os direitos e os valores
                apresentados são meramente ilustrativos para fins didáticos.</p>
        </div>
    </main>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function () {
    const inputBusca = document.getElementById('busca');
    const sugestoes = document.getElementById('sugestoes');
    let cliqueEmSugestao = false;

    inputBusca.addEventListener('input', function () {
        const termo = inputBusca.value.trim();
        if (termo.length < 2) {
            sugestoes.innerHTML = '';
            return;
        }

        fetch('?autocomplete=' + encodeURIComponent(termo))
            .then(res => res.json())
            .then(data => {
                sugestoes.innerHTML = '';
                data.forEach(obj => {
                    const item = document.createElement('li');
                    item.className = 'list-group-item list-group-item-action';
                    item.textContent = obj.titulo;
                    item.style.cursor = 'pointer';
                    item.onclick = () => {
                        cliqueEmSugestao = true;
                        window.location.href = 'mangas-consultar.php?id=' + obj.id;
                    };
                    sugestoes.appendChild(item);
                });
            });
    });

    // Evita submit do formulário se clicou numa sugestão
    const form = inputBusca.closest("form");
    form.addEventListener("submit", function (e) {
        if (cliqueEmSugestao) {
            e.preventDefault();
            cliqueEmSugestao = false;
        }
    });

    document.addEventListener('click', function (e) {
        if (!sugestoes.contains(e.target) && e.target !== inputBusca) {
            sugestoes.innerHTML = '';
        }
    });
});
</script>
</script>

</body>

</html>