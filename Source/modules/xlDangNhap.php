<?php
    session_start();
    include "../lib/DataProvider.php";
    if(isset($_POST["txtUS"]) && isset($_POST["txtPS"]))
    {
        $us = $_POST["txtUS"];
        $ps = $_POST["txtPS"];
        $sql = "SELECT * FROM taikhoan
                WHERE BiXoa = 0
                    AND TenDangNhap = '$us'
                    AND MatKhau = '$ps'";
        $result = DataProvider::ExecuteQuery($sql);
        $row = mysqli_fetch_array($result);
        if($row == null)
        {
            $curURL = $_SESSION["path"];
            DataProvider::ChangeURL("../..".$curURL."&err=1");
        }
        else {
            $_SESSION["MaTaiKhoan"] =$row["MaTaiKhoan"];
            $_SESSION["MaLoaiTaiKhoan"] = $row["MaLoaiTaiKhoan"];
            $_SESSION["TenHienThi"] = $row["TenHienThi"];
            if($row["MaLoaiTaiKhoan"] == 2)
            {
                DataProvider::ChangeURL("../admin/index.php");
            }
            else{
                DataProvider::ChangeURL("../index.php");
            }
        }
    }
  
?>