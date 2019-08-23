<template>
<div>
 <div class="login">
        <img src="../../public/img/hear-88/656.jpg" alt="" class="logo">
        <div class="loginBox">
            <h1>用户登录</h1>
            <p>用户名:</p>
            <input type="text" id="luname" placeholder="请输入用户名">
            <div id="lunameShow" class="show">用户名格式必须6到14位</div>
            <p>用户密码:</p>
            <input type="password" id="lupwd" placeholder="请输入用户密码">
            <div id="lupwdShow" class="show">用户密码格式必须8到16位</div>
            <br>
            <div class="btnBox">
                <button id="loginBtn" class="btn loginBtn">登录</button>
                <a href="http://localhost:8080/#/login" id="registeBtn">账号注册</a>
            </div>
            <a href="homepage.html" class="homepageBtn">返回首页</a>
        </div>
        <div class="register">
            <h1>用户注册</h1>
            <p>用户名:</p>
            <input type="text" id="runame" placeholder="请输入用户名">
            <div id="runameShow" class="show">用户名格式必须6到14位英文大小写数字_-(必填)</div>
            <p>用户密码:</p>
            <input type="password" id="rupwd" placeholder="请输入用户密码">
            <div id="rupwdShow" class="show">用户密码格式必须8到16位英文大小写数字_-(必填)</div>
            <p>Email:</p>
            <input type="email" id="email" placeholder="请输入用户邮箱">
            <div id="emailShow" class="show">邮箱格式必须加@(必填)</div>
            <p>联系电话:</p>
            <input type="text" id="phone" placeholder="请输入用户联系电话">
            <div id="phonelShow" class="show">电话格式必须以1开头的11位(必填)</div>
            <p>真实姓名:</p>
            <input type="text" id="user_name" placeholder="请输入用户真实姓名">
            <div id="user-nameShow" class="show">用户姓名必须中文和英文大小写字母组成(必填)</div>
            <p>性别:</p>
            <div id="gender" class="gender">
                <span class="s1"><input type="radio" name="rod"  checked  value="1">男</span>
                <span class="s2"><input type="radio" name="rod"  value="0">女</span>
            </div>
            <div class="btnBox">
                <button id="registerBtn" class="btn registerBtn">注册</button>
                <a href="http://localhost:8080/#/login" id="return">返回登录</a>
            </div>

        </div>
    </div>
    <div id="loginShow">
        <p></p>
        <input type="button" value="确定" class="showBtn">
    </div>
    </div>
</template>


<script>
import {myfun} from '../../public/js/login.js'
export default {
  
}
</script>

<style>
@import url("../assets/css/login.css");
</style>