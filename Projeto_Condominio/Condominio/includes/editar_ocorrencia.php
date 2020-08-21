<?php
    include_once 'connections.php';

    $id = $_POST['id_ocorrencia'];
    $id_morador = $_POST['id_morador'];
    $descricao = $_POST['descricao'];

    $sql_morador = "UPDATE ocorrencia SET id_morador = $id_morador WHERE id = $id;";
    mysqli_query($conn, $sql_morador) or die(mysqli_error($conn));

    $sql_descricao = "UPDATE ocorrencia SET descricao = '$descricao' WHERE id = $id;";
    mysqli_query($conn, $sql_descricao) or die(mysqli_error($conn));

    header("Location: ../index.php")
?>