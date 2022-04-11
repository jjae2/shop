// ---------------------
const category_num = document.querySelector("#category_num");
const category_content_filter_list_left = document.querySelector("#category_content_filter_list_left");
const categoryBtn11 = document.querySelector("#categoryBtn11");
const categoryBtn22 = document.querySelector("#categoryBtn22");
const categoryBtn33 = document.querySelector("#categoryBtn33");
const ul1 = document.querySelector("#ul1");
const productResult = document.querySelector('#productResult');
const categoryFilterResult = document.querySelector("#categoryFilterResult");
const categoryFilterSale1 = document.querySelector("#categoryFilterSale1");
const categoryFilterBrand1 = document.querySelector("#categoryFilterBrand1");
const categoryFilterPrice1 = document.querySelector("#categoryFilterPrice1");
const categoryBtn1 = document.querySelector("#categoryBtn1");
const categoryBtn2 = document.querySelector("#categoryBtn2");
const categoryBtn3 = document.querySelector("#categoryBtn3");
const categoryFilterResultButton2 = document.querySelector("#categoryFilterResultButton2");
const categoryFilterResultButton1 = document.querySelector("#categoryFilterResultButton1");
const categoryFilterView = document.querySelector("#categoryFilterView");
const productArray = document.querySelector("#productArray");
const productArrayBtn = document.querySelector("#productArrayBtn");
const productArrayBtn1 = document.querySelector("#productArrayBtn1");
const productArrayBtn11 = document.querySelector("#productArrayBtn11");
const productArrayBtn22 = document.querySelector("#productArrayBtn22");
const productArrayBtn33 = document.querySelector("#productArrayBtn33");
const productArrayBtn44 = document.querySelector("#productArrayBtn44");
const productArrayBtnSubmit = document.querySelector("#productArrayBtnSubmit");




productArrayBtn.addEventListener("click", function(event){
productArrayBtn11
    console.log(event.target);

    if(productArrayBtn1.value==0){
        productArrayBtn1.value=1;
        const xhttp4 = new XMLHttpRequest();
        xhttp4.open("GET", "../store/array");
    
        xhttp4.send();
    
        xhttp4.onreadystatechange = function(){
            if(this.readyState==4 && this.status==200){
     //           console.log(this.responseText);
                productArray.innerHTML = this.responseText.trim();
            }
        }
    }else{
        productArrayBtn1.value=0;
        productArray.innerHTML ="";
    }
});

productArray.addEventListener("click", function(event){
    let arrayRadio ="";
    if(event.target.classList.contains("fs-4H")){
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[3].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[5].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[7].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[9].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.checked = true;
        
        arrayRadio = event.target.getAttribute("id").substr(5);
        console.log("console.log(arrayRadio) : "+arrayRadio);

/*
        if(arrayRadio == 1){
            productArrayBtn11.setAttribute("value", 1);
            productArrayBtn22.setAttribute("value", 0);
            productArrayBtn33.setAttribute("value", 0);
            productArrayBtn44.setAttribute("value", 0);
        }else if(arrayRadio == 2){
            productArrayBtn11.setAttribute("value", 0);
            productArrayBtn22.setAttribute("value", 1);
            productArrayBtn33.setAttribute("value", 0);
            productArrayBtn44.setAttribute("value", 0);
        }else if(arrayRadio == 3){
            productArrayBtn11.setAttribute("value", 0);
            productArrayBtn22.setAttribute("value", 0);
            productArrayBtn33.setAttribute("value", 1);
            productArrayBtn44.setAttribute("value", 0);
        }else if(arrayRadio == 4){
            productArrayBtn11.setAttribute("value", 0);
            productArrayBtn22.setAttribute("value", 0);
            productArrayBtn33.setAttribute("value", 0);
            productArrayBtn44.setAttribute("value", 1);
        }
*/

        
        productArrayBtnSubmit.setAttribute("value", arrayRadio);

    }

    
    if(event.target.classList.contains("_2ekY2")){
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[3].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[5].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[7].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[9].firstElementChild.firstElementChild.firstElementChild.firstElementChild.firstElementChild.checked = false;
        event.target.previousSibling.checked = true;
        arrayRadio = event.target.previousSibling.getAttribute("id").substr(5);
        console.log("console.log(arrayRadio) : "+arrayRadio);

/*        
        if(arrayRadio == 1){
            productArrayBtn11.setAttribute("value", 1);
            productArrayBtn22.setAttribute("value", 0);
            productArrayBtn33.setAttribute("value", 0);
            productArrayBtn44.setAttribute("value", 0);
        }else if(arrayRadio == 2){
            productArrayBtn11.setAttribute("value", 0);
            productArrayBtn22.setAttribute("value", 1);
            productArrayBtn33.setAttribute("value", 0);
            productArrayBtn44.setAttribute("value", 0);
        }else if(arrayRadio == 3){
            productArrayBtn11.setAttribute("value", 0);
            productArrayBtn22.setAttribute("value", 0);
            productArrayBtn33.setAttribute("value", 1);
            productArrayBtn44.setAttribute("value", 0);
        }else if(arrayRadio == 4){
            productArrayBtn11.setAttribute("value", 0);
            productArrayBtn22.setAttribute("value", 0);
            productArrayBtn33.setAttribute("value", 0);
            productArrayBtn44.setAttribute("value", 1);
        }
*/
        productArrayBtnSubmit.setAttribute("value", arrayRadio);

    }

    categoryFilterProduct();

    if(arrayRadio == 1){
        productArrayBtn.firstElementChild.innerText = "인기순";
    }else if(arrayRadio == 2){
        productArrayBtn.firstElementChild.innerText = "낮은가격순";
    }else if(arrayRadio == 3){
        productArrayBtn.firstElementChild.innerText = "높은가격순";
    }else if(arrayRadio == 4){
        productArrayBtn.firstElementChild.innerText = "최신순";
    }
    

});



categoryFilterView.addEventListener("click", function(event){
    console.log(event.target);
    if(event.target.classList.contains("icon1")){
 //       console.log(event.target);
        categoryBtn1.setAttribute("class", "_3Z6oR _3AsCW _2tsrJ css-1mxooxr e5q0h4i0");
        categoryBtn1.firstElementChild.firstElementChild.setAttribute("fill", "#C2C8CC");
        categoryFilterSale1.value=0;
        categoryFilterProduct();
        getCategoryFilterProduct();
    }
    if(event.target.classList.contains("icon2")){
 //       console.log(event.target);
        console.log(2);
        categoryFilterBrand1.value="";
        categoryFilterProduct();
        getCategoryFilterProduct();
    }
    if(event.target.classList.contains("icon3")){
 //       console.log(event.target);
        categoryFilterPrice1.value=0;
        categoryFilterPrice1.setAttribute("data-price", -1);
        categoryFilterProduct();
        getCategoryFilterProduct();
    }
    if(event.target.classList.contains("category-filter-bar-tag-list__clear")||event.target.classList.contains("icon4")||event.target.classList.contains("text4")){
        console.log(event.target);

        categoryBtn1.setAttribute("class", "_3Z6oR _3AsCW _2tsrJ css-1mxooxr e5q0h4i0");
        categoryBtn1.firstElementChild.firstElementChild.setAttribute("fill", "#C2C8CC");
        categoryFilterSale1.value=0;

        categoryFilterBrand1.value="";

        categoryFilterPrice1.value=0;
        categoryFilterPrice1.setAttribute("data-price", -1);
        categoryFilterProduct();
        getCategoryFilterProduct();
    }

});



categoryFilterSale1.addEventListener("change", function(event){



});

function getCategoryFilterProduct(){
    const xhttp3 = new XMLHttpRequest();
    xhttp3.open("GET", "../store/filterView?sale="+categoryFilterSale1.value+"&brand="+categoryFilterBrand1.value+"&filterStartPrice="+categoryFilterPrice1.value+"&filterLastPrice="+categoryFilterPrice1.getAttribute("data-price"));//

    xhttp3.send();

    xhttp3.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
 //           console.log(this.responseText);
            categoryFilterView.innerHTML = this.responseText.trim();
            console.log(productResult.firstElementChild.value);
        }
    }
};

function categoryFilterProduct(){
    const xhttp = new XMLHttpRequest();
/*    console.log("start")
    console.log("category_num.value : "+category_num.value);
    console.log("categoryFilterSale1.value : "+categoryFilterSale1.value);
    console.log("categoryFilterBrand1.value : "+categoryFilterBrand1.value);
    console.log("categoryFilterPrice1.getAttribute(data-price) : "+categoryFilterPrice1.getAttribute("data-price"));
*/    
    
    xhttp.open("GET", "../product/category?category_num="+category_num.value+"&filterSale="+categoryFilterSale1.value+"&filterBrand="+categoryFilterBrand1.value+"&filterStartPrice="+categoryFilterPrice1.value+"&filterLastPrice="+categoryFilterPrice1.getAttribute("data-price")+"&productArray="+productArrayBtnSubmit.value);

    xhttp.send();

    xhttp.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
//            console.log(this.responseText);
            productResult.innerHTML = this.responseText.trim();
            console.log(productResult.firstElementChild.value);
            categoryProductTotal.innerText = "전체 " + productResult.firstElementChild.value+"개";
        }
    }
};

//세일 on off
categoryBtn1.addEventListener('click', function(event){
 //   console.log(categoryFilterPrice1.getAttribute("data-price"));
    if(event.target.classList.contains("_3Z6oR")||event.target.classList.contains("icon")){
//        console.log("1");
        if(categoryFilterSale1.value==0){
            categoryFilterSale1.value=1;
            categoryBtn1.setAttribute("class", "_3Z6oR _3AsCW _2tsrJ css-18qxpg0 e5q0h4i0");
            categoryBtn1.firstElementChild.firstElementChild.setAttribute("fill", "rgb(55, 80, 125)");
            console.log(categoryFilterSale1.value);
            categoryFilterProduct();
            getCategoryFilterProduct();

        }else{
            categoryFilterSale1.value=0;
            categoryBtn1.setAttribute("class", "_3Z6oR _3AsCW _2tsrJ css-1mxooxr e5q0h4i0");
            categoryBtn1.firstElementChild.firstElementChild.setAttribute("fill", "#C2C8CC");
            console.log(categoryFilterSale1.value);
            categoryFilterProduct();
            getCategoryFilterProduct();
        }

//        console.log(event.target.firstElementChild.firstElementChild);
    }
});

//적용 칸
categoryFilterResult.addEventListener('click', function(event){

    if(event.target.classList.contains("property-filter-panel-range-control__input-row__button1")){
        console.log("1");
        categoryFilterBrand1.value=event.target.previousSibling.previousSibling.firstElementChild.firstElementChild.value;
        console.log(categoryFilterBrand1);
        categoryFilterProduct();
        getCategoryFilterProduct();
    }else if(event.target.classList.contains("property-filter-panel-range-control__input-row__button2")){
        console.log("2");

        let startPrice = event.target.previousSibling.previousSibling.previousSibling.previousSibling.firstElementChild.firstElementChild.value
        if(startPrice!=""){
            categoryFilterPrice1.value=startPrice;
            console.log("3");
        }else{
            console.log("4");
        }
        
        
        let lastPrice = event.target.previousSibling.previousSibling.firstElementChild.firstElementChild.value       
        if(lastPrice!=""){
            categoryFilterPrice1.setAttribute("data-price", lastPrice);
            console.log("5");
        }else{
            console.log("6");
        }
        
        categoryFilterProduct();
        getCategoryFilterProduct();
        console.log(categoryFilterPrice1);
    }




});









//카테고리 필터 창 띄우기
category_content_filter_list_left.addEventListener('click', function(event){
//    
    if(event.target.classList.contains("category_content_filter_button")||event.target.classList.contains("_3Z6oR")||event.target.classList.contains("icon")){

//        console.log(event.target);
        let categoryFilter_num = event.target.getAttribute("id").substr(11);

        function getCategoryFilter(){
            const xhttp1 = new XMLHttpRequest();
            console.log("start1")
            xhttp1.open("GET", "../store/categoryFilter?categoryFilter_num="+categoryFilter_num);  
            xhttp1.send();
            xhttp1.onreadystatechange = function(){
                if(this.readyState==4 && this.status==200){
                    //console.log(this.responseText);
                    categoryFilterResult.innerHTML = this.responseText.trim();
                }
            }
        }
 

        if(categoryFilter_num==1){
            if(categoryBtn11.value==0){
                categoryBtn11.value=1;
                categoryBtn22.value=0;
                categoryBtn33.value=0;
                categoryFilterResult.innerHTML ="";
 //               getCategoryFilter();
            }else{
                categoryBtn11.value=0;
                categoryFilterResult.innerHTML ="";
            }

       }
       
       
       if(categoryFilter_num==2){
            if(categoryBtn22.value==0){
                categoryBtn11.value=0;
                categoryBtn22.value=1;
                categoryBtn33.value=0;
                getCategoryFilter();
                categoryBtn2.classList.add("category_content_filter_button_open");
                categoryBtn3.classList.remove("category_content_filter_button_open");
            }else{
                categoryBtn22.value=0;
                categoryFilterResult.innerHTML ="";
                categoryBtn2.classList.remove("category_content_filter_button_open");
            }
        }else if(categoryFilter_num==3){
            if(categoryBtn33.value==0){
                categoryBtn11.value=0;
                categoryBtn22.value=0;
                categoryBtn33.value=1;
                getCategoryFilter();
                categoryBtn3.classList.add("category_content_filter_button_open");
                categoryBtn2.classList.remove("category_content_filter_button_open");
            }else{
                categoryBtn33.value=0;
                categoryFilterResult.innerHTML ="";
                categoryBtn3.classList.remove("category_content_filter_button_open");
            }
        }

        // console.log(categoryBtn11.value);
        // console.log(categoryBtn22.value);
        // console.log(categoryBtn33.value);

     }
});



// categoryBtn1.addEventListener("click", function(event){
//     if(ul.classList.contains("category_content_filter_tag_list")){
        
//         let check = confirm("삭제시 복구 불가능 삭제??");
//         console.log("1");
//         if(!check){
//             return;
//         }
//         console.log("2");
//         // let fileNum = event.target.setAttribute("data-fileNum");

            
//     }        

// });
//--------------------------------------------
//카테고리 product 리스트
const categoryProductTotal = document.querySelector("#categoryProductTotal");
getList();

function getList(){
    const xhttp2 = new XMLHttpRequest();
    console.log("start")
    xhttp2.open("GET", "../product/category?category_num="+category_num.value);
   
    xhttp2.send();

    xhttp2.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
            console.log(this.responseText);
            productResult.innerHTML = this.responseText.trim();
            console.log(productResult.firstElementChild.value);
            categoryProductTotal.innerText = "전체 " + productResult.firstElementChild.value+"개";
        }
    }
}

//--------
//categoryProductList

