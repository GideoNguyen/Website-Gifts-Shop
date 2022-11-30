<div class="user-wrapper">
    <div class="user-nav">
        <a href="index.php?a=6&sub=1" class="float-left">ĐĂNG NHẬP</a>
        <a href="index.php?a=6&sub=2" class="float-left active">ĐĂNG KÝ</a>
    </div>
    <?php
    if(isset($_SESSION["captcha_code"]))
    {
        $captcha = $_SESSION["captcha_code"];
    }
    if(isset($_GET["err"]))
    {
        if ($_GET["err"] == 1)
        {
        ?>
        <div>
            <span class="err">  (*)Tên đăng nhập đã tồn tại, đăng ký không thành công</span>
        </div>
        <?php
        }
        else{
        ?>
        <div>
            <span class="err">  (*)Đăng ký không thành công</span>
        </div>
        <?php
        }
    }
    ?>
    <form action="modules/xlDangKy.php" method="POST" name="frmLogin" id="formAcount" onsubmit="return KiemTra()">
        <div>
            <input type="text" placeholder="Nhập tên đăng nhập" id="us" name="us" required pattern="^[A-Za-z0-9_]{5,24}$" 
            title="Tên đăng nhập không có khoảng trắng và các ký tự đặc biệt, phải có độ dài từ 5-24">
        </div>
        <div>
            <input type="password" id="ps" name="ps" required placeholder="Nhập mật khẩu" pattern="^[A-Za-z0-9_]{5,24}$"
            title="Mật khẩu không có khoảng trắng và các ký tự đặc biệt, phải có độ dài từ 5-24">
        </div>
        <div>
            <input type="password" id="rps" name="rps" required placeholder="Nhập lại mật khẩu">
        </div>
        <div>
            <span class="err" id="errPS"></span>
        </div>
        <div>
            <input type="text" placeholder="Nhập tên hiển thị" id="name" name="name" required>
        </div>
        <div>
            <input type="text" placeholder="Nhập địa chỉ" id="add" name="add" required>
        </div>
        <div>
            <input type="text" placeholder="Nhập số điện thoại" id="tel" name="tel" required pattern="^[0-9_]{9,12}$"
            title="Số điện thoại chỉ gồm số và có độ dài hơn 9 số">
        </div>
        <div>
            <input type="email" name="mail" id="mail" placeholder="Nhập email" required>
        </div>
        <div>
            <script>
                function refreshCaptcha() {
                    $("#captcha_code").attr('src','pages/TaoTaiKhoan/captcha_code.php');
                }
                $(document).ready(function(){
                document.getElementById(refreshCaptcha()).click();
                });
            </script>
            <span id="captcha-info" class="info"></span>
            <input type="text" name="captcha" id="captcha" class="demoInputBox" placeholder="Nhập capcha">
        </div>
        <div>
            <img id="captcha_code" src="captcha_code.php" />
        </div>
        <div>
                <input type="hidden" name="captcha_check" id="captcha_check" value="<?php echo $captcha?>">
        </div>
        <div>
            <span class="err" id="errCAPCHA"></span>
        </div>
        <div>
        <div class="user-foot text-center">
            <button type="submit" class="btn-pink" id="btnsignin">ĐĂNG KÝ</button>
        </div>
        
    </form>
</div>

<script type="text/javascript">
    function KiemTra()
    {
        var co = true;
        var control = document.getElementById('ps');
        control1 = document.getElementById('rps');
        err = document.getElementById('errPS');
        if(control.value != control1.value)
        {
            co = false;
            err.innerHTML = "(*) Nhập lại mật khẩu không trùng với mật khẩu";
            control1.focus();
        }else
        {
            err.innnerHTML = "";
        }
        //var control = document.getElementById('captcha');
        //control1 = document.getElementById('captcha_check');
        //err = document.getElementById('errCAPCHA');
        //if(captcha_check != control)
        //{
        //    co = false;
        //    err.innerHTML = "(*) Nhập lại capcha không trùng";
        //    control.focus();
       // }else
        //{
       //     err.innnerHTML = "";
       // }
        return co;
    }
</script>
