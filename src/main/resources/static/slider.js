
var ntx = document.getElementById("ntx");
ntx.onclick = next;
var per = document.getElementById("per");
per.onclick = back;
var checkpanner = 1;
var can = 1;
function next() {
    if (checkpanner < 6) {
        can++;
        dichuyen();
    } else {
        can = 1;
        dichuyen();
    }
}
function back() {
    if (checkpanner > 1) {
        can--;
        dichuyen();
    } else {
        can = 6;
        dichuyen();
    }
}
function dichuyen1(x){
    can = x.getAttribute("index");
    dichuyen();
}
function dichuyen() {
    if (can < checkpanner) {
        var t = checkpanner - can;
        for (let i = 0; i < t; i++) {
            gf.style.transform += `translateX(100%)`;
        }
        checkpanner = can;
    } else if (can > checkpanner) {
        var t = can - checkpanner;
        for (let i = 0; i < t; i++) {
            gf.style.transform += `translateX(-100%)`;
        }
        checkpanner = can;
    }
    sangPi();
}
function sangPi() {
    setPidefault();
    let tempPi = `pi${checkpanner}`; 
    document.getElementById(tempPi).style.cssText ='background-color: #1434c3;';
    
}
function setPidefault (){
    document.getElementById("cham1").innerHTML =
    `<div id="pi1" onclick="dichuyen1(this)" index="1"class="bi rounded-full w-2 h-2 bg-gray-200 "></div>
                <div id="pi2" onclick="dichuyen1(this)" index="2" class="bi rounded-full w-2 h-2 bg-gray-200 "></div>
                <div id="pi3" onclick="dichuyen1(this)" index="3" class="bi rounded-full w-2 h-2 bg-gray-200 "></div>
                <div id="pi4" onclick="dichuyen1(this)" index="4" class="bi rounded-full w-2 h-2 bg-gray-200 "></div>
                <div id="pi5" onclick="dichuyen1(this)" index="5" class="bi rounded-full w-2 h-2 bg-gray-200 "></div>
                <div id="pi6" onclick="dichuyen1(this)" index="6" class="bi rounded-full w-2 h-2 bg-gray-200 "></div>`
}
setInterval(next, 3500);

let countdown = 
    setInterval(function(){
        document.getElementById("saleoff").innerHTML=`
        
            <img class="img1"
                src="https://lh3.googleusercontent.com/HHVhIgSze1Og-JLb_xmDcG_DN8TqL482FpwUv_6s_NlWLthk7WMstk6Kie-XGjJ4mTrCQqEo9d4g9VP2DQVzydHO2yuSU9Dy=rw-w3840"
                alt="">
            <div class="title">
                <h3>Gió Mát Cả Ngày</h3>
                <p>ưu dãi 50%</p>
            </div>
            <div id="sale">
                <i id="ff" class="fa-solid fa-weight-scale"></i>
                <p>Ngày: <span id="date">00</span></p>
                <p> - <span id="hours">00</span></p>
                <p> : <span id="minit">00</span></p>
                <p> : <span id="secon">00</span></p>
            </div>
            <div class="list1">
                <div class="sp1">
                    <img src="https://lh3.googleusercontent.com/A0vHvVsDxpHjBAMv3-DOA4vv0ABvXvDI-BzIGBs5DmPVhPEG-FkhKD4VW0fkbhmFZvw7wJQRKE_P4sJcxUPNUKtipMPvst_H=w230-rw"
                        alt="">
                    <h3 class="ten">DEERMA</h3>
                    <P class="mota">Máy xay sinh tố cầm tay không dây Deerma DEM-NU30</P>
                    <h3 class="gia">299.000 đ</h3>
                    <p class="sale"><span style="text-decoration: line-through;color: rgb(161, 161, 161);">390.000 <span
                                style="text-decoration: underline;">đ</span></span><span
                            style="color:#1536c3;">-23.33%</span></p>
                    <a class="button" href="#">Thêm vào giỏ</a>
                </div>
                <div class="sp1">
                    <img src="https://lh3.googleusercontent.com/tXXzFUtmZteEGRflEPyAnLAOGDGy8GPZKsvDt0XsNu-KVlCVOt4SdcvqXxFt00cIOehRsx5S9g4kiX7yxxI8CW29whInU5XrKQ=w230-rw"
                        alt="">
                    <h3 class="ten">SAMSUNG</h3>
                    <P class="mota">Bộ loa thanh Samsung HW-Q600C/XV 360W</P><br>
                    <h3 class="gia">4.190.000 đ</h3>
                    <p class="sale"><span style="text-decoration: line-through;color: rgb(161, 161, 161);">9.690.000
                            <span style="text-decoration: underline;">đ</span></span><span
                            style="color:#1536c3;">-56.76%</span></p>
                    <a class="button" href="#">Thêm vào giỏ</a>
                </div>
                <div class="sp1">
                    <img src="https://lh3.googleusercontent.com/JPoFDpyGsxJ98vqbImH2kGkPmFHXtn_LT628E-C3J8cIci1-mlWgpwqZMeX7KFbHXM-ZeiMqRnLnp0A_WdTy5qkj_XDh3mpkKg=w230-rw"
                        alt="">
                    <h3 class="ten">SAMSUNG</h3>
                    <P class="mota">Loa tháp Samsung MX-T40</P><br>
                    <h3 class="gia">1.490.000 đ</h3>
                    <p class="sale"><span style="text-decoration: line-through;color: rgb(161, 161, 161);">2.990.000
                            <span style="text-decoration: underline;">đ</span></span><span
                            style="color:#1536c3;">-50.17%</span></p>
                    <a class="button" href="#">Thêm vào giỏ</a>
                </div>
                <div class="sp1">
                    <img src="https://lh3.googleusercontent.com/BO-mKd_E0x2m5dEhxs8dDqMuILTZEfH_6kLbWD0dixsoPtB46bvor5lDIBHWIC96MvJqb9Fvj_BangdwISUYEicLRiRSAQSvAg=w230-rw"
                        alt="">
                    <h3 class="ten">SAMSUNG</h3>
                    <P class="mota">Loa Tháp Samsung MX-ST50B/XV</P><br>
                    <h3 class="gia">3.490.000 đ</h3>
                    <p class="sale"><span style="text-decoration: line-through;color: rgb(161, 161, 161);">6.190.000
                            <span style="text-decoration: underline;">đ</span></span><span
                            style="color:#1536c3;">-43.62%</span></p>
                    <a class="button" href="#">Thêm vào giỏ</a>
                </div>
                <div class="sp1">
                    <img src="https://lh3.googleusercontent.com/O94ZrxsDtFjM2F2edzoEbgxKvUStYWjwKU3oSl_PcGrbNYGIB5ZeMH8hPQQBpIr2s7_BIIeKheZyjXVrzZc9dJf1vRlJYo6eZg=w230-rw"
                        alt="">
                    <h3 class="ten">SAMSUNG</h3>
                    <P class="mota">Loa Tháp Samsung MX-T50</P><br>
                    <h3 class="gia">3.090.000 đ</h3>
                    <p class="sale"><span style="text-decoration: line-through;color: rgb(161, 161, 161);">3.990.000
                            <span style="text-decoration: underline;">đ</span></span><span
                            style="color:#1536c3;">-22.56%</span></p>
                    <a class="button" href="#">Thêm vào giỏ</a>
                </div>
            </div>`;
        let saledateinput = new Date('2025-01-17 22:27:59');
        console.log(saledateinput)
        let now = new Date().getTime();
        let d  = saledateinput - now;
        let days = Math.floor(d/(24*60*60*1000));
        let hours = Math.floor(d/(60*60*1000));
        let minutes = Math.floor(d/(60*1000));
        let seconds = Math.floor(d/(1000));
        hours %= 24;
        minutes %= 60;
        seconds %= 60;
        document.getElementById("date").innerHTML =days ;
        document.getElementById("hours").innerHTML = hours;
        document.getElementById("minit").innerHTML =minutes ;
        document.getElementById("secon").innerHTML = seconds;
        if (saledateinput < now){
            clearInterval(countdown);
           document.getElementById("saleoff").innerHTML="";
        }
    }
        
        ,1000)