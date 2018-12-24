<?php

require_once('mysql_credentials.php');

$min = intval($_GET['min']);
$max = (int)$_GET['max'];

$code = uniqid();

$randomNumber = rand($min, $max); // do some work

// $query = "INSERT INTO `currentNumber` SET (number, numberCode) VALUES ($randomNumber, '{$code}')";

$query = "INSERT INTO `currentNumber` SET `number`={$randomNumber}, `numberCode`='{$code}' ";

// print($query);

$result = $db->query($query);

$output = [
    'success'=> false
];

if ($result) {
    // the query worked?
    if ($db->affected_rows>0) {
        $output['success'] = true;// ready response
        $output['code'] = $code;

    } else {
        $output['error']= $db->error;
    }
} else {
    // the query failed
    $output['error'] = $db->connect_error;
}

// $output = [ // ready response
//     'success'=> true,
//     'number'=> $randomNumber,
//     'code'=> $code
// ];

$json_output = json_encode( $output ); // convert response to json

print( $json_output ); //send the response
?>