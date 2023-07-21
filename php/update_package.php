<?php 
    $silver_days = isset($_GET['silver_days']) ? strip_tags($_GET['silver_days']): '';
	$silver_gig = isset($_GET['silver_gig']) ? strip_tags($_GET['silver_gig']): '';
    $silver_post = isset($_GET['silver_post']) ? strip_tags($_GET['silver_post']): '';
	$silver_price = isset($_GET['silver_price']) ? strip_tags($_GET['silver_price']): '';

    $gold_days = isset($_GET['gold_days']) ? strip_tags($_GET['gold_days']): '';
	$gold_gig = isset($_GET['gold_gig']) ? strip_tags($_GET['gold_gig']): '';
    $gold_post = isset($_GET['gold_post']) ? strip_tags($_GET['gold_post']): '';
	$gold_price = isset($_GET['gold_price']) ? strip_tags($_GET['gold_price']): '';

    $Platinum_days = isset($_GET['Platinum_days']) ? strip_tags($_GET['Platinum_days']): '';
	$Platinum_gig = isset($_GET['Platinum_gig']) ? strip_tags($_GET['Platinum_gig']): '';
    $Platinum_post = isset($_GET['Platinum_post']) ? strip_tags($_GET['Platinum_post']): '';
	$Platinum_price = isset($_GET['Platinum_price']) ? strip_tags($_GET['Platinum_price']): '';

    $conn = new mysqli('localhost','root','','cvitae');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
        $stmt = $conn->prepare("UPDATE `pricing_table` SET `N_o_days`=?,`N_o_gigs`=?,`N_o_post`=?,`price`=? WHERE package_name = 'silver'");
		$stmt->bind_param("ssss",$silver_days,$silver_gig,$silver_post,$silver_price);
        $stmt->execute();
        $stmt->close();

        $stmt = $conn->prepare("UPDATE `pricing_table` SET `N_o_days`=?,`N_o_gigs`=?,`N_o_post`=?,`price`=? WHERE package_name = 'Glod'");
		$stmt->bind_param("ssss",$gold_days,$gold_gig,$gold_post,$gold_price);
        $stmt->execute();
        $stmt->close();

        $stmt = $conn->prepare("UPDATE `pricing_table` SET `N_o_days`=?,`N_o_gigs`=?,`N_o_post`=?,`price`=? WHERE package_name = 'Platinum'");
		$stmt->bind_param("ssss",$Platinum_days,$Platinum_gig,$Platinum_post,$Platinum_price);
        $stmt->execute();
        $stmt->close();
        

                
        $conn->close();

        header( 'Location: http://localhost/CVitae/admin_page.html' );

    }

?>