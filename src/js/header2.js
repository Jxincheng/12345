jQuery(function($){
    // var $log = $(".userlog");
    var $reg = $(".userreg");

    // 点击免费注册
    $reg.on("click",function(){
        location.href = "login.html?clform=userreg";
    })
})