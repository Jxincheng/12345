jQuery(function($){
    var $phone = $(".phone");
    var $email = $(".email");
    var $tel = $(".tel");
    var $mimap = $(".mimap");
    var $duanxinp = $(".duanxinp");
    var $wyemail = $(".wyemail");
    var $telephone = $(".telephone");
    var $duanxin = $(".duanxin");
    var $mima = $(".mima");

    var $lform = $(".lform");
    var $rform = $(".rform");
    var $zhuce = $(".kuaizc");
    var $denglu = $(".qulogin");
    // 点击手机号登陆
    if($phone.css("color") != "red"){
        $phone.on("click",function(){
            $(this).css("color","red");
            $email.css("color","#666");
            $tel.css("display","block");
            $wyemail.addClass('hide');
            $telephone.css("display","block");
        })
    }
    // 点击密码验证登录
    $mimap.on("click",function(){
        $(this).addClass('hide');
        $duanxinp.removeClass('hide');
        $duanxin.addClass('hide');
        $mima.removeClass('hide');


    // 使用手机号、密码登录
        var $rbtnd = $(".lform .rbtn");
        var $testMimad = $(".lform .mima .testMima");
        // console.log($rbtnd,$testMimad);
        $rbtnd.on("click",function(){
            // console.log("ok");
            // console.log($("#telephone").val());
            if($("#telephone").val() == ""){
                $testMimad.html("手机号不能为空").css("color","red");
            }else if($("#password").val() == ""){
                $testMimad.html("密码不能为空").css("color","red");
            }else{
                $.post({
                    url: '../api/login.php',
                    dataType: 'json',
                    data: {telephone:$("#telephone").val(),password:$("#password").val()},
                    success:function(data){
                        console.log(data);
                        console.log($("#password").val());
                        if(data == 0){
                            $testMimad.html("手机号错误").css("color","red");
                        }else if(data == 1){
                            $testMimad.html("密码错误").css("color","red");
                        }else if(data == 2){
                            $.get({                              
                                url: '../api/setname.php',
                                dataType: 'json',
                                data: {uname:$("#telephone").val()}
                            })
                            location.href="../index.html";
                        }
                    },
                    error:function(){
                        alert("错误");
                    }
                })
            }
        });
        // 手机号框、密码框获取焦点报错语句消失
        $("#telephone").on("focus",function(){
            $testMimad.html("");
        });
        $("#password").on("focus",function(){
            $testMimad.html("");
        });
    });
    // 点击短信验证登录
    $duanxinp.on("click",function(){
        $(this).addClass('hide');
        $mimap.removeClass('hide');
        $duanxin.removeClass('hide');
        $mima.addClass('hide');
    })
    // 点击邮箱登录
    if($email.css("color") != "red"){
        $email.on("click",function(){
            $(this).css("color","red");
            $phone.css("color","#666");
            $tel.css("display","none");
            $wyemail.removeClass('hide');
            $telephone.css("display","none");
        })
    }
    // 点击手机快捷注册
    $zhuce.on("click",function(){
        $lform.css("display","none");
        $rform.css("display","block");      
    })
    // 点击去登陆
    $denglu.on("click",function(){
        $rform.css("display","none");
        $lform.css("display","block");
    })
    
    // 获取头部点击注册
    var $userreg = location.search;
    $userreg = $userreg.slice(1);
    var $userregArr = $userreg.split("=");
    if($userregArr[1] == "userreg"){
        $lform.css("display","none");
        $rform.css("display","block");
    }

    // 注册时验证手机号是否被注册
    var $phone = $("#phone");
    var $testName = $(".rform .testName");
    $phone.blur(function(){
        var txt = $phone.val();
        $.ajax({
            type: 'GET',
            url: '../api/uname.php',
            data: "uname="+txt,
            success:function(data){
                if(data == "cunzai"){
                    $testName.html('该手机号已被注册').css("color","red");
                }else if(data == "ok"){
                    $testName.html('手机号输入成功').css("color","#58bc58");
                }else if(data == "kong"){
                    $testName.html('手机号不能为空').css("color","red");
                }
            },
            error:function(){
                alert("错误");
            }
        })
    });
    // 点击注册
    var $rbtnz = $(".rform .rbtn");
    // var tName = $testName.html();  
    $rbtnz.on("click",function(){
        if($("#yzma").val() == $("#getyzm").html()){
            if($("#mima").val() != ""){
                $.post({
                    url: '../api/register.php',
                    dataType: 'json',
                    data: {uname:$phone.val(),password:$("#mima").val()}
                })
                location.href="../index.html";
            }else{
                $(".testMima").html("密码不能为空").css("color","red");
            }
        }else{
            $(".testMa").html("验证码错误").css("color","red");
        }
    });

    
})