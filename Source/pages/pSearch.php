<div class="container">
    <?php 
        if (isset($_GET["q"]))
            $q = $_GET["q"];
        else{
            DataProvider::ChangeURL("index.php?a=404");
		}
		if (isset($_GET["tieuChi"]))
			$tieuChi = $_GET["tieuChi"];
		else{
            DataProvider::ChangeURL("index.php?a=404");
	}
    ?>
    <div class="title">
        <a href="#" class="h2">Giá trị tìm kiếm: <?php echo $q;?></a>
    </div>
    <div class="row">
	<?php 

		if($tieuChi == "Ten")
			$sql = "SELECT * FROM sanpham WHERE BiXoa = 0 AND TenSanPham LIKE '%$q%'";
		else if($tieuChi =="Loai")
			$sql = "SELECT * FROM sanpham s, chitietloaisanpham l WHERE s.BiXoa = 0 AND l.BiXoa = 0 AND s.MaChiTietLoaiSanPham = l.MaChiTietLoaiSanPham
																		AND l.TenChiTietLoaiSanPham LIKE '%$q%'";
		else if($tieuChi =="Hang")
			$sql = "SELECT * FROM sanpham s, hangsanxuat h WHERE s.BiXoa = 0 AND h.BiXoa = 0 AND s.MaHangSanXuat = h.MaHangSanXuat
			AND h.TenHangSanXuat LIKE '%$q%'";			
		else
		{	
			if(!ctype_digit($q))
			{
				$q = -999999;
			}
			$sql = "SELECT * FROM sanpham WHERE BiXoa = 0 AND GiaSanPham > $q-20000 AND GiaSanPham < $q+20000";
		}							
		$result = DataProvider::ExecuteQuery($sql);	
		if($row = mysqli_fetch_array($result) == null)
		{
			?>
				<h4 class="text-danger" >Không tìm thấy sản phẩm phù hợp</h4>
			<?php
		}
		while($row = mysqli_fetch_array($result))
		{
			?>
			<div class="col-3">
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



