<?php
    $conn = new mysqli('localhost','root','','cvitae');
    $title = $_GET['title'];
    $stmt = $conn->prepare("DELETE FROM `post` WHERE Title = ?");
    $stmt->bind_param("s",$title);
    $stmt->execute();
    $stmt->close();
    $conn->close();
    header( 'Location: ../admin_page.html' );
?>