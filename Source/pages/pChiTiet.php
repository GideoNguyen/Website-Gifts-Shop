<?php
    if(isset($_GET["id"]))
    {
        $id = $_GET["id"];
    }
    else{
        DataProvider::ChangeURL("index.php?a=404");
    }
    $sql = "SELECT * FROM sanpham WHERE BiXoa = 0 AND MaSanPham = $id";
    $result = DataProvider::ExecuteQuery($sql);
    $row = mysqli_fetch_array($result);
?>
<br>
<div class="container">
    <div class="row">
        <div class="col-6">
            <img src="images/<?php echo $row["HinhURL"];?>" alt="<?php echo $row["TenSanPham"];?>" class="w-100">
        </div>
        <div class="col-6">
            <div>
                <span class="productname"><?php echo $row["TenSanPham"];?></span>
            </div>
            <div >
                <span class="label"> Giá: </span>
                <span class="price"><?php echo $row["GiaSanPham"];?>đ</span>
            </div>
            <div>
                <span class="label">Loại sản phẩm:</span>
                <?php 
                    $sql = "SELECT TenChiTietLoaiSanPham FROM chitietloaisanpham WHERE BiXoa = 0 AND MaChiTietLoaiSanPham = ".$row["MaChiTietLoaiSanPham"];
                    $result = DataProvider::ExecuteQuery($sql);
                    $rowz = mysqli_fetch_array($result);
                ?>
                <span class="data"><?php echo $rowz["TenChiTietLoaiSanPham"];?></span>
            </div>
            <div>
            <span class="label">Hãng sản xuất:</span>
                <?php 
                    $sql = "SELECT TenHangSanXuat FROM hangsanxuat WHERE BiXoa = 0 AND MaHangSanXuat = ".$row["MaHangSanXuat"];
                    $result = DataProvider::ExecuteQuery($sql);
                    $rowz = mysqli_fetch_array($result);
                ?>
                <span class="data"><?php echo $rowz["TenHangSanXuat"];?></span>
            </div>
            <div>
                <span class="label">Số lượng tồn:</span>
                <span class="data"><?php echo $row["SoLuongTon"]?></span>
            </div>
            <div>
                <span class="label">Số lượt xem:</span>
                <span class="data"><?php echo $row["SoLuocXem"]+1;?> lượt</span>
            </div>
            <div >
                <span class="info"><?php echo $row["MoTa"];?></span>
            </div>
            <div class="giohang">
            <?php
                if(isset($_SESSION["MaTaiKhoan"]))
                {
                    
                    ?>
                            <a href="index.php?a=5&id=<?php echo $row["MaSanPham"];?>" class="text-decoration-none text-white">
                                <div class="user-foot text-center">
                                    <button type="submit" class="btn-pink" id="btnsignin">THÊM VÀO GIỎ HÀNG</button>
                                </div>
                            </a>
                    <?php
                }
                else{
                    ?>
                        <a href="index.php?a=6&sub=1" class="text-decoration-none"><span class="text-danger">ĐĂNG NHẬP ĐỂ CÓ THỂ MUA SẢN PHẨM</span></a>
                    <?php
                }
            ?>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="title">
		<a href="#" class="h2">Sản phẩm cùng loại</a>
	</div>
    <div class="row">
	<?php 
		$sql = "SELECT * FROM sanpham WHERE BiXoa = 0 AND MaChiTietLoaiSanPham = ".$row["MaChiTietLoaiSanPham"]." ORDER BY SoLuocXem DESC LiMIT 0, 5";
		$result = DataProvider::ExecuteQuery($sql);
		while($row = mysqli_fetch_array($result))
		{
			?>
			<div class="col">
				<div class="card product-item">
					<img class="card-img-top" src="images/<?php echo $row["HinhURL"]?>" alt="<?php echo $row["MoTa"];?>">
					<div class="card-body">
						<h4 class="card-title"><?php echo $row["TenSanPham"];?></h4>
						<p class="card-text"><b>Giá: <span class="text-danger"><?php echo $row["GiaSanPham"];?>đ</span></b></p>
						<a href="index.php?a=8&id=<?php echo $row["MaSanPham"];?>" class="btn btn-primary">CHI TIẾT</a>
					</div>
				</div>
			</div>
			<?php
		}
	?>
	</div>
</div>

<?php
    $SoLuocXem = $row["SoLuocXem"] +1;
    $sql = "UPDATE SanPham SET SoLuocXem = $SoLuocXem
            WHERE MaSanPham = $id";
    DataProvider::ExecuteQuery($sql);
?>