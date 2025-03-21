<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<html lang="pt-br">

<?php

// editar ainda o cards 

$dsn = 'mysql:dbname=bd_gato_preto;host=127.0.0.1';
$user = 'root';
$password = '';

$banco = new PDO($dsn, $user, $password);

$select = 'SELECT * FROM tb_manga';

$resultado = $banco->query($select)->fetchAll();

//echo '<pre>'; // pre serve para organizar a tela
//var_dump($resultado);
?>
<?php foreach ($resultado as $linha) { ?>
    <div class="col col-3">
        <figure>
            <!-- se começa primeiro a tag  figure para prossegir com o figcapture  -->
            <img src="./assets/img/manga<?php echo $linha['manga'] ?>"
                alt="Imagem dos mangas" class="foto-manga">
            <figcaption>
                <!-- conteudo do card colocar o que esta logo abaixo da foto; -->
                <h4><?php echo $linha['nome'] ?></h4>
                <!-- o span é o elemento de linha, adequado para aplicar estilos aocontrario da div que é um elemento em bloco  -->
                <span class="status"><?php echo $linha['status'] ?></span>
                <p class="descricao"><?php echo $linha['descricao'] ?></p>
            </figcaption>
            <span class="genero">
                <label style="<?php echo $linha['genero'] ?>"></label>
            </span>
        </figure>
    </div>
<?php } ?>