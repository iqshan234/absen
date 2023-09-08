<?php
session_start();
$server = "localhost";
$username="root";
$password="";
$dbname="upload_file";

$conn = new mysqli($server,$username,$password,$dbname);

if($conn->connect_error){
    die("Connection failed" .$conn->connect_error);
}
$filename = 'Absen Ijin Shalat Karyawan Mini Gold-'.date('Y-m-d').'.csv';

$query = "SELECT * FROM ijin";
$result = mysqli_query($conn,$query);

$array = array();

$file = fopen($filename,"w");
$array = array("Nama","Shalat Dzuhur","Shalat Ashar","Malas Shalat","Lagi Meeting","Tidak Masuk Kantor","Cape Shalat Terus","Lagi Berhalangan Shalat","Lagi Di Luar Kantor","Tanggal Ijin Shalat");
fputcsv($file,$array);
while($row = mysqli_fetch_array($result)){
    $STUDENTID =$row['nama'];
    $dzuhur =$row['dzuhur'];
    $ashar =$row['ashar'];
    $checkbox1 =$row['checkbox1'];
    $checkbox2 =$row['checkbox2'];
    $checkbox3 =$row['checkbox3'];
    $checkbox4 =$row['checkbox4'];
    $checkbox5 =$row['checkbox5'];
    $checkbox6 =$row['checkbox6'];
    $LOGDATE =$row['LOGDATE'];
    $array = array($STUDENTID,$dzuhur,$ashar,$checkbox1,$checkbox2,$checkbox3,$checkbox4,$checkbox5,$checkbox6,$LOGDATE);
    fputcsv($file,$array);
}
fclose($file);

header("Content-Description: File Transfer");
header("Content-Disposition: Attachment; filename=$filename");
header("Content-type: application/csv;");
readfile($filename);
unlink($filename);
exit();

?>