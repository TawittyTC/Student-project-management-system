<?php
    // error_reporting(0);
    include('condb.php');
    require_once('header.php');

    if($_SERVER["REQUEST_METHOD"]=='POST'){
        $advice_id = $_POST['advice_id'];
        $uSQL = "DELETE FROM tbadvice
        WHERE advice_id=$advice_id";
        // printf("%s",$uSQL);
        if($condb->query($uSQL)==TRUE){
            mysqli_close($condb);
            echo "ลบข้อมูลสมบูรณ์";
            exit();
        }else{
            mysqli_close($condb);
            echo "ไม่สามารถลบข้อมูลนี้ได้ <br> Error: " . $condb->error ; 
            exit();
        }
    }

    if ($_GET["advice_id"]<>'' && isset($_GET["advice_id"])==TRUE){
        $advice_id = $_GET["advice_id"];

        ?>
            <h1>คุณต้องการลบข้อมูลนี้ใช่หรือไม่?</h1>
            <form action="" method="POST">
                <input type="hidden" id="advice_id" name="advice_id" 
                value=<?php echo $advice_id ?>>

                <button type="submit" class="btn btn-primary">ใช่</button>
                <a href="advice.php" class="btn btn-danger">ไม่</a>
            </form>

<?php
        }
?>
        </div>
<?php
    require_once('footer.php');
?>