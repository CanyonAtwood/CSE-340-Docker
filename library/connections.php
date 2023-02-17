<?php 
/* 
* Proxy connections to the phpmotors database
*/

function phpmotorsConnect() {
    $server = 'mysql';
    $dbname = 'phpmotors';
    $username = 'iClient';
    $password = '7*LVF1S!mn*qM8yb'; 
    $dsn = "mysql:host=$server;dbname=$dbname";
    $options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION); 

    try {
        $link = new PDO($dsn, $username, $password, $options);
        //if (is_object($link)) {
        //    echo 'It worked!';
        //}
        return $link;
    }
    catch(PDOException $e) {
        // echo "It didn't work, error: " . $e-> getmessage();
        header('Location: /phpmotors/view/500.php');
        exit;
    }
}

phpmotorsConnect();