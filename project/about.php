<?php include("path.php");
include(ROOT_PATH . "/app/controllers/topics.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Candal|Lora" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Project</title>
</head>
<body>
    <?php include("app/includes/header.php"); ?>
    
    <div class="auth-content">
        <h1>Contact Info</h1>
        <br>
        <div class="cont" style="margin-left:20px">
            <p><i class="fas fa-envelope-open-text"></i> Mail: Test@mail.com</p>
            <p><i class="fas fa-phone"></i> Tel: +995 599 15 36 14</p>
            <p><i class="fas fa-globe-asia"></i> Facebook: <a href="#" style="color:blue">TecShop.ge</a></p>
        </div>
    </div>

    <!--JQuery  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

    <!--  -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <!-- Custom Script -->
    <script src="assets/js/scripts.js"></script>
</body>
</html>