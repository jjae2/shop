/*const table_basic = document.querySelector("#table-basic");

table_basic.addEventListener("click", function(event){

    if(event.target.classList.contains("update")){
        console.log(event.target);

        let xhttp = new XMLHttpRequest();

        xhttp.open("POST", "../product/update");
    
        //요청 header 정보
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("product_num="+event.target.getAttribute("data-num")+"&id="+document.querySelector("#table-basic").value);


        xhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
                if(this.responseText.trim()=='1'){
                    alert('수정 성공');
                    document.querySelector("#up"+replyNum).innerHTML=contents;
                }else {
                    alert('수정 실패');
                }
            }
        }
    }

});*/

const productListResult = document.querySelector("#productListResult");
const id = document.querySelector("#id");

getProductList();
function getProductList(){

    const xhttp1 = new XMLHttpRequest();

    xhttp1.open("GET", "../product/sellList?id="+id.value);
    
    //요청 header 정보
//    xhttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp1.send();


    xhttp1.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200){
    //      console.log(this.responseText);
            productListResult.innerHTML = this.responseText.trim();                  
        }
    }

}

productListResult.addEventListener("click", function(event){
    console.log(event.target);
    if(event.target.classList.contains('productListPage1')){
        console.log(event.target);
        console.log(1);
        const xhttp2 = new XMLHttpRequest();

        xhttp2.open("GET", "../product/sellList?id="+id.value+"&page="+event.target.value+"&searh="+event.target.getAttribute("data-search"));
        
        //요청 header 정보
    //    xhttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
        xhttp2.send();
        
        xhttp2.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
        //      console.log(this.responseText);
                console.log(2);
                productListResult.innerHTML = this.responseText.trim();                  
            }
        }
    }
});


//qna

const qnaListResult = document.querySelector("#QnaListResult");


getQnaList();
function getQnaList(){
    console.log("getList 시작");
    const xhttp4 = new XMLHttpRequest();
    
    xhttp4.open("GET", "../qnas/sellList?id="+id.value);
    xhttp4.send();

    xhttp4.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
            //console.log(this.responseText);
            qnaListResult.innerHTML = this.responseText.trim();
            try {
                qnaListResult.lastElementChild.lastElementChild.lastElementChild.childNodes[3].firstElementChild.setAttribute("class", "list-paginator__page selected");                
            } catch (error) {
                
            }

            product_selling_navigation_item_count.innerText= qnaListResult.firstElementChild.firstElementChild.firstElementChild.lastElementChild.innerText;

        }
    }
}



productListResult.addEventListener("click", function(event){
    console.log(event.target);
    if(event.target.classList.contains('qnaListPage1')){
        console.log(event.target);
        console.log(1);
        const xhttp3 = new XMLHttpRequest();
                    "GET", "../qnas/add?product_num="+product_num1.value+"&product_name="+product_name.value+"&id="+id1.value
        xhttp3.open("GET", "../qnas/sellList?id="+id.value+"&page="+event.target.value+"&searh="+event.target.getAttribute("data-search"));
        
        //요청 header 정보
    //    xhttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
        xhttp3.send();
        
        xhttp3.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
        //      console.log(this.responseText);
                console.log(2);
                productListResult.innerHTML = this.responseText.trim();                  
            }
        }
    }
});