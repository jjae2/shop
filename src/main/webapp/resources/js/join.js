const pw = document.getElementById("pw");
const pwResult = document.getElementById("pwResult");

const id = document.getElementById("id");
const idResult = document.getElementById("idResult");

const pw2 = document.getElementById("pw2");
const pw2Result = document.getElementById("pw2Result");

const frm = document.getElementById("frm");
const btn = document.getElementById("btn");

const name1 = document.getElementById("name");
const nameResult = document.getElementById("nameResult");
const phone = document.getElementById("phone");
const phoneResult = document.getElementById("phoneResult");
const email = document.getElementById("email");
const emailResult = document.getElementById("emailResult");
const age = document.getElementById("age");
const ageResult = document.getElementById("ageResult");
const address = document.getElementById("address");
const addressResult = document.getElementById("addressResult");

let idCheck;
let pwCheck;
let pw2Check;
let nameCheck;
let ageCheck;
let addressCheck;
let phoneCheck;
let emailCheck;

id.addEventListener("keyup", function () {
  idCheck = false;
  let length = id.value.length;
  let message ="8자이상 12자이하로 입력해주세요.";
  if (length >= 8 && length <= 12) {
    message = "정상적인 아이디입니다.";
    idCheck = true;
  }
  idResult.innerHTML = message;
});

pw.addEventListener("keyup", function () {
  pwCheck = false;
  let length = pw.value.length;
  let message ="잘못된 비밀번호입니다.";
  if (length >= 8 && length <= 12) {
    message = "정상적인 비밀번호입니다.";
    pwCheck = true;
  }
  pwResult.innerHTML = message;
});

pw2.onblur = function () {
  pw2Check = false;
  let message = "비밀번호가 일치하지 않습니다.";
  if (pw.value == pw2.value) {
    message = "비밀번호가 일치합니다";
    pw2Check = true;
  }
  pw2Result.innerHTML = message;
};
pw.addEventListener("change", function(){
  check=false;
  pw2.value="";
  pw2Result.innerHTML="";
  pw.focus();
});
btn.addEventListener("click", function () {

  if (idCheck && pwCheck && pw2Check && nameCheck && phoneCheck && emailCheck && ageCheck && addressCheck) {
    frm.submit();
  } else {
    alert("필수요건을 확인하세요");
  }
});

id.onblur = function () {
  idCheck = true;
  let length = id.value.length;

  if (length == 0) {
    let message = "아이디를 입력해주세요.";
    idResult.innerHTML = message;
    idCheck = false;
  }
};
name1.onblur = function () {
  let length = name1.value.length;

  if (length == 0) {
    let message = "이름을 입력해주세요.";
    nameResult.innerHTML = message;
    nameCheck = false;
  } else {
    nameCheck = true;
  }
};

phone.onblur = function () {
  let length = phone.value.length;

  if (length == 0) {
    let message = "전화번호를 입력해주세요.";
    phoneResult.innerHTML = message;
    phoneCheck = false;
  } else {
    phoneCheck = true;
  }
};
email.onblur = function () {
  let length = email.value.length;

  if (length == 0) {
    let message = "이메일을 입력해주세요.";
    emailResult.innerHTML = message;
    emailCheck = false;
  } else {
    emailCheck = true;
  }
};
age.onblur = function () {
  let length = age.value.length;

  if (length == 0) {
    let message = "나이를 입력해주세요.";
    ageResult.innerHTML = message;
    ageCheck = false;
  } else {
    ageCheck = true;
  }
};
address.onblur = function () {
  let length = address.value.length;

  if (length == 0) {
    let message = "주소를 입력해주세요.";
    addressResult.innerHTML = message;
    addressCheck = false;
  } else {
    addressCheck = true;
  }
};

//중복 확인 ajax
idCheckBtn.addEventListener("click", function() {
  // console.log("아이디 중복 체크")
  if(id.value.length == 0) {
      alert('아이디를 입력해주세요.');
      id.focus();
      return;
  }

  let xhttp = new XMLHttpRequest();

  xhttp.open("POST", "./idCheck");
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("id="+id.value);

  xhttp.onreadystatechange = function() {
      if(this.readyState == 4 && this.status == 200) {
          let result = this.responseText.trim();
          if(result == '0') {
              alert("사용 가능한 아이디입니다.");
              idResult.innerHTML="사용 가능한 아이디입니다.";
              idCheck=true;
          }else {
              alert("사용하실 수 없는 아이디입니다.");
              idCheck=false;
          }
      }
  }
});

emailCheckBtn.addEventListener("click", function() {
    // console.log("이메일 중복 체크");
    if(email.value.length == 0) {
        alert('이메일을 입력해주세요.');
        email.focus();
        return;
    } 
    
    let xhttp = new XMLHttpRequest();

    xhttp.open("POST", "./emailCheck");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("email="+email.value);

    xhttp.onreadystatechange = function() {
        if(this.readyState == 4 && this.status == 200) {
            let result = this.responseText.trim();
            if(result == '0') {
                alert("사용 가능한 이메일입니다.");
                emailResult.innerHTML="사용 가능한 이메일입니다.";
                emailCheck=true;
            }else {
                alert("사용하실 수 없는 이메일입니다.");
                emailCheck=false;
            }
        }
    }
});

id.addEventListener("change", function() {
    idCheck=false;
    idResult.innerHTML="아이디 중복 확인이 필요합니다."
});
email.addEventListener("change", function() {
    emailCheck=false;
    emailResult.innerHTML="이메일 중복 확인이 필요합니다."
})
