<?php
    // error_reporting(0);
    include('condb.php');
    require_once('header.php');

    if($_SERVER["REQUEST_METHOD"]=='POST'){
        $project_id = $_POST['project_id'];
        $uSQL = "DELETE FROM tbproject
        WHERE project_id=$project_id";
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

    if ($_GET["project_id"]<>'' && isset($_GET["project_id"])==TRUE){
        $project_id = $_GET["project_id"];

        ?>
            <h1>คุณต้องการลบข้อมูลนี้ใช่หรือไม่?</h1>
            <form action="" method="POST">
                <input type="hidden" id="project_id" name="project_id" 
                value=<?php echo $project_id ?>>

                <button type="submit" class="btn btn-primary">ใช่</button>
                <a href="project.php" class="btn btn-danger">ไม่</a>
            </form>

<?php
        }
?>
        </div>
<?php
    require_once('footer.php');
?>