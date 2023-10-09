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
        <a href="register.php">რეგისტრაცია</a>
        <a href="index.php">მთავარ გვერდზე დაბრუნება</a>
    </div>
    <div class="login_form">
        <form method="post" action="login.php">
            <select name="witch">
                <option value="" hidden>აირჩიეთ მომხმარებლის სტატუსი</option>
                <option value="admin">ადმინისტრატორი</option>
                <option value="user">ჩვეულებრივი მომხმარებელი</option>
            </select>
            <br>
            <input type="text" name="username" placeholder="მომხმარებელი">
            <br>
            <input type="password" name="password" placeholder="პაროლი">
            <br>
            <button name="login">სისტემაში შესვლა</button>
            <div class="error">
                <?php echo $error;?>
            </div>
        </form>
    </div>
</body>
</html>