<?php
    error_reporting(0);
    include('condb.php');

    require_once('header.php');

    if($_SERVER["REQUEST_METHOD"]=='POST'){ #ลบเปรียบเทียบ
        $advice_id = $_POST['advice_id'];
        $advice_name = $_POST['advice_name'];
        $advice_desc = $_POST['advice_desc'];
        $stu_id = $_POST['stu_id'];
        $uSQL = "UPDATE tbadvice SET advice_name ='$advice_name', advice_desc='$advice_desc', stu_id='$stu_id'
        WHERE advice_id=$advice_id"; #แก้ตรงนี้
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

    if ($_GET["advice_id"]<>'' && isset($_GET["advice_id"])==TRUE){
        $advice_id = $_GET["advice_id"];
        $sql = "SELECT * FROM tbadvice WHERE advice_id = $advice_id"; 
        $resu = $condb->query($sql);
        if(mysqli_num_rows($resu) > 0){
            $rec = $resu -> fetch_array(MYSQLI_ASSOC);
            // printf("%d %s", $rec["univ_Code"], $rec["univ_Thainame"]);
            $advice_name = $rec["advice_name"];
            $advice_desc = $rec["advice_desc"];
            $stu_id = $rec["stu_id"];
        ?>
            <form action="" method="POST">
                <input type="hidden" id="advice_id" name="advice_id" 
                value=<?php echo $advice_id ?>>
                <div class="mb-3 mt-3">
                    <label for="advice_id" class="form-label">รหัสคำแนะนำ:</label>
                    <input type="text" class="form-control" id="advice_id" 
                    name="advice_id" value=<?php echo $advice_id ?> disabled>
                </div>
                <div class="mb-3 mt-3">
                    <label for="advice_name" class="form-label">ชื่อคำแนะนำ:</label>
                    <input type="text" class="form-control" id="advice_name" 
                    name="advice_name" value="<?php echo "$advice_name" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="advice_desc" class="form-label">คำอธิบาย:</label>
                    <input type="text" class="form-control" id="advice_desc" 
                    name="advice_desc" value="<?php echo "$advice_desc" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="stu_id" class="form-label">รหัสผู้ขอคำแนะนำ(รหัสนักเรียน):</label>
                    <input type="text" class="form-control" id="stu_id" 
                    name="stu_id" value="<?php echo $stu_id; ?>">
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