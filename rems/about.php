<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>

<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<head>
    <!-- Meta and Title
    ============================================= -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Real Estate Management System || About Us</title>

    <!-- Fonts
    ============================================= -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CPoppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Stylesheets
    ============================================= -->
    <link href="assets/css/external.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of the file. -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="wrapper clearfix">
        <?php include('includes/header.php'); ?>

        <!-- Page Title #1
    ============================================= -->
        <section id="page-title" class="page-title bg-overlay bg-overlay-dark2">
            <div class="bg-section">
                <img src="assets/images/page-titles/1.jpg" alt="Background" />
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <div class="title title-1 text-center">
                            <div class="title--content">
                                <div class="title--heading">
                                    <h1>About Us</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="index.php">Home</a></li>
                                    <li class="active">About Us</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- #page-title end -->

        <!-- About #1
    ============================================= -->
        <section id="about" class="about bg-white">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-5 col-md-5">
                        <div class="about--img">
                            <img class="img-responsive" src="assets/images/about/RealEstateInvestment.jpg" width="550" height="550" alt="about img">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-7 col-md-6 col-md-offset-1">
                        <?php
                        $query = "SELECT * FROM tblpage WHERE PageType = 'aboutus'";
                        $result = mysqli_query($con, $query);

                        while ($row = mysqli_fetch_array($result)) {
                        ?>
                            <div class="heading heading-3">
                                <h2 class="heading--title"><?php echo $row['PageTitle']; ?></h2>
                            </div>
                            <div class="about--panel">
                                <p><?php echo $row['PageDescription']; ?></p>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </section>
        <!-- #about end -->

        <!-- CTA #1
    ============================================= -->
        <section id="cta" class="cta cta-1 text-center bg-overlay bg-overlay-dark pt-90">
            <div class="bg-section">
                <img src="assets/images/cta/bg-1.jpg" alt="Background">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <h3>Join our professional team & agents to start selling your house</h3>
                        <a href="contact.php" class="btn btn--primary">Contact</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- #cta1 end -->

        <!-- Footer #1
    ============================================= -->
        <?php include('includes/footer.php'); ?>
    </div>
    <!-- #wrapper end -->

    <!-- Footer Scripts
    ============================================= -->
    <script src="assets/js/jquery-2.2.4.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/functions.js"></script>
</body>

</html>
