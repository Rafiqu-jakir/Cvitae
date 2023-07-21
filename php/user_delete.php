<?php
    $conn = new mysqli('localhost','root','','cvitae');
    $user_id = $_GET['user_id'];
    $stmt = $conn->prepare("DELETE FROM `user_registration` WHERE ID = ?");
    $stmt->bind_param("s",$user_id);
    $stmt->execute();
    $stmt->close();
    $conn->close();

    header( 'Location: ../admin_page.html' );
?>