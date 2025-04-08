<?php

?>
<section id="detalhe">
    <main class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 my-4">
                <img src="./assets/img/manga/<?= $dados['capas'] ?>" alt="capa_mangas" class="foto" >
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 detalhe-produto py-5">
                <h1 class="titulo-jogo"><?= $dados['titulo'] ?></h1>

                <div class="genero">
                    <?php foreach ($dadosGeneros as $gen) { ?>
                        <span style="background-color: #<?= $gen['cor'] ?>;"><?= $gen['nome'] ?></span>

                        <span style="background-color: #<?= $gen['cor'] ?>;"><?= $gen['classificacao_etaria'] ?></span>
                    <?php } ?>
                </div>

                <form action="" method="post">
                    <input type="hidden" name="id_produto" value="<?= $dados['id'] ?>">
                    <button class="btn btn-warning" type="submit"><i class="bi bi-stars"></i> Adicionar aos Favoritos </button>

                    <button class="btn btn-success" type="submit"><i class="bi bi-journal-text"></i> Comecar Leitura</button>
                </form>

                <div class="sobre-filme">
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