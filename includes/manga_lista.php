<section id="mangas_recomendados">
        <h2 class="titulo"> Mangas </h2>
        <main class="container">
            <div class="row">
        
            <?php for ($i = 0; $i < 8; $i++) { 
                include './includes/manga_card.php';
            } ?>
            </div>
        </main>
    </section>

    <!-- editar a quantidade de repetição da lista -->