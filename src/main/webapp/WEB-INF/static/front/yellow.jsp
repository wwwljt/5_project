<%--
  Created by IntelliJ IDEA.
  User: 杜
  Date: 2022/7/6
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@include file="common.jsp" %>
<html>
<meta charset="UTF-8">
<meta name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>答题页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
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
    <input id="character" value="黄" hidden>
    <div class="layui-row">
        <div class="layui-col-md7">
            <div class="main-div" id="myPdf">
                <img src="../../img/img.png" style="width: 100%;margin-bottom: -40px">
                <div style="background-color:#fcf4ed;border-radius:40px 40px 0 0;position: relative;z-index: 2;padding: 40px 20px 20px 20px;color: #41464B">
                    <h1 style="text-align:center;line-height: 60px;font-size: 30px;font-weight: 600;color: #7a2114;">
                        测评报告预览</h1>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;text-align: center;margin-bottom: 20px">
                        <p style="font-size: 30px;color: #41464B;">您的性格是黄色性格</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">行动迅速 死不认错</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">善于忠告 控制欲强</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">不感情用事 咄咄逼人</p>
                        <p style="font-size: 20px;color: #41464B;margin: 20px">坚持不懈 容易发怒</p>
                    </div>
                    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                    <%--                <div id="main" class="main-picture"></div>--%>
                    <div style="background: rgba(87,144,255,.2);padding: 20px;margin-top: 20px;text-align: center">
                        <p style="font-size: 30px">【性格优势】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            不达目标，誓不罢休。不停地给自己设定目标以推动前进。把生命当成竞赛。行动迅速，活力充沛。意志坚强。自信、不情绪化，而且非常有活力。坦率，直截了当，一针见血。强烈的进取心，居安思危。独立性强。有强烈的求胜欲。不畏强权并敢于冒险。不易气馁，不在乎外界的评价，坚持自己所选择的道路和方向。危难时刻挺身而出。讲究速度和效率。敢于接受挑战并渴望成功。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">以务实的方式主导会谈。喜欢主导整个事情进行的方式。能够直接抓住问题的本质。说话用字简明扼要，不喜欢拐弯抹角。不受情绪干扰和控制。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">给予解决问题的方法，而非纠缠在过去。迅速提出忠告和方向。直言不讳地提出建议。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            动作干净利落，讲求效率。能够承担长期高强度的压力。强烈的目标趋向，善于设定目标。高瞻远瞩，有全局观念。善于委派工作。坚持不懈，促成活动。掌握重点执行。行事作风明快。天生的领导者和富有组织能力。竞争越强，精力越旺，愈挫愈勇。寻求实际的解决方法。以结果和完成任务为导向，并且高效率。善于快速决策并处理所遇到的一切问题。富有责任感。</p>
                    </div>
                    <div style="background: white;padding: 20px;margin-top: 20px; text-align: center">
                        <p style="font-size: 30px">【性格过当】</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为个体</p>
                        <p style="text-align: left">
                            自己永远是对的，死不认错。趾高气扬，霸道。只关注自己的感受，不体贴别人的心情和想法。以自我为中心，自私倾向。霸道。脾气暴躁，容易发怒。缺少同情心。傲慢自大，目中无人。经常紧绷自己的情绪。在情绪不佳或有压力的时候，经常会不可理喻与独断专行。不喜欢受群体所规范约束,打破既定规则且自己不遵守规则。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">沟通特点</p>
                        <p style="text-align: left">
                            喜欢争辩和冲突。铁石心肠，对情绪表现冷淡。粗线条，简单粗暴。毫无敏感，无力洞察他人内心和理解他人所想。抗拒批评，严酷且自以为是的审判者。缺乏亲密分享的能力。缺乏耐心，是非常糟糕的倾听者。态度尖锐严厉，批判性强。容易让他人的工作或生活步调紧张。不习惯赞美别人。说话有时咄咄逼人。控制欲强。不太能体谅他人，对行事模式不同的人缺少包容度。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">作为朋友</p>
                        <p style="text-align: left">
                            大多时候仅保持理性的友谊。讨厌与犹豫不决、能力弱的人互动。试图控制和影响大家的活动，希望他人服从自己而非配合别人。除了工作内容，很少交谈其它话题。情感上习惯与人保持一定的距离。很少对人流露出直接诚挚的关怀。需要你的时候才找你。为别人做主。</p>
                        <p style="font-size: 15px;font-weight: bold;margin: 5px">对待工作和事业</p>
                        <p style="text-align: left">
                            生活在无尽的工作当中而不是人群中。数量远比质量重要。目标没有完成时，容易发怒且迁怒于人。寻求更多的权力，有极强的控制欲。拒绝为自己和他人放松。完成工作第一，人的事情第二。为了自己的面子，不妥协且毫不认错。对于竞争结果过分关注而忽略过程中的乐趣。武断，刚愎自用且一意孤行。很难慢下来，缺少生命乐趣的工作狂。未明察就急于改变，急于求成。</p>
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
