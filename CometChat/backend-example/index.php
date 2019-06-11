<?php

include './config.php';
 
?>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Connect Libraries -->
    <script src="https://comet-server.com/CometServerApi.js" type="text/javascript"></script>
    <script src="https://comet-server.com/doc/CometQL/Star.Comet-Chat/js/jquery.min.js"      type="text/javascript"></script>
    <script src="https://comet-server.com/doc/CometQL/Star.Comet-Chat/js/jquery.cookie.js"   type="text/javascript" ></script>
    <title>Chat</title>
</head>
<body>
   
    
    <h1>Войти под именем</h1>
<?php 
    $i=0;
    do{
        $i++;
        $info = getUserInfoById($i);
        if($info == null)
        {
            break;
        }
        
        echo $i.' - <a href="http://localhost:8080/test/CometChat/backend-example/auth.php?id='.($i).'">'.$info['name'].'</a>'; 
        echo "<br>"; 
    }while(true); 
?> 
</body>
</html>