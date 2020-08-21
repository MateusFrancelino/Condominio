<?php
    include_once 'connections.php';

    $id_morador = $_POST['id_morador'];
    $descricao = $_POST['descricao'];

    $sql = "insert into ocorrencia values
        (DEFAULT, (SELECT id FROM morador WHERE id=$id_morador), '$descricao');";
    
    
    mysqli_query($conn, $sql) or die(mysqli_error($conn)); // Erro se inserir um id de morador que nao exista
    header("Location: ../index.php?signup=success");
?>