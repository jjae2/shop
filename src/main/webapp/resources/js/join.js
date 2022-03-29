const pw = document.getElementById("pw");
const pwResult = document.getElementById("pwResult");

const id = document.getElementById("id")
const idResult = document.getElementById("idResult");

const pw2 = document.getElementById("pw2");
const pw2Result = document.getElementById("pw2Result");

const frm = document.getElementById("frm");
const btn = document.getElementById("btn");

const name = document.getElementById("name");
const phone = document.getElementById("phone");
const email = document.getElementById("email");


let idCheck;
let pwCheck;
let pw2Check;
let nameCheck;
let phoneCheck;
let emailCheck;

btn.addEventListener("click", function(){
    
    console.log(pw2Check);
    console.log(nameCheck);
    console.log(phoneCheck);
    console.log(emailCheck);

    if(idCheck && pwCheck && pw2Check && nameCheck && phoneCheck && emailCheck){
        frm.submit();
    }else{
        alert('필수요건을 확인하세요');
    }
    
    
})




id.onfocus = function(){
    console.log("연결");
}

// id.onblur = function(){
//     console.log("해제");
// }

id.onblur = function(){
    idCheck=true;
    let length = id.value.length;
    
    if(length==0){
        let message = '아이디를 입력해주세요'
        idResult.innerHTML = message
        idCheck=false;
    }
}

pw.addEventListener("keyup", function(){
    pwCheck = false;
    let length = pw.value.length;
    console.log(length);
    let message = "잘못된 비번";
    if(length>=8 && length<=12){
        message = '정상 비번';
        pwCheck = true;
    }
    pwResult.innerHTML=message;
})

pw2.onblur = function(){
    pw2Check = false;
    let message = '비밀번호가 일치하지 않습니다';
    if(pw.value==pw2.value){
        message = '비밀번호가 일치합니다';
        pw2Check = true;
    }
    pw2Result.innerHTML = message;
}


name.onblur = function(){
    let length = name.value.length;
    
    if(length==0){
        nameCheck=false;
    }else{
        nameCheck=true;
    }
}

phone.onblur = function(){
    let length = phone.value.length;
    
    if(length==0){
        phoneCheck=false;
    }else{
        phoneCheck=true;
    }
}
email.onblur = function(){
    let length = email.value.length;
    
    if(length==0){
        emailCheck=false;
    }else{
        emailCheck=true;
    }
}


