<?php
    // error_reporting(0);
    include('condb.php');
    require_once('header.php');

    if($_SERVER["REQUEST_METHOD"]=='POST'){
        $doc_id = $_POST['doc_id'];
        $uSQL = "DELETE FROM tbdocument
        WHERE doc_id=$doc_id";
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

    if ($_GET["doc_id"]<>'' && isset($_GET["doc_id"])==TRUE){
        $doc_id = $_GET["doc_id"];

        ?>
            <h1>คุณต้องการลบข้อมูลนี้ใช่หรือไม่?</h1>
            <form action="" method="POST">
                <input type="hidden" id="doc_id" name="doc_id" 
                value=<?php echo $doc_id ?>>

                <button type="submit" class="btn btn-primary">ใช่</button>
                <a href="thesis.php" class="btn btn-danger">ไม่</a>
            </form>

<?php
        }
?>
        </div>
<?php
    require_once('footer.php');
?>