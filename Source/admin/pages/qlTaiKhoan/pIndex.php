<h1 class="text-center text-danger col-12">
Quản lý tài khoản </h1>
<?php 
    $a = 1;
    if(isset($_GET["a"]))
        $a = $_GET["a"];
    switch($a)
    {
        case 1:
            include "pages/qlTaiKhoan/pDanhSach.php";
            break;
        case 2:
            include "pages/qlTaiKhoan/pCapNhat.php";
            break;
        case 3:
            include "pages/qlTaiKhoan/pSearch.php";
            break;
        default:
            include "pages/Error.php";
            break;
    }
?>
