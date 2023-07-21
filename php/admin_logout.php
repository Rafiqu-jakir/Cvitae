<?php
    $myfile = fopen("../textfile/admin_email.txt", "w") or die("Unable to open file!");    
    fwrite($myfile, "Logout");
    fclose($myfile);

    header( 'Location: ../index.html');
?>