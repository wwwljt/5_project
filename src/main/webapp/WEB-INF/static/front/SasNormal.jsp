<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">。
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>焦虑测试结果详情</title>
    <script>
        // 防止页面回退
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function (event) {
            history.pushState(null, null, document.URL);
        })
    </script>
    <!-- author xjt -->
</head>
<body>
<div class="login">
    <h1 class="p1">正常</h1>
    <p class="p2">
        请您继续保持当前状态；<br/><br/>
        祝您身心愉悦，身体健康。<br/>
    </p>
</div>
</body>
<script>
    function login(){
        console.log('登录按钮点击了');
    }
</script>
<style>
    body{
        padding: 0;
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        background-image: linear-gradient(#a18cd1 0%, #fbc2eb 100%);
        background-image: url("${pageContext.request.contextPath}/img/逆水寒.jpg");
        background-size: cover;
        flex: 1;
        align-items: center;
    }
    .login{
        /*text-align: center;*/
        margin: 0 auto;
        width: 600px;
        min-height: 740px;
        background-color: rgba(17, 17, 17, 0.51);
        border-radius: 25px;
        box-shadow: 5px 2px 35px -10px #f6f6f6;
    }
    .login h2{
        margin-top: 40px;
        color: #ffffff;
        margin-left: 30px;
        /*font-weight: 100;*/
    }
    .p1{
        font-size: 25px;
        color: #ffffff;
        margin-left: 30px;
    }
    .p2{
        font-size: 21px;
        color: #ffffff;
        margin-left: 30px;
    }


</style>
</html>
