<?php 
    $password = isset($_GET['new_password']) ? strip_tags($_GET['new_password']): '';
    $conn = new mysqli('localhost','root','','cvitae');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
        $myfile = fopen("../textfile/recover_pass.txt", "r") or die("Unable to open file!");
        $user_email = fgets($myfile);

        $stmt = $conn->prepare("UPDATE `user_registration` SET `Password`=? WHERE `Email`=?");
		$stmt->bind_param("ss",$password,$user_email);
        $stmt->execute();
        $stmt->close();
        $myfile = fopen("../textfile/recover_pass.txt", "w") or die("Unable to open file!");    
        fclose($myfile);
        $conn->close();

        header( 'Location: http://localhost/CVitae/index.html' );
    }

?>