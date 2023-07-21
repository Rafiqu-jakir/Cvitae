<?php
    $myfile = fopen("../textfile/user_email.txt", "w") or die("Unable to open file!");    
    fwrite($myfile, "Logout");
    fclose($myfile);

    header( 'Location: ../index.html');
?>