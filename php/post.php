<?php
	$title = isset($_GET['title']) ? strip_tags($_GET['title']): '';
	$description = isset($_GET['description']) ? strip_tags($_GET['description']): '';
    $date = date("d/m/y");

    $conn = new mysqli('localhost','root','','cvitae');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {

        $myfile = fopen("../textfile/admin_email.txt", "r") or die("Unable to open file!");
        $admin_email = fgets($myfile);

        $admin_details_query = "SELECT * FROM `admin` WHERE email = '$admin_email'";
        $admin_details_data = mysqli_query($conn,$admin_details_query);
        $admin_details_row = mysqli_fetch_array($admin_details_data);
        $name = $admin_details_row['name'];

        $stmt = $conn->prepare("INSERT INTO `post`(`Date`, `Title`, `Description`, `email`, `Name`) VALUES  (?,?,?,?,?)");
        $stmt->bind_param("sssss", $date, $title, $description,$admin_email,$name);
        $stmt->execute();
        $stmt->close();
        header( 'Location: ../admin_page.html');
    }



?>