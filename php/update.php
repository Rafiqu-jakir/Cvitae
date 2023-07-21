<?php
    // error_reporting(0);
    $about_me = $_POST['about_me'];
	$Freelance = $_POST['Freelance'];
    $Residence = $_POST['Residence'];
	$Age = $_POST['Age'];
    $PHONE = $_POST['PHONE'];
    $Address = $_POST['Address'];


	$Service_1 = $_POST['Service_1'];
	$description_1 = $_POST['description_1'];
    $Service_2 = $_POST['Service_2'];
	$description_2 = $_POST['description_2'];
    $Service_3 = $_POST['Service_3'];
	$description_3 = $_POST['description_3'];
    $Service_4 = isset($_GET['Service_4']) ? strip_tags($_GET['Service_4']): '';
	$description_4 = $_POST['description_4'];


    $Edu_year_1 = $_POST['Edu_year_1'];
	$Edu_Degree_1 = $_POST['Edu_Degree_1'];
    $Edu_Location_1 = $_POST['Edu_Location_1'];
	$edu_description_1 = $_POST['edu_description_1'];

    $Edu_year_2 = $_POST['Edu_year_2'];
	$Edu_Degree_2 = $_POST['Edu_Degree_2'];
    $Edu_Location_2 = $_POST['Edu_Location_2'];
	$edu_description_2 = $_POST['edu_description_2'];

    $Edu_year_3 = $_POST['Edu_year_3'];
	$Edu_Degree_3 = $_POST['Edu_Degree_3'];
    $Edu_Location_3 = $_POST['Edu_Location_3'];
	$edu_description_3 = $_POST['edu_description_3'];

    $Ex_year_1 = $_POST['Ex_year_1'];
	$Ex_Designation_1 = $_POST['Ex_Designation_1'];
    $Ex_Company_1 = $_POST['Ex_Company_1'];
	$ex_description_1 = $_POST['ex_description_1'];

    $Ex_year_2 = $_POST['Ex_year_2'];
	$Ex_Designation_2 = $_POST['Ex_Designation_2'];
    $Ex_Company_2 = $_POST['Ex_Company_2'];
	$ex_description_2 = $_POST['ex_description_2'];

    $Ex_year_3 = $_POST['Ex_year_3'];
	$Ex_Designation_3 = $_POST['Ex_Designation_3'];
    $Ex_Company_3 = $_POST['Ex_Company_3'];
	$ex_description_3 = $_POST['ex_description_3'];

    $skill_1_title = $_POST['skill_1_title'];
	$skill_1_percentage = $_POST['skill_1_percentage'];

    $skill_2_title = $_POST['skill_2_title'];
	$skill_2_percentage = $_POST['skill_2_percentage'];

    $skill_3_title = $_POST['skill_3_title'];
	$skill_3_percentage = $_POST['skill_3_percentage'];

    $skill_4_title = $_POST['skill_4_title'];
	$skill_4_percentage = $_POST['skill_4_percentage'];

    $O_skill_1_title = $_POST['O_skill_1_title'];
	$O_skill_1_percentage = $_POST['O_skill_1_percentage'];

    $O_skill_2_title = $_POST['O_skill_2_title'];
	$O_skill_2_percentage = $_POST['O_skill_2_percentage'];

    $O_skill_3_title = $_POST['O_skill_3_title'];
	$O_skill_3_percentage = $_POST['O_skill_3_percentage'];

    $O_skill_4_title = $_POST['O_skill_4_title'];
	$O_skill_4_percentage = $_POST['O_skill_4_percentage'];
    
    $facebook = $_POST['facebook'];
	$twitter = $_POST['twitter'];
    $github = $_POST['github'];

    $Full_Name = $_POST['Full_Name'];
	$update_pass = $_POST['update_pass'];
    $Profession = $_POST['Profession'];



    $map_ifram = $_POST['map_ifram'];

	$conn = new mysqli('localhost','root','','cvitae');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
        $myfile = fopen("../textfile/user_email.txt", "r") or die("Unable to open file!");
        $user_email = fgets($myfile);
        $stmt = $conn->prepare("UPDATE `about_me` SET `aboutme`= ?,`freelance`= ?,`resendence`= ?,`address`= ?,`Age`=? WHERE `email`=?");
		$stmt->bind_param("ssssss",$about_me,$Freelance,$Residence,$Address,$Age,$user_email);
        $stmt->execute();
        $stmt->close();
        
        $stmt_1 = $conn->prepare("UPDATE `my_service` SET `skill1`= ?,`des1`= ?,`skill2`= ?,`des2`= ?,`skill3`= ?,`des3`= ?,`skill4`= ?,`des4`= ? WHERE `email`= ?");
		$stmt_1->bind_param("sssssssss",$Service_1,$description_1,$Service_2,$description_2,$Service_3,$description_3,$Service_4,$description_4,$user_email);
        $stmt_1->execute();
        $stmt_1->close();

        $stmt_2 = $conn->prepare("UPDATE `education` SET `year1`=?,`institute1`=?,`location1`=?,`description1`=?,`year2`=?,`institute2`=?,`location2`=?,`description2`=?,`year3`=?,`institute3`=?,`location3`=?,`description3`= ? WHERE `email`= ?");
		$stmt_2->bind_param("sssssssssssss",$Edu_year_1,$Edu_Degree_1,$Edu_Location_1,$edu_description_1,$Edu_year_2,$Edu_Degree_2,$Edu_Location_2,$edu_description_2,$Edu_year_3,$Edu_Degree_3,$Edu_Location_3,$edu_description_3,$user_email);
        $stmt_2->execute();
        $stmt_2->close();

        $stmt_3 = $conn->prepare("UPDATE `contact` SET `address`=?,`phone`=?,`freelance`=?,`ifram`=? WHERE `email`=?");
		$stmt_3->bind_param("sssss",$Address,$PHONE,$Freelance,$map_ifram,$user_email);
        $stmt_3->execute();
        $stmt_3->close();

        $stmt_4 = $conn->prepare("UPDATE `experience` SET `year1`=?,`designation1`=?,`company1`=?,`description1`=?,`year2`=?,`designation2`=?,`company2`=?,`description2`=?,`year3`=?,`designation3`=?,`company3`=?,`description3`=?  WHERE `email`=?");
		$stmt_4->bind_param("sssssssssssss",$Ex_year_1,$Ex_Designation_1,$Ex_Company_1,$ex_description_1,$Ex_year_2,$Ex_Designation_2,$Ex_Company_2,$ex_description_2, $Ex_year_3,$Ex_Designation_3,$Ex_Company_3,$ex_description_3,$user_email);
        $stmt_4->execute();
        $stmt_4->close();

        $stmt_5 = $conn->prepare("UPDATE `main_skills` SET `skill1`=?,`percentage1`=?,`skill2`=?,`percentage2`=?,`skill3`=?,`percentage3`=?,`skill4`=?,`percentage4`=? WHERE `email`=?");
		$stmt_5->bind_param("sssssssss",$skill_1_title,$skill_1_percentage,$skill_2_title,$skill_2_percentage,$skill_3_title,$skill_3_percentage,$skill_4_title,$skill_4_percentage,$user_email);
        $stmt_5->execute();
        $stmt_5->close();

        $stmt_6 = $conn->prepare("UPDATE `others_skills` SET `skill1`=?,`percentage1`=?,`skill2`=?,`percentage2`=?,`skill3`=?,`percentage3`=?,`skill4`=?,`percentage4`=? WHERE `email`=?");
		$stmt_6->bind_param("sssssssss",$O_skill_1_title,$O_skill_1_percentage,$O_skill_2_title,$O_skill_2_percentage,$O_skill_3_title,$O_skill_3_percentage,$O_skill_4_title,$O_skill_4_percentage,$user_email);
        $stmt_6->execute();
        $stmt_6->close();

        $stmt_7 = $conn->prepare("UPDATE `social_media` SET `facebook`=?,`twitter`=?,`github`=? WHERE `email`=?");
		$stmt_7->bind_param("ssss",$facebook,$twitter,$github,$user_email);
        $stmt_7->execute();
        $stmt_7->close();

        $stmt_8 = $conn->prepare("UPDATE `user_registration` SET `Full Name`=?,`Password`=?,`profession`=? WHERE `email`=?");
		$stmt_8->bind_param("ssss",$Full_Name,$update_pass,$Profession,$user_email);
        $stmt_8->execute();
        $stmt_8->close();


        
        $conn->close();


        header( 'Location: http://localhost/CVitae/user_profile.html' );

    }
?>