

<div class="col-lg-3 col-md-6 col-sm-12 card-manga">

    <figure>
        <a href="mangas-consultar.php?id=<?= $value['id'] ?>">

        <img src="./assets/img/manga/<?=$value['capas'] ?>" alt="Capa_Manga" class="foto-produto">
        <figcaption>
            <h4><?= $value['titulo'] ?></h4>
            <span class="status"><?= ucfirst($value['status']) ?></span>
            <p class="sinopse"><?= $value['sinopse'] ?></p>
        </figcaption>
        <!-- <span class="genero">
           
        </span> -->
        </a>
    </figure>
</div>