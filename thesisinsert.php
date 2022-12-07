<?php
include 'condb.php';
require_once('header.php');
if ($_SERVER["REQUEST_METHOD"] == "POST" )
{
    $thesis_name = $_POST['thesis_name'];
    $thesis_status = $_POST['thesis_status'];
    $upload_time = $_POST['upload_time'];
    
    $iSQL = "INSERT INTO tbthesis(thesis_name,upload_time,thesis_status) VALUES ('$thesis_name','$upload_time','$thesis_status')";
    //echo "sql:" . $iSQL;
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
        <label for="thesis_name" class="form-label">ชื่อวิทยานิพนธ์</label>
        <input type="text" class="form-control" id="thesis_name" placeholder="ชื่อวิทยานิพนธ์" name="thesis_name">
    </div>
    <div class="mb-3 mt-3">
        <label for="upload_time" class="form-label">วันที่อัพโหลด</label>
        <input type="text" class="form-control" id="upload_time" placeholder="เช่น ปี - เดือน - วัน" name="upload_time">
    </div>
    <div class="mb-3 mt-3">
        <label for="thesis_status" class="form-label">สถานะ</label>
        <input type="text" class="form-control" id="thesis_status" placeholder="สถานะ " name="thesis_status">
    </div>

    <button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
    <button type="reset" class="btn btn-danger">ล้างข้อมูล</button>
</form>
<?php
require_once('footer.php');
?>