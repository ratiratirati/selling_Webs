<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/fonts.css">
</head>
<body>
   <?php
    include('proces.php');
   ?>
    <div class="header">
        <a href="login.php">ავტორიზაცია</a>
        <a href="index.php">მთავარ გვერდზე დაბრუნება</a>
    </div>
    <div class="register_form">
        <form method="post" action="register.php">
            <input type="text" name="username" placeholder="მომხმარებელი">
            <br>
            <input type="password" name="password" placeholder="პაროლი">
            <br>
            <input type="text" name="firstlast" placeholder="სახელი / გვარი">
            <br>
            <input type="text" name="location" placeholder="მისამართი">
            <br>
            <input type="text" name="phone_number" placeholder="მობილური XXX-XX-XX-XX">
            <br>
            <button name="register">რეგისტრაცია</button>
            <div class="msg">
                <?php echo $msg;?>
            </div>
            <div class="error">
                <?php echo $error;?>
            </div>
        </form>
    </div>
</body>
</html>