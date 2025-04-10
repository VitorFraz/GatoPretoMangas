<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$usuarioLogado = isset($_SESSION['usuario']);
?>

<section id="detalhe">
    <main class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 my-4">
                <img src="./assets/img/manga/<?= $dados['capas'] ?>" alt="capa_mangas" class="foto">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 detalhe-produto py-5">
                <h1 class="titulo-jogo"><?= $dados['titulo'] ?></h1>

                <div class="genero">
                    <?php foreach ($dadosGeneros as $gen) { ?>
                        <span style="background-color: #<?= $gen['cor'] ?>;"><?= $gen['nome'] ?></span>
                        <span style="background-color: #<?= $gen['cor'] ?>;"><?= $gen['classificacao_etaria'] ?></span>
                    <?php } ?>
                </div>

                <!-- ✅ Botão "Começar a ler" -->
                <?php if ($usuarioLogado): ?>
                    <a href="<?= htmlspecialchars($dados['link_leitura']) ?>" class="btn btn-success" target="_blank">
                        <i class="bi bi-journal-text"></i> Começar a ler
                    </a>
                <?php else: ?>
                    <a href="tela_login.php" class="btn btn-success" onclick="alert('Você precisa estar logado para usar esta funcionalidade!')">
                        <i class="bi bi-journal-text"></i> Começar a ler
                    </a>
                <?php endif; ?>

                <div class="sobre-filme mt-4">
                    <h4>Descrição</h4>
                    <?php
                    $descricao = explode('. ', $dados['sinopse']);
                    foreach ($descricao as $value) {
                        echo '<p>' . $value . '.</p>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </main>
</section>
