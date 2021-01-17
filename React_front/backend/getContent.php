<?php
header("Access-Control-Allow-Origin:*");
header("Content-type:application/json");

$servername = "localhost";
$username = "root";
$password = "";
$database = "fseletro";

$tabela = $_GET['table'];

$conn = mysqli_connect($servername, $username, $password, $database);
mysqli_set_charset($conn, "utf8");

if (!$conn) {
    die('Conexao com erro ou inexistente' . mysqli_connect_error());
}

$sql = "SELECT * FROM $tabela as p
join loja as l
on p.idproduto = l.idproduto
join cores as c
on c.idcor = l.idcor
GROUP BY imagem";
$result = $conn->query($sql);

print_r( json_encode($result->fetch_all(MYSQLI_ASSOC)));

mysqli_close($conn);

?>


