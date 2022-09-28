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
            background-color: white;
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
    <input id="character" value="绿" hidden>
    <div class="layui-row">
        <div class="layui-col-md7">
            <div class="main-div" id="myPdf">
                <!--  顶部图片  -->
                <img src="../../img/img.png" style="width: 100%;margin-bottom: -40px">
                <div style="background-color:#fcf4ed;border-radius:40px 40px 0 0;position: relative;z-index: 2;padding: 40px 20px 20px 20px;color: #41464B">
                    <h1 style="text-align:center;line-height: 60px;font-size: 30px;font-weight: 600;color: #7a2114;">
                        测评报告预览</h1>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;text-align: center;margin-bottom: 20px">
                        <p style="font-size: 30px;color: #41464B;">您的性格是绿色性格</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">温柔祥和 拒绝改变</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">为他人考虑 胆小被动</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">心平气和 没有主见</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">善于协调 缺乏创意</p>
                    </div>
                    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                    <%--                <div id="main" class="main-picture"></div>--%>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;margin-top: 20px;text-align: center">
                        <p style="font-size: 30px">【性格优势】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            爱静不爱动，有温柔祥和的吸引力和宁静愉悦的气质。和善的天性，做人厚道。追求人际关系的和谐。奉行中庸之道，为人稳定低调。遇事以不变应万变，镇定自若。知足常乐，心态轻松。追求平淡的幸福生活。有松弛感，能融入所有的环境和场合。从不发火，温和、谦和、平和三和一体。做人懂得“得饶人处且饶人”。追求简单随意的生活方式。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">
                            以柔克刚，不战而屈人之兵。避免冲突，注重双赢。心平气和且慢条斯理。善于接纳他意见。最佳的倾听者，极具耐心。擅长让别人感觉舒适。有自然和不经意的冷幽默。松弛大度，不急不徐。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">
                            从无攻击性。富有同情和关心。宽恕他人对自己的伤害。能接纳所有不同性格的人。和善的天性及圆滑的手腕。对友情的要求不严苛。处处为别人考虑，不吝付出。与之相处轻松自然又没有压力。最佳的垃圾宣泄处，鼓励他们的朋友多谈自己。从不尝试去改变他人。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            高超的协调人际关系的能力。善于从容地面对压力。巧妙地化解冲突。能超脱游离政治斗争之外，没有敌人。缓步前进以取得思考空间。注重人本管理。推崇一种员工都积极参与的工作环境。尊重员工的独立性，从而博得人心和凝聚力。善于为别人着想。以团体为导向。创造稳定性。用自然低调的行事手法处理事务。</p>
                    </div>
                    <div style="background: white;padding: 20px;margin-top: 20px; text-align: center">
                        <p style="font-size: 30px">【性格过当】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            按照惯性来做事，拒绝改变，对于外界变化置若罔闻。懒洋洋的作风，原谅自己的不思进取。懦弱胆小，纵容别人欺压自己。期待事情会自动解决，完全守望被动。得过且过。无原则地妥协，而无法促使他们采取负责任的解决态度。逃避问题与冲突。太在意别人反应，不敢表达自己的立场和原则。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">
                            一拳打在棉花上，毫无反应。没有主见，把压力和负担通通转嫁到他人身上。不会拒绝他人，给自己和他人都带来无穷麻烦。行动迟钝，慢慢腾腾。避免承担责任。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">
                            不负责任的和稀泥。姑息养奸的态度。压抑自己的感受以迁就别人。期待让人人满意，对自己的内心不忠诚。没有自我，迷失人生的方向。缺乏激情。漠不关心，惰于参与任何活动。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            安于现状，不思进取。乐于平庸，缺乏创意。害怕冒风险，缺乏自信。拖拖拉拉。缺少目标。缺乏自觉性。懒惰而不进取。宁愿做旁观者不肯做参与者。</p>
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
