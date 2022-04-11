const table_basic = document.querySelector("#table-basic");

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

});