<?php
include("conn.php");
include_once("auth_admin.php");

$json["STATUS"] = array();
$json["MESSAGE"] = array();


        if (isset($_POST['id']) && isset($_POST['nama']) && isset($_POST['noktp']) && isset($_POST['nohp']) && isset($_POST['alamat'])) {
            $id = $_POST['id'];
            $nama = $_POST['nama'];
            $nohp = $_POST['nohp'];
            $noktp = $_POST['noktp'];
            $alamat = $_POST['alamat'];
            $json["STATUS"] = array();
            $json["MESSAGE"] = array();

            // Enkripsi Password
            // $u_password = password_hash($u_password, PASSWORD_DEFAULT);
            $sql = "UPDATE tbuser SET nama = '$nama', noktp = '$noktp', nohp = '$nohp', alamat = '$alamat' WHERE id = '$id'";
            $result = mysqli_query($con, $sql);
            if ($result) {
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