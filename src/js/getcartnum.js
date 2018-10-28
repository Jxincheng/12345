jQuery(function($){
    // 得到购物车的商品数量
    var $totalnum = $("#header .totalnum");
    var $sum = $("#main .mainR .sum");
    $.getNum = function(){
        $.ajax({
            type: 'GET',
            url: '../../src/api/getname.php',
            dataType: 'json',
            async: false,
            success:function(name){
                $.get({
                    url: '../../src/api/shoppingcar.php',
                    dataType: 'json',
                    async: false,
                    data: {uname:name},
                    success:function(data){
                        var sum =0;
                        if(data.length>0){
                            $.each(data,function(idx,item){
                            sum +=Number(item.num);
                            })
                            $totalnum.html(sum).css("display","block");
                            $sum.html(sum).css("display","block");
                        }else if(data.length==0){
                            $totalnum.html(sum).css("display","none");
                            $sum.html(sum).css("display","none");
                        }
                        
                    }
                });
            }
        })
    }
    $.getNum();
})