<div class="container">
	<div class="title">
		<a href="#" class="h2">Tất cả sản phẩm</a>
	</div>
	<div class="row">
	<?php 
    	$sql = "SELECT * FROM sanpham WHERE BiXoa = 0";
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