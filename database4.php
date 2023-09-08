<?php
    session_start();
    $host="localhost";
    $user="root";
    $password="";
    $db="upload_file";
    
    $kon = mysqli_connect($host,$user,$password,$db);
    if (!$kon){
          die("Koneksi gagal:".mysqli_connect_error());
    }

    if(isset($_POST['nama'])){
        
        $text =$_POST['nama'];
		$dzuhur = isset($_POST['dzuhur']) ? 'V' : 'X';
		$ashar = isset($_POST['ashar']) ? 'V' : 'X';
		$checkbox1 = isset($_POST['checkbox1']) ? 'V' : 'X';
		$checkbox1 = isset($_POST['checkbox1']) ? 'V'  : 'X';
        $checkbox2 = isset($_POST['checkbox2']) ? 'V'  : 'X';
        $checkbox3 = isset($_POST['checkbox3']) ? 'V'  : 'X';
		$checkbox4 = isset($_POST['checkbox4']) ? 'V'  : 'X';
        $checkbox5 = isset($_POST['checkbox5']) ? 'V'  : 'X';
        $checkbox6 = isset($_POST['checkbox6']) ? 'V'  : 'X';
		$date = date('Y-m-d');
		date_default_timezone_set('Asia/Jakarta');
		$time = date('H:i:s');
		$sql ="SELECT * FROM ijin WHERE nama='$text' AND LOGDATE='$date'  AND dzuhur='$dzuhur'  AND ashar='$ashar' AND checkbox1='$checkbox1' AND checkbox2='$checkbox2' AND checkbox3='$checkbox3' AND checkbox4='$checkbox4' AND checkbox5='$checkbox5' AND checkbox6='$checkbox6' ";
		$query=$kon->query($sql);
		if($query->num_rows>0){
			$sql = "UPDATE ijin SET time_scan='$time' WHERE nama='$text' AND LOGDATE='$date'  AND dzuhur='$checdzuhurkbox1' AND ashar='$ashar' AND checkbox1='$checkbox1' AND checkbox2='$checkbox2' AND checkbox3='$checkbox3' AND checkbox4='$checkbox4' AND checkbox5='$checkbox5' AND checkbox6='$checkbox6'";
			$query=$kon->query($sql);
			$_SESSION['success'] = 'Scan QR Code Berhasil';
		}else{
			$sql = "INSERT INTO ijin(nama,time_scan,LOGDATE,dzuhur,ashar,checkbox1,checkbox2,checkbox3,checkbox4,checkbox5,checkbox6) VALUES('$text','$time','$date','$dzuhur','$ashar','$checkbox1','$checkbox2','$checkbox3','$checkbox4','$checkbox5','$checkbox6')";
			if($kon->query($sql) ===TRUE){
			 $_SESSION['success'] = 'Scan QR Code Berhasil';
			 }else{
			  $_SESSION['error'] = $kon->error;
		   }	
		}
		  
	}else{
		$_SESSION['error'] = 'Silahkan Scan nama QR CODE';
	}
    header("location: ijin.php");
	   
    $kon->close();
?>