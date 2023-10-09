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
        <a href="adminpanel.php?logout='1'">სისტემიდან გადასვლა</a>
    </div>

    <div class="list_add">
        <form method="post" action="adminpanel.php">
            <select name="category">
                <option value="" hidden>მიუთითეთ კატეგორია</option>
                <option value="cat1">კომპიუტერის ნაწილები</option>
                <option value="cat2">ჭკვიანი სახლის ტექნოლოგიები</option>
                <option value="cat3">მობილურის აქსესუარები</option>
            </select>
            <br>
            <input name="ittem-name" placeholder="ნივთის დასათაურება">
            <br>
            <input name="price" placeholder="ფასი">
            <br>
            <input name="count" placeholder="მარაგში">
            <br>
            <input name="img_link" placeholder="ფოტოს ლინკი">
            <br>
            <textarea name="description" placeholder="ნივთის აღწერა"></textarea>
            <br>
            <button name="add_ittem">ნივთის დამატება</button>
            <div class="success">
                <?php echo $msg;?>
            </div>
        </form>
    </div>
</body>
</html>