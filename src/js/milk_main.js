jQuery(function($){
    var $li1 = $("#m1 .title li:first");
    var $m11 = $li1.attr("class");
    var $m12 = $li1.next().attr("class");
    var $m13 = $li1.next().next().attr("class");
    var $m14 = $li1.next().next().next().attr("class");
    var $li2 = $("#m2 .title li:first"); 
    var $m21 = $li2.attr("class");
    var $m22 = $li2.next().attr("class");
    var $m23 = $li2.next().next().attr("class");
    var $li3 = $("#m3 .title li:first");
    var $m31 = $li3.attr("class");
    var $m32 = $li3.next().attr("class");
    var $m4 = $("#main .main4").attr("id");
    var $m5 = $("#main .main5").attr("id");
    var $m6 = $("#main .main6").attr("id");
    var $li7 = $("#m7 .title li:first");
    var $m71 = $li7.attr("class");
    var $m72 = $li7.next().attr("class");
    var $li8 = $("#m8 .title li:first");
    var $m81 = $li8.attr("class");
    var $m82 = $li8.next().attr("class");

    var $ul11 = $("#m1 .content ul:first");
    var $ul12 = $ul11.next();
    var $ul13 = $ul12.next();
    var $ul14 = $ul13.next();
    var $ul21 = $("#m2 .content ul:first");
    var $ul22 = $ul21.next();
    var $ul23 = $ul22.next();
    var $ul31 = $("#m3 .content ul:first");
    var $ul32 = $ul31.next();
    var $ul4 = $("#m4 .content ul");
    var $ul5 = $("#m5 .content ul");
    var $ul6 = $("#m6 .content ul");
    var $ul71 = $("#m7 .content ul:first");
    var $ul72 = $ul71.next();
    var $ul81 = $("#m8 .content ul:first");
    var $ul82 = $ul81.next();
    
    $.ajax({
        url: '../api/milkmain.php',
        type: 'GET',
        dataType: 'json', 
        success:function(data){
            $.each(data,function(idx,item){
                if(item.code == $m11){
                    $ul11.html($ul11.html()+$.getLi(item));
                }
                if(item.code == $m12){
                    $ul12.html($ul12.html()+$.getLi(item));
                }
                if(item.code == $m13){
                    $ul13.html($ul13.html()+$.getLi(item));
                }
                if(item.code == $m14){
                    $ul14.html($ul14.html()+$.getLi(item));
                }
                if(item.code == $m21){
                    $ul21.html($ul21.html()+$.getLi(item));
                }
                if(item.code == $m22){
                    $ul22.html($ul22.html()+$.getLi(item));
                }
                if(item.code == $m23){
                    $ul23.html($ul23.html()+$.getLi(item));
                }
                if(item.code == $m31){
                    $ul31.html($ul31.html()+$.getLi(item));
                }
                if(item.code == $m32){
                    $ul32.html($ul32.html()+$.getLi(item));
                }
                if(item.code == $m4){
                    $ul4.html($ul4.html()+$.getLi(item));
                }
                if(item.code == $m5){
                    $ul5.html($ul5.html()+$.getLi(item));
                }
                if(item.code == $m6){
                    $ul6.html($ul6.html()+$.getLi(item));
                }
                if(item.code == $m71){
                    $ul71.html($ul71.html()+$.getLi(item));
                }
                if(item.code == $m72){
                    $ul72.html($ul72.html()+$.getLi(item));
                }
                if(item.code == $m81){
                    $ul81.html($ul81.html()+$.getLi(item));
                }
                if(item.code == $m82){
                    $ul82.html($ul82.html()+$.getLi(item));
                }
            })
        },
        error:function(){
            alert("error");
        }
    })
    jQuery.getLi = function(item){
        return `<li>
                    <a href="details.html?id=${item.id}">
                        <img src="${item.imgurl}" alt="" />
                        <img src="${item.jack}" alt="" />
                    </a>
                    <div class="jieshao">
                        <h4>
                            <a class="nr" href="details.html?id=${item.id}">${item.goodsname}</a>
                            <a class="qk" href="details.html?id=${item.id}">${item.title}</a>
                        </h4>
                        <p><b>￥</b>${item.newprice} <span>￥</span><del>${item.oldprice}</del></p>
                        <a class="mai" href="#">立即购买</a>
                    </div>
                </li>`;
    };
})