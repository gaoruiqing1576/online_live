$(function() {
    var uShow = $("#lunameShow")
    var pShow = $("#lupwdShow")
    var uname = $("#luname")
    var upwd = $("#lupwd")
    var loginShow=$("#loginShow")
    var unameReg = /^[a-zA-Z0-9]{6,14}/
    var upwdRed = /^[a-zA-Z0-9]{8,16}/
    uname.focus()
    uname.on("focus", function () {
        uShow.html("用户名格式必须6到14位").css("color", "#000")
    })
    uname.on("blur", function () {
        var unameVal = uname.val()
        if (!unameReg.test(unameVal)) {
            uShow.html("用户名格式不正确,必须6到14位").css("color", "red")
            return
        }
    })

    upwd.on("focus", function () {
        pShow.html("用户密码格式必须8到16位").css("color", "#000")
    })
    upwd.on("blur", function () {
        var upwdVal = upwd.val()
        if (!upwdRed.test(upwdVal)) {
            pShow.html("用户密码格式不正确,必须8到16位").css("color", "red")
            return
        }
    })

    $("#loginBtn").click(()=>{
        var luname=uname.val()
        var lupwd =upwd.val()
        // console.log(luname+":"+lupwd)
        if(unameReg.test(luname)&&upwdRed.test(lupwd)) {
            $.ajax({
                type: "POST",
                url: "data/code/login.php",
                data:{uname:luname,upwd:lupwd},
                success: function(data){
                    if(data.code==1){
                        var html=''
                        html=`${data.msg}<br>确定跳转首页或5秒后自动跳转首页`
                        loginShow.show().children('p').html(html)
                        $("#loginBtn").hide()
                        loginShow.children('input').click(function(){
                            location.href="homepage.html"
                        })
                        var timer=setTimeout(()=>{
                            location.href="homepage.html"
                        },5000)
                    }else{
                        html=`${data.msg}`
                        loginShow.show().children('p').html(html)
                        loginShow.children('input').click(function(){
                            loginShow.hide()
                        })
                    }
                },
                error: function(){
                    alert("网络错误,请检查!")
                }
            })
        }else{
            var html=''
            html="用户名或者密码格式不正确,请重新输入!"
            loginShow.show().children('p').html(html)
            loginShow.children('input').click(function(){
                loginShow.hide()
            })
        }
    })
})
$(function(){
    $("#registeBtn").click(function(e){
        e.preventDefault()
        $(".loginBox").hide()
        $(".register").show()
        $("#registerBtn").show()
    })
})


// 注册相关
$(function(){
    // 获取页面内容
    var unameInp = $("#runame")
    var upwdInp = $("#rupwd")
    var emailInp=$("#email")
    var phoneInp=$("#phone")
    var user_nameInp=$("#user_name")

    //获取显示show
    var uShow = $("#runameShow")
    var pShow = $("#rupwdShow")
    var eShow=$("#emailShow")
    var phShow=$("#phonelShow")
    var unameShow=$("#user-nameShow")
    var loginShow=$("#loginShow")

    //正则表达式验证
    var unameReg = /^[a-zA-Z0-9]{6,14}/
    var upwdRed = /^[a-zA-Z0-9]{8,16}/
    var emailRed=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
    var phoneRed=/^^1[3|4|5|7|8][0-9]{9}$$/
    var user_nameRed=/^[a-zA-Z\u4e00-\u9fa5]{1,32}$/

    //失去焦点时验证
    // 用户名
    unameInp.on("focus", function () {
        uShow.html("用户名格式必须6到14位(必填)").css("color", "#000")
    })
    unameInp.on("blur", function () {
        var uname=unameInp.val()
        if (!unameReg.test(uname)) {
            uShow.html("用户名格式不正确,必须6到14位").css("color", "red")
            return
        }else{
            $.ajax({
                type:"POST",
                url: "data/code/selectUid.php",
                data:{uname:uname},
                success:function(data){
                    if(data.code==1){
                        var html=''
                        html=`${data.msg}`
                        uShow.html(html).css("color", "green")
                    }else{
                        var html=''
                        html=`${data.msg}`
                        uShow.html(html).css("color", "red")
                    }
                },
                error:function(){
                    alert("网络错误,请检查!")
                }
            })
        }
    })
    // 密码
    upwdInp.on("focus", function () {
        pShow.html("用户密码格式必须8到16位(必填)").css("color", "#000")
    })
    upwdInp.on("blur", function () {
        var upwd = upwdInp.val()
        if (!upwdRed.test(upwd)) {
            pShow.html("用户密码格式不正确,必须8到16位(必填)").css("color", "red")
            return
        }
    })
    //Email
    emailInp.on("focus", function () {
        eShow.html("邮箱格式必须加@(必填)").css("color", "#000")
    })
    emailInp.on("blur", function () {
        var email=emailInp.val()
        if (!emailRed.test(email)) {
            eShow.html("邮箱格式不正确,必须加@").css("color", "red")
            return
        }
    })
    //电话号码验证
    phoneInp.on("focus", function () {
        phShow.html("电话格式必须以1开头的11位(必填)").css("color", "#000")
    })
    phoneInp.on("blur", function () {
        var phone=phoneInp.val()
        if (!phoneRed.test(phone)) {
            phShow.html("电话格式不正确").css("color", "red")
            return
        }
    })
    //真实姓名
    user_nameInp.on("focus", function () {
        unameShow.html("用户姓名必须中文和英文大小写字母组成(必填)").css("color", "#000")
    })
    user_nameInp.on("blur", function () {
        var user_name=user_nameInp.val()
        if (!user_nameRed.test(user_name)) {
            unameShow.html("用户姓名不正确").css("color", "red")
            return
        }
    })

    // // 发送ajax请求
    $("#registerBtn").click(function(){
            var uname=unameInp.val()
            var upwd = upwdInp.val()
            var email=emailInp.val()
            var phone=phoneInp.val()
            var user_name=user_nameInp.val()
            var gender=$('#gender>span>input:radio[name="rod"]:checked').val()
            console.log(uname+":"+upwd+":"+email+":"+phone+":"+user_name+":"+gender)
        if(unameReg.test(uname)&&upwdRed.test(upwd)&&emailRed.test(email)&&phoneRed.test(phone)&&user_nameRed.test(user_name)){
            $.ajax({
                type:"POST",
                url: "data/code/register.php",
                data:{uname:uname,upwd:upwd,email:email,phone:phone,user_name:user_name,gender:gender},
                success:function(data){
                    if(data.code==1){
                        var html=''
                        html=`${data.msg}<br>确定跳转登录页面或5秒后自动跳转登录页面`
                        loginShow.show().children('p').html(html)
                        $("#registerBtn").hide()
                        $("#loginBtn").show()
                        loginShow.children('input').click(function(){
                            $(".register").hide()
                            $(".loginBox").show()
                            loginShow.hide()
                            window.location.reload(true)
                        })
                        var timer=setTimeout(()=>{
                            $(".register").hide()
                            $(".loginBox").show()
                            loginShow.hide()
                            window.location.reload(true)
                        },5000)
                    }
                },
                error:function(){
                    alert("网络错误,请检查!")
                }
            })
        }else{
            var html=''
            html="填写格式有误,请检查后再注册!"
            loginShow.show().children('p').html(html)
            loginShow.children('input').click(function(){
                loginShow.hide()
            })
        }
    })
})

//绑定返回登录按钮
$(function(){
    $("#return").click(function(e){
        e.preventDefault()
        $(".register").hide()
        $(".loginBox").show()
        $("#loginBtn").show()
    })
})