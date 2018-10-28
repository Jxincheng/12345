jQuery(function($){
    var $id = location.search;
    $id = $id.slice(1);
    var $idArr = $id.split("=");
    // console.log($id,$idArr,$idArr[1]);
    var $goodsname = $("article .crumb span:last");
    var $showImg = $("article .goods #showImg");
    var $showDetails = $("article .goods .showDetails");
    var $country = $("article .goods .country");
    var $name = $("article .goods .goods-title span");
    var $title = $("article .goods .subtit");
    var $newprice = $("article .goods .cprice span");
    var $oldprice = $("article .goods .addprice span");
    $.ajax({
        type: 'GET',
        url: '../api/details.php',
        dataType: 'json',
        data: {id:$idArr[1]},
        success:function(data){
            $.each(data,function(idx,item){
                $goodsname.html(item.goodsname);
                // $showImg.html(`<img src="${item.imgurl}" alt="" />
                //         <b class="shadow"></b>`);
                $showImg.html(`<a href="${item.imgurl}"><img src="${item.imgurl}" rel="${item.imgurl}" class="jqzoom" /></a>`);
                $showDetails.html(`<img src="${item.imgurl}" alt="" />`);
                $country.html(`<img src="${item.jack}" alt="" />
                            <span>${item.country}</span>  |
                            <a href="#">${item.brand}</a>`);
                $name.html(item.goodsname);
                $title.html(item.title);
                $newprice.html(item.newprice);
                $oldprice.html(item.oldprice);
            })
        },
        error:function(){
            alert("调皮了");
        }
    });
    // 商品数量的加减
    var $jian = $("article .goods .shu .jian");
    var $num = $("article .goods .shu .num");
    var $jia = $("article .goods .shu .jia");
    $jian.on("click",function(){
        if($num.val() > 1){
            $num.val($num.val()-1);
        }
    })
    $jia.on("click",function(){
        $num.val(Number($num.val())+1);
    })

    // 点击加入购物车
    var $addCar = $("#addCar");
    var $buyBtn = $("#buyBtn");
    var $point = $("article .goods .fuwu .point");

    $addCar.on("click",function(){       
        $.addCart();
        $.getNum();
    })
    $buyBtn.on("click",function(){
        $.addCart();
        location.href="../html/shoppingcar.html";
    })
    $.addCart = function(){
        // console.log(($num.val()*$newprice.html()).toFixed(2));
        var $total = ($num.val()*$newprice.html()).toFixed(2);
        $.ajax({
            async: false,
            type: 'GET',
            url: '../../src/api/getname.php',
            dataType: 'json',           
            success:function(name){
                // console.log($num.val(),$total,name,$idArr[1],$point.html());
                $.ajax({
                    async: false,
                    type: 'GET',
                    url: '../../src/api/addcart.php',
                    dataType: 'json',
                    data: {num:$num.val(),total:$total,uname:name,goodsId:$idArr[1],point:$point.html()}
                });
            },
            error:function(){
                alert("请前往登录页面登录后再进行购买");
            }
        });
    }

    // // 放大镜
    // $(".jqzoom").imagezoom();
})