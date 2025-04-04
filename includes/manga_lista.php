<section id="mangas_recomendados">
        <h2 class="titulo"> Mangas </h2>
        <main class="container">
            <div class="row">
        
         
            <?php foreach ($dadosFilmes as $value){ 
                $generosFilmes = $bob->consultarGeneroByIdManga($value['id']);
                include './includes/manga_card.php';
            } ?>
            </div>
        </main>
    </section>

    <!-- editar a quantidade de repetição da lista -->