<?php 
  session_start();
  if(isset($_SESSION["login"])){
        header("Location: index.php");
        exit;
  }
  require 'functions.php';

  if(isset($_POST["login"])){
    $username = $_POST["username"];
    $password = $_POST["password"];

  $result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");
  if(mysqli_num_rows($result) === 1) {
    $row = mysqli_fetch_assoc($result);
    if($password === $row["password"]){
      $_SESSION["login"]=true;
      header("Location: index.php");
      exit;
    }
  }
  $error = true;
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Administrator Login</title>
  <link rel="icon" href="../img2/core-img/fav-icon.png">
	<link href="css/login-css.css" rel="stylesheet">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5 bradius">
          <div class="card-body">
            <div class="profile-photo">
                <img src="../img2/core-img/fav-icon-big.png">
            </div>
            <h5 class="card-title text-center">Sign In</h5>
            <?php 
              if (isset($error)) {
                echo'<div class="alert alert-danger" role="alert">';
                echo  'Username atau password salah!';
                echo'</div>';
              }?>
            
            <form action="" method="post" class="form-signin">
              <div class="form-label-group">
                <input type="username" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
                <label for="username">Username</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                <label for="password">Password</label>
              </div>
              <hr class="my-4">
              <button class="btn btn-clr btn-lg btn-primary btn-block text-uppercase" type="submit" name="login">Sign in</button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</body>
</html>