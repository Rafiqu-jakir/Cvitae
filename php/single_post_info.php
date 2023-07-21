<?php
    $ID =$_GET['ID'];
    $myfile = fopen("../textfile/single_post_info.txt", "w") or die("Unable to open file!");    
    fwrite($myfile, $ID);
    fclose($myfile);

    header( 'Location: ../single_Post.html');

?>