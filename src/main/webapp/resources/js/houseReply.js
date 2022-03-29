const reply = document.querySelector("#reply");
const num = document.querySelector("#num");
const id = document.querySelector("#id");
const contents = document.querySelector("#contents");
const replyResult = document.querySelector("#replyResult");
const del = document.querySelectorAll(".del");
//delete
replyResult.addEventListener("click", function (event) {
  if (event.target.classList.contains("del")) {
    let replyNum = event.target.getAttribute("data-num");

    const xhttp = new XMLHttpRequest();
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("replyNum=" + replyNum);
    xhttp.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        if (this.responseText.trim() == "1") {
          alert("댓글 삭제 성공");
          getList();
        } else {
          alert("댓글 삭제 실패");
        }
      }
    };
  }
});
//add

reply.addEventListener("click", function () {
  //console에 num, writer, contents 출력
  console.log(num.value);
  console.log(id.value);
  console.log(contents.value);

  //js에서 요청 객체 생성
  const xhttp = new XMLHttpRequest();

  //요청 정보입력
  //open("method 형식","URL 주소")
  xhttp.open("POST", "../houseReply/add");

  //요청 header 정보 POST 할때 사용해야함
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  //요청 전송
  //post 요청 시 파라미터
  //send("이름 =값&이름2=값2...")
  xhttp.send(
    "num=" + num.value + "&id=" + id.value + "&contents=" + contents.value
  );

  //응답처리
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
      let result = this.responseText.trim();
      if (result == "1") {
        alert("댓글이 등록 되었습니다");
        getList();
      } else {
        alert("댓글 등록이 실패");
      }
    }
  };
});
