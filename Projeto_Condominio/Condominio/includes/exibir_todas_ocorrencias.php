<?php
    include_once 'connections.php';
?>   

<html>
    <head>
        <meta charset="UTF-8">
        <title>Sistema de Ocorrências</title>
    </head>
    <body>
        <h2>Ocorrências</h2>
        <button type="button" onclick="location.href='../exibir_ocorrencia.html';">Voltar</button><br><br>
        <?php
            $sql_read = "SELECT * FROM ocorrencia;";
            $result = mysqli_query($conn, $sql_read);
            $resultCheck = mysqli_num_rows($result);    
            if ($resultCheck > 0) {
                while ($row = mysqli_fetch_assoc($result)){
                    foreach($row as $ind => $val){
                        echo "$ind: $val<br />";
                    }
                    echo "<hr />";
                }
            }
            else{
                mysqli_error($conn);
            }
        ?>
    </body>
</html>
   

