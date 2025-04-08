<section id="mangas_recomendados">
    <h2 class="titulo">Mangás</h2>
    <main class="container">
        <div class="row">
            
            <?php foreach ($dadosMangas as $value) {
                //$generosMangas = $genero->consultarGeneroByIdManga($value['id']);
                
                include './includes/manga_card.php';

            } ?>

        </div>
    </main>
</section>