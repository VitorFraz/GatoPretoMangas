<?php

class Mangas 
{
    public $conexaoBanco;

    public function __construct() {
        $dsn = 'mysql:dbname=bd_gato_preto; host=127.0.0.1';
        $user = 'root';
        $password = '';

        $this->conexaoBanco = new PDO($dsn, $user, $password);
    }

    // Método IDÊNTICO ao original, só trocando a tabela
    public function exibirListarMangas($limite = '') {
        $auxScript = '';

        if (!empty($limite)) {
            $auxScript = " ORDER BY RAND() LIMIT {$limite}";
        }

        $script = 'SELECT * FROM tb_mangas' . $auxScript;

        return $this->conexaoBanco->query($script)->fetchAll();
    }

    // Método IDÊNTICO ao original, só trocando a tabela
    public function consultarMangaById($id_manga) {
        $script = "SELECT * FROM tb_mangas WHERE id = {$id_manga}";
        return $this->conexaoBanco->query($script)->fetch();
    }
}