<?php
include 'condb.php';
require_once('header.php');
if ($_SERVER["REQUEST_METHOD"] == "POST" )
{
    $project_name = $_POST['project_name']; #แก้ตรงนี้
    $project_duration = $_POST['project_duration'];
    $project_status = $_POST['project_status'];
    $project_approval = $_POST['project_approval'];
    $stu_id = $_POST['stu_id'];
    
    $iSQL = "INSERT INTO tbproject(project_name,project_duration,project_status,project_approval,stu_id) VALUES ('$project_name','$project_duration','$project_status','$project_approval','$stu_id')";
    //แก้ตรงนี้
    if (mysqli_query($condb, $iSQL)) {
        echo "เพิ่มข้อมูลเสร็จสมบูรณ์ !";
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($condb);
     }
    $condb->close();
}
?>
<form action="" method="POST">
    <div class="mb-3 mt-3">
        <label for="project_name" class="form-label">ชื่อโครงงาน</label>
        <input type="text" class="form-control" id="project_name" placeholder="ชื่อโครงงาน" name="project_name">
    </div>
    <div class="mb-3 mt-3">
        <label for="project_duration" class="form-label">ระยะเวลาโครงงาน</label>
        <input type="text" class="form-control" id="project_duration" placeholder="ให้ใส่จำนวนเวลา" name="project_duration">
    </div>
    <div class="mb-3 mt-3">
        <label for="project_status" class="form-label">สถานะโครงงาน</label>
        <input type="text" class="form-control" id="project_status" placeholder="สถานะโครงงาน" name="project_status">
    </div>
    <div class="mb-3 mt-3">
        <label for="project_approval" class="form-label">การอนุมัติโครงการ</label>
        <input type="text" class="form-control" id="project_approval" placeholder="การอนุมัติโครงงาน" name="project_approval">
    </div>
    <div class="mb-3 mt-3">
        <label for="stu_id" class="form-label">ID นักเรียน</label>
        <input type="text" class="form-control" id="stu_id" placeholder="ID นักเรียน" name="stu_id">
    </div>

    <button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
    <button type="reset" class="btn btn-danger">ล้างข้อมูล</button>
</form>
<?php
require_once('footer.php');
?>