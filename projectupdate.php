<?php
    error_reporting(0);
    include('condb.php');

    require_once('header.php');

    if($_SERVER["REQUEST_METHOD"]=='POST'){ #ลบเปรียบเทียบ
        $project_id = $_POST['project_id'];
        $project_name = $_POST['project_name'];
        $project_duration = $_POST['project_duration'];
        $project_status = $_POST['project_status'];
        $project_approval = $_POST['project_approval'];
        $stu_id = $_POST['stu_id'];
        $uSQL = "UPDATE tbproject SET project_name ='$project_name', project_duration='$project_duration',project_status='$project_status',project_approval='$project_approval', stu_id='$stu_id'
        WHERE project_id=$project_id"; #แก้ตรงนี้
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

    if ($_GET["project_id"]<>'' && isset($_GET["project_id"])==TRUE){
        $project_id = $_GET["project_id"];
        $sql = "SELECT * FROM tbproject WHERE project_id = $project_id"; 
        $resu = $condb->query($sql);
        if(mysqli_num_rows($resu) > 0){
            $rec = $resu -> fetch_array(MYSQLI_ASSOC);
            // printf("%d %s", $rec["univ_Code"], $rec["univ_Thainame"]);
            $project_name = $rec["project_name"];
            $project_duration = $rec["project_duration"];
            $project_status = $rec["project_status"];
            $project_approval = $rec["project_approval"];
            $stu_id = $rec["stu_id"];
        ?>
            <form action="" method="POST">
                <input type="hidden" id="project_id" name="project_id" 
                value=<?php echo $project_id ?>>
                <div class="mb-3 mt-3">
                    <label for="project_id" class="form-label">รหัสโครงงาน:</label>
                    <input type="text" class="form-control" id="project_id" 
                    name="project_id" value=<?php echo $project_id ?> disabled>
                </div>
                <div class="mb-3 mt-3">
                    <label for="project_name" class="form-label">ชื่อโครงงาน:</label>
                    <input type="text" class="form-control" id="project_name" 
                    name="project_name" value="<?php echo "$project_name" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="project_duration" class="form-label">ระยะเวลาโครงการ:</label>
                    <input type="text" class="form-control" id="project_duration" 
                    name="project_duration" value="<?php echo "$project_duration" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="project_status" class="form-label">คำอธิบาย:</label>
                    <input type="text" class="form-control" id="project_status" 
                    name="project_status" value="<?php echo "$project_status" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="project_approval" class="form-label">คำอธิบาย:</label>
                    <input type="text" class="form-control" id="project_approval" 
                    name="project_approval" value="<?php echo "$project_approval" ?>">
                </div>
                <div class="mb-3 mt-3">
                    <label for="stu_id" class="form-label">รหัสเจ้าของโครงการ(รหัสนักเรียน):</label>
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