const scrap = document.querySelector("#scrap");
const product_nums = document.querySelector("#product_num");
const ids = document.querySelector("#purchaser");
const category_num = document.querySelector("#category_nums");

scrap.addEventListener("click", function () {
 
    console.log(product_num.value);
    console.log(id.value);
   
    //js에서 요청 객체 생성
    const xhttp = new XMLHttpRequest();
  
    //요청 정보입력
    //open("method 형식","URL 주소")
    xhttp.open("POST","../scrap/addScrap");
  
    //요청 header 정보
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  
    //요청 전송
    //post 요청 시 파라미터
    //send("이름 =값&이름2=값2...")
    xhttp.send("product_num="+product_nums.value+"&id="+ids.value+"&category_num="+category_num.value);  
    
    //응답처리
    xhttp.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        console.log(this.responseText);
        let result = this.responseText.trim();
        if (result == "1") {
          alert("스크랩 되었습니다.");
         
        } else {
          alert("이미 스크랩 하셨습니다.");
        }
        
      }
    };
  });

