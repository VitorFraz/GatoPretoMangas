<?php

class Mangas 
{
    private $conexaoBanco;

    public function __construct() {
        $dsn = 'mysql:dbname=bd_gato_preto;host=127.0.0.1';
    $user = 'root';
    $password = '';


        $this->conexaoBanco = new PDO($dsn, $user, $password);
        $this->conexaoBanco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    
    public function buscarPorTitulo($titulo) {
    $stmt = $this->conexaoBanco->prepare("SELECT * FROM tb_mangas WHERE titulo LIKE :titulo ORDER BY RAND()");
    $stmt->execute([':titulo' => "%$titulo%"]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}


    public function exibirListarMangas($limite = '') {
        $auxScript = '';

        if (!empty($limite)) {
            $auxScript = " ORDER BY RAND() LIMIT {$limite}";
        }

        $script = 'SELECT * FROM tb_mangas' . $auxScript;

        return $this->conexaoBanco->query($script)->fetchAll(PDO::FETCH_ASSOC);
    }

    public function consultarMangasById($id_manga) {
        $stmt = $this->conexaoBanco->prepare("SELECT * FROM tb_mangas WHERE id = :id");
        $stmt->bindValue(':id', $id_manga, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }


}