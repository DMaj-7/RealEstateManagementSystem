<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<footer id="footer" class a "footer footer-1 bg-white">
    <!-- Widget Section
    ============================================= -->
    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3 widget--about">
                    <div class="widget--content">
                        <?php
                        $ret = mysqli_query($con, "select * from tblpage where PageType='contactus'");
                        $cnt = 1;
                        while ($row = mysqli_fetch_array($ret)) {
                        ?>
                            <!-- Logo and text removed -->
                        <?php } ?>
                    </div>
                </div>
                <!-- .col-md-2 end -->
                <!-- INFO and More Links sections removed -->
                <div class="col-xs-12 col-sm-12 col-md-4 widget--newsletter">
                    <!-- Logo removed -->
                </div>
                <!-- .col-md-4 end -->
            </div>
        </div>
        <!-- .container end -->
    </div>
    <!-- .footer-widget end -->
</footer>
