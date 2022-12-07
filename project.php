<?php
    include('condb.php');

    require_once('header.php');

    $sql = "SELECT * FROM tbproject 
    INNER JOIN tbstudent 
    ON tbproject.stu_id = tbstudent.stu_id
    ;";

    $result = mysqli_query($condb, $sql);

    if(mysqli_num_rows($result) > 0){
       // echo "Record(s): ". mysqli_num_rows($result) . "<br>";
       // echo "<table class=table table-striped>";
    ?>
    <br>
     <table class="table table-borderless table-hover table-striped>">
    <?php
        echo "<caption>โครงงาน</caption>"; #แก้ตรงนี้
        echo "<thead>";
    ?>
        <tr class="table-primary">
    <?php
        //echo "<tr>";
        echo "<th>ลำดับ</td>";
        echo "<th>ชื่อโครงงาน</td>";
        echo "<th>ระยะเวลาโครงงาน</td>";
        echo "<th>สถานะโครงงาน</td>";
        echo "<th>การอนุมัติโครงการ</td>";
        echo "<th>ชื่อนักเรียน</td>";
        echo "<th>จัดการข้อมูล</td>";
        echo "</tr>";
        echo "</thead>";
        echo "<tbody>";
        while($row = mysqli_fetch_assoc($result)){
            echo "<tr>";
            $project_id = $row["project_id"]; #แก้ตรงนี้
            echo "<td style=". "text-align:center". ">" . $project_id . "</td>"; #แก้ตรงนี้
            echo "<td>" . $row["project_name"] . "</td>";
            echo "<td>" . $row["project_duration"] . "</td>";
            echo "<td>" . $row["project_status"] . "</td>";
            echo "<td>" . $row["project_approval"] . "</td>";
            echo "<td>" . $row["stu_fname"] . "</td>";
            echo "<td> <a href=\"projectupdate.php?project_id=$project_id\" class=\"btn btn-warning\">แก้ไข</a> 
            <a href=\"projectinsert.php?project_id=$project_id\" class=\"btn btn-primary\">เพิ่มข้อมูล</a> 
            <a href=\"projectdelete.php?project_id=$project_id\" class=\"btn btn-danger\">ลบ</a>"; #แก้ตรงนี้

            echo "</td>";
            echo "</tr>";
        }
        echo "</tbody>";
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