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
    <input id="id" value="493" hidden>
    <input id="character" value="蓝" hidden>
    <div class="layui-row">
        <div class="layui-col-md7">
            <div class="main-div" id="myPdf">
                <!--  顶部图片  -->
                <img src="../../img/img.png" style="width: 100%;margin-bottom: -40px">
                <div style="background-color:#fcf4ed;border-radius:40px 40px 0 0;position: relative;z-index: 2;padding: 40px 20px 20px 20px;color: #41464B">
                    <h1 style="text-align:center;line-height: 60px;font-size: 30px;font-weight: 600;color: #7a2114;">
                        测评报告预览</h1>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;text-align: center;margin-bottom: 20px">
                        <p style="font-size: 30px;color: #41464B;">您的性格是蓝色性格</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">思想深邃 情感脆弱</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">默默关怀他人 喜好批判和挑剔</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">敏感而细腻 不主动与人沟通</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">计划性强 患得患失</p>
                    </div>
                    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                    <%--                <div id="main" class="main-picture"></div>--%>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;margin-top: 20px;text-align: center">
                        <p style="font-size: 30px">【性格优势】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            严肃的生活哲学。思想深邃，独立思考而不盲目从众。沉默寡言，老成持重。注重承诺，可靠安全。谨慎而深藏不露。坚守原则，责任心强。遵守规则，井井有条。深沉有目标的理想主义。敏感细腻。高标准，追求完美。谦和稳健。善于分析，富有条理。待人忠诚，富有自我牺牲精神。深思熟虑，三思而后行。坚韧执着。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">享受敏感而有深度的交流。设身处地地体会他人。能记住谈话时共鸣的感情和思想。喜欢小群体交流的思想碰撞。关注谈话的细节。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">
                            默默地为他人付出以表示关切和爱。对友谊忠诚不渝。真诚关怀朋友的境遇，善于体贴他人。能够记得特殊的日子。遭遇难关时，极力给予鼓舞安慰。很少向他人表达内心的看法。经常扮演解决分析问题的角色。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            强调制度、程序、规范、细节和流程。做事之前首先计划且严格按照计划去执行。喜欢探究及根据事实行事。尽忠职守，追求卓越。高度自律。喜欢用表格、数字的管理来验证效果。注重承诺。一丝不苟地执行工作。</p>
                    </div>
                    <div style="background: white;padding: 20px;margin-top: 20px; text-align: center">
                        <p style="font-size: 30px">【性格过当】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            高度负面的情绪化。猜忌心重，不信任他人。太在意别人的看法和评价，容易被负面评价中伤。容易沮丧，悲观消极。陷于低落的情绪无法自拔。情感脆弱抑郁，有自怜倾向。杞人忧天，庸人自扰。最容易的抑郁症患者。当别人轻易成功时，会因自己的努力付出却不如他人而心生嫉妒。过于阴沉的面孔，让人感觉压抑，不易接近。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">
                            不知不觉地说教和上纲上线。原则性强，不易妥协。强烈期待别人具有敏感度和深度能够理解自己。以为别人能够读懂自己的心思。不太主动与人沟通。不喜欢制造困扰麻烦给别人，也讨厌别人制造困扰麻烦给自己。要真诚开放心胸与人互动会比较难。习惯以防卫的状态面对别人。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">过度敏感，有时很难相处。强烈的不安全感。远离人群。喜好批判和挑剔。吝于宽恕。经常怀疑别人的话，不容易相信他人。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            对自己和他人常寄予过高而且不切实际的期望。过度计划和过度绸缪。患得患失，行动缓慢。较真，挑剔他人及自己的表现。专注于小细节，因小失大。吝啬表扬，强烈的形式主义。容易被不理想的成绩击垮斗志。墨守成规，死板教条不懂变通。为了维护原则缺乏妥协精神。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>
<%--<div style="margin-left:40%;">--%>
<%--    <button class="layui-btn" target="_blank" rel="external nofollow" onclick="makeMpdf('Fpa检测报告')">下载Fpa检测文件--%>
<%--    </button>--%>
<%--</div>--%>
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
