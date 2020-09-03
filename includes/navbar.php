 <!-- <header class="main-header"> -->
 <html>
 <head>
 <link rel="stylesheet" href="css/style.css"/> 
 </head>
 <nav class="navbar navbar-static-top" style="background-color:white !important;margin-bottom: 0px !important;">  
    <div class="container">
      <div class="navbar-header">
      </div>
      </div>
      </nav>
  <nav class="navbar navbar-static-top" style="background-color:white !important;margin-bottom: 0px !important;">  
    <div class="container">
      <div class="navbar-header">
        <a href="index.php" class="navbar-brand" style="color: black;     color: black;
    margin-top: -10px;
    font: 25px ProximaNova-Semibold,Arial;"><b>WeShop</b></a>
       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse"> -->
         <i class="fa fa-bars"></i> 
        </button> 
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
        <ul class="nav navbar-nav">
          <li><a style="color: black;    color: black;
    font: 18px ProximaNova-Semibold,Arial;
        " 
           href="index.php" >HOME</a></li>
          <li><a style="color: black;     color: black;
    font: 18px ProximaNova-Semibold,Arial;"  href="topselling.php">TOP SELLING PRODUCTS</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: black;    color: black;
    font: 18px ProximaNova-Semibold,Arial;" >CATEGORY <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <?php
             
                $conn = $pdo->open();
                try{
                  $stmt = $conn->prepare("SELECT * FROM category");
                  $stmt->execute();
                  foreach($stmt as $row){
                    echo "
                      <li><a href='category.php?category=".$row['cat_slug']."'>".$row['name']."</a></li>
                    ";                  
                  }
                }
                catch(PDOException $e){
                  echo "There is some problem in connection: " . $e->getMessage();
                }

                $pdo->close();

              ?>
            </ul>
          </li>
        </ul>
        <form method="POST" class="navbar-form navbar-left" action="search.php">
          <div class="input-group">
              <input style="    margin-left: 0px !important;"type="text" class="form-control" id="navbar-search-input" name="keyword" placeholder="Search for Product" required>
              <span class="input-group-btn" id="searchBtn" style="display:none;">
                  <button type="submit" class="btn btn-default btn-flat"><i class="fa fa-search"></i> </button>
              </span>
          </div>
        </form>
      </div>
      <!-- /.navbar-collapse -->
      <!-- Navbar Right Menu -->
  
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
     
          <li class="dropdown messages-menu">
            <!-- Menu toggle button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="    color: #000000;">
              <i class="fa fa-shopping-cart"></i>
              <span class="label label-success cart_count"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have <span class="cart_count"></span> item(s) in cart</li>
              <li>
                <ul class="menu" id="cart_menu">
                </ul>
              </li>
              <li class="footer"><a href="cart_view.php">Go to Cart</a></li>
            </ul>
          </li>
          <?php
            if(isset($_SESSION['user'])){
              $image = (!empty($user['photo'])) ? 'images/'.$user['photo'] : 'images/profile.jpg';
              echo '
                <li class="dropdown user user-menu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="'.$image.'" class="user-image" alt="User Image">
                    <span class="hidden-xs">'.$user['firstname'].' '.$user['lastname'].'</span>
                  </a>
                  <ul class="dropdown-menu">
                    <!-- User image -->
                    <li class="user-header">
                      <img src="'.$image.'" class="img-circle" alt="User Image">

                      <p>
                        '.$user['firstname'].' '.$user['lastname'].'
                        <small>Member since '.date('M. Y', strtotime($user['created_on'])).'</small>
                      </p>
                    </li>
                    <li class="user-footer">
                      <div class="pull-left">
                        <a href="profile.php" class="btn btn-default btn-flat">Profile</a>
                      </div>
                      <div class="pull-right">
                        <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                      </div>
                    </li>
                  </ul>
                </li>
              ';
            }
            else{
              echo "
                <li><a href='login.php' style='color: Black;    color: black;
                font: 18px ProximaNova-Semibold,Arial;' >LOGIN</a></li>
                <li><a href='signup.php'style='color: black;    color: black;
                font: 18px ProximaNova-Semibold,Arial;'>SIGNUP</a></li>
              ";
            }
          ?>
        </ul>
      </div>
    </div>
  </nav>

  


      <hr    style=" color:black;
    width: 97%;border-top: 14px solid #000;"
 >

</html>