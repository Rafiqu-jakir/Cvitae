<?php
	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$profession = $_POST['profession'];

	$email_err = $password_err = $confirm_password_err = "";

	// Database connection
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
			//if main already exist
			header( 'Location: http://localhost/CVitae/email-exist.html' );
		}
		else{
			$stmt = $conn->prepare("INSERT INTO `user_registration`(`Full Name`, `Email`, `Password`,`profession`) VALUES (?,?,?,?)");
			$stmt->bind_param("ssss", $name, $email, $password,$profession);
			$stmt->execute();
			$stmt->close();


			$stmt_1 = $conn->prepare("INSERT INTO `about_me`(`email`) VALUES(?)");
			$stmt_1->bind_param("s",$email);
			$stmt_1->execute();
			$stmt_1->close();

			$stmt_2 = $conn->prepare("INSERT INTO `contact`(`email`) VALUES(?)");
			$stmt_2->bind_param("s",$email);
			$stmt_2->execute();
			$stmt_2->close();

			$stmt_3 = $conn->prepare("INSERT INTO `education`(`email`) VALUES(?)");
			$stmt_3->bind_param("s",$email);
			$stmt_3->execute();
			$stmt_3->close();

			$stmt_4 = $conn->prepare("INSERT INTO `experience`(`email`) VALUES(?)");
			$stmt_4->bind_param("s",$email);
			$stmt_4->execute();
			$stmt_4->close();

			$stmt_5 = $conn->prepare("INSERT INTO `main_skills`(`email`) VALUES(?)");
			$stmt_5->bind_param("s",$email);
			$stmt_5->execute();
			$stmt_5->close();

			$stmt_6 = $conn->prepare("INSERT INTO `my_service`(`email`) VALUES(?)");
			$stmt_6->bind_param("s",$email);
			$stmt_6->execute();
			$stmt_6->close();

			$stmt_7 = $conn->prepare("INSERT INTO `others_skills`(`email`) VALUES(?)");
			$stmt_7->bind_param("s",$email);
			$stmt_7->execute();
			$stmt_7->close();

			$stmt_8 = $conn->prepare("INSERT INTO `social_media`(`email`) VALUES(?)");
			$stmt_8->bind_param("s",$email);
			$stmt_8->execute();
			$stmt_8->close();

			$conn->close();
			header( 'Location: http://localhost/CVitae/index.html' );
			
			
		}
	}
?>