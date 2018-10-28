jQuery(function($){
    var $mainR = $("#main .mainR");
    $(window).scroll(function(){
        var $header = $("#header");
        var $logo = $("#header h2 .logo");
        var $kuang = $("#header .kuang");
        var $ul = $("#header ul");
        var $car = $("#header .car");

        var $mainL = $("#main .mainL");
        
        if($(window).scrollTop() >= 130){
            $header.addClass("fixed");
            $ul.addClass('hide');
            $car.css("display","none");
            $header.css("height","50px");
            $kuang.css("margin-top","5px");
            $logo.css({"height":"40px","margin-top":"5px"});
        }else if($(window).scrollTop() < 130){
            $header.removeClass("fixed");
            $ul.removeClass('hide');
            $car.css("display","block");
            $header.css("height","100px");
            $kuang.css("margin-top","24px");
            $logo.css({"height":"64px","margin-top":"20px"});
        }
        if($(window).scrollTop() >= 596){
            $mainL.css({"position":"fixed","top":"60px"});
            $mainR.css({"position":"fixed","top":"60px"});
        }else if($(window).scrollTop() < 596){
            $mainL.css({"position":"absolute","top":"-372px"});
            $mainR.css({"position":"absolute","top":"-372px"});
        }
    });
    
    var $top = $mainR.children().children().last().children();
    $top.on("click",function(){
        $('html ,body').animate({scrollTop: 0}, 1000);
    })
})