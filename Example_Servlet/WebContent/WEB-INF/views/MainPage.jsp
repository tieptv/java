<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Assignt ment 1</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="styles1.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body style="margin: auto;max-width:1300px;" onload="readCookie();">

    <!--cau1-->
    <div style="clear: both;height: 500px;">
        <div id="container">
            <img id="img1" src="./img/logo-lisaho.png">
            <img id="img2" src="./img/logo-southbank.png">
            <h3 id="sdt"> HOTLINE:037483748347847</h3>
            <button onclick="openform()" id="login_btn">Login</button>
        </div>
        <div id="background_image">
            <div id="input_image">
                <div id="div_form">
                    <form id="login_form" name="cookieForm" style="padding-left:40px;" onsubmit="setCookie();" action="Assignt_mentday1.html"
                        method="POST">
                        <h3 style="margin-left: 60px;">LOGIN</h3>
                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="username" placeholder="UserName"><br>

                        <label for="lname">PassWord</label>
                        <input type="password" id="lname" name="pwd" placeholder="password"><br>

                        <label for="country">Remember me</label>
                        <br>
                        <input type="checkbox" name="persist">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </div>

    </div>
    <br>
    <br>
    <br>
    <br>
    <!--cau 2-->
    <div style="height: 450px">
        <div>
            <img id="landpage3" src="./img/Landing-page_03.gif">
        </div>

        <div id="div_step_out">
            <div id="step_out">
                <ul class="step_in" style="list-style: none">
                    <li>
                        <div class="div_step">
                            <img class="step_img" src="./img/step-1.png">
                        </div>
                    </li>
                    <li>
                        <h3 class="step_text">BƯỚC 1:ĐĂNG KÝ</h3>
                    </li>
                    <li>
                    Đăng kí để lại thông tin của bạn
                </li>
                </ul>
                <ul class="step_in" style="list-style: none">
                    <li>
                        <div class="div_step"> <img class="step_img" src="./img/step-2.png"></div>
                    </li>
                    <li>
                        <h3 class="step_text">BƯỚC 2:ĐƯỢC TƯ VẤN TỪ BỘ PHẬN TUYỂN SINH</h3>
                    </li>
                    <li>Chuyên gia tư vấn của chúng tôi sẽ giúp bạn chọn ngành học phù hợp </li>
                </ul>
                <ul class="step_in" style="list-style: none">
                    <li>
                        <div class="div_step"><img class="step_img" src="./img/step-3.png"></div>
                    </li>
                    <li>
                        <h3 class="step_text">BƯỚC 3:HOÀN THÀNH HỒ SƠ</h3>
                    </li>
                    </li>
                    <li>
                        Chuyên gia tư vấn của chúng tôi sẽ hỗ trợ bạn hoàn thành hồ sơ nhập học và visa chu đáo
                    </li>
                </ul>
                <ul class="step_in" style="list-style: none">
                    <li>
                        <div class="div_step"> <img class="step_img" src="./img/step-4.png"></div>
                    </li>
                    <li>
                        <h3 class="step_text">BƯỚC 4:TRẢI NGHIỆM HỌC TẬP QUỐC TẾ</h3>
                    </li>
                    <li>
                        Bắt đầu học tập tại môi trường giáo dục hàng đầu thế giới
                    </li>
                </ul>
            </div>
        </div>
        <div>
            <img id="btn2" src="./img/btn-orange.png">
        </div>
    </div>
    <!------->
    <!--cau 3-->
    <div style="background-color: pink;height: 400px;">
        <div style="height: 100px;">
            <img id="lanpage7" src="./img/Landing-page_07.gif">
        </div>
        <div style=" height:300px">
            <div id="div_ul3">
                <ul class="benefit_ul" style="list-style: none">
                    <li>
                        <img src="./img/benefit-1.jpg">
                    </li>
                    <li style="text-align: center">
                        Không cần thi đầu vào
                    </li>
                </ul>
                <ul class="benefit_ul" style="list-style: none">
                    <li>
                        <img src="./img/benefit-2.jpg">
                    </li>
                    <li style="text-align: center">
                        Không cần chứng minh tài chính
                    </li>
                </ul>
                <ul class="benefit_ul" style="list-style: none">
                    <li>
                        <img src="./img/benefit-3.jpg">
                    </li>
                    <li style="text-align: center">
                        Học phí và phí sinh hoạt cạnh tranh
                    </li>
                </ul>

                <ul class="benefit_ul" style="list-style: none">
                    <li>
                        <img src="./img/benefit-4.jpg">
                    </li>
                    <li style="text-align: center">
                        Đôi ngũ giáo viên là những chuyên gia trong các lĩnh vực chuyên môn, giàu kinh nghiệm trong
                        việc giảng dạy học sinh quốc tế
                    </li>
                </ul>

                <ul class="benefit_ul" style="list-style: none">
                    <li>
                        <img src="./img/benefit-5.jpg">
                    </li>
                    <li style="text-align: center">
                        250 chương trình chuyển tiếp vào các trường Đại học hàng đầu của Úc sẽ giúp sinh viên hoàn
                        thành con đường học vấn đỉnh cao
                    </li>
                </ul>

                <ul class="benefit_ul" style="list-style: none">
                    <li>
                        <img src="./img/benefit-6.jpg">
                    </li>
                    <li style="text-align: center">
                        Sau khi tốt nghiệp học sinh được phép ở lại làm việc thêm 2 năm tại Úc
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!---------->
    <!--cau 4-->
    <div style="background-color: #DAA520;height: 600px; ">
        <div id="div_benefit2_bg">
            <div style="position: relative;height: 100px">
                <img id="landpage11" src="./img/Landing-page_11.gif">
            </div>
            <div style="position: relative;height: 400px">
                <div id="div_ul4">
                    <ul class="benefit_ulv2 " style="list-style: none;margin-left: 5%">
                        <li>
                            <img src="./img/benefit-2-1.png">
                        </li>
                        <li>
                        <li>
                            <h3> Về chúng tôi </h3>
                        </li>
                        <li>
                            Công ty tư vấn du học LisaHo do ông Kelvin Chu- người Úc, có nhiều năm
                            kinh nghiệm trong lĩnh vực giáo dục và đào tạo nghề tại Úc thành lập.
                            Là đại diện tuyển sinh chính thức của Học viện công nghệ SouthBank.

                        </li>
                    </ul>
                    <ul class="benefit_ulv2" style="list-style: none">
                        <li>
                            <img src="./img/benefit-2-2.png">
                        </li>
                        <li>
                            <h3> Giá trị "3C" </h3>
                        </li>
                        <li>
                            Học sinh nhận được sự tư vấn hoàn thiện:
                            <div style="padding: 0px;">
                                <br>
                                -Củng cố nền tảng
                                <br>
                                <br>
                                -Chọn trường phù hợp
                                <br>
                                <br>
                                -Cơ hội nghề nghiệp
                            </div>
                        </li>
                    </ul>
                    <ul class="benefit_ulv2" style="list-style: none">
                        <li>
                            <img src="./img/benefit-2-3.png">
                        </li>
                        <li>
                            <h3>Miễn phí tư vấn 100%</h3>
                        </li>
                        <li>
                            Tất cả các chuyên gia tư vấn luôn sát cánh bên bạn, giúp bạn lựa chọn đúng đắn
                            để đạt mục tiêu và ước mơ du học.
                        </li>
                    </ul>
                    <ul class="benefit_ulv2" style="list-style: none">
                        <li>
                            <img src="./img/benefit-2-4.png">
                        </li>
                        <li>
                            <h3>Quà tặng giá trị</h3>
                        </li>
                        <li>
                            <ol type="1">
                                <li>Voucher $200 khóa học "Tạo đột phá" của Trường Doanh nhân Dale Carnegie</li>
                                <li>Hỗ trợ $200 phí vé máy bay </li>
                                <li>Hỗ trợ $200 lệ phí IELTS</li>
                            </ol>
                            (*)Học sinh được chọn 1.
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!---------->
    <!---caa5--->
    <div style="height: 450px">
        <div>
            <img id="landpage15" src="./img/Landing-page_15.gif">
        </div>
        <div>
            <div id="div_huongnghiep" style="height: 300px;">
                <img class="object_class" src="./img/object-left.png">
                <img class="object_class" src="./img/object-right.png">
            </div>
        </div>
        <div>
            <img id="btn3" src="./img/btn-orange.png">
        </div>
    </div>
    <!---------->
    <!-----cau6---->
    <div style="height: 300px;background-color:	#7FFFD4">
        <div>
            <img id="landpage19" src="./img/Landing-page_19.gif">
        </div>
        <div id="divlan19">
            <ul class="ul_uni">
                <li><img src="./img/University-1.jpg"></li>
                <li>
                    Australian Cathonic University
                </li>
            </ul>
            <ul class="ul_uni">
                <li><img src="./img/University-2.jpg"></li>
                <li>Central Queensland University</li>
            </ul>
            <ul class="ul_uni">
                <li><img src="./img/University-3.jpg"></li>
                <li> University of Sunshine Coast</li>
            </ul>
            <ul class="ul_uni">
                <li><img src="./img/University-4.jpg"></li>
                <li>Queensland University of Technology</li>
            </ul>
            <ul class="ul_uni">
                <li><img src="./img/University-5.jpg"></li>
                <li>Southern Cross University</li>
            </ul>
            <ul class="ul_uni">
                <li><img src="./img/University-6.jpg"></li>
                <li> University of Southern Queensland</li>
            </ul>
            <ul class="ul_uni">
                <li><img src="./img/University-7.jpg"></li>
                <li> Griffith University</li>
            </ul>
        </div>
    </div>
    <!------------->
    <!---cau7-->
    <div style="height:500px; background-size: cover; background-image:url('./img/emotion-bg.jpg');
    background-repeat: no-repeat;">
        <div id="slideImg" style="height:500px; background-image:url('./img/Slide1.png');
        background-repeat: no-repeat;">
            <button id="btn_prev" onclick="plusDivs(-1)">&#10094;</button>
            <button id="btn_next" onclick="plusDivs(1)">&#10095;</button>
        </div>
    </div>
    <!------------->
    <div style="height: 280px;background-color: orange">
        <div style="background-color: red;height: 20px;">
        </div>
        <div style="text-align: center">
            <p class="plain-text"><b>THÔNG TIN LIÊN HỆ</b></p>
            <p class="plain-text"><b>ĐẠI DIỆN CHÍNH THỨC CỦA HỌC VIỆN CÔNG NGHỆ SOUTHBANK, ÚC</b></p>
            <P class="plain-text"><b>Công ty tư vấn du học LisaHo</b></P>
            <p class="plain-text"><b>38/14 Trần Khát Chân,Quận 1, Tp.Hồ Chí Minh</b></p>
            <p class="plain-text"><b>Hotline:0963.9999.30- 0909.343.048</b></p>
            <p class="plain-text"><b>Website: www.lisahostudyoverseas.com</b></p>
        </div>

    </div>
    <!------------->
    <div style="position: fixed;bottom:0px;left:1px;background-color:green;width: 100%;height: 40px;">
        <div style="height: 20px;width: 500px;margin-top:10px;margin-left: 500px;font-weight: bold">KHAI GIẢNG:
            THÁNG
            7/2014 VÀ THÁNG 1/2015</div>
    </div>
    <button onclick="topFunction()" id="myBtn"></button>

    <script>
        // start area scroll
        window.onscroll = function () { scrollFunction() };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("myBtn").style.display = "block";
            } else {
                document.getElementById("myBtn").style.display = "none";
            }
        }
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
        //end area scroll
        //start area slide show
        var slideIndex = 1;
        var action;
        showDivs(slideIndex);

        function plusDivs(n) {
            var t = slideIndex + n;
            if (t < 1) slideIndex = 4;
            else if (t > 4) slideIndex = 1;
            else slideIndex = t;
            clearTimeout(action);
            showDivs(slideIndex);

        }

        function showDivs(n) {
            document.getElementById("slideImg").style.backgroundImage = "url('./img/Slide" + n + ".png')";
            action = setTimeout(function () {
                slideIndex += 1;
                if (slideIndex > 4) slideIndex = 1
                showDivs(slideIndex);  
            }, 3000);
        }
        //end area slide show
        //start area login form
        var state_form = 0;
        function openform() {
            if (state_form == 0) {
                state_form = 1;
                document.getElementById("div_form").style.display = "block"
            }
            else {
                state_form = 0;
                document.getElementById("div_form").style.display = "none"
            }
        }
        //end area login form
        //start cookies login form
        function setCookie() {
            if (window.document.cookieForm.persist.checked) {
                // Get the date and set it to next year
                var expDate = new Date();
                expDate.setFullYear(expDate.getFullYear() + 1);
                var who =
                    window.document.cookieForm.username.value;
                document.cookie = "username=" + who + ";" +
                    "expires=" + expDate.toGMTString();
            } else {
                deleteCookie();
            }
            return true;
        }
        function readCookie() {
            if (document.cookie) {

                var theCookie = document.cookie;
                var pos = theCookie.indexOf("username=");
                if (pos != -1) {
                    var cookie_array = theCookie.split("=");
                    var value = cookie_array[1];
                    // Load the stored username into the form
                    window.document.cookieForm.username.value = value;
                    window.document.cookieForm.persist.checked = true;
                }
            }
        }
        function deleteCookie() {
            if (document.cookie) {
                alert("delete cookies");
                // Get a date and set it to last year
                var expDate = new Date();
                expDate.setFullYear(expDate.getFullYear() - 1);
                document.cookie = "username=" + "" + ";" +
                    "expires=" + expDate.toGMTString();
            }
        }
         //end cookies login form
    </script>

</body>

</html>