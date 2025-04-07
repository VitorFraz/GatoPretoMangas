<div class="col-lg-<?= isset($qntd) ? $qntd : 3 ?> col-md-6 col-sm-12">
    <figure>
        <a href="mangas-consultar.php?id=<?= $value['id'] ?>">
        <img src="./assets/img/capas/<?=$value['capas'] ?>" alt="Capa_Manga" class="foto-produto">
        <figcaption>
            <h4><?= $value['titulo'] ?></h4>
            <span class="status"><?= ucfirst($value['status']) ?></span>
            <p class="sinopse"><?= $value['sinopse'] ?></p>
        </figcaption>
        <span class="genero">
            <?php foreach ($generosMangas as $value2) { ?>
                <label style="background-color: <?= $value2['cor'] ?>;"><?= $value2['nome'] ?></label>
            <?php } ?>
        </span>
        </a>
    </figure>
</div>