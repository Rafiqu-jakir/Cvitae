<?php
// Initialize the session
session_start();
 
// Check if the user is already logged in, if yese then redirect him to welcom page

 
// Include config file
require_once "config.php";
 
// Define variables and initialize with empty values
$email = $password = "";
$username_err = $password_err = $login_err = "";
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 

        $email = trim($_POST["admin_email"]);
        $password = trim($_POST["admin_password"]);

    
    // Validate credentials
    if(empty($username_err) && empty($password_err)){
        // Prepare a select statement
        $sql = "SELECT  `email`, `password` FROM `admin`  WHERE Email = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            
            // Set parameters
            $param_username = $email;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Store result
                mysqli_stmt_store_result($stmt);
                
                // Check if username exists, if yes then verify password
                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    // Bind result variables
                    mysqli_stmt_bind_result($stmt, $email, $hashed_password);
                    if(mysqli_stmt_fetch($stmt)){   
                        if(strcmp($password, $hashed_password) == 0){
                            $myfile = fopen("../textfile/admin_email.txt", "w") or die("Unable to open file!");
                            fwrite($myfile, $email);
                            fclose($myfile);
                            header('location: http://localhost/CVitae/admin_page.html');
                        } else{
                            // Password is not valid, display a generic error message
                            header( 'Location: http://localhost/CVitae/404.html' );
                        }
                    }
                } else{
                    // Username doesn't exist, display a generic error message
                    header( 'Location: http://localhost/CVitae/404.html' );
                }
            } else{
                header( 'Location:http://localhost/CVitae/404.html' );
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }
    
    // Close connection
    mysqli_close($link);
}
?>