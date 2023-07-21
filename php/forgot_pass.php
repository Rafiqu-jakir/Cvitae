<?php
    $email = $_POST["forgot_email"];
    $conn = new mysqli('localhost','root','','cvitae');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
        $stmt = $conn->prepare("select * from user_registration where email = ?");
		$stmt->bind_param("s",$email);
		$stmt->execute();
		$stmt_result = $stmt->get_result();
		if($stmt_result->num_rows > 0){
			$myfile = fopen("../textfile/recover_pass.txt", "w") or die("Unable to open file!");
			fwrite($myfile, $email);
			fclose($myfile);
            header( 'Location: http://localhost/CVitae/email_found.html' );
		}
        else{
            header( 'Location: http://localhost/CVitae/email_not_found.html' );
        }
    }

?>