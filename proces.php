<?php

session_start();

$con = mysqli_connect('localhost','root','','logindatabase');


$msg = "";
$error = "";

    if(isset($_POST['register'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
        $firstlast = $_POST['firstlast'];
        $location = $_POST['location'];
        $phone_number = $_POST['phone_number'];

        if($username != "" AND $password != "" AND  $firstlast != "" AND  $location != "" AND $phone_number != "" ){

            $select = "SELECT * FROM `users` WHERE username='$username'";
            $result = mysqli_query($con,$select);

            if(!mysqli_num_rows($result)){
                $insert = "INSERT INTO `users` (`username`,`password`,`firstlast`,`location`,`phone`) VALUES ('$username','$password','$firstlast','$location','$phone_number')";
                if(mysqli_query($con,$insert)){
                    $msg = "წარმატებით მოხდა რეგისტრაცია შეგიძლიათ გაიაროთ ავტორიზაცია";
                }
            }else{
                $error = "სისტემაში ესეთი მომხმარებელი უკვე არსებობს გთხოვთ შეიყვანოთ სხვა მომხმარებელი";
            }

    
        }else{
            $error = "შეგახსენებთ რეგისტრაციის წარმატებით გასავლელად ყველა ველი უნდა იყოს შევსებული";
        }
    }

    if(isset($_POST['login'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        if($username != "" AND $password != ""){
            $witch = $_POST['witch'];
            if($witch == "admin"){

                $select="SELECT * FROM `administrators` WHERE username='$username'";
                $result=mysqli_query($con,$select);

                if(mysqli_num_rows($result)){
                    $select = "SELECT * FROM `administrators` WHERE username='$username' AND `password`='$password'";
                    $result=mysqli_query($con,$select);
                    $row = mysqli_fetch_assoc($result);
                    if(mysqli_num_rows($result)){
                        $_SESSION['username'] = $username;
                        $_SESSION['user_id'] = $row['id'];
                        header('location: adminpanel.php');
                    }else{
                        $error="მომხმარებლის პაროლი არასწორია !!!";
                    }
                }else{
                    $error="სისტემაში ესეთი მომხმარებელი არ არსებობს !!!";
                }

            }else{
                $select="SELECT * FROM `users` WHERE username='$username'";
                $result=mysqli_query($con,$select);
                $row = mysqli_fetch_assoc($result);
                if(mysqli_num_rows($result)){
                    $select = "SELECT * FROM `users` WHERE username='$username' AND `password`='$password'";
                    $result=mysqli_query($con,$select);
                    if(mysqli_num_rows($result)){
                        $_SESSION['username'] = $username;
                        $_SESSION['user_id'] = $row['id'];
                        header('location: home.php');
                    }else{
                        $error="მომხმარებლის პაროლი არასწორია !!!";
                    }
                }else{
                    $error="სისტემაში ესეთი მომხმარებელი არ არსებობს !!!";
                }
            }

    
        }else{
            $error = "შეგახსენებთ ყველა ველი უნდა იყოს შევსებული";
        }
    }

    if(isset($_POST['add_ittem'])){
        $category = $_POST['category'];
        $ittemname	 = $_POST['ittem-name'];
        $price = $_POST['price'];
        $description = $_POST['description'];
        $img_link = $_POST['img_link'];
        $count = $_POST['count'];

        if($category != "" AND $ittemname != "" AND  $price != "" AND  $description != "" AND $img_link != ""  AND $count != "" ){
            $insert = "INSERT INTO `list` (`category`,`ittem-name`,`price`,`description`,`img`,`count`) VALUES ('$category','$ittemname','$price','$description','$img_link','$count')";
            if(mysqli_query($con,$insert)){
                $msg = "წარმატებით მოხდა აღნიშნული ნივთის დამატება";
            }
        }

    }

    if(isset($_POST['checkout'])){
        $ittem_id = $_POST['ittem_id'];
        $select = "SELECT * FROM `list` WHERE id='$ittem_id'";
        $result = mysqli_query($con,$select);
        $row = mysqli_fetch_assoc($result);
        $user_id =  $_SESSION['user_id'];
        $ittemname =  $row['ittem-name'];
        $price =  $row['price'];
        $img =  $row['img'];
        $select = "SELECT * FROM `users` WHERE id='$user_id'";
        $result = mysqli_query($con,$select);
        $row = mysqli_fetch_assoc($result);
        $firstlast = $row['firstlast'];
        $location = $row['location'];
        $phone = $row['phone'];

        $insert = "INSERT INTO `checkout` (`user_id`,`ittem-name`,`price`,`img`,`count`,`firstlast`,`location`,`phone`) VALUES ('$user_id','$ittemname','$price','$img','1','$firstlast','$location','$phone')";
        if(mysqli_query($con,$insert)){
            $select = "SELECT * FROM `list` WHERE id='$ittem_id'";
            $result = mysqli_query($con,$select);
            $row = mysqli_fetch_assoc($result);
            $count = $row['count']-1;
            $update = "UPDATE `list` SET count='$count' WHERE id='$ittem_id'";
            mysqli_query($con,$update);
        }
    }

    if(isset($_GET['logout'])){
        session_destroy();
        unset($_SESSION['username']);
        header('location: login.php');
    }

    
?>