const category_prev = document.querySelector("#category_prev");
const category_next = document.querySelector("#category_next");
const category_fold = document.querySelector("#category_fold");
const category_fold_num = document.querySelector("#category_fold_num");

//카테고리 배너 슬라이드

function getFoldNum(){
    let tanslateValue = (Number)(category_fold_num.value)*(-45);
    category_fold.setAttribute("style", "transition-duration: 500ms; transform: translateX("+tanslateValue+"%);");
}


category_prev.addEventListener("click", function(event){
    console.log(1);
 //   console.log(category_fold);    
    category_fold_num.value = (Number)(category_fold_num.value) - 1;

    if(category_fold_num.value==0){
        category_prev.setAttribute("class", "category-list__prev prenext-close");
    }
    if(category_fold_num.value==1){
        category_next.setAttribute("class", "category-list__next");
    }    

    console.log("category_fold_num.value : "+category_fold_num.value);
    getFoldNum();
//    category_fold.setAttribute("style", "transition-duration: 500ms; transform: translateX(-0%);")
});

category_next.addEventListener("click", function(event){
    console.log(222);
//    console.log(category_fold);
    category_fold_num.value = (Number)(category_fold_num.value) + 1;

    if(category_fold_num.value==2){
        category_next.setAttribute("class", "category-list__next prenext-close");
    } 
    if(category_fold_num.value==1){
        category_prev.setAttribute("class", "category-list__prev");
    } 

    console.log("category_fold_num.value : "+category_fold_num.value);
    getFoldNum();
//    category_fold.setAttribute("style", "transition-duration: 500ms; transform: translateX(-45%);")
});


//스토어 배너 슬라이드
const bannerImg = document.querySelector("#bannerImg");
const storeBanner = document.querySelector("#storeBanner");
const bannerBot_selector = document.querySelector("#bannerBot_selector");


getBannerImg();
function getBannerImg(){

    const xhttp = new XMLHttpRequest();

    xhttp.open("GET", "./banner?storeBanner="+storeBanner.value);

    xhttp.send();

    xhttp.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
//           console.log(this.responseText);
            console.log("gogo");
            bannerImg.innerHTML = this.responseText.trim();       
        }
    }
}


bannerBot_selector.addEventListener("click", function(event){
    //console.log(event.target);
    
    if(event.target.classList.contains("bannerBot")){
        storeBanner.value= event.target.getAttribute("data-num");
        getBannerImg();
    }
});
bannerBot_selector.addEventListener("click", function(event){
//    console.log(event.target);

    if(event.target.classList.contains("bannerLeft")){
//        console.log(event.target);
        console.log("L");       
        if(storeBanner.value>1){
            storeBanner.value = (Number)(storeBanner.value)-1;
            getBannerImg();
        }
    }

    if(event.target.classList.contains("bannerRight")){
 //       console.log(event.target);
        console.log("R");
        if(storeBanner.value<10){
            storeBanner.value = (Number)(storeBanner.value)+1;
            getBannerImg();
        }
    }


    bannerBot_selector.childNodes[1].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[3].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[5].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[7].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[9].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[11].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[13].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[15].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[17].setAttribute("class", "featured-quick-navigation__item");
    bannerBot_selector.childNodes[19].setAttribute("class", "featured-quick-navigation__item");


    let storeBannerX = (Number)(storeBanner.value)*2-1;
    console.log(storeBannerX);
    bannerBot_selector.childNodes[storeBannerX].setAttribute("class", "featured-quick-navigation__item featured-quick-navigation__item--selected");
});




const productResult = document.querySelector("#productResult");

getProductList();
function getProductList(){


    const xhttp1 = new XMLHttpRequest();

    xhttp1.open("GET", "./product/homeProduct");

    xhttp1.send();

    xhttp1.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
//           console.log(this.responseText);
            console.log("gogo1");
            productResult.innerHTML = this.responseText.trim();       
        }
    }


}