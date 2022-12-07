<?php
    error_reporting(0);
    include('condb.php');

    require_once('header.php');

    if($_SERVER["REQUEST_METHOD"]=='POST'){ #ลบเปรียบเทียบ
        $doc_id = $_POST['doc_id'];
        $doc_name = $_POST['doc_name'];
        $doc_status = $_POST['doc_status'];
        $upload_time = $_POST['upload_time'];
        $uSQL = "UPDATE tbdocument SET doc_name ='$doc_name', doc_status='$doc_status',upload_time='$upload_time'
        WHERE doc_id=$doc_id;"; #แก้ตรงนี้
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

    if ($_GET["doc_id"]<>'' && isset($_GET["doc_id"])==TRUE){
        $doc_id = $_GET["doc_id"];
        $sql = "SELECT * FROM tbdocument WHERE doc_id = $doc_id"; 
        $resu = $condb->query($sql);
        if(mysqli_num_rows($resu) > 0){
            $rec = $resu -> fetch_array(MYSQLI_ASSOC);
            // printf("%d %s", $rec["univ_Code"], $rec["univ_Thainame"]);
            $doc_name = $rec["doc_name"];
            $doc_status = $rec["doc_status"];
        ?>
            <form action="" method="POST">
                <input type="hidden" id="doc_id" name="doc_id" 
                value=<?php echo $doc_id ?>>
                <div class="mb-3 mt-3">
                    <label for="doc_id" class="form-label">รหัสเอกสาร:</label>
                    <input type="text" class="form-control" id="doc_id" 
                    name="doc_id" value=<?php echo $doc_id ?> disabled>
                </div>
                <div class="mb-3 mt-3">
                    <label for="doc_name" class="form-label">ชื่อเอกสาร:</label>
                    <input type="text" class="form-control" id="doc_name" 
                    name="doc_name" value="<?php echo "$doc_name" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="upload_time" class="form-label">เวลาอัพโหลด:</label>
                    <input type="text" class="form-control" id="upload_time" 
                    name="upload_time" value="<?php echo "$upload_time" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="doc_status" class="form-label">สถานะ:</label>
                    <input type="text" class="form-control" id="doc_status" 
                    name="doc_status" value="<?php echo $doc_status; ?>">
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