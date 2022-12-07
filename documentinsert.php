<?php
include 'condb.php';
require_once('header.php');
if ($_SERVER["REQUEST_METHOD"] == "POST" )
{
    $doc_name = $_POST['doc_name'];
    $doc_status = $_POST['doc_status'];
    $upload_time = $_POST['upload_time'];
    
    $iSQL = "INSERT INTO tbdocument(doc_name,upload_time,doc_status) VALUES ('$doc_name','$upload_time','$doc_status')";
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
        <label for="doc_name" class="form-label">ชื่อเอกสาร</label>
        <input type="text" class="form-control" id="doc_name" placeholder="ชื่อวิทยานิพนธ์" name="doc_name">
    </div>
    <div class="mb-3 mt-3">
        <label for="upload_time" class="form-label">วันที่อัพโหลด</label>
        <input type="text" class="form-control" id="upload_time" placeholder="เช่น ปี - เดือน - วัน" name="upload_time">
    </div>
    <div class="mb-3 mt-3">
        <label for="doc_status" class="form-label">สถานะ</label>
        <input type="text" class="form-control" id="doc_status" placeholder="สถานะ " name="doc_status">
    </div>

    <button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
    <button type="reset" class="btn btn-danger">ล้างข้อมูล</button>
</form>
<?php
require_once('footer.php');
?>