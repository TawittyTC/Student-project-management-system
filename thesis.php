<?php
    include('condb.php');

    require_once('header.php');

    $sql = "SELECT * FROM tbthesis"; #แก้ตรงนี้
    $result = mysqli_query($condb, $sql);

    if(mysqli_num_rows($result) > 0){
       // echo "Record(s): ". mysqli_num_rows($result) . "<br>";
       // echo "<table class=table table-striped>";
    ?>
    <br>
     <table class="table table-borderless table-hover table-striped>">
    <?php
        echo "<caption>ข้อมูลวิทยานิพนธ์</caption>"; #แก้ตรงนี้
        echo "<thead>";
    ?>
        <tr class="table-primary">
    <?php
        //echo "<tr>";
        echo "<th>ลำดับ</td>";
        echo "<th>ชื่อวิทยานิพนธ์</td>";
        echo "<th>เวลาอัพโหลด(ป-ด-ว)</td>";
        echo "<th>สถานะ</td>";
        echo "<th>จัดการข้อมูล</td>";
        echo "</tr>";
        echo "</thead>";
        echo "<tbody>";
        while($row = mysqli_fetch_assoc($result)){
            echo "<tr>";
            $thesis_id = $row["thesis_id"]; #แก้ตรงนี้
            echo "<td style=". "text-align:center". ">" . $thesis_id . "</td>"; #แก้ตรงนี้
            echo "<td>" . $row["thesis_name"] . "</td>";
            echo "<td>" . $row["upload_time"] . "</td>";
            echo "<td>" . $row["thesis_status"] . "</td>";
            echo "<td> <a href=\"thesisupdate.php?thesis_id=$thesis_id\" class=\"btn btn-warning\">แก้ไข</a> 
            <a href=\"thesisinsert.php?thesis_id=$thesis_id\" class=\"btn btn-primary\">เพิ่มข้อมูล</a> 
            <a href=\"thesisdelete.php?thesis_id=$thesis_id\" class=\"btn btn-danger\">ลบ</a>"; #แก้ตรงนี้

            echo "</td>";
            echo "</tr>";
          //echo "university ID : " . $row["univ_Code"] . " " . $row["univ_Thainame"] . "<br>";
        }
        echo "</tbody>";
        // echo "<tfoot>";
        // echo "<tr>";
        // echo "<td>ลำดับ</td>";
        // echo "<td>ชื่อ ม. (ไทย)</td>";
        // echo "<td>ชื่อ ม. (อังกฤษ)</td>";
        // echo "<td>เลขที่อยู่</td>";
        // echo "<td>ที่อยู่</td>";
        // echo "<td>ดำเนินการ</td>";
        // echo "</tr>";
        // echo "</tfoot>";
        echo "</table>";
        echo "Record(s): ". mysqli_num_rows($result) . "<br>";
    }else{
        echo "Record(s): 0";
    }
    mysqli_close($condb);
?>
        </div>
<?php
    require_once('footer.php');
?>