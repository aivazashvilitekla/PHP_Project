<?php include("path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/contactForm.php"); ?>
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
    <title>Login</title>
</head>
<body>
    <?php include(ROOT_PATH . "/app/includes/header.php"); ?>
    <div class="auth-content">
        <form action="contact.php" method="post">
            <h2 class="form-title">SEND E-MAIL</h2>
            
            <div>
                <input type="text" name="name" placeholder="Full Name" class="text-input" value="<?php echo $name; ?>">
            </div>
            <div>
                <input type="text" name="subject" placeholder="Subject" class="text-input" value="<?php echo $subject; ?>">
            </div>
            <div>
                <input type="text" name="mail" placeholder="Your e-mail" class="text-input" value="<?php echo $mailFrom; ?>">
            </div>
            <div>
                <textarea name="message" placeholder="Message..." class="text-input" value="<?php echo $message; ?>"></textarea>
            </div>
            <div>
                <button type="submit" name="submit" class="btn btn-big">SEND MAIL</button>
            </div>
        </form>
        
    </div>


    <!--JQuery  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <!-- Custom Script -->
    <script src="assets/js/scripts.js"></script>
</body>
</html>