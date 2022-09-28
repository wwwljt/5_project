<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Red</title>
    <script>
        // 防止页面回退
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function (event) {
            history.pushState(null, null, document.URL);
        })
    </script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* 使用flex布局，让内容垂直和水平居中 */

        section {
            /* 相对定位 */
            position: relative;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            /* linear-gradient() 函数用于创建一个表示两种或多种颜色线性渐变的图片 */
            background: linear-gradient(to bottom, #f1f4f9, #dff1ff);
        }

        /* 背景颜色 */

        section .color {
            /* 绝对定位 */
            position: absolute;
            /* 使用filter(滤镜) 属性，给图像设置高斯模糊*/
            filter: blur(200px);
        }

        /* :nth-child(n) 选择器匹配父元素中的第 n 个子元素 */

        section .color:nth-child(1) {
            top: -350px;
            width: 700px;
            height: 700px;
            background: #ff1140;
        }

        section .color:nth-child(2) {
            bottom: -150px;
            left: 100px;
            width: 700px;
            height: 700px;
            background: rgba(237, 253, 13, 0.9);
        }

        section .color:nth-child(3) {
            bottom: 50px;
            right: 100px;
            width: 700px;
            height: 700px;
            background: rgba(255, 131, 64, 0.91);
        }

        .box {
            position: relative;
        }

        /* 背景圆样式 */

        .box .circle {
            position: absolute;
            background: rgba(255, 255, 255, 0.1);
            /* backdrop-filter属性为一个元素后面区域添加模糊效果 */
            backdrop-filter: blur(5px);
            box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-right: 1px solid rgba(255, 255, 255, 0.2);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            /* 使用filter(滤镜) 属性，改变颜色。
            hue-rotate(deg)  给图像应用色相旋转
            calc() 函数用于动态计算长度值
            var() 函数调用自定义的CSS属性值x*/
            filter: hue-rotate(calc(var(--x) * 70deg));
            /* 调用动画animate，需要10s完成动画，
            linear表示动画从头到尾的速度是相同的，
            infinite指定动画应该循环播放无限次*/
            animation: animate 10s linear infinite;
            /* 动态计算动画延迟几秒播放 */
            animation-delay: calc(var(--x) * -1s);
        }

        /* 背景圆动画 */

        @keyframes animate {
            0%, 100% {
                transform: translateY(-50px);
            }
            50% {
                transform: translateY(50px);
            }
        }

        .box .circle:nth-child(1) {
            top: -50px;
            right: -60px;
            width: 100px;
            height: 100px;
        }

        .box .circle:nth-child(2) {
            top: 150px;
            left: -100px;
            width: 120px;
            height: 120px;
            z-index: 2;
        }

        .box .circle:nth-child(3) {
            bottom: 50px;
            right: -60px;
            width: 80px;
            height: 80px;
            z-index: 2;
        }

        .box .circle:nth-child(4) {
            bottom: -80px;
            left: 100px;
            width: 60px;
            height: 60px;
        }

        .box .circle:nth-child(5) {
            top: -80px;
            left: 140px;
            width: 60px;
            height: 60px;
        }

        /* 登录框样式 */

        .container {
            position: relative;
            width: 600px;
            min-height: 800px;
            background: rgba(255, 255, 255, 0.1);
            display: flex;
            justify-content: center;
            align-items: center;
            backdrop-filter: blur(5px);
            box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-right: 1px solid rgba(255, 255, 255, 0.2);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }

        .form {
            position: relative;
            width: 100%;
            height: 100%;
            padding: 50px;
        }



        .form h2:hover:before {
            width: 53px;
        }



        .form .inputBox input::placeholder {
            color: #fff;
        }
        .p1{
            font-weight: bold;
            font-size: 22px;
        }
        .p2{
            font-size: 18px;
        }
        @media screen and (max-device-width: 1000px) {
            .container {
                width: 100%;
            }
        }
    </style>
</head>

<body>
<section>
    <!-- 背景颜色 -->
    <div class="color"></div>
    <div class="color"></div>
    <div class="color"></div>
    <div class="box">
        <!-- 背景圆 -->
        <div class="circle" style="--x:0"></div>
        <div class="circle" style="--x:1"></div>
        <div class="circle" style="--x:2"></div>
        <div class="circle" style="--x:3"></div>
        <div class="circle" style="--x:4"></div>
        <!-- 登录框 -->
        <div class="container">
            <div class="form">
                <div>
                    <h3>复合性格</h3><br>

                    <p class="p2">【个人特色】：</p><br>

                    1.感情充沛，精力旺盛，能言善辩。<br><br>

                    2.个人的超凡魅力，对他人极具吸引力。<br><br>

                    3.凭借三寸不烂之舌，甚至能说过爱斯基摩人购买冰箱。很擅长培养人际关系，有能一呼百应的关系网，喜欢被人称为“能说会道的人”，或者是“倡导者”，热衷于提出建议，能够一下子说到别人的心坎上，并产生精神共鸣。<br><br>

                    <p class="p2">【性格特点】：</p><br><br>

                    1.求威信和声望。<br><br>

                    2.喜欢陈规陋习，节奏拖沓和没有任何必要的细枝末节。<br><br>

                    3.能很快相信别人，并给予他们充分的自由。<br><br>

                    4.高压之下，会变得缩手缩脚。<br><br>

                    <p class="p2">【修炼方向】：</p><br><br>

                    <b>对事</b><br><br>

                    1.眼光只盯在大事上，而且不放过任何一个新的发展机会，一结果是，你可能并不完全明白工作的复杂性，或完成的难度有多大。<br><br>

                    2.重要的任务上，要表现得更有责任感，并善始善终。<br><br>

                    3.向绿色性格学习如何更好的照章行事；向蓝色性格学习如何关注细节及整个流程；向黄色性格学习如何提高办事效率；包括如何直接面对来自各方面的阻力。<br><br>

                    <b>对人</b><br><br>

                    1.不要冲动。<br><br>

                    2.提高控制情绪的能力。<br><br>

                    3.在表达自己的见解和意图时，可以采取更低调的方式，要提供足够的机会给其他人，让他们表达自己的看法。<br><br>

                </div>

                <div>
                    <h3>复合性格  红+绿</h3><br>

                    <p class="p2">【个人特色】：</p><br>

                    善于与人打交道，乐于听人诉说，也善于表达自己，注重积极的人际关系，喜欢在不同场合与不同的人打交道，容易成为受人尊敬的从业者。<br><br>

                    <p class="p2">【性格特点】：</p><br><br>

                    1.与人打交道时，充满关系，希望别人和你一样。<br><br>

                    2.避免与别人发生冲突或关系紧张。<br><br>

                    3.愿意倾听别人的诉说。<br><br>

                    4.喜欢以人为本，积极的工作环境。<br><br>

                    5.压力之下，情绪更易外露，多愁善感。<br><br>

                    <p class="p2">【修炼方向】：</p><br><br>

                    <b>对事</b><br><br>

                    1.学会掌控形势，并知道该在何时何地控制自己。<br><br>

                    2.可能会为了等指示而错失良机，学会当断则断非常重要。<br><br>

                    3.当涉及个人需要时，要更积极。<br><br>

                    4.学会解决冲突，并提高处理问题的能力。<br><br>

                    5.学会安排工作的轻重缓急，控制节奏。<br><br>

                    <b>对人</b><br><br>

                    1.因为太想取悦于人，有极力去满足人们需要的倾向，难免会为达不到需求而苦恼和精疲力尽，所以必须学会拒绝。<br><br>

                    2.不善于应付冲突，每当人们流露出不愉快时，都会以为是对你个人的反感。要学会坦然应对冲突而非回避。<br><br>
                </div>

                <div>
                    <h3>复合性格  蓝+黄</h3><br>

                    <p class="p2">【个人特色】：</p><br>

                    喜欢控制局面，更关心对行动的控制，而非对人的管制。与冲突对抗和麻烦非常敏感，特别是在他们会影响你完成目标时。<br><br>

                    <p class="p2">【性格特点】：</p><br><br>
                    1.与人相处时，能够很好自我控制。<br><br>

                    2.更喜欢独行其事，或至少是与自己喜欢的人一起工作。<br><br>

                    3.一旦所负责的事情出了问题，会长期不断的反思自己的过错。<br><br>

                    4.做事喜欢周密计划，监督检查，懂得把握分寸。<br><br>

                    5.压力之下会变得过于缜密，可能会因小失大。<br><br>

                    <p class="p2">【修炼方向】：</p><br><br>

                    <b>对事</b><br><br>

                    1.精益求精，以至于有时会影响效率，所以要学会速下决断，更直率地交流。<br><br>

                    2.有非常强大的完成目标的决心，不但关注过程，也很注重结果。因此会更严格的要求自己和他人，不要只表现出威严的一面，目标完成后，应给予大家更多的赞美。<br><br>

                    3.做事不能太拘谨，交流时应更加直接了断。<br><br>

                    <b>对人</b><br><br>

                    1.对自己过于苛求，总是强求自己，尽可能的帮助那些需要指导的人。<br><br>

                    2.能对他人过于苛求，特别是在面对压力时。<br><br>

                    3.掌握更多的赞美技巧，那将是你在职场中和人生中无比强大的润滑剂。<br><br>
                </div>


                <div>
                    <h3>复合性格   蓝+绿</h3><br>

                    <p class="p2">【个人特色】：</p><br>

                    1.在所有性格组合中，最内向最拘谨。特别喜欢独自去做熟悉的，自己可支配的工作，以避免由于不了解工作而导致绩效低下的局面。<br><br>

                    2.善于克制自己，在工作和人际关系上都是很出色的完美主义者。清楚自己需要的是什么，要避免的是什么。<br><br>

                    <p class="p2">【性格特点】：</p><br><br>
                    1.喜欢对行事过程有支配权。<br><br>

                    2.做事毫厘不差，善始善终。<br><br>

                    3.不喜欢对抗，敌对和逆境。<br><br>

                    4.渴望稳定，心境平和。<br><br>

                    5.压力面前会怯懦和拘谨。<br><br>

                    <p class="p2">【修炼方向】：</p><br><br>

                    <b>对事</b><br><br>

                    1.一味追求最理想的解决办法，会错失一些机会。一点一滴的进步，其累积的价值也相当可观，但是你却视而不见，变得更现实一些，对你的发展会大有好处。<br><br>

                    2.应学会坦然面对各种意外情况的出现，而不是回避，在做决断时要学会灵活处理，如果有必要，不妨用点策略。<br><br>

                    3.在发表个人见解时，要更直率和一针见血。<br><br>

                    <b>对人</b><br><br>

                    1.与人过于亲密会使你觉得不自在，可能需要学习一些社交技能，比如变得更随和一些。<br><br>

                    2.在表达自己的观点时更坦率和诚挚，你会受益匪浅。逐渐的，你也会乐而不疲的与不同性格的人打交道，同时会大大增加你的自信心。<br><br>

                    3.对人要真诚以待，每年至少要制定一个到两个，有助于提高你适应能力的新目标。<br><br>

                </div>



            </div>
        </div>
    </div>
</section>
</body>
</html>