<?php

require_once('mysql_credentials.php');

if ( empty($_POST['exchangeCode'])) {
    $output = [
        'success'=> false,
        'error'=> 'missing exchange code'
    ];
    $json_output = json_encode($output);
    print($json_output);
    exit();
}

$code = addslashes($_POST['exchangeCode']);

$query = "SELECT * FROM `currentNumber` WHERE `numberCode` = '{$code}' ";

$output = [
    'success'=>false
];

$result = $db->query($query);

if ($result) {
    if ($result->num_rows > 0) {
        $output['success'] = true;
        $data = $result->fetch_assoc();
        $output['number'] = $data['number'];
    
    } else {
        // there was no data
        $output['error'] = 'invalid code';
    }

} else {
    // the query was wrong
    $output['error'] = $db->error;
}

$json_output = json_encode($output);
print($json_output);
?>