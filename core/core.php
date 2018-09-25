<?php



define('HOST', 'sql9.freemysqlhosting.net'); // Database host name ex. localhost
define('USER', 'GqLxsFZ1ms'); // Database user. ex. root ( if your on local server)
define('PASSWORD', ''); // user password  (if password is not set for user then keep it empty )
define('DATABASE', 'sql9258496'); // Database Database name
 
function DB()
{
    try {
        $db = new PDO('mysql:host='.HOST.';dbname='.DATABASE.'', USER, PASSWORD);
        return $db;
    } catch (PDOException $e) {
        return "Error!: " . $e->getMessage();
        die();
    }
}


?>


