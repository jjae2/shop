const fileAdd = document.getElementById("fileAdd");
const fileResult = document.getElementById("fileResult");
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

  let upload = document.createElement("input"); //<input>
  upload.setAttribute("type", "file"); // <input type="file"></input>
  upload.setAttribute("name", "files"); // <input type="file" names="files"></input>
  upload.setAttribute("id", "image");
  upload.setAttribute("onchange", "setThumbnail(event);"); //사진 썸네일

  let button = document.createElement("button");
  button.setAttribute("type", "button");
  button.className = "del";
  button.setAttribute("data-num", "del" + num);
  button.innerHTML = "삭제";

  div.append(upload);
  div.append(button);

  fileResult.append(div);

  num++;
});
//사진 미리보기
function setThumbnail(event) {
  var reader = new FileReader();
  reader.onload = function (event) {
    var img = document.createElement("img");
    img.setAttribute("src", event.target.result);
    document.querySelector("div#image_container").appendChild(img);
  };
  reader.readAsDataURL(event.target.files[0]);
}

fileResult.addEventListener("click", function (event) {
  let cn = event.target;

  if (cn.classList.contains("del")) {
    let delNum = cn.getAttribute("data-num");
    document.getElementById(delNum).remove();
    count--;
  }
});
