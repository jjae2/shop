const store = document.getElementById('store');
const community = document.getElementById('community');
const notice = document.getElementById('notice');
const bot_menu = document.getElementById('navigation_bot_content_menu');
const user_icon = document.getElementById('user_icon');
const user_icon_menu = document.getElementById('user_icon_menu');
const user_icon_menu_base = document.getElementById('user_icon_menu_base');




const navigation_bot_content_menu_item1 = document.getElementById('navigation_bot_content_menu_item1');
const navigation_bot_content_menu_item2 = document.getElementById('navigation_bot_content_menu_item2');
const navigation_bot_content_menu_item3 = document.getElementById('navigation_bot_content_menu_item3');
const navigation_bot_content_menu_item4 = document.getElementById('navigation_bot_content_menu_item4');
const navigation_bot_content_menu_item5 = document.getElementById('navigation_bot_content_menu_item5');
const navigation_bot_content_menu_item6 = document.getElementById('navigation_bot_content_menu_item6');
const navigation_bot_content_menu_item7 = document.getElementById('navigation_bot_content_menu_item7');
const navigation_bot_content_menu_item8 = document.getElementById('navigation_bot_content_menu_item8');
const navigation_bot_content_menu_item9 = document.getElementById('navigation_bot_content_menu_item9');

const headerrange = document.getElementById('headerrange');
const qqt0 = document.getElementById('qqt0');
const qqt1 = document.getElementById('qqt1');
const qqt2 = document.getElementById('qqt2');
const qqt3 = document.getElementById('qqt3');
const qqt4 = document.getElementById('qqt4');
const qqt5 = document.getElementById('qqt5');

const navigation_top_content_right_icon1 = document.getElementById('navigation_top_content_right_icon1');
const navigation_top_content_right_icon2 = document.getElementById('navigation_top_content_right_icon2');

const navigation_top_content_right_login_item1 = document.getElementById('navigation_top_content_right_login_item1');
const navigation_top_content_right_login_item2 = document.getElementById('navigation_top_content_right_login_item2');

const store2 = store.className;
const community2 = community.className;
const notice2 = notice.className;

const navigation_bot_content_menu_item11 = navigation_bot_content_menu_item1.className;
const navigation_bot_content_menu_item22 = navigation_bot_content_menu_item2.className;
const navigation_bot_content_menu_item33 = navigation_bot_content_menu_item3.className;
const navigation_bot_content_menu_item44 = navigation_bot_content_menu_item4.className;
const navigation_bot_content_menu_item55 = navigation_bot_content_menu_item5.className;
const navigation_bot_content_menu_item66 = navigation_bot_content_menu_item6.className;
const navigation_bot_content_menu_item77 = navigation_bot_content_menu_item7.className;
const navigation_bot_content_menu_item88 = navigation_bot_content_menu_item8.className;
const navigation_bot_content_menu_item99 = navigation_bot_content_menu_item9.className;




console.log('navigation_bot_content_menu_item1 : '+navigation_bot_content_menu_item1);
console.log(1);

// store.addEventListener("mouseenter", function(){
//     console.log('스토어');
//     bot_menu.innerHTML=
// 	'<a class="navigation_bot_content_menu_item navigation_bot_content_menu_item_active" id="navigation_bot_content_menu_item1" href="/s1">스토어홈</a>'+
// 	'<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item2" href="#">카테고리</a>'+
// 	'<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item3" href="#">베스트</a>'+
// 	'<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item4" href="#">오늘의딜</a>'+
// 	'<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item5" href="/s1/notices/list">세일공지</a>';
// });

// community.addEventListener("mouseenter", function(){
//     console.log('커뮤니티');
//     bot_menu.innerHTML=
//     '<a class="navigation_bot_content_menu_item navigation_bot_content_menu_item_active" id="navigation_bot_content_menu_item6" href="/s1/community">홈</a>'+
//     '<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item7" href="#">집들이</a>'+
//     '<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item8" href="#">질문과답변</a>'+
//     '<a class="navigation_bot_content_menu_item" id="navigation_bot_content_menu_item9" href="/s1/notices/list">공지사항</a>';
// });

store.addEventListener("mouseenter", function(){
    console.log('스토어');
    navigation_bot_content_menu_item1.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item2.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item3.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item4.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item5.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item6.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item7.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item8.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item9.className = 'navigation_bot_content_menu_item ppp';
    store.className= 'navigation_top_content_menu_style_active';
    community.className= 'navigation_top_content_menu_style';
    notice.className= 'navigation_top_content_menu_style';
});

community.addEventListener("mouseenter", function(){
    console.log('커뮤니티');
    navigation_bot_content_menu_item1.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item2.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item3.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item4.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item5.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item6.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item7.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item8.className = 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item9.className = 'navigation_bot_content_menu_item';
    store.className= 'navigation_top_content_menu_style';
    community.className= 'navigation_top_content_menu_style_active';
    notice.className= 'navigation_top_content_menu_style';
});

notice.addEventListener("mouseenter", function(){
    console.log('공지사항');
    navigation_bot_content_menu_item1.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item2.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item3.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item4.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item5.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item6.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item7.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item8.className = 'navigation_bot_content_menu_item ppp';
    navigation_bot_content_menu_item9.className = 'navigation_bot_content_menu_item ppp';
    store.className= 'navigation_top_content_menu_style';
    community.className= 'navigation_top_content_menu_style';
    notice.className= 'navigation_top_content_menu_style_active';
});



user_icon.addEventListener("click", function(){
    console.log('유저버튼');
    qqt0.className= "navigation_top_content_right_icon_user_menu";
});

//--------
//--------
qqt1.addEventListener("mouseenter", function(){
    console.log('유저버튼');

    qqt1.className = "navigation_top_content_right_icon_user_menu_item_active";
    qqt2.className = "navigation_top_content_right_icon_user_menu_item";
    qqt3.className = "navigation_top_content_right_icon_user_menu_item";
    qqt4.className = "navigation_top_content_right_icon_user_menu_item";
    qqt5.className = "navigation_top_content_right_icon_user_menu_item";
});
qqt2.addEventListener("mouseenter", function(){
    console.log('유저버튼');
    qqt1.className = "navigation_top_content_right_icon_user_menu_item";
    qqt2.className = "navigation_top_content_right_icon_user_menu_item_active";
    qqt3.className = "navigation_top_content_right_icon_user_menu_item";
    qqt4.className = "navigation_top_content_right_icon_user_menu_item";
    qqt5.className = "navigation_top_content_right_icon_user_menu_item";
});
qqt3.addEventListener("mouseenter", function(){
    console.log('유저버튼');
    qqt1.className = "navigation_top_content_right_icon_user_menu_item";
    qqt2.className = "navigation_top_content_right_icon_user_menu_item";
    qqt3.className = "navigation_top_content_right_icon_user_menu_item_active";
    qqt4.className = "navigation_top_content_right_icon_user_menu_item";
    qqt5.className = "navigation_top_content_right_icon_user_menu_item";
});
qqt4.addEventListener("mouseenter", function(){
    console.log('유저버튼');
    qqt1.className = "navigation_top_content_right_icon_user_menu_item";
    qqt2.className = "navigation_top_content_right_icon_user_menu_item";
    qqt3.className = "navigation_top_content_right_icon_user_menu_item";
    qqt4.className = "navigation_top_content_right_icon_user_menu_item_active";
    qqt5.className = "navigation_top_content_right_icon_user_menu_item";
});
qqt5.addEventListener("mouseenter", function(){
    console.log('유저버튼');
    qqt1.className = "navigation_top_content_right_icon_user_menu_item";
    qqt2.className = "navigation_top_content_right_icon_user_menu_item";
    qqt3.className = "navigation_top_content_right_icon_user_menu_item";
    qqt4.className = "navigation_top_content_right_icon_user_menu_item";
    qqt5.className = "navigation_top_content_right_icon_user_menu_item_active";
});
//--------
//--------





user_icon.addEventListener("click", function(){
    console.log('유저버튼');
    user_icon_menu_base.className="navigation_top_content_right_icon_user_base";

});



user_icon_menu.addEventListener("mouseleave", function(){
    console.log('유저버튼');
    qqt0.className= "navigation_top_content_right_icon_user_menu ppp";
    qqt1.className = "navigation_top_content_right_icon_user_menu_item";
    qqt2.className = "navigation_top_content_right_icon_user_menu_item";
    qqt3.className = "navigation_top_content_right_icon_user_menu_item";
    qqt4.className = "navigation_top_content_right_icon_user_menu_item";
    qqt5.className = "navigation_top_content_right_icon_user_menu_item";
    user_icon_menu_base.className="navigation_top_content_right_icon_user_base ppp";
});
//------------------------




//---------------------
navigation_bot_content_menu_item1.addEventListener("mouseenter", function(){
    console.log('qqq1');
    navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item_active';
    navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});

navigation_bot_content_menu_item2.addEventListener("mouseenter", function(){
    console.log('qqq2');
    navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item_active';
    navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});

navigation_bot_content_menu_item3.addEventListener("mouseenter", function(){
    console.log('qqq3');
    navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item_active';
    navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});
navigation_bot_content_menu_item4.addEventListener("mouseenter", function(){
    console.log('qqq4');
    navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item_active';
    navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});

navigation_bot_content_menu_item5.addEventListener("mouseenter", function(){
    console.log('qqq5');
    navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item_active';
    // navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});

navigation_bot_content_menu_item6.addEventListener("mouseenter", function(){
    console.log('qqq6');
    // navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item_active';
    navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});
navigation_bot_content_menu_item7.addEventListener("mouseenter", function(){
    console.log('qqq7');
    // navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item_active';
    navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});

navigation_bot_content_menu_item8.addEventListener("mouseenter", function(){
    console.log('qqq8');
    // navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item_active';
    navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item';
});

navigation_bot_content_menu_item9.addEventListener("mouseenter", function(){
    console.log('qqq9');
    // navigation_bot_content_menu_item1.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item2.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item3.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item4.className= 'navigation_bot_content_menu_item';
    // navigation_bot_content_menu_item5.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item6.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item7.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item8.className= 'navigation_bot_content_menu_item';
    navigation_bot_content_menu_item9.className= 'navigation_bot_content_menu_item_active';
});

headerrange.addEventListener("mouseleave", function(event){
    
    console.log('headrrange');
    navigation_bot_content_menu_item1.className= navigation_bot_content_menu_item11;
    navigation_bot_content_menu_item2.className= navigation_bot_content_menu_item22;
    navigation_bot_content_menu_item3.className= navigation_bot_content_menu_item33;
    navigation_bot_content_menu_item4.className= navigation_bot_content_menu_item44;
    navigation_bot_content_menu_item5.className= navigation_bot_content_menu_item55;
    navigation_bot_content_menu_item6.className= navigation_bot_content_menu_item66;
    navigation_bot_content_menu_item7.className= navigation_bot_content_menu_item77;
    navigation_bot_content_menu_item8.className= navigation_bot_content_menu_item88;
    navigation_bot_content_menu_item9.className= navigation_bot_content_menu_item99;

    store.className= store2;
    community.className= community2;
    notice.className= notice2;

});



navigation_top_content_right_icon1.addEventListener("mouseenter", function(){
    console.log('스크랩in');
    navigation_top_content_right_icon1.className = 'navigation_top_content_right_icon navigation_top_content_right_icon_active';
});
navigation_top_content_right_icon1.addEventListener("mouseleave", function(){
    console.log('스크랩');
    navigation_top_content_right_icon1.className = 'navigation_top_content_right_icon';
});


navigation_top_content_right_icon2.addEventListener("mouseenter", function(){
    console.log('장바구니');
    navigation_top_content_right_icon2.className = 'navigation_top_content_right_icon navigation_top_content_right_icon_active';
});
navigation_top_content_right_icon2.addEventListener("mouseleave", function(){
    console.log('장바구니');
    navigation_top_content_right_icon2.className = 'navigation_top_content_right_icon';
});
//------
navigation_top_content_right_login_item1.addEventListener("mouseenter", function(){
    console.log('로그인');
    navigation_top_content_right_login_item1.className = 'navigation_top_content_right_login_item no navigation_top_content_right_login_item_active';
});
navigation_top_content_right_login_item1.addEventListener("mouseleave", function(){
    console.log('로그인');
    navigation_top_content_right_login_item1.className = 'navigation_top_content_right_login_item no';
});


navigation_top_content_right_login_item2.addEventListener("mouseenter", function(){
    console.log('회원가입');
    navigation_top_content_right_login_item2.className = 'navigation_top_content_right_login_item navigation_top_content_right_login_item_active';
});
navigation_top_content_right_login_item2.addEventListener("mouseleave", function(){
    console.log('회원가입');
    navigation_top_content_right_login_item2.className = 'navigation_top_content_right_login_item';
});