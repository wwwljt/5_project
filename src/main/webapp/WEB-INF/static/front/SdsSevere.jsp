<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>抑郁测试结果详情</title>
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
    <h1 class="p1">重度抑郁</h1>
    <h2 style="font-size: 22px; color: red">!!!建议前往医院治疗!!!</h2>
    <h2 style="font-size: 22px">【!自我治疗!】：</h2>
    <p class="p2">
        1.不要把情绪和不满压抑在心里，尝试与您的朋友和家人进行交流，哭泣和交谈可以帮您排解掉部分情绪<br/><br/>

        2.尽自己所能，不要给自己设定下不切实际的目标<br/><br/>

        3.适量运动，跑步，健身操或者跳舞，流汗的同时会流掉一些内心的不愉悦<br/><br/>

        4.均衡饮食，帮助自己建立健康的饮食方式<br/><br/>

        5.戒酒，不要把自己的忧伤淹没在酒精中，酒精会压抑您的情绪<br/><br/>

        6.每天给自己积极的鼓励，为自己加油，读一些正能力的书籍<br/><br/>

        7.听听轻音乐，深呼吸，放松自己的身心<br/><br/>
    </p>
</div>
</body>
<script>
    function login() {
        console.log('登录按钮点击了');
    }
</script>
<style>
    body {
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

    .login {
        /*text-align: center;*/
        margin: 0 auto;
        width: 650px;
        min-height: 740px;
        background-color: rgba(17, 17, 17, 0.66);
        border-radius: 25px;
        box-shadow: 5px 2px 35px -10px #f6f6f6;
    }

    .login h2 {
        margin-top: 40px;
        color: #ffffff;
        margin-left: 30px;
        margin-right: 30px;
        /*font-weight: 100;*/
    }

    .p1 {
        font-size: 25px;
        color: #ffffff;
        margin-left: 30px;
        margin-right: 30px;
    }

    .p2 {
        font-size: 21px;
        color: #ffffff;
        margin-left: 30px;
        margin-right: 30px;
    }


</style>
</html>
