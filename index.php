<?php
// API
    $connection = mysqli_connect("localhost","root","","daneOsobowe");

    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
    }
    
    $rok = isset($_GET['rok'])?$_GET['rok']:1900;

    $porowananie = isset($_GET['porownanie'])?$_GET['porownanie']:"gt";

    $fulltext = isset($_GET['fulltext'])?$_GET['fulltext']:"";
    $rok_sort = isset($_GET['rok_sort'])?$_GET['rok_sort']:"ASC";


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
    

    $sql = "SELECT * FROM dane WHERE rok $znak $rok 
        AND ( `imie` LIKE '%$fulltext%' OR `nazwisko` LIKE '%$fulltext%' )
        ORDER BY `rok` $rok_sort
    ";
    $result = mysqli_query($connection,$sql);

    $dane = mysqli_fetch_all($result, MYSQLI_ASSOC);
    
    header('Content-type: application/json');    
    echo json_encode($dane);

    mysqli_free_result($result);

    mysqli_close($connection);