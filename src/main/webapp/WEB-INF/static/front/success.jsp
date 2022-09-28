<!doctype html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试完成</title>
    <script>
        // 防止页面回退
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function (event) {
            history.pushState(null, null, document.URL);
        })
    </script>
<!--    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>-->
    <script src="https://cdn.bootcss.com/jspdf/1.5.3/jspdf.min.js"></script>
    <script src="https://cdn.bootcss.com/html2canvas/0.5.0-alpha2/html2canvas.min.js"></script>

    <script src="/layui/jquery-3.4.1.js"></script>
    <script src="/layui/echarts.min.js"></script>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <style>
        .main-div{
            width: 550px;
            float: right;
        }
        .main-picture{
            width: 470px;height: 350px;margin: 0 auto;background-color: white;padding: 20px 20px 0px 20px
        }

        .div-btn{
            width:300px;
            height: 700px;
            position:fixed;
            left:60%;
            top:0px;
            z-index: 2;
            margin: 20px;
            padding: 15px;
            text-align: center;
            border: 2px solid #d3d3d3;
            border-radius: 10px;
        }
        @media screen and (max-device-width: 1000px) {
            .main-div{
                width: 100%;
            }
            .main-picture{
                width: 85%;
            }
            .div-btn{
                position: relative;
                width: 100%;
                height: 500px;
                bottom: 0;
                left: 0;
                right: 0;
                margin: 0;
                top: initial;
                border: none;
            }
        }
    </style>
</head>
<body>


<div class="layui-row">
    <div class="layui-col-md7">
        <div class="main-div" id="myPdf" >
            <!--  顶部图片  -->
            <img src="../../img/img.png" style="width: 100%;margin-bottom: -40px">
            <div style="background-color:#fcf4ed;border-radius:40px 40px 0 0;position: relative;z-index: 2;padding: 40px 20px 20px 20px;color: #41464B">
                <h1 style="text-align:center;line-height: 60px;font-size: 30px;font-weight: 600;color: #7a2114;">测试完成，谢谢！</h1>

            </div>
        </div>
    </div>
</div>



<script>
</script>

</body>
</html>
