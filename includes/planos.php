<!DOCTYPE html>
<html lang="PT-BR">

<head>
    <meta charset="PT-BR">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/planos_style.css">
    <link rel="stylesheet" href="./assets/css/overlay_style.css">

    <title>Planos de Assinatura</title>
</head>

<body>
    <h1> Falta pouco para começar sua Experiência </h1>
    <div id="planos">
        <form class="card">
            <div class="card_header">
                <h2> Confira os nossos Planos de Assinatura que mais combinem com você: </h2>
            </div>
            <div class="card-content">
                <div class="card-content-area">

                    <figure class="plano_card">
                        <img alt="planoA.png" src="./assets/img/planos_card/plano_A.png">
                        <figcaption>
                            <h3>🐈Gato Branco🐈</h3>
                            <p> - O plano basico e economico, acesso a quase todos os nossos mangás disponíveis</p>
                            <span><strong> R$20,00 <br> por Mês.</strong></span>
                            <br>
                            <button id="abrirOverlay"><strong> Selecionar<br>Plano </strong></button>
                        </figcaption>
                    </figure>

                        <div id="overlay" class="overlay">
                            <div class="overlay-content">
                                <h2>Título do Overlay</h2>
                                <p>Linga guli guli guli gu linga gu linga gu</p>
                                <button id="fecharOverlay"><stong> Cancelar </stong></button>
                                <button id="realizarPagamento"><strong> Finalizar <br> Pagamento </strong></button>
                            </div>
                        </div>

                    <figure class="plano_card">
                        <img alt="planoB.png" src="./assets/img/planos_card/plano_B.png">
                        <figcaption>
                            <h3>🐈‍⬛Gato Preto🐈‍⬛</h3>
                            <p> - O plano padrão, acesso a todos os nossos mangás e lançamentos</p><br>
                            <span><strong> R$35,00 <br> por Mês.</strong></span>
                            <br>
                            <button><strong> Selecionar<br>Plano </strong></button>
                        </figcaption>
                    </figure>
                    <figure class="plano_card">
                        <img alt="planoC.png" src="./assets/img/planos_card/plano_C.png">
                        <figcaption>
                            <h3>⭐Gato Cosmico⭐</h3>
                            <p> - O plano Premium, acesso antecipado e exclusivo de lançamentos novos</p>
                            <span><strong>R$75,00 <br> por Mês.</strong></span>
                            <br>
                            <button><strong> Selecionar<br>Plano </strong></button>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </form>
        <div>
    <script src="./assets/js/offcanvas.js"></script>
</body>

</html>