<?php session_start();?>
<html>
    <head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <title>Iqshan</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/instascan.min.js"></script>
		<link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
		<link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="website icon" type="png" href="mg.png">
		<style>
		#divvideo{
			 box-shadow: 0px 0px 1px 1px rgba(0, 0, 0, 0.1);
		}
		</style>
		  <style>
    body {
      background-image: url(32.gif);
      background-size: cover;
      background-attachment: fixed;
    }

    p {
      color: black
    }

    h4 {
      color: black
    }
  </style>
  <style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}
</style>
    </head>
    <body >
     <nav class="navbar" style="background:#EEE8AA">
		  <div class="container-fluid">
			<div class="navbar-header">
			<div class="brand logo">
      <a href="index.php" title="Home" rel="home" class="site-branding__logo">
        <img src="logo-minigold-small.png" alt="Home">
      </a>
    </div>
			</div>
            
			<ul class="nav navbar-nav navbar-right">
			  </li>
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-download-alt"></span> Export Data Excel <span class="caret"></span></a>
				<ul class="dropdown-menu">
        <li><a href="export.php"><span class="glyphicon glyphicon-download"></span> Export Data Table Absen Shalat Dzuhur Karyawan Mini Gold</a></li>
                <li><a href="export1.php"><span class="glyphicon glyphicon-download"></span> Export Data Table Absen Shalat Ashar Karyawan Mini Gold</a></li>
                <li><a href="export2.php"><span class="glyphicon glyphicon-download"></span> Export Data Table Absen Ijin Shalat Karyawan Mini Gold</a></li>
				</ul>
              <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-cog"></span> Scanner QR Code <span class="caret"></span></a>
				<ul class="dropdown-menu">
                <li><a href="dzuhur.php"><span class="glyphicon glyphicon-qrcode"></span> Absen Shalat Dzuhur</a></li>
                <li><a href="ashar.php"><span class="glyphicon glyphicon-qrcode"></span> Absen Shalat Ashar</a></li>
				</ul>
        </li>
			</ul>
		  </div>
		</nav>
       <br><br><br><br><br>
       <div class="container">
            <div class="row">
                <div class="col-md-4" style="padding:10px;background:#fff;border-radius: 20px;" id="divvideo">
					<center><p class="login-box-msg"> <i class="glyphicon glyphicon-camera"></i> Scan Disini</p></center>
                    <video id="preview" width="100%"  style="border-radius:20px;"></video>
					<br>
					<br>
					<?php
					if(isset($_SESSION['error'])){
					  echo "
						<div class='alert alert-danger alert-dismissible' style='background:red;color:#fff'>
						  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
             
						  <h4><i class='icon fa fa-warning'></i> Error!</h4>
						  ".$_SESSION['error']."
						</div>
					  ";
					  unset($_SESSION['error']);
					}
					if(isset($_SESSION['success'])){
					  echo "
						<div class='alert alert-success alert-dismissible' style='background:green;color:#fff'>
						  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
						  <h4><i class='icon fa fa-check'></i> Success!</h4>
						  ".$_SESSION['success']."
						</div>
					  ";
					  unset($_SESSION['success']);
					}
				  ?>
                </div>
                 <div class="col-md-8">
                 <form action="database4.php" method="post" class="form-horizontal" style="border-radius: 5px;padding:10px;background:#fff;" id="divvideo">
                     <i class="glyphicon glyphicon-qrcode"></i> <label>Absen Ijin Tidak Shalat</label> <p id="time"></p>
                    <input type="text" name="nama" id="text" placeholder="Nama" class="form-control" autofocus>
                    <br>
                    <form action="#">
                    <section class="qc" id="about">
        <div class="container">
            <div class="row mb-4">
                <div class="col text-center">
                 
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-1">
                <label for="alasan">Shalat :</label>  <br>
      <input type="checkbox" name="dzuhur" value="1"> Dzuhur<br>
       <input type="checkbox" name="ashar" value="1"> Ashar<br>    
                </div>
                <div class="col-md-3">
                   <fieldset>
          <div>
      <label for="alasan">Alasan Ijin</label>
     <BR>
       <input type="checkbox" name="checkbox1" value="1"> Malas Shalat<br>
       <input type="checkbox" name="checkbox2" value="1"> Lagi Meeting<br>
       <input type="checkbox" name="checkbox3" value="1"> Tidak Masuk Kantor<br>
      <input type="checkbox" name="checkbox4" value="1"> Cape Shalat Terus <br>
       <input type="checkbox" name="checkbox5" value="1"> Lagi Berhalangan Shalat<br>
      <input type="checkbox" name="checkbox6" value="1"> Lagi Di Luar Kantor <br>
       
</fieldset>
                </div>
                <div class="row justify-content-center">
                <div class="col-md-6">
                <input type="submit" class="button button1" name="submit" value="Simpan">
                </div>
            </div>
        </div>
    </section>
     
</form>
				<div style="border-radius: 5px;padding:10px;background:#fff;" id="divvideo">
        <p>Data Ijin Absen Shalat </p>         
        <table id="example1" class="table table-bordered">
                    <thead>
                        <tr>                          
                            <td><h5> Nama</h5></td>
                            <td> <h5>Shalat Dzuhur</h5></td>
                            <td> <h5>Shalat Ashar</h5></td>
                            <td><h5> Malas Shalat</h5></td>
                            <td><h5> Lagi Meeting</h5></td>
                            <td> <h5>Tidak Masuk Kantor</h5></td>
                            <td><h5> Cape Shalat Terus</h5></td>
                            <td><h5> Lagi Berhalangan Shalat</h5></td>
                            <td><h5> Lagi Di Luar Kantor</h5></td>
                            <td><h5>Tanggal Ijin Shalat</h5></td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $server = "localhost";
                        $username="root";
                        $password="";
                        $dbname="upload_file";
                    
						session_unset();
						session_destroy();
                        $conn = new mysqli($server,$username,$password,$dbname);
						$date = date('Y-m-d');
                        if($conn->connect_error){
                            die("Connection failed" .$conn->connect_error);
                        }
                           $sql ="SELECT * FROM ijin WHERE DATE(LOGDATE)=CURDATE()";
                           $query = $conn->query($sql);
                           while ($row = $query->fetch_assoc()){
                        ?>
                            <tr>
                                <td><?php echo $row['nama'];?></td>
                                <td><?php echo $row['dzuhur'];?></td>
                                <td><?php echo $row['ashar'];?></td>
                                <td><?php echo $row['checkbox1'];?></td>
                                <td><?php echo $row['checkbox2'];?></td>
                                <td><?php echo $row['checkbox3'];?></td>
                                <td><?php echo $row['checkbox4'];?></td>
                                <td><?php echo $row['checkbox5'];?></td>
                                <td><?php echo $row['checkbox6'];?></td>
                                <td><?php echo $row['LOGDATE'];?></td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                  </table>
                </div>
                </div>
            </div>
						
        </div>
				<script>
			function Export()
			{
				var conf = confirm("Please confirm if you wish to proceed in exporting the attendance in to Excel File");
				if(conf == true)
				{
					window.open("export.php",'blank');
				}
			}
		</script>				
        <script>
           let scanner = new Instascan.Scanner({ video: document.getElementById('preview')});
           Instascan.Camera.getCameras().then(function(cameras){
               if(cameras.length > 0 ){
                   scanner.start(cameras[0]);
               } else{
                   alert('No cameras found');
               }

           }).catch(function(e) {
               console.error(e);
           });
  scanner.addListener('scan',function(c){
    document.getElementById('text').value=c;
              const obj = JSON.parse(c);
              alert(obj.uuid);
              document.getElementById('text');
               document.forms[0].submit();
           });
           
        </script>
		<script type="text/javascript">
		var timestamp = '<?=time();?>';
		function updateTime(){
		  $('#time').html(Date(timestamp));
		  timestamp++;
		}
		$(function(){
		  setInterval(updateTime, 1000);
		});
		</script>
		<script src="plugins/jquery/jquery.min.js"></script>
		<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
		<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
		<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

		<script>
		  $(function () {
			$("#example1").DataTable({
			  "responsive": true,
			  "autoWidth": false,
			});
			$('#example2').DataTable({
			  "paging": true,
			  "lengthChange": false,
			  "searching": false,
			  "ordering": true,
			  "info": true,
			  "autoWidth": false,
			  "responsive": true,
			});
		  });
		</script>
    </body>
</html>