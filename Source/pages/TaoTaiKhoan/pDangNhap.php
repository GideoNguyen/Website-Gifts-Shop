<div class="user-wrapper">
    <div class="user-nav">
        <a href="index.php?a=6&sub=1" class="active float-left">ĐĂNG NHẬP</a>
        <a href="index.php?a=6&sub=2" class="float-left">ĐĂNG KÝ</a>
    </div>
    <?php
    if(isset($_GET["err"]))
    {
        ?>
        <div>
            <span class="err">(*)Tên đăng nhập hoặc mật khẩu không đúng</span>
        </div>
        <?php
    }
    ?>
    <form action="modules/xlDangNhap.php" method="POST" name="frmLogin" id="formAcount">
        <div>
            <input type="text" placeholder="Nhập tên đăng nhập" id="us" name="txtUS" required pattern="^[A-Za-z0-9_]{5,24}$" 
            title="Tên đăng nhập không có khoảng trắng và các ký tự đặc biệt, phải có độ dài từ 5-24">
        </div>
        <div >
            <input type="password" id="ps" name="txtPS" required placeholder="Nhập mật khẩu"  pattern="^[A-Za-z0-9_]{5,24}$"
                title="Mật khẩu không có khoảng trắng và các ký tự đặc biệt, phải có độ dài từ 5-24">
        </div>
        <div class="user-foot text-center">
            <button type="submit" class="btn-pink" id="btnsignin">ĐĂNG NHẬP</button>
        </div>
    </form>
</div>