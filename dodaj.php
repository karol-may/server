<?php
$rok = isset($_GET['rok'])?$_GET['rok']:1900;
$imie = isset($_GET['imie'])?$_GET['imie']:"";
$nazwisko = isset($_GET['nazwisko'])?$_GET['nazwisko']:"";

$connection = mysqli_connect("localhost","root","","daneOsobowe");
$sql = "INSERT INTO `dane` (`rok`, `imie`, `nazwisko`) VALUES 
       ('$rok', '$imie', '$nazwisko'); 
    ";
    $result = mysqli_query($connection,$sql);
header('Location:index.html')
?>