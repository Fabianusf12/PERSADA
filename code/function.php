<?php
session_start();
//membuat koneksi ke database
$conn = mysqli_connect("localhost", "root","","latihan_db");

//Menambah siswa baru 
if(isset($_POST['addnewsiswa'])){
    $namasiswa = $_POST["namasiswa"];
    $jurusan = $_POST["jurusan"];
    $nik = $_POST["nik"];

    $addtotable = mysqli_query($conn, "insert into nik (namasiswa, jurusan, nik) values('$namasiswa','$jurusan','$nik')");
    if($addtotable){
        header('location:index.php');
    }else {
        echo 'Gagal';
        header('location:index.php');
    }
}

