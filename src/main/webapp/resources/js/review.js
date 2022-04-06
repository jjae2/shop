const save = document.querySelector("#save");
const product_num = document.querySelector("#product_num");
const rate5 = document.querySelector("#rate5");
const id = document.querySelector("#id");
const contents = document.querySelector("#contents");
const reviewResult = document.querySelector("#reviewResult");
const del = document.querySelectorAll(".del");
const point=document.getElementsByName("detail.reviewDTO.review_point")


// update
// reviewResult.addEventListener("click", function () {
//   if (event.target.classList.contains("update")) {
//     let num = event.target.getAttribute("data-index");
//     let review_number = document.querySelector("#up" + num);

//     let text = review_number.innerText;
//     review_number.innerText = "";

//     let tx = document.createElement("textarea");
//     tx.setAttribute("id", "update" + num);
//     tx.classList.add("save");
//     tx.setAttribute("data-num", num);
//     tx.value = text;
//     review_number.append(tx);
//   }
// });

// reviewResult.addEventListener("change", function (event) {
//   if (event.target.classList.contains("save")) {
//     let contents = event.target.value;
//     let review_Number = event.target.getAttribute("data-num");

//     let check = window.confirm("수정 하시겠습니까??"); //확인 : true , 취소 :false
//     if (check) {
//       let xhttp = new XMLHttpRequest();

//       xhttp.open("POST", "../review/update");
//       xhttp.setRequestHeader(
//         "Content-type",
//         "application/x-www-form-urlencoded"
//       );
//       xhttp.send("review_number=" + review_Number + "&contents=" + contents);

//       xhttp.onreadystatechange = function () {
//         if (this.readyState == 4 && this.status == 200) {
//           if (this.responseText.trim() == "1") {
//             alert("수정 완료");
//             document.querySelector("#up" + review_Number).innerHTML = contents;
//           } else {
//             alert("수정 실패");
//           }
//         }
//       };
//     }
//   }
// });

// // delete
// reviewResult.addEventListener("click", function (event) {
//   if (event.target.classList.contains("del")) {
//     let review_Number = event.target.getAttribute("data-num");

//     const xhttp = new XMLHttpRequest();

//     xhttp.open("POST", "../review/delete");
//     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//     xhttp.send("review_number=" + review_Number);

//     xhttp.onreadystatechange = function () {
//       if (this.readyState == 4 && this.status == 200) {
//         if (this.responseText.trim() == "1") {
//           alert("삭제 성공");
//           getList();
//         } else {
//           alert("삭제 실패");
//         }
//       }
//     };
//   }
// });

getList();

function getList() {
  const xhttp2 = new XMLHttpRequest();

  xhttp2.open("GET", "../product/listReview?product_num=" + product_num.value);

  xhttp2.send();

  xhttp2.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
      reviewResult.innerHTML = this.responseText.trim();
    }
  };
}

save.addEventListener("click", function () {
  console.log(product_num.value);
  console.log(id.value);
  console.log(contents.value);
  //js에서 요청 객체 생성
  const xhttp = new XMLHttpRequest();

  //요청 정보입력
  //open("method 형식","URL 주소")
  xhttp.open("POST","../product/addReview");

  //요청 header 정보
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  //요청 전송
  //post 요청 시 파라미터
  //send("이름 =값&이름2=값2...")
  for(p of point){
    if(p.checked){
        review_point = p.getAttribute("value");
    }
}
console.log(review_point);
  xhttp.send("review_point="+review_point+"&product_num="+product_num.value+"&id="+id.value+"&contents="+contents.value );  

  //응답처리
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
      let result = this.responseText.trim();
      if (result == "1") {
        alert("리뷰 등록 되었습니다");
        getList();
      } else {
        alert("리뷰 등록 실패");
      }
    }
  };
});
