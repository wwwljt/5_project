<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="common.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>答题页面</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script>
        // 防止页面回退
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function (event) {
            history.pushState(null, null, document.URL);
        })
    </script>
    <style>
        .main-div {
            width: 550px;
            float: right;
        }

        .main-picture {
            width: 470px;
            height: 350px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px 20px 0px 20px
        }

        .div-btn {
            width: 300px;
            height: 100%;
            position: fixed;
            left: 60%;
            top: 0px;
            z-index: 2;
            margin-top: 20px;
            margin-left: -30px;
            padding: 15px;
            text-align: center;
            border: 0px solid #d3d3d3;
            border-radius: 10px;
        }

        @media screen and (max-device-width: 1000px) {
            .main-div {
                width: 100%;
            }

            .main-picture {
                width: 85%;
            }

            .div-btn {
                position: relative;
                width: 100%;
                height: 100%;
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
<fieldset class="layui-elem-field" id="ceshi">
    <input id="id" value="488" hidden>
    <input id="character" value="红" hidden>
    <div class="layui-row">
        <div class="layui-col-md7">
            <div class="main-div" id="myPdf">
                <!--  顶部图片  -->
                <img src="${pageContext.request.contextPath}/img/img.png" style="width: 100%;margin-bottom: -40px">
                <div style="background-color:#fcf4ed;border-radius:40px 40px 0 0;position: relative;z-index: 2;padding: 40px 20px 20px 20px;color: #41464B">
                    <h1 style="text-align:center;line-height: 60px;font-size: 30px;font-weight: 600;color: #7a2114;">
                        测评报告预览</h1>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;text-align: center;margin-bottom: 20px">
                        <p style="font-size: 30px;color: #41464B;">您的性格是红色性格</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">积极乐观 情绪波动大起大落</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">真诚主动 开玩笑不分场合</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">善于表达 疏于兑现承诺</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">富有感染力 这山望着那山高</p>
                    </div>
                    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                    <%--                <div id="main" class="main-picture"></div>--%>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;margin-top: 20px;text-align: center">
                        <p style="font-size: 30px">【性格优势】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            高度乐观的积极心态。喜欢自己，也容易接纳别人。把生命当作值得享受的经验。喜欢新鲜、变化和刺激。经常开心，追求快乐。情感丰富而外露。自由自在，不受拘束。喜欢开玩笑和调侃。别出心裁，与众不同。表现力强。容易受到人们的喜欢和欢迎。生动活泼，好奇心强。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">
                            才思敏捷，善于表达。喜欢通过肢体上的接触传达亲密情感。容易与人攀谈。发生冲突时，能直接表白。人越多越亢奋。演讲和舞台表演的高手。乐于表达自己的看法。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">
                            真诚主动，热情洋溢。喜欢交友，善于与陌生人互动。擅长搞笑，是带来乐趣的伙伴。容易原谅自己和别人，不记仇。富有个人魅力。乐于助人。有错就认，很快道歉。喜欢接受别人的肯定和不吝赞美。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            工作主动，寻找新任务。富有感染力，能够吸引他人参与。激发团队的热情合作心和进取心，重视团队合作的感觉。令人愉悦的工作伙伴。完成短期目标时，极富爆发力。信任他人。善于赞美和鼓励，是天生的激励者。不喜欢太多的规定束缚，富有创意。工作以活泼化、丰富化的方式进行。反应快，闪电般开始。</p>
                    </div>
                    <div style="background: white;padding: 20px;margin-top: 20px; text-align: center">
                        <p style="font-size: 30px">【性格过当】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            情绪波动大起大落。变化无常，随意性强。鲁莽冲动，轻信他人，容易上当受骗。虚荣心强，不肯吃苦，贪图享受。喜欢走捷径，虎头蛇尾，不能坚持。粗心大意，杂乱无章。不肯承担责任，期待有别人为自己的人生负责。缺乏自控，毫无纪律。容易原谅自己，不吸取教训。不稳定和散漫。拒绝长大。借放纵来麻痹自己的痛苦和烦恼，而不去认真思考生命的本质。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">
                            说话少经大脑思考，脱口而出。对于严肃和敏感的事情也会开玩笑。炫耀自己，夺人话题。注意力分散，不能专注倾听，插话。吹牛不打草稿，疏于兑现承诺。忘记别人说过什么，自己讲过的话也经常重复。口无遮拦，不保守秘密。不可靠，光说不练。夸大吹嘘自己的成功。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">
                            缺少分寸，过度的玩笑和热情。只想当主角。谈论自己感兴趣的话题，对和自己无关的话题心不在焉。插嘴打断别人谈话。健忘多变。经常会忘记老朋友。有极强的依赖性，脆弱而不能独立。好心办坏事。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            跳槽频率高，这山望着那山高。没有规划，随意性强。没有焦点，把精力分散在太多的不同方向。过高估计了自己的能力。觉得没有必要为未来做准备。不肯花更大的精力和幕后工作的勤奋代价，来获取更高的殊荣。不切实际地希望所有的工作都要有趣味。很难全神贯注，经常性地走神。异想天开，难以预料。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>


<div class="div-btn layui-col-md5">

    <!--    下载word    -->
<%--    <div style="width:100px;height:120px;padding:20px 10px;border: 2px solid #d3d3d3;border-radius: 10px;display: inline-block;margin-right: 10px">--%>
<%--        <p style="color:#41464b;font-size: 15px;">下载word格式</p>--%>
<%--        <p style="color:#41464b;font-size: 15px;margin-bottom: 10px">测试报告</p>--%>
<%--        <p style="color:#41464b;font-size: 15px;margin-bottom: 15px">请您稍等</p>--%>
<%--        <button id="down_word_btn" class="layui-btn layui-btn-radius layui-btn-normal">下&nbsp;&nbsp;载</button>--%>
<%--    </div>--%>
    <!--    下载pdf    -->
    <div style="width:110px;height:150px;padding:20px 10px;border: 2px solid #d3d3d3;border-radius: 10px;display: inline-block">
        <p style="color: #333;font-size:18px;margin-bottom: 20px">获得测试报告</p>
        <p style="color:#41464b;font-size: 15px;">下载pdf格式</p>
        <p style="color:#41464b;font-size: 15px;margin-bottom: 10px">测试报告</p>
        <p style="color:#41464b;font-size: 15px;margin-bottom: 15px">快速生成</p>
        <button id="down_pdf_btn" class="layui-btn layui-btn-radius layui-btn-normal" onclick="makeMpdf('Fpa检测报告')">下&nbsp;&nbsp;载</button>
    </div>
    <!--    发送邮件    -->
<%--    <div style="padding:20px 10px;border: 2px solid #d3d3d3;border-radius: 10px;margin-top: 20px">--%>
<%--        <p style="color:#41464b;font-size: 15px;">输入邮箱号码</p>--%>
<%--        <p style="color:#41464b;font-size: 15px;margin-bottom: 20px;">可发送测试结果</p>--%>
<%--        <input class="layui-input " id="mail_input" type="email" name="email" lay-verify="required|myName"--%>
<%--               placeholder="请输入邮箱" autocomplete="off">--%>
<%--        <button id="mail_btn" class="layui-btn layui-btn-radius layui-btn-normal" style="margin-top: 10px">立即发送</button>--%>
<%--    </div>--%>
</div>


<script>
    function makeMpdf(pdfName) {
        if (confirm("您确认下载该PDF文件吗?")) {
            $("#ceshi").css('background-color', '#FFF');
            var element = $("#ceshi"); // 这个dom元素是要导出pdf的范围div
            var w = element.width();    // 获得该容器的宽
            var h = element.height();    // 获得该容器的高
            var offsetTop = element.offset().top;    // 获得该容器到文档顶部的距离
            var offsetLeft = element.offset().left;    // 获得该容器到文档最左的距离
            var canvas = document.createElement("canvas");
            var abs = 0;
            var win_i = $(window).width();    // 获得当前可视窗口的宽度（不包含滚动条）
            var win_o = window.innerWidth;    // 获得当前窗口的宽度（包含滚动条）
            if (win_o > win_i) {
                abs = (win_o - win_i) / 2;    // 获得滚动条长度的一半
            }
            canvas.width = w;    // 将画布宽&&高放大4倍
            canvas.height = h;
            var context = canvas.getContext("2d");
            context.scale(1, 1);
            context.translate(-offsetLeft - abs, -offsetTop);
            //这里默认横向没有滚动条的情况，因为offset.left(),有无滚动条的时候存在差值，因此translate的时候，要把这个差值去掉
            html2canvas(element, {
                allowTaint: true,
                taintTest: true,
                canvas: canvas,
                // dpi: 172,//导出pdf清晰度
                onrendered: function (canvas) {
                    var contentWidth = canvas.width;
                    var contentHeight = canvas.height;
                    //一页pdf显示html页面生成的canvas高度;
                    var pageHeight = contentWidth;
                    //未生成pdf的html页面高度
                    var leftHeight = contentHeight;
                    //页面偏移
                    var position = 0;
                    //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
                    var imgWidth = 595.28;
                    var imgHeight = 592.28 / contentWidth * contentHeight;
                    var pageData = canvas.toDataURL('image/jpeg', 1.0);
                    var pdf = new jsPDF('', 'pt', [contentWidth, contentHeight]);
                    //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
                    //当内容未超过pdf一页显示的范围，无需分页
                    // if (leftHeight < pageHeight) {
                    pdf.addImage(pageData, 'JPEG', 0, 0, contentWidth, contentHeight);
                    // } else {    // 分页
                    //     while(leftHeight > 0) {
                    //         pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
                    //         leftHeight -= pageHeight;
                    //         position -= 841.89;
                    //         //避免添加空白页
                    //         if(leftHeight > 0) {
                    //             pdf.addPage();
                    //         }
                    //     }
                    // }
                    pdf.save(pdfName + '.pdf');
                }
            });
        }
    }

    layui.use(['table', 'jquery', 'form'], function () {
        var table = layui.table;
        var form = layui.form;
        var $ = layui.jquery;

        var id = $("#id").val();
        var myChart = echarts.init(document.getElementById('main'));
        $.ajax({
            url: "/tester/getTesterVo",
            type: "POST",
            dataType: "JSON",
            data: {id: id},
            success: function (ret) {
                if (ret.code == 0) {
                    console.log(ret.data);
                    var red = ret.data.redCount;
                    var yellow = ret.data.yellowCount;
                    var blue = ret.data.blueCount;
                    var green = ret.data.greenCount;
                    console.log(red + "," + yellow + "," + blue + "," + green);
                    var option = {
                        title: {
                            text: '性格色彩测试结果',
                            subtext: '各项指标分布',
                            x: 'center'
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            orient: 'vertical',
                            left: 'left',
                            // data: ['红','黄','蓝','绿']
                        },
                        series: [
                            {
                                name: '性格色彩',
                                type: 'pie',
                                radius: '70%',
                                center: ['50%', '60%'],
                                data: [
                                    {value: red, name: '红', itemStyle: {color: '#ff392a'}},
                                    {value: yellow, name: '黄', itemStyle: {color: '#faff11'}},
                                    {value: blue, name: '蓝', itemStyle: {color: '#3695ff'}},
                                    {value: green, name: '绿', itemStyle: {color: '#36ff25'}}
                                ],
                                itemStyle: {
                                    emphasis: {
                                        shadowBlur: 10,
                                        shadowOffsetX: 0,
                                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                                    }
                                }
                            }
                        ]
                    };
                    myChart.setOption(option);
                } else {
                    layer.msg(ret.msg, {icon: 5});
                }
            }
        });

        //验证邮箱
        form.verify({
            myName: function (value, item) { //value：表单的值、item：表单的DOM对象
                if (!new RegExp("^[a-z0-9._%-]+@([a-z0-9-]+\\.)+[a-z]{2,4}$|^1[3|4|5|7|8]\\d{9}$").test(value)) {
                    return '邮箱格式不对';
                }
            }
        });


        $('#down_word_btn').on('click', function () {
            var wordBean = new Object();
            wordBean.testerId = id;
            wordBean.character = $("#character").val();
            wordBean.img = myChart.getDataURL();
            let a = layer.load(1);
            var resultListJson = JSON.stringify(wordBean);
            //发送ajax请求到后端
            $.ajax({
                url: "/createWord/exportWord",
                type: "POST",
                dataType: "JSON",
                contentType: "application/json;charset=UTF-8",
                data: resultListJson,
                success: function (ret) {
                    layer.close(a);
                    if (ret.code == 0) {
                        var fileName = ret.data;
                        //打开下载word请求页面
                        window.open("http://" + fileName);
                    } else {
                        layer.msg(ret.msg, {icon: 5});
                    }
                }
            })
        });
        $('#down_pdf_btn').on('click', function () {
            var element = $("#myPdf"); // 这个dom元素是要导出pdf的div容器
            var w = element.width(); // 获得该容器的宽
            var h = element.height(); // 获得该容器的高
            var offsetTop = element.offset().top; // 获得该容器到文档顶部的距离
            var offsetLeft = element.offset().left; // 获得该容器到文档最左的距离
            var canvas = document.createElement("canvas");
            var abs = 0;
            var win_i = $(window).width(); // 获得当前可视窗口的宽度（不包含滚动条）
            var win_o = window.innerWidth; // 获得当前窗口的宽度（包含滚动条）
            if (win_o > win_i) {
                abs = (win_o - win_i) / 2; // 获得滚动条长度的一半
            }
            canvas.width = w * 2; // 将画布宽&&高放大两倍
            canvas.height = h * 2;
            var context = canvas.getContext("2d");
            context.scale(2, 2);
            context.translate(-offsetLeft - abs, -offsetTop);
            // 这里默认横向没有滚动条的情况，因为offset.left(),有无滚动条的时候存在差值，因此
            // translate的时候，要把这个差值去掉
            html2canvas(element).then(function (canvas) {
                var contentWidth = canvas.width;
                var contentHeight = canvas.height;
                //一页pdf显示html页面生成的canvas高度;
                var pageHeight = contentWidth / 592.28 * 841.89;
                //未生成pdf的html页面高度
                var leftHeight = contentHeight;
                //页面偏移
                var position = 0;
                //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
                var imgWidth = 595.28;
                var imgHeight = 592.28 / contentWidth * contentHeight;

                var pageData = canvas.toDataURL('image/jpeg', 1.0);

                var pdf = new jsPDF('', 'pt', 'a4');

                //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
                //当内容未超过pdf一页显示的范围，无需分页
                if (leftHeight < pageHeight) {
                    pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth, imgHeight);
                } else { // 分页
                    while (leftHeight > 0) {
                        pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
                        leftHeight -= pageHeight;
                        position -= 841.89;
                        //避免添加空白页
                        if (leftHeight > 0) {
                            pdf.addPage();
                        }
                    }
                }
                pdf.save(id + '我的性格测试报告.pdf');
            })
        });

        $('#mail_btn').on('click', function () {
            var mail = $("#mail_input").val();
            if (new RegExp("^[a-z0-9._%-]+@([a-z0-9-]+\\.)+[a-z]{2,4}$|^1[3|4|5|7|8]\\d{9}$").test(mail)) {
                var wordBean = new Object();
                wordBean.testerId = id;
                wordBean.character = $("#character").val();
                wordBean.img = myChart.getDataURL();
                var resultListJson = JSON.stringify(wordBean);
                //等待条
                let a = layer.load(1);
                //生成文件
                $.ajax({
                    url: "/createWord/exportWord",
                    type: "POST",
                    dataType: "JSON",
                    contentType: "application/json;charset=UTF-8",
                    data: resultListJson,
                    success: function (ret) {
                        if (ret.code == 0) {
                            var fileName = ret.data;
                            var maf = new Object();
                            maf.mail = mail;
                            maf.fileName = fileName;
                            // 文件生成后，发送
                            $.ajax({
                                url: "/mail/sendMail",
                                type: "POST",
                                dataType: "JSON",
                                contentType: "application/json;charset=UTF-8",
                                data: JSON.stringify(maf),
                                success: function (ret) {
                                    layer.close(a);
                                    if (ret.code == 0) {
                                        layer.msg(ret.msg, {icon: 6});
                                    } else {
                                        layer.msg(ret.msg, {icon: 5});
                                    }
                                }
                            })
                        } else {
                            layer.msg(ret.msg, {icon: 5});
                        }
                    }
                })
            } else {
                layer.msg("邮件格式不对", {icon: 5});
            }

        });

    });


</script>

</body>
</html>
