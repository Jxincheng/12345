jQuery(function($){
    var $userlog = $("#top .topLeftl .userlog");
    $.getname = function(){
        $.ajax({
            type: 'GET',
            url: '../../src/api/getname.php',
            dataType: 'json',
            success:function(data){
                // console.log(data);
                $userlog.html(data).next().removeClass("hide");
            },
            error:function(){
                $userlog.html("登录");
            }
        })
    }
    $.getname();


    $userlog.next().on("click",function(){
        $(this).addClass("hide");
        $.get({
            url: '../../src/api/delname.php'
        })
        $.getname();
    })


})