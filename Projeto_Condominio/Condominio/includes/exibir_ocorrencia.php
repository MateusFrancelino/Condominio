<?php
    include_once 'connections.php';
?>   

<html>
    <head>
        <meta charset="UTF-8">
        <title>Sistema de Ocorrências</title>
    </head>
    <body>
        <h2>Ocorrência</h2>
        <button type="button" onclick="location.href='../exibir_ocorrencia.html';">Voltar</button><br><br>
        <h3>Descrição da Ocorrência:</h3>
        <?php
            $id_ocorrencia = $_POST['id_ocorrencia'];
            $sql_read = "SELECT descricao FROM ocorrencia WHERE id=$id_ocorrencia;";
            $result = mysqli_query($conn, $sql_read);
            $resultCheck = mysqli_num_rows($result);    
            if ($resultCheck > 0) {
                $row = mysqli_fetch_assoc($result);
                echo $row['descricao'] . "<br>";
                echo "<hr />";
            }
            else{
                mysqli_error($conn);
            }
        ?>
    </body>
</html>
   