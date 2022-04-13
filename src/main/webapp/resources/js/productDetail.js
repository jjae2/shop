


const mainImg = document.getElementById("mainImg");
//const mainImg = document.querySelector("#mainImg");
//const candidate = document.querySelector("#candi"+num);
//let num=event.target.getAttribute('data-index');
const candiList = document.querySelector("#candiList");

function thousands_separators(num)
{
var num_parts = num.toString().split(".");
num_parts[0] = num_parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
return num_parts.join(".");
}
getMain();
function getMain(){
    console.log(candiList.firstElementChild.firstElementChild.firstElementChild.getAttribute("src"));
    mainImg.setAttribute("src", candiList.firstElementChild.firstElementChild.firstElementChild.getAttribute("src"));
}

candiList.addEventListener("click", function(event){
    if(event.target.classList.contains('image')){
        let num=event.target.getAttribute('data-num'); //num
        let candidate= document.querySelector("#candi"+num); //td
        mainImg.setAttribute("src", candidate.getAttribute("src"));
    }
});
//-------------------------------
const quantity_wrap = document.querySelector("#quantity_wrap");
const quantity = document.querySelector("#quantity");
const productPrice = document.querySelector("#quantity_price_hidden");
const stock_hidden = document.querySelector("#stock_hidden");


//주문 갯수 조절
quantity_wrap.addEventListener("click", function(event){
    if(event.target.classList.contains('up')){
        if(quantity.value>=(Number)(stock_hidden.value)){
            quantity.value =(Number)(stock_hidden.value);
            alert("재고가 부족합니다.");
        }else{
            quantity.value = (Number)(quantity.value) + 1;
        }
    }else if(event.target.classList.contains('down')){
        if(quantity.value<=1){
            quantity.value = 1;
        }else{
            quantity.value = (Number)(quantity.value) - 1;
        }
    }  

    let total = quantity.value*productPrice.value;
    total = thousands_separators(total);
    document.querySelector("#quantity_price").innerText = total;
    document.querySelector("#quantity_price1").innerText = total;
});

//주문 개수 조절 input
quantity.addEventListener("change", function(event){
    if(quantity.value<=1){
        quantity.value = 1;
    }else if(quantity.value>(Number)(stock_hidden.value)){
        quantity.value = (Number)(stock_hidden.value);
        alert("재고가 부족합니다.");
    }

    let total = quantity.value*productPrice.value;
    console.log(document.querySelector("#quantity_price"));
    

    document.querySelector("#quantity_price").innerText = total;
    document.querySelector("#quantity_price1").innerText = total;
});

//정수입력
function checkNum(event) {
    var keyVal = event.keyCode;

    if(((keyVal >= 48) && (keyVal <= 57))){
        return true;
    }
    else{
        return false;
    }
}

//------
const cart_order = document.querySelector("#cart_order");


/*
cart_order.addEventListener("click", function(event){
    if(event.target.classList.contains('button--color-blue-inverted')){

        console.log(event.target);

        // let num=event.target.getAttribute('data-index'); //num
        // let replyNum= document.querySelector("#up"+num); //td

        // let text = replyNum.innerText;
        // console.log(replyNum.innerHTML);
        // console.log(replyNum.innerText);
        // replyNum.innerText='';

        // let tx = document.createElement('textarea');
        // tx.setAttribute("id", "update"+num);
        // tx.classList.add("reply");
        // tx.setAttribute("data-num", num);
        // tx.value=text;
        
        // console.log(tx);
        // replyNum.append(tx);
        


    }else if(event.target.classList.contains('button--color-blue')){

        console.log(event.target);
        console.log(2);

    }
});
*/
const id1 = document.querySelector("#purchaser");
const product_num1 = document.querySelector("#product_num");
const product_name = document.querySelector("#product_name");


//const quantity = document.querySelector("#quantity");



cart_order.addEventListener("click", function(event){
    
    //console에 id, product_num, quantity 출력
    console.log(id1.value);
    console.log(product_num1.value);
    console.log(quantity.value);
    console.log("==========");
    if(event.target.classList.contains('button--color-blue-inverted')){

        console.log(event.target);        

        //1. JS에서 요청 객체 생성(준비)
        const xhttp = new XMLHttpRequest();

    
        //요청 정보 입력
        //open('method형식', 'URL주소')
        xhttp.open("POST", "../store/cart");


        //요청 header 정보
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        //요청 전송
        //post 요청시 파라미터
        //send("이름=값&이름2=값2...")
        xhttp.send("id="+id1.value+"&product_num="+product_num1.value+"&cart_count="+quantity.value);

        //응답 처리
        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                console.log(this.responseText);
                let result = this.responseText.trim();
                if(result=='1'){
                    alert('댓글이 등록 되었습니다');
                    // getList();
                }else {
                    alert('댓글 등록이 실패');
                }
            }
        }
    }else if(event.target.classList.contains('button--color-blue')){

        console.log(event.target);
        console.log(2);

    }
});
getList();
//-------------
//  **** qnaAdd ****
const qnaAdd = document.querySelector("#qnaAdd");
const qnaAddResult =document.querySelector("#qnaAddResult");





//qnaAdd 종료
const product_question_wrap_close = document.querySelector("#product_question_wrap_close");
const qnaTypeResult = document.querySelector("#qnaTypeResult");




qnaAddResult.addEventListener("click", function(event){

    if(event.target.classList.contains("product_question_wrap_close")||event.target.classList.contains("product_question_wrap_close_icon")||event.target.classList.contains("product_question_wrap_close_icon2")){

        qnaAddResult.innerHTML = "";
    }   
});





//qnaAdd 문의유형

qnaAddResult.addEventListener("click", function(event){
    if(event.target.classList.contains("product_question_wrap_type-select_box")){
        console.log(1243);
        let listKey = event.target.parentNode.firstChild.nextSibling;
        for(let i=0; i<6;i++){
            listKey.setAttribute("class", "product_question_wrap_type-select_box");
            listKey = listKey.nextSibling.nextSibling;
        }
        event.target.classList.add("product_question_wrap_type-select_box-select");
        console.log(event.target.getAttribute("id").substr(7));
        console.log(listKey);
        listKey.setAttribute("value", event.target.getAttribute("id").substr(7));
    }
});

//비밀글 on off
qnaAddResult.addEventListener("click", function(event){
    if(event.target.classList.contains("form-check1")){
        console.log(event.target.value);
        console.log(event.target);

        if(event.target.value ==0){
            event.target.value =1;
        }else{
            event.target.value=0;
        }


    }
});

const product_question_wrap_buttons_submit = document.querySelector("#product_question_wrap_buttons_submit");




//문의글 등록
qnaAddResult.addEventListener("click", function(event){

    if(event.target.classList.contains("product_question_wrap_buttons_submit")){
        console.log("완료1");
        //console.log(qnaTypeResult.getAttribute("value"));
        console.log(product_num1.value);
        console.log(id1.value);

        let qnaType = event.target.parentNode.parentNode.childNodes[7].lastElementChild.value;
        let qnaContents =event.target.parentNode.parentNode.childNodes[15].value;
        let qna_secret = event.target.parentNode.parentNode.childNodes[17].firstElementChild.firstElementChild.value;


        const xhttp3 = new XMLHttpRequest();

        xhttp3.open("POST", "../qnas/add");
    
        xhttp3.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp3.send("id="+id1.value+"&product_num="+product_num1.value+"&contents="+qnaContents+"&qna_type="+qnaType+"&qna_secret="+qna_secret);
    
        
        //setTimeout(function(){

            xhttp3.onreadystatechange=function(){
                if(this.readyState==4 && this.status==200){
                    let result = this.responseText.trim();
                    if(result=='1'){
                        alert('문의글이 등록 되었습니다.');
                        getList();
                    }else {
                        alert('문의글 등록이 실패했습니다.');
                    }
                }
            }
       // }, 100);


        qnaAddResult.innerHTML = "";
        
    }   
});


const qnaListResult = document.querySelector("#qnaListResult");
const product_selling_navigation_item_count = document.querySelector("#product_selling_navigation_item_count");




function getList(){
    console.log("getList 시작");
    const xhttp1 = new XMLHttpRequest();
    
    xhttp1.open("GET", "../qnas/list?product_num="+product_num1.value+"&page="+"");
    xhttp1.send();

    xhttp1.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
            //console.log(this.responseText);
            qnaListResult.innerHTML = this.responseText.trim();
            try {
                qnaListResult.lastElementChild.lastElementChild.lastElementChild.childNodes[3].firstElementChild.setAttribute("class", "list-paginator__page selected");                
            } catch (error) {
                
            }

            // qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[1].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
            // qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[3].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
            // qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[5].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
            // qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[7].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
            // qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[9].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
            console.log(qnaListResult);
            product_selling_navigation_item_count.innerText= qnaListResult.firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerText;

        }
    }
}

//문의글 페이지
qnaListResult.addEventListener("click", function(event){

    if(event.target.classList.contains("list-paginator-wrap")){
        
        let page =event.target.id.substr(11);

        const xhttp4 = new XMLHttpRequest();
    
        xhttp4.open("GET", "../qnas/list?product_num="+product_num1.value+"&page="+page);
        xhttp4.send();
    
        xhttp4.onreadystatechange = function(){
            if(this.readyState==4 && this.status==200){
             //   console.log(this.responseText);
                qnaListResult.innerHTML = this.responseText.trim();

                

                try {
                    qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[1].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
                    qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[3].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
                    qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[5].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
                    qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[7].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
                    qnaListResult.firstElementChild.lastElementChild.firstElementChild.childNodes[9].lastElementChild.lastElementChild.lastElementChild.prepend(product_name.value);
                } catch (error) {
                    
                }
                //문의 갯수
                product_selling_navigation_item_count.innerText= qnaListResult.firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerText;

                page %= 10;
                if(page==0){         
                    page=10;
                }               
                if(event.target.id.substr(11)<=10){
                    page = (Number)(page)*2+1;
                }else{
                    page = (Number)(page)*2+3;
                }
                qnaListResult.lastElementChild.lastElementChild.lastElementChild.childNodes[page].firstElementChild.setAttribute("class", "list-paginator__page list-paginator-wrap selected");
            }
        }
    }
});

qnaListResult.addEventListener("click", function(event){
    console.log("out");
    if(event.target.classList.contains("product_selling_section_right")||event.target.classList.contains("product_selling_section_right_button")){
        console.log("in");



        const xhttp2 = new XMLHttpRequest();
    
        xhttp2.open("GET", "../qnas/add?product_num="+product_num1.value+"&product_name="+product_name.value+"&id="+id1.value);
        xhttp2.send();
    
        xhttp2.onreadystatechange = function(){
            if(this.readyState==4 && this.status==200){
                //console.log(this.responseText);
                qnaAddResult.innerHTML = this.responseText.trim();


            }
        }


    }



});






const category_num1 = document.querySelector("#category_num");


category_num1.addEventListener("click", function(){

    //category_num1


});

const productUrl = document.querySelector("#productUrl");

productUrl.addEventListener("click", function(event){

//    alert('재고가 부족합니다.'+ '<input>복사해주세요</input>');
clip();

});

function clip(){
	var url = '';
	var textarea = document.createElement("textarea");
	document.body.appendChild(textarea);
	url = window.document.location.href;
	textarea.value = url;
	textarea.select();
	document.execCommand("copy");
	document.body.removeChild(textarea);
	alert("URL이 복사되었습니다.")
};