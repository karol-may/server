<?php
// API
    $connection = mysqli_connect("localhost","root","","daneOsobowe");

    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
    }
    
    $rok = $_GET['rok'];
    $porowananie = $_GET['porownanie'];
    switch ($porowananie) {
        case 'eq':
            $znak = '=';
            break;
        case 'lt':
            $znak = '<';
            break;
        case 'gt':
            $znak = '>';
            break;
        case 'le':
            $znak = '<=';
            break;
        case 'ge':
            $znak = '>=';
            break;
        
        
        default:
            # code...
            break;
    }
    

    $sql = "SELECT * FROM dane WHERE rok $znak $rok ";
    $result = mysqli_query($connection,$sql);

    $dane = mysqli_fetch_all($result, MYSQLI_ASSOC);
    
    header('Content-type: application/json');    
    echo json_encode($dane);

    mysqli_free_result($result);

    mysqli_close($connection);