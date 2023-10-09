<html>
<head>
    <meta charset="utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/fonts.css">
</head>
<body>
<?php 
    include('proces.php');

    if($_SESSION['username'] == ""){
        header('location: login.php');
    }
  
    ?>
    <div class="header">
    <a href="smarthome_home.php?logout='1'">სისტემიდან გადასვლა</a>
    <a href="buy.php">ჩემი შენაძენები</a>
    </div>
    <div class="category">
        <div class="category_name">
            კატეგორია
        </div>
        <ul>
            <li><a href="home.php">ყველა პროდუქტრი</a></li>
            <li><a href="parts_home.php">კომპიუტერის ნაწილები</a></li>
            <li><a href="smarthome_home.php">ჭკვიანი სახლის ტექნოლოგიები</a></li>
            <li><a href="phonepart_home.php">მობილურის აქსესუარები</a></li>
        </ul>
    </div>
    <div class="category_list">
    <div class='row'>
    <?php
        $con = mysqli_connect('localhost','root','','logindatabase');

        $select = "SELECT * FROM `list` WHERE category='cat2'";
        $result = mysqli_query($con,$select);
        while($row = mysqli_fetch_assoc($result)){
            if($row['count'] != 0){
                echo "
                <div class='col-sm-4 mb-1 mb-sm-0'>
                    <div class='card'>
                        <div class='card-body'>
                        <center>
                        <img src=".$row['img'].">
                        <h5 class='card-title'>".$row['ittem-name']."</h5>
                        <p class='card-text'>".$row['description']."</p>
                        <p class='card-text'>".$row['price']." ₾ </p>
                        <p class='card-text'>მარაგშია: ".$row['count']." ც </p>
                        <form method='post' action='smarthome_home.php'>
                        <input type='hidden' name='ittem_id' value='".$row['id']."'>
                        <button name='checkout'>შეძენა</button>
                        </form>
                        </center>
                        </div>
                    </div>
                </div>
          ";
            }else{
                echo "
                <div class='col-sm-4 mb-1 mb-sm-0'>
                    <div class='card'>
                        <div class='card-body'>
                        <center>
                        <img src=".$row['img'].">
                        <h5 class='card-title'>".$row['ittem-name']."</h5>
                        <p class='card-text'>".$row['description']."</p>
                        <p class='card-text'>".$row['price']." ₾ </p>
                        <p class='card-text' style='color:red;'>მარაგი ამოწურულია</p>
                        </center>
                        </div>
                    </div>
                </div>
          ";
            }
        }
    ?>
    </div>
    </div>
</body>
</html>