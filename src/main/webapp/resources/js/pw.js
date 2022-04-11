const pw1 = document.getElementById("pw1");
const pw1Result = document.getElementById("pw1Result");
const pw2 = document.getElementById("pw2");
const pw2Result = document.getElementById("pw2Result");
const pw = document.getElementById("pw");
const pwResult = document.getElementById("pwResult");
const pwC = document.getElementById("pwC");

let pw1Check;
let pw2Check;
let pwCheck;
pw1.addEventListener("keyup", function () {
    pw1Check = false;
    let message = "기존 비밀번호랑 다릅니다.";

    if (pwC.value==pw1.value) {
      message = "기존 비밀번호입니다.";
      pw1Check = true;
    }
    pw1Result.innerHTML = message;
  });
pw2.addEventListener("keyup", function () {
    pw2Check = false;
    let length = pw2.value.length;
    
    let message = "잘못된 비밀번호입니다.";
    if (length >= 8 && length <= 12) {
      message = "정상적인 비밀번호입니다.";
      pw2Check = true;
    }
    pw2Result.innerHTML = message;
  });
  pw.addEventListener("keyup", function () {
    pwCheck = false;
   
    
    let message = "비밀번호가 일치하지 않습니다.";
    if (pw2.value == pw.value) {
      message = "비밀번호가 일치합니다.";
      pwCheck = true;
    }
    pwResult.innerHTML = message;
  });