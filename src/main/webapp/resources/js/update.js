const category_num = document.querySelector('#category_num');
const ddd1 = document.getElementById('ddd1');
const jong = document.querySelector('#jong');



ddd1.addEventListener('click', function(){
    console.log(ddd1);
    console.log(category_num);
    console.log(jong.childNodes);
    
});

jong.addEventListener('mouseenter', function(event){
    console.log(event.target.nextSibling);
});