<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (empty($_SESSION['remsuid']) || $_SESSION['ut'] == 3) {
    header('location:logout.php');
    exit;
}

?>

<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<head>

    <!-- Fonts and Stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CPoppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="assets/css/external.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">

    <title>Real Estate Management System || Answered Enquiry</title>
</head>

<body>
    <div id="wrapper" class="wrapper clearfix">
        <?php include_once('includes/header.php'); ?>

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
                                    <h1>Answered Enquiry</h1>
                                </div>
                                <ol class="breadcrumb">
                                    <li><a href="index.php">Home</a></li>
                                    <li class="active">Answered Enquiry</li>
                                </ol>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="add-property" class="add-property">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-box">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <h4 class="form--title">Total Answered Enquiries</h4>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>S.NO</th>
                                                <th>Enquiry Number</th>
                                                <th>Full Name</th>
                                                <th>Mobile Number</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <?php
                                        $uid = $_SESSION['remsuid'];
                                        $query = "SELECT tblenquiry.* FROM tblenquiry
                                                  JOIN tblproperty ON tblproperty.Id = tblenquiry.PropertyID
                                                  WHERE tblenquiry.Status = 'Answer' AND tblproperty.UserID = '$uid'";
                                        $result = mysqli_query($con, $query);
                                        $cnt = 1;
                                        while ($row = mysqli_fetch_array($result)) {
                                        ?>
                                            <tr>
                                                <td><?php echo $cnt; ?></td>
                                                <td><?php echo $row['EnquiryNumber']; ?></td>
                                                <td><?php echo $row['FullName']; ?></td>
                                                <td><?php echo $row['MobileNumber']; ?></td>
                                                <td><a href="view-enquiry-detail.php?viewid=<?php echo $row['ID']; ?>">View Details</a></td>
                                            </tr>
                                        <?php
                                            $cnt++;
                                        }
                                        ?>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="cta" class="cta cta-1 text-center bg-overlay bg-overlay-dark pt-90">
            <div class="bg-section"><img src="assets/images/cta/bg-1.jpg" alt="Background"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                        <h3>Join our professional team & agents to start selling your house</h3>
                        <a href="contact.php" class="btn btn--primary">Contact</a>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <?php include_once('includes/footer.php'); ?>

    <script src="assets/js/jquery-2.2.4.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/functions.js"></script>
</body>

</html>
