const noticeListResult = document.querySelector("#noticeListResult");
const noticeType = document.querySelector("#noticeType");
const category_num = document.querySelector("#category_num");
const search = document.querySelector("#search");
const searchInput = document.querySelector("#searchInput");
const submitBtn = document.querySelector("#submitBtn");


noticeType.addEventListener("change", function(event){
    console.log(2);
    console.log(event.target.value);
    category_num.value = event.target.value;
    console.log("category_num.value : "+category_num.value);

    getNoticeList();
});


getNoticeList();
function getNoticeList(){
//    console.log(noticeListResult);

    const xhttp = new XMLHttpRequest();

    xhttp.open("GET", "../notices/noticeList?category_num="+category_num.value+"&search="+searchInput.value+"&page="+"");

    xhttp.send();

    xhttp.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
 //           console.log(this.responseText);
            noticeListResult.innerHTML = this.responseText.trim();       
            try {
                 noticeListResult.lastElementChild.previousSibling.previousSibling.childNodes[3].firstElementChild.setAttribute("class", "list-paginator__page list-paginator-wrap selected");              
             } catch (error) {
                
             }

        }
    }
}

const noticeListPage = document.querySelector("#noticeListPage");

noticeListResult.addEventListener("click", function(event){

    if(event.target.classList.contains("list-paginator-wrap")){
        
//        console.log(event.target);

        let page =event.target.id.substr(14);
       // noticeListPage.value = page;
        console.log(page);
        


         const xhttp1 = new XMLHttpRequest();

         xhttp1.open("GET", "../notices/noticeList?category_num="+category_num.value+"&search="+searchInput.value+"&page="+page);
    
         xhttp1.send();
    
         xhttp1.onreadystatechange = function(){
             if(this.readyState==4 && this.status==200){
      //           console.log(this.responseText);
                 console.log();
                 noticeListResult.innerHTML = this.responseText.trim();
                 page %= 10;
                 if(page==0){         
                     page=10;
                 }               
                 if(event.target.id.substr(14)<=10){
                     page = (Number)(page)*2+1;
                 }else{
                     page = (Number)(page)*2+3;
                 }
//                 console.log(noticeListResult.lastElementChild.previousElementSibling.childNodes[page].firstChild);

                 noticeListResult.lastElementChild.previousElementSibling.childNodes[page].firstChild.setAttribute("class", "list-paginator__page sm list-paginator-wrap selected");
             }
         }
    }
});


submitBtn.addEventListener("click", function(event){
    getNoticeList();

});


