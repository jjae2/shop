
const fileResult1 = document.querySelector("#fileResult1");

let count1=1;
let num1=2; //id용도

fileResult1.addEventListener("click", function(event){
    if(event.target.classList.contains("fileAdd1")){
        console.log(event.target);
        count1++;
        console.log(count1);
        if(count1>9){
            alert('첨부파일은 최대 9개 만 가능');
            count1=9;
            return ;
        }
        
        let div = document.createElement('div');   //<div></div>
        // div.setAttribute("id", "del1"+num1);
        div.className="editor-link-url-input-item";
        div.setAttribute("id", "del"+num1);

        let div1 = document.createElement('div');
        div1.className="editor-link-url-input-item__row";
        

    
        let divPM = document.createElement('div');
        divPM.className = "editor-link-url-input-item__actions";

        
        let file1 = document.createElement("input"); //<input>
        file1.setAttribute("type", "file");          //<input type="file">
        file1.setAttribute("name", "files");         //<input type="file" name="files1">
        divPM.append(file1);

        let button = document.createElement('button'); //<button></button>
        button.className="editor-link-url-input-item__action fileAdd1";
        button.setAttribute("type", "button");
        button.setAttribute("title", "추가");
        button.innerHTML = "add";
        button.setAttribute("style", "width: 70px;");
        divPM.append(button);

        let button2 = document.createElement('button');
        button2.className="editor-link-url-input-item__action fileDel1";
        button2.setAttribute("type", "button");
        button2.setAttribute("title", "삭제");
        button2.setAttribute("data-num", "del"+num1);
        button2.innerHTML = "remove";
        button2.setAttribute("style", "width: 70px;");
        divPM.append(button2);
        

        console.log(divPM);

        div1.append(divPM);
        div.append(div1);

        fileResult1.append(div);
        console.log(fileResult1);
  
        num1++;
    }

    if(event.target.classList.contains("fileDel1")){
        console.log(event.target);
        console.log(count1);
        let delNum1 = event.target.getAttribute("data-num");
        console.log(delNum1);
        console.log(document.getElementById(delNum1));
        document.getElementById(delNum1).remove();
        console.log(document.getElementById(delNum1));
        if(delNum1 == "del1"){
            console.log("if count 1 지나감");
            let div = document.createElement('div');   //<div></div>
            // div.setAttribute("id", "del1"+num1);
            div.className="editor-link-url-input-item";
            div.setAttribute("id", "del"+1);
    
            let div1 = document.createElement('div');
            div1.className="editor-link-url-input-item__row";
            
        
            let divPM = document.createElement('div');
            divPM.className = "editor-link-url-input-item__actions";
    
            
            let file1 = document.createElement("input"); //<input>
            file1.setAttribute("type", "file");          //<input type="file">
            file1.setAttribute("name", "files");         //<input type="file" name="files1">
            divPM.append(file1);
    
            let button = document.createElement('button'); //<button></button>
            button.className="editor-link-url-input-item__action fileAdd1";
            button.setAttribute("type", "button");
            button.setAttribute("title", "추가");
            button.innerHTML = "add";
            button.setAttribute("style", "width: 70px;");
            divPM.append(button);
    
            let button2 = document.createElement('button');
            button2.className="editor-link-url-input-item__action fileDel1";
            button2.setAttribute("type", "button");
            button2.setAttribute("title", "삭제");
            button2.setAttribute("data-num", "del"+1);
            button2.innerHTML = "remove";
            button2.setAttribute("style", "width: 70px;");
            divPM.append(button2);
            div1.append(divPM);
            div.append(div1);
    
            fileResult1.append(div);
            return ;
        }

        console.log(event.target); 
        
        
        count1--;
    }
});


/*
//---------------------------------------------------
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
        // let fileName = event.target.getAttribute("data-fileName");
        //ajax 파라미터 : fileNum, Method :  post, URL : fileDelete, Controller : fileDelete
        let xhttp = new XMLHttpRequest();

        xhttp.open("POST", "./fileDelete");

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("fileNum="+fileNum);

        // let blank="";
        // let df_fileNum= document.querySelector("#df"+fileNum);
        // console.log(df_fileNum);
        // console.log("1234678");
        // df_fileNum.value("");
        // df_fileNum.setAttribute("value", blank);
        // console.log(df_fileNum);
        // df_fileNum.setAttribute("value", fileName);
        // console.log(df_fileNum);
        // let df = document.querySelector("#df");

        // let tx = document.createElement('input');
        // tx.setAttribute("name", "df");
        // tx.setAttribute("type", "hidden");
        // tx.value=fileName;
        // df.append(tx);
        

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
});*/