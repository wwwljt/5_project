<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <h1 class="p1">轻度焦虑</h1>
    <h2 style="font-size: 22px; color: red">您有一点点焦虑</h2>
    <h2 style="font-size: 22px">【!自我治疗!】：</h2>
    <p class="p2">
        1.每天锻炼<br/><br/>
        2.保持积极的态度<br/><br/>
        3.充足的睡眠<br/><br/>
        4.了解是什么引发焦虑并缓解焦虑<br/><br/>
        5.均衡饮食<br/><br/>
    </p>
    <h2 style="font-size: 22px">【!!咨询医生，如果发现!! 】：</h2>
    <p class="p2">
        1.焦虑干扰日常工作<br/><br/>
        2.之前有过焦虑史<br/><br/>
        3.焦虑伴随失眠<br/><br/>
    </p>
    <%--<h2 style="font-size: 22px">【!!!立刻咨询医生，如果发现!!!】：</h2>
    <p class="p2">
        1.自杀念头<br/><br/>
        2.你有惊恐发作
    </p>--%>
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
        margin: 0 ;
        width: 600px;
        height: 730px;
        background-color: rgba(17, 17, 17, 0.51);
        border-radius: 25px;
        box-shadow: 5px 2px 35px -10px #f6f6f6;
    }
    .login h2{
        margin-top: 30px;
        color: #ffffff;
        margin-left: 30px;
        /*font-weight: 100;*/
    }
    .p1{
        font-size: 25px;
        color: #ffffff;
        margin-left: 30px;
        margin-top: 50px;
    }
    .p2{
        font-size: 21px;
        color: #ffffff;
        margin-left: 30px;
    }
</style>
</html>
