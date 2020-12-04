<?php
include("conn.php");
if (isset($_POST['kode']) && isset($_POST['jenis']) && isset($_POST['merk']) && isset($_POST['warna']) && isset($_POST['hargasewa'])) {
  $kode = $_POST['kode'];
  $jenis = $_POST['jenis'];
  $merk = $_POST['merk'];
  $warna = $_POST['warna'];
  $hargasewa = $_POST['hargasewa'];
  $json["STATUS"] = array();
  $json["MESSAGE"] = array();

  // Enkripsi Password
  // $u_password = password_hash($u_password, PASSWORD_DEFAULT);
//   $query = "SELECT * FROM tbsepeda ";
//   $check = mysqli_num_rows(mysqli_query($con, $query));

    $sql = "INSERT INTO tbsepeda ( kode, jenis, merk, warna, hargasewa) VALUES ( '$kode', '$jenis', '$merk', '$warna', '$hargasewa')";
    if ($con->query($sql)) {
		$json["STATUS"] = "SUCCESS";
		$json["MESSAGE"] = "SUCCESS";
	} else {
		$json["STATUS"] = "FAILED";
		$json["MESSAGE"] = mysqli_error($con);
	}

} else {
    $json["STATUS"] = "FAILED";
    $json["MESSAGE"] = "INPUT NOT FOUND";
}

echo json_encode($json);
mysqli_close($con);