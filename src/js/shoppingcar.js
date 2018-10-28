jQuery(function($){
    var $shopping = $("article .carbox .shopping");
    var $sum = $("article .carbox h5 .sum");
    // console.log($sum);
    $.getCart = function(){
        $.ajax({
            type: 'GET',
            url: '../../src/api/getname.php',
            dataType: 'json',
            async: false,
            success:function(name){
                // console.log(name);
                $.get({
                    // type: 'GET',
                    url: '../../src/api/shoppingcar.php',
                    dataType: 'json',
                    async: false,
                    data: {uname:name},
                    success:function(data){
                        var html = "";
                        var sum =0;
                        $.each(data,function(idx,item){
                            sum +=Number(item.num);
                            html += `<li class="m-cart" data-id="${item.id}">
                                    <p>
                                        <input type="checkbox" class="check" />
                                        <a href="#">${item.point}</a>
                                    </p>
                                    <div class="goods">
                                        <div class="m-goods">
                                            <div class="col col0">
                                                <input type="checkbox" class="check" />
                                            </div>
                                            <div class="col col2">
                                                <a href="#"><img src="${item.imgurl}" alt="" /></a>
                                                <p>
                                                    <a href="#">${item.goodsname}</a>
                                                </p>
                                            </div>
                                            <div class="col col3">
                                                <del class="oldprice">${item.oldprice}</del>
                                                <span class="newprice">${item.newprice}</span>
                                            </div>
                                            <div class="col col4">
                                                <span class="jian">-</span>
                                                <input type="text" max="99" min="1" data-value="1" class="num" value="${item.num}"/>
                                                <span class="jia">+</span>
                                            </div>
                                            <div class="col col5">
                                                <span class="sum">${item.total}</span>
                                            </div>
                                            <div class="col col6">
                                                <a class="del opt">删除</a>
                                                <span class="opt">移入我的收藏</span>
                                            </div>
                                        </div>
                                        <div class="carinfo">
                                            <span class="discount">活动优惠：-￥0.00</span>
                                            <span>商品应付总计：￥<em class="totalnum">${item.total}</em></span>
                                            <span class="shuifei"><em>预估税费：</em>￥0.00</span>
                                        </div>
                                        </div>
                                    </li>`;
                        })
                        $sum.html(sum);
                        $shopping.html(html);
                    }
                });
            }
        });
    }
    
    $.getCart();
    // 点击增加商品数量
    $(".shopping").on("click",".jia",function(){
        // console.log($(this).parents(".m-cart").attr("data-id"));
        var $id = $(this).parents(".m-cart").attr("data-id");
        var $newprice = $(this).parent().prev().find(".newprice").html();
        var $num = $(this).prev();
        $num.val(Number($num.val())+1);
        var $sum = ($num.val() * $newprice).toFixed(2);
        // console.log($num,$num.val(),$newprice,$sum);
        $.ajax({
            type: 'GET',
            url: '../api/changecart.php',
            dataType: 'json',
            // async: false,
            data: {id:$id,num:$num.val(),total:$sum}
        });
        $.getCart();
    });
    // 点击减少商品数量
    $(".shopping").on("click",".jian",function(){
        var $id = $(this).parents(".m-cart").attr("data-id");
        var $newprice = $(this).parent().prev().find(".newprice").html();
        var $num = $(this).next();
        if($num.val() > 1){
            $num.val($num.val() - 1);
            var $sum = ($num.val() * $newprice).toFixed(2);
            $.get({
                url: '../api/changecart.php',
                dataType: 'json',
                data: {id:$id,num:$num.val(),total:$sum}
            });
            $.getCart();
        }
    });
    // 点击删除商品
    $(".shopping").on("click",".del",function(){
        var $id = $(this).parents(".m-cart").attr("data-id");
        $.get({
            url: '../api/delcart.php',
            dataType: 'json',
            data: {id:$id}
        });
        $.getCart();
    });
    // 数量框失去焦点
    $(".shopping").on("blur",".num",function(){
        var $id = $(this).parents(".m-cart").attr("data-id");
        var $newprice = $(this).parent().prev().find(".newprice").html();
        var $sum = ($(this).val() * $newprice).toFixed(2);
        $.get({
            url: '../api/changecart.php',
            dataType: 'json',
            data: {id:$id,num:$(this).val(),total:$sum}
        });
        $.getCart();
    })


    var $allCheckbox = $(":checkbox").filter("#checkAll");
    var $sCheckbox = $(":checkbox").not("#checkAll");
    var $gobuy = $(".carbox .gobuy");
    $(".shopping").on("click",".check",function(){
        $(this).parent().next().find(".check").prop("checked",this.checked);
        $(this).parents(".goods").prev().find(".check").prop("checked",this.checked);
        $.changecheckAll();
        $.getNum();
        $.getColor();
    })
    $(".carbox").on("click","#checkAll",function(){
        $(this).parents(".m_car").nextAll(".totalbox").find("#checkAll").prop("checked",this.checked);
        $(this).parents(".totalbox").prevAll(".m_car").find("#checkAll").prop("checked",this.checked);
        $.getColor();
    })
    $allCheckbox.on("click",function(){
        $sCheckbox.prop("checked",this.checked);
        $.getNum();
        $.getColor();
    })
    $.changecheckAll = function(){
        var len = $sCheckbox.length;
        var checkedlen = $sCheckbox.filter(":checked").length;
        if(len == checkedlen){
            $allCheckbox.prop("checked",true);
        }else{
            $allCheckbox.prop("checked",false);
        }
    }
    $.getNum = function(){
        var $totality = $(".carbox .totalbox .rt .num1");
        var $totalprice = $(".carbox .totalbox .rt .num2");
        var $arr=$(":checked").not("#checkAll").parents(".m-cart").find(".num");
        var $price = $(":checked").not("#checkAll").parents(".m-cart").find(".sum");
        // console.log($totalprice,$price);
        var allNum = 0;
        var allPrice = 0;
        $arr.each(function(){          
            allNum+=Number($(this).val());
        })
        $price.each(function(){
            allPrice+=(Number($(this).html()));
        })
        $totality.html(allNum);
        $totalprice.text((allPrice).toFixed(2));             
    } 
    $.getColor = function(){
            if($(":checked").length>0){
                $gobuy.css("background-color","#e31436");
            }else if($(":checked").length==0){
                $gobuy.css("background-color","#ccc");
             } 
    }
    // 点击删除选中的商品
    var $ltb = $(".ltb");
    $ltb.on("click",function(){
        var $check = $(":checked").not("#checkAll");
        var $res = "";
        $check.parents(".m-cart").each(function(){
            $res += "," + $(this).attr("data-id");
        })
        $res = $res.slice(1);
        $.get({
            url: '../api/delcart.php',
            dataType: 'json',
            data: {id:$res}
        });
        $(":checked").prop("checked",false);
        $.getCart();
        $.getNum();
        $.getColor();
    })
})