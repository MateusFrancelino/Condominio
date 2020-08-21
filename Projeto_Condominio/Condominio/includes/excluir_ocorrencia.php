<?php
    include_once 'connections.php';

    $id_ocorrencia = $_POST['id_ocorrencia'];

    $sql = "DELETE FROM ocorrencia WHERE id=$id_ocorrencia;";

    mysqli_query($conn, $sql) or die(mysqli_error($conn));
    header("Location: ../index.php")
?>