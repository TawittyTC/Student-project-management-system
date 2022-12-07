<?php
    include('condb.php');

    require_once('header.php');

    $sql = "SELECT advice_id, advice_name, advice_desc,stu_fname FROM tbadvice 
    INNER JOIN tbstudent 
    ON tbadvice.stu_id = tbstudent.stu_id
    ;";

    $result = mysqli_query($condb, $sql);

    if(mysqli_num_rows($result) > 0){
       // echo "Record(s): ". mysqli_num_rows($result) . "<br>";
       // echo "<table class=table table-striped>";
    ?>
    <br>
     <table class="table table-borderless table-hover table-striped>">
    <?php
        echo "<caption>คำแนะนำ</caption>"; #แก้ตรงนี้
        echo "<thead>";
    ?>
        <tr class="table-primary">
    <?php
        //echo "<tr>";
        echo "<th>ลำดับ</td>";
        echo "<th>หัวข้อแนะนำ</td>";
        echo "<th>รายละเอียดแนะนำ</td>";
        echo "<th>ผู้ขอคำแนะนำ</td>";
        echo "<th>จัดการข้อมูล</td>";
        echo "</tr>";
        echo "</thead>";
        echo "<tbody>";
        while($row = mysqli_fetch_assoc($result)){
            echo "<tr>";
            $advice_id = $row["advice_id"]; #แก้ตรงนี้
            echo "<td style=". "text-align:center". ">" . $advice_id . "</td>"; #แก้ตรงนี้
            echo "<td>" . $row["advice_name"] . "</td>";
            echo "<td>" . $row["advice_desc"] . "</td>";
            echo "<td>" . $row["stu_fname"] . "</td>";
            echo "<td> <a href=\"adviceupdate.php?advice_id=$advice_id\" class=\"btn btn-warning\">แก้ไข</a> 
            <a href=\"adviceinsert.php?advice_id=$advice_id\" class=\"btn btn-primary\">เพิ่มข้อมูล</a> 
            <a href=\"advicedelete.php?advice_id=$advice_id\" class=\"btn btn-danger\">ลบ</a>"; #แก้ตรงนี้

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