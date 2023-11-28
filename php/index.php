<?php

require __DIR__ . '/vendor/autoload.php';

$result = new WhichBrowser\Parser($_SERVER['HTTP_USER_AGENT']);
echo 'Seu navegador eh o ' . $result->browser->name . ' e o seu SO eh o ' . $result->os->name . '.<br>';

?>
