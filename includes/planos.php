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
                        </figcaption>
                        <button type="button" class="abrirOverlay"><strong>Selecionar<br />Plano</strong></button>

                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="fatura">
                                    <h3>Fatura</h3>
                                    <div class="linha">
                                        <p><strong>DESCRIÇÃO</strong></p>
                                        <p><strong>VALOR</strong></p>
                                    </div>
                                    <div class="linha">
                                        <p>Plano Gato 🐈Branco🐈</p>
                                        <p>R$ 20,00</p>
                                    </div>
                                    <hr>
                                    <div class="total">
                                        <p><strong>TOTAL A PAGAR</strong></p>
                                        <p class="valor">R$ 20,00</p>
                                    </div>
                                </div>

                                <div class="pagamento-form">
                                    <h3>Cartão de crédito</h3>
                                    <div class="bandeiras">
                                        <img src="./assets/img/pagamento_formas/mastercard_logo.png" alt="Mastercard">
                                        <img src="./assets/img/pagamento_formas/visa_logo.png" alt="Visa">
                                        <img src="./assets/img/pagamento_formas/elo_logo.png" alt="Elo">
                                    </div>

                                    <form>
                                        <input type="text" placeholder="Número do cartão">
                                        <input type="text" placeholder="Nome no cartão">
                                        <div class="row">
                                            <input type="text" placeholder="MM / AA">
                                            <input type="text" placeholder="Código de segurança">
                                        </div>

                                        <button type="button" class="fecharOverlay">
                                            Cancelar
                                        </button>
                                        <button onclick="mostrarAlertaERedirecionar()" class="realizarPagamento">
                                            Finalizar <br> Compra
                                        </button>

                                        <script>
                                            function mostrarAlertaERedirecionar() {
                                                alert("Pagamento concluido!");
                                            }
                                        </script>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </figure>

                    <figure class="plano_card">
                        <img alt="planoB.png" src="./assets/img/planos_card/plano_B.png">
                        <figcaption>
                            <h3>🐈‍⬛Gato Preto🐈‍⬛</h3>
                            <p> - O plano padrão, acesso a todos os nossos mangás e lançamentos</p><br>
                            <span><strong> R$35,00 <br> por Mês.</strong></span>
                        </figcaption>
                        <button type="button" class="abrirOverlay"><strong>Selecionar<br />Plano</strong></button>

                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="fatura">
                                    <h3>Fatura</h3>
                                    <div class="linha">
                                        <p><strong>DESCRIÇÃO</strong></p>
                                        <p><strong>VALOR</strong></p>
                                    </div>
                                    <div class="linha">
                                        <p>Plano 🐈‍⬛Gato Preto🐈‍⬛</p>
                                        <p>R$ 35,00</p>
                                    </div>
                                    <hr>
                                    <div class="total">
                                        <p><strong>TOTAL A PAGAR</strong></p>
                                        <p class="valor">R$ 35,00</p>
                                    </div>
                                </div>

                                <div class="pagamento-form">
                                    <h3>Cartão de crédito</h3>
                                    <div class="bandeiras">
                                        <img src="./assets/img/pagamento_formas/mastercard_logo.png" alt="Mastercard">
                                        <img src="./assets/img/pagamento_formas/visa_logo.png" alt="Visa">
                                        <img src="./assets/img/pagamento_formas/elo_logo.png" alt="Elo">
                                    </div>

                                    <form>
                                        <input type="text" placeholder="Número do cartão">
                                        <input type="text" placeholder="Nome no cartão">
                                        <div class="row">
                                            <input type="text" placeholder="MM / AA">
                                            <input type="text" placeholder="Código de segurança">
                                        </div>

                                        <button class="realizarPagamento">
                                            Finalizar <br> Compra
                                        </button>
                                        <button type="button" class="fecharOverlay">
                                            Cancelar
                                        </button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </figure>

                    <figure class="plano_card">
                        <img alt="planoC.png" src="./assets/img/planos_card/plano_C.png">
                        <figcaption>
                            <h3>⭐Gato Cosmico⭐</h3>
                            <p> - O plano Premium, acesso antecipado e exclusivo de lançamentos novos</p>
                            <span><strong>R$75,00 <br> por Mês.</strong></span>
                        </figcaption>
                        <button type="button" class="abrirOverlay"><strong>Selecionar<br />Plano</strong></button>

                        <div class="overlay">
                            <div class="overlay-content">
                                <div class="fatura">
                                    <h3>Fatura</h3>
                                    <div class="linha">
                                        <p><strong>DESCRIÇÃO</strong></p>
                                        <p><strong>VALOR</strong></p>
                                    </div>
                                    <div class="linha">
                                        <p>Plano Gato ⭐Branco⭐</p>
                                        <p>R$ 75,00</p>
                                    </div>
                                    <hr>
                                    <div class="total">
                                        <p><strong>TOTAL A PAGAR</strong></p>
                                        <p class="valor">R$ 75,00</p>
                                    </div>
                                </div>

                                <div class="pagamento-form">
                                    <h3>Cartão de crédito</h3>
                                    <div class="bandeiras">
                                        <img src="./assets/img/pagamento_formas/mastercard_logo.png" alt="Mastercard">
                                        <img src="./assets/img/pagamento_formas/visa_logo.png" alt="Visa">
                                        <img src="./assets/img/pagamento_formas/elo_logo.png" alt="Elo">
                                    </div>

                                    <form>
                                        <input type="text" placeholder="Número do cartão">
                                        <input type="text" placeholder="Nome no cartão">
                                        <div class="row">
                                            <input type="text" placeholder="MM / AA">
                                            <input type="text" placeholder="Código de segurança">
                                        </div>

                                        <button class="realizarPagamento">
                                            Finalizar <br> Compra
                                        </button>
                                        <button type="button" class="fecharOverlay">
                                            Cancelar
                                        </button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </figure>

                </div>
            </div>
        </form>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const abrirBtns = document.querySelectorAll(".abrirOverlay");
            const fecharBtns = document.querySelectorAll(".fecharOverlay");

            abrirBtns.forEach((btn) => {
                btn.addEventListener("click", () => {
                    const card = btn.closest(".plano_card");
                    const overlay = card.querySelector(".overlay");
                    overlay.style.display = "flex";
                    setTimeout(() => {
                        overlay.classList.add("ativo");
                    }, 10);
                });
            });

            fecharBtns.forEach((btn) => {
                btn.addEventListener("click", () => {
                    const overlay = btn.closest(".overlay");
                    overlay.classList.remove("ativo");
                    setTimeout(() => {
                        overlay.style.display = "none";
                    }, 400);
                });
            });
        });
    </script>
</body>

</html>