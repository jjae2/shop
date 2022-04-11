const fileAdd = document.getElementById("fileAdd");
const fileResult = document.getElementById("fileResult");
const del = document.getElementsByClassName("del");
let count = 0;
let num = 0; //id용도
fileAdd.addEventListener("click", function () {
  if (count > 4) {
    alert("첨부파일은 최대 5개 까지만 가능함");
    return;
  }
  let div = document.createElement("div");
  div.setAttribute("id", "del" + num);
  count++;

  let data = document.createElement("input"); //<input>
  data.setAttribute("type", "file"); // <input type="file"></input>
  data.setAttribute("name", "files"); // <input type="file" names="files"></input>

  let button = document.createElement("button");
  button.setAttribute("type", "button");
  button.className = "del";
  button.setAttribute("data-num", "del" + num);
  button.innerHTML = "DEL";

  div.append(data);
  div.append(button);

  fileResult.append(div);

  num++;
});

fileResult.addEventListener("click", function (event) {
  let cn = event.target;

  if (cn.classList.contains("del")) {
    let delNum = cn.getAttribute("data-num");
    document.getElementById(delNum).remove();
    count--;
  }
});

//--------------
const fileDeleteBtn = document.querySelectorAll(".fileDeleteBtn");
const files = document.querySelector("#files");

//각각의 fileNum을 console에 출력
files.addEventListener("click", function(event){
    if(event.target.classList.contains("fileDeleteBtn")){
        
        let check = confirm("삭제시 복구 불가능 삭제??");

        if(!check){
            return;
        }


        let fileNum = event.target.getAttribute("data-fileNum");
        
        //ajax 파라미터 : fileNum, Method :  post, URL : fileDelete, Controller : fileDelete
        let xhttp = new XMLHttpRequest();

        xhttp.open("POST", "./fileDelete");

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("fileNum="+fileNum);

         //응답 처리
        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                console.log(this.responseText);
                let result = this.responseText.trim();
                if(result=='1'){
                    console.log("file 삭제");
                    event.target.parentNode.remove();
                }else {

                }
            }
        }        

    }
});
