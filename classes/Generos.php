<?php

class Generos
{
    public $conexaoBanco;

    public function __construct() {
        $dsn = 'mysql:dbname=bd_gato_preto; host=127.0.0.1';
        $user = 'root';
        $password = '';

        $this->conexaoBanco = new PDO($dsn, $user, $password);
    }

    public function consultarListaGeneros()
    {
        $script = 'SELECT * FROM tb_generos';

        return $this->conexaoBanco->query($script)->fetchAll();
    }

    public function consultarGeneroByIdManga($id_manga) {
        $script = "SELECT * FROM tb_generos 
                  INNER JOIN tb_manga_genero 
                  ON tb_manga_genero.id_genero = tb_generos.id 
                  WHERE tb_manga_genero.id_manga = {$id_manga}";

        return $this->conexaoBanco->query($script)->fetchAll();
    }
}