<?php
    include_once 'includes/connections.php'
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Condomínio</title>
</head>

<body>
    <h1>Condominio ***</h1>
    <h2>Gerenciar Ocorrências</h2>
    <button type="button" onclick="location.href='adicionar_ocorrencia.html';">Adicionar Ocorrência</button>
    <br><br>
    <button type="button" onclick="location.href='excluir_ocorrencia.html';">Excluir Ocorrência</button>
    <br><br>
    <button type="button" onclick="location.href='editar_ocorrencia.html';">Editar Ocorrência</button>
    <br><br>
    <button type="button" onclick="location.href='exibir_ocorrencia.html';">Exibir Ocorrência</button>

    <?php
        $sql_create = "CREATE TABLE ocorrencia( 
            id INT(6) NOT NULL auto_increment PRIMARY KEY,
            id_morador INT(6) NOT NULL,
            CONSTRAINT fk_ocorrencia_morador foreign key (id_morador) REFERENCES morador(id),
            descricao VARCHAR(255)
        );"; // Comando para criação da tabela
        $result = mysqli_query($conn, $sql_create) or die(); // Cria a tabela se ela ja não existe    
    ?>
</body>

</html>