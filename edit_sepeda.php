<?php
include("conn.php");
// include_once("auth_admin.php");

$json["STATUS"] = array();
$json["MESSAGE"] = array();

if (isset($_POST['id']) && isset($_POST['kode']) && isset($_POST['jenis']) && isset($_POST['merk']) && isset($_POST['warna']) && isset($_POST['hargasewa'])) {
    $id = $_POST['id'];
    $kode = $_POST['kode'];
    $jenis = $_POST['jenis'];
    $merk = $_POST['merk'];
    $warna = $_POST['warna'];
    $hargasewa = $_POST['hargasewa'];
    $json["STATUS"] = array();
    $json["MESSAGE"] = array();

    // Enkripsi Password
    // $u_password = password_hash($u_password, PASSWORD_DEFAULT);
    $sql = "UPDATE tbsepeda SET kode = '$kode', jenis = '$jenis', merk = '$merk', warna = '$warna', hargasewa = '$hargasewa' WHERE id = '$id'";
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