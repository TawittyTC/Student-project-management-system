<?php
include 'condb.php';
require_once('header.php');
if ($_SERVER["REQUEST_METHOD"] == "POST" )
{
    $advice_name = $_POST['advice_name']; #แก้ตรงนี้
    $advice_desc = $_POST['advice_desc'];
    $stu_id = $_POST['stu_id'];
    
    $iSQL = "INSERT INTO tbadvice(advice_name,advice_desc,stu_id) VALUES ('$advice_name','$advice_desc','$stu_id')";
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
        <label for="advice_name" class="form-label">หัวข้อคำแนะนำ</label>
        <input type="text" class="form-control" id="advice_name" placeholder="หัวข้อคำแนะนำ" name="advice_name">
    </div>
    <div class="mb-3 mt-3">
        <label for="advice_desc" class="form-label">รายละเอียดคำแนะนำ</label>
        <input type="text" class="form-control" id="advice_desc" placeholder="รายละเอียดคำแนะนำ" name="advice_desc">
    </div>
    <div class="mb-3 mt-3">
        <label for="stu_id" class="form-label">ID ผู้ขอคำแนะนำ</label>
        <input type="text" class="form-control" id="stu_id" placeholder="ID ผู้ขอคำแนะนำ" name="stu_id">
    </div>

    <button type="submit" class="btn btn-primary">บันทึกข้อมูล</button>
    <button type="reset" class="btn btn-danger">ล้างข้อมูล</button>
</form>
<?php
require_once('footer.php');
?>