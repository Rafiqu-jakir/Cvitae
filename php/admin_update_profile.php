<?php 
    $admin_name = isset($_GET['Admin_name']) ? strip_tags($_GET['Admin_name']): '';
    $admin_password = isset($_GET['Admin_password']) ? strip_tags($_GET['Admin_password']): '';


    $conn = new mysqli('localhost','root','','cvitae');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
        $myfile = fopen("../textfile/admin_email.txt", "r") or die("Unable to open file!");
        $admin_email = fgets($myfile);
        $stmt = $conn->prepare("UPDATE `admin` SET `password`=?,`name`=? WHERE `email`=?");
		$stmt->bind_param("sss",$admin_password,$admin_name,$admin_email);
        $stmt->execute();
        $stmt->close();
        


                
        $conn->close();

        header( 'Location: http://localhost/CVitae/admin_page.html' );
    }

?>