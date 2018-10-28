jQuery(function($){
    var $firstLi1 = $(".main1 .title ul li:first");
    var $li1 = $(".main1 .title ul li");
    var $content1 = $(".main1 .content");

    $firstLi1.css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
    $content1.children().eq(0).show().siblings().hide();
    $li1.on("mouseover",function(){
        $(this).css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
        $(this).siblings().css({"background-color":"rgb(218, 240, 254)","border-color":"","color":"#333"});
        $content1.children().eq($(this).index()).show().siblings().hide();
    });

    var $firstLi2 = $(".main2 .title ul li:first");
    var $li2 = $(".main2 .title ul li");
    var $content2 = $(".main2 .content");
    $firstLi2.css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
    $content2.children().eq(0).show().siblings().hide();
    $li2.on("mouseover",function(){
        $(this).css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
        $(this).siblings().css({"background-color":"rgb(218, 240, 254)","border-color":"","color":"#333"});
        $content2.children().eq($(this).index()).show().siblings().hide();
    });

    var $firstLi3 = $(".main3 .title ul li:first");
    var $li3 = $(".main3 .title ul li");
    var $content3 = $(".main3 .content");
    $firstLi3.css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
    $content3.children().eq(0).show().siblings().hide();
    $li3.on("mouseover",function(){
        $(this).css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
        $(this).siblings().css({"background-color":"rgb(218, 240, 254)","border-color":"","color":"#333"});
        $content3.children().eq($(this).index()).show().siblings().hide();
    })

    var $firstLi7 = $(".main7 .title ul li:first");
    var $li7 = $(".main7 .title ul li");
    var $content7 = $(".main7 .content");
    $firstLi7.css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
    $content7.children().eq(0).show().siblings().hide();
    $li7.on("mouseover",function(){
        $(this).css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
        $(this).siblings().css({"background-color":"rgb(218, 240, 254)","border-color":"","color":"#333"});
        $content7.children().eq($(this).index()).show().siblings().hide();
    })

    var $firstLi8 = $(".main8 .title ul li:first");
    var $li8 = $(".main8 .title ul li");
    var $content8 = $(".main8 .content");
    $firstLi8.css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
    $content8.children().eq(0).show().siblings().hide();
    $li8.on("mouseover",function(){
        $(this).css({"background-color":"rgb(186, 36, 84)","border-color":"rgb(186, 36, 84)","color":"#fff"});
        $(this).siblings().css({"background-color":"rgb(218, 240, 254)","border-color":"","color":"#333"});
        $content8.children().eq($(this).index()).show().siblings().hide();
    })

    var $aside = $("#main aside");
    $aside.hide();
    $(window).scroll(function(){       
        if($(window).scrollTop() >= 130){
            $aside.show();
        }else if($(window).scrollTop() < 130){
            $aside.hide();
        }
    });
})