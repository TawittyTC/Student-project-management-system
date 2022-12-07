<?php
    error_reporting(0);
    include('condb.php');

    require_once('header.php');

    if($_SERVER["REQUEST_METHOD"]=='POST'){ #ลบเปรียบเทียบ
        $thesis_id = $_POST['thesis_id'];
        $thesis_name = $_POST['thesis_name'];
        $thesis_status = $_POST['thesis_status'];
        $upload_time = $_POST['upload_time'];
        $uSQL = "UPDATE tbthesis SET thesis_name ='$thesis_name', thesis_status='$thesis_status',upload_time='$upload_time'
        WHERE thesis_id=$thesis_id;"; #แก้ตรงนี้
        // printf("%s",$uSQL);
        if($condb->query($uSQL)==TRUE){
            mysqli_close($condb);
            echo "บันทึกข้อมูลสมบูรณ์";
            exit();
        }else{
            mysqli_close($condb);
            echo "ไม่สามารถบันทึกข้อมูลนี้ได้ <br> Error: " . $condb->error ; 
            exit();
        }
    }

    if ($_GET["thesis_id"]<>'' && isset($_GET["thesis_id"])==TRUE){
        $thesis_id = $_GET["thesis_id"];
        $sql = "SELECT * FROM tbthesis WHERE thesis_id = $thesis_id"; 
        $resu = $condb->query($sql);
        if(mysqli_num_rows($resu) > 0){
            $rec = $resu -> fetch_array(MYSQLI_ASSOC);
            // printf("%d %s", $rec["univ_Code"], $rec["univ_Thainame"]);
            $thesis_name = $rec["thesis_name"];
            $thesis_status = $rec["thesis_status"];
        ?>
            <form action="" method="POST">
                <input type="hidden" id="thesis_id" name="thesis_id" 
                value=<?php echo $thesis_id ?>>
                <div class="mb-3 mt-3">
                    <label for="thesis_id" class="form-label">รหัสวิทยานิพนธ์:</label>
                    <input type="text" class="form-control" id="thesis_id" 
                    name="thesis_id" value=<?php echo $thesis_id ?> disabled>
                </div>
                <div class="mb-3 mt-3">
                    <label for="thesis_name" class="form-label">ชื่อวิทยานิพนธ์:</label>
                    <input type="text" class="form-control" id="thesis_name" 
                    name="thesis_name" value="<?php echo "$thesis_name" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="upload_time" class="form-label">เวลาอัพโหลด:</label>
                    <input type="text" class="form-control" id="upload_time" 
                    name="upload_time" value="<?php echo "$upload_time" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="thesis_status" class="form-label">สถานะ:</label>
                    <input type="text" class="form-control" id="thesis_status" 
                    name="thesis_status" value="<?php echo $thesis_status; ?>">
                </div>
                <button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
                <button type="reset" class="btn btn-danger">เคลียร์ข้อมูล</button>
            </form>

<?php

        }
        $resu -> free_result();
    }
    
    mysqli_close($condb);
?>
        </div>
<?php
    require_once('footer.php');
?>