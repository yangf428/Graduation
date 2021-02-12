<%--主页：云中登录界面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <title>HMS login</title>
    <link href="../../../css/default.css" rel="stylesheet" type="text/css"/>
    <!--必要样式-->
    <link href="../../../css/styles.css" rel="stylesheet" type="text/css"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="../../../css/loaders.css" rel="stylesheet" type="text/css"/>
</head>

<%-- 页面内容 --%>
<body>

<form action="/tologin" method="post">
    <div class='login'>
        <div class='login_title'>
            <span style="font-family:宋体;font-size:30px;">HMS管理员登录</span>
        </div>
        <div class='login_fields'>
            <div class='login_fields__user'>
                <div class='icon'>
                    <img alt="" src='../../../img/user_icon_copy.png'>
                </div>
                <%-- 用户名 --%>
                <input type='text' name="adminId" placeholder='用户名' maxlength="16"  autocomplete="off"/>
                <div class='validation'>
                    <img alt="" src='../../../img/tick.png'>
                </div>
            </div>
            <div class='login_fields__password'>
                <div class='icon'>
                    <img alt="" src='../../../img/lock_icon_copy.png'>
                </div>
                <%-- 密码 --%>
                <input name="adminPwd" type="password" placeholder='密码' maxlength="16" autocomplete="off">
                <div class='validation'>
                    <img alt="" src='../../../img/tick.png'>
                </div>
            </div>
            <div class='login_fields__password'>
                <div class='icon'>
                    <img alt="" src='../../../img/key.png'>
                </div>
                <%--<input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">--%>
                <input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">
                <%--<div class='validation' style="opacity: 1; right: -5px;top: -3px;">--%>
                <div class='validation' style="opacity: 1; right: -130px; top:3px;">
                    <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
                </div>
            </div>
            <%-- 登录按钮 --%>
            <div class='login_fields__submit'>
                <%--<a href=""><input type='button' value='登录'></a>--%>
                <input type="submit" value="登录" style="margin-right:6px;">
            </div>
        </div>
        <div class='success'></div>
        <%-- 下面的声明 --%>
        <div class='disclaimer'>
            <%--<a href="/toregister"><p>重置密码</p></a>--%>
            <%--<a href="/toregister"><p>重置密码</p></a>--%>
            <p>© Miss Yang. Design.</p>
        </div>
    </div>
    <div class='authent'>
        <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
            <div class="loader-inner ball-clip-rotate-multiple">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <p>认证中...</p>
    </div>
    <div class="OverWindows"></div>
</form>
</body>

<%--前端设置及引入--%>
<link href="../../../model/layui/css/layui.css" rel="stylesheet" type="text/css"/>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="https://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script>
<script type="text/javascript" src='../../../js/stopExecutionOnTimeout.js?t=1'></script>
<script src="../../../model/layui/layui.js" type="text/javascript"></script>
<script src="../../../js/Particleground.js" type="text/javascript"></script>
<script src="../../../js/Treatment.js" type="text/javascript"></script>
<script src="../../../js/jquery.mockjax.js" type="text/javascript"></script>
<script type="text/javascript">
    var canGetCookie = 0; //是否支持存储Cookie 0 不支持 1 支持
    var ajaxmockjax = 1; //是否启用虚拟Ajax的请求响 0 不启用  1 启用
    //默认账号密码

    var truelogin = "kbcxy";
    var truepwd = "1";

    var CodeVal = 0;
    Code();

    function Code() {
        if (canGetCookie == 1) {
            createCode("AdminCode");
            var AdminCode = getCookieValue("AdminCode");
            showCheck(AdminCode);
        } else {
            showCheck(createCode(""));
        }
    }

    function showCheck(a) {
        CodeVal = a;
        var c = document.getElementById("myCanvas");
        var ctx = c.getContext("2d");
        ctx.clearRect(0, 0, 1000, 1000);
        ctx.font = "80px 'Hiragino Sans GB'";
        ctx.fillStyle = "#E8DFE8";
        ctx.fillText(a, 0, 100);
    }

    $(document).keypress(function (e) {
        // 回车键事件
        if (e.which == 13) {
            $('input[type="button"]').click();
        }
    });

    var open = 0;
    layui.use('layer', function () {
        //非空验证
        $('input[type="button"]').click(function () {
            var login = $('input[name="login"]').val();
            var pwd = $('input[name="pwd"]').val();
            var code = $('input[name="code"]').val();
            if (login == '') {
                ErroAlert('请输入您的账号');
            } else if (pwd == '') {
                ErroAlert('请输入密码');
            } else if (code == '' || code.length != 4) {
                ErroAlert('输入验证码');
            } else {
                //登陆
                var JsonData = {
                    login: login,
                    pwd: pwd,
                    code: code
                };
                //$.post("url",JsonData,function(data) {
                console.log(111);
                alert("登录成功");
                //window.location.href = 'http://127.0.0.1:8020/jQueryLogin/index.html?__hbt=1567408106021';
                //});
            }
        })
    })
    //全屏
    var fullscreen = function () {
        elem = document.body;
        if (elem.webkitRequestFullScreen) {
            elem.webkitRequestFullScreen();
        } else if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        } else if (elem.requestFullScreen) {
            elem.requestFullscreen();
        } else {
            //浏览器不支持全屏API或已被禁用
        }
    }
</script>
<script type="text/javascript" src="../../../img/ThreeWebGL.js"></script>
<script type="text/javascript" src="../../../img/ThreeExtras.js"></script>
<script type="text/javascript" src="../../../img/Detector.js"></script>
<script type="text/javascript" src="../../../img/RequestAnimationFrame.js"></script>
<script id="vs" type="x-shader/x-vertex">
			varying vec2 vUv; void main() { vUv = uv; gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 ); }


</script>
<script id="fs" type="x-shader/x-fragment">
			uniform sampler2D map; uniform vec3 fogColor; uniform float fogNear; uniform float fogFar; varying vec2 vUv; void main() { float depth = gl_FragCoord.z / gl_FragCoord.w; float fogFactor = smoothstep( fogNear, fogFar, depth ); gl_FragColor = texture2D( map, vUv ); gl_FragColor.w *= pow( gl_FragCoord.z, 20.0 ); gl_FragColor = mix( gl_FragColor, vec4( fogColor, gl_FragColor.w ), fogFactor ); }



</script>
<script type="text/javascript">
    if (!Detector.webgl) Detector.addGetWebGLMessage();
    var canvas = document.createElement('canvas');
    canvas.width = 32;
    canvas.height = window.innerHeight;
    var context = canvas.getContext('2d');
    var gradient = context.createLinearGradient(0, 0, 0, canvas.height);
    gradient.addColorStop(0, "#1e4877");
    gradient.addColorStop(0.5, "#4584b4");
    context.fillStyle = gradient;
    context.fillRect(0, 0, canvas.width, canvas.height);
    document.body.style.background = 'url(' + canvas.toDataURL('image/png') + ')';
    var container;
    var camera, scene, renderer, sky, mesh, geometry, material, i, h, color, colors = [],
        sprite, size, x, y, z;
    var mouseX = 0,
        mouseY = 0;
    var start_time = new Date().getTime();
    var windowHalfX = window.innerWidth / 2;
    var windowHalfY = window.innerHeight / 2;
    init();
    animate();

    function init() {
        container = document.createElement('div');
        document.body.appendChild(container);
        camera = new THREE.Camera(30, window.innerWidth / window.innerHeight, 1, 3000);
        camera.position.z = 6000;
        scene = new THREE.Scene();
        geometry = new THREE.Geometry();
        var texture = THREE.ImageUtils.loadTexture('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAMAAABrrFhUAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAMAUExURQAAANje4Nbc3tfd3+rt7ufq7OTo6ufq7Ons7ujs7ff4+fn6+tfc3/7+/vj5+fb4+Pb3+Pr6+/////////////v7/P////////////n6+v////////7+/vLz9P39/f///////////////////9bc3vb4+PDy8/7///3+/u7w8f////////////7+//39/f7+//////T19tbb3tbc3vb4+P///+bp697j5f////n5+vDy8/P09e/x8u7x8vHy8////////+/x8ebq6////+Xo6u3v8PT29tbc3vf4+f///+rt7vL09e/x8vv8/Ozu7+3w8djd4P///+Lm6Pj5+f////////39/f39/dzh4////9HY2v39/dXb3v7//9fd3/n5+tjd4P///9fd3/X29////9fc3+vt7s7V2NXb3vP09f////n5+vP09ejs7ebp69Xb3ens7uLm6Nbc3tjd4OLm6Nfc39bc3tTa3ens7fDy8+ns7dnf4fb3+Njd4PP09d7i5fz8/P39/dne4eHl5+Xp6v39/t7j5dzg49je4OXo6tfd3/////7+/vr6+8/W2efq6/7+/t7j5d3h487V2Ozu79bc3tbc39vg4vf4+Pb3+Pv7/P///+fq7Ozv8Pb3+ODk5uPn6f////7+/t7i5PT19u7w8c7V2PX29/r6++bp6+fq7Ort7tfd3+/x8vX299bb3uHl5+nr7fP19dTa3fb3+O/x8vv7++Dk5v39/ePn6f///9Pa3Nne4dXb3vP19fP09dTa3ebq693i5M/V2P///9bc3tfc3+fq7Njd4Pv8/Nfd39/j5dTa3eLm6OXo6f7+/uns7dLY2/P09dbb3tLY293i5OTo6fT19s/V2MzT1+3v8PP09dvg4uHl5+Hl5tHX2uHl59bb3trf4t7j5dbc39bb3uvu7/Dy8+fp6+fq7Pn6+uTo6ufq7Ort7vb3+Njd4OPn6fb3+O7w8fb3+Nzh4+vu7+/x8uDk5uTo6u7x8vz9/fz9/fv8/Pf4+fn6+vX29+2SCnQAAAD9dFJOUwADDQsDBgcBAgQNEBDf+gsIE7DSz/TIwMUW1czj1ue5uL6qshMn5djvzJy1vOprd5P2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');
        texture.magFilter = THREE.LinearMipMapLinearFilter;
        texture.minFilter = THREE.LinearMipMapLinearFilter;
        var fog = new THREE.Fog(0x4584b4, -100, 3000);
        material = new THREE.MeshShaderMaterial({
            uniforms: {
                "map": {
                    type: "t",
                    value: 2,
                    texture: texture
                },
                "fogColor": {
                    type: "c",
                    value: fog.color
                },
                "fogNear": {
                    type: "f",
                    value: fog.near
                },
                "fogFar": {
                    type: "f",
                    value: fog.far
                },
            },
            vertexShader: document.getElementById('vs').textContent,
            fragmentShader: document.getElementById('fs').textContent,
            depthTest: false
        });
        var plane = new THREE.Mesh(new THREE.Plane(64, 64));
        for (i = 0; i < 8000; i++) {
            plane.position.x = Math.random() * 1000 - 500;
            plane.position.y = -Math.random() * Math.random() * 200 - 15;
            plane.position.z = i;
            plane.rotation.z = Math.random() * Math.PI;
            plane.scale.x = plane.scale.y = Math.random() * Math.random() * 1.5 + 0.5;
            GeometryUtils.merge(geometry, plane)
        }
        mesh = new THREE.Mesh(geometry, material);
        scene.addObject(mesh);
        mesh = new THREE.Mesh(geometry, material);
        mesh.position.z = -8000;
        scene.addObject(mesh);
        renderer = new THREE.WebGLRenderer({
            antialias: false
        });
        renderer.setSize(window.innerWidth, window.innerHeight);
        container.appendChild(renderer.domElement);
        document.addEventListener('mousemove', onDocumentMouseMove, false);
        window.addEventListener('resize', onWindowResize, false)
    }

    function onDocumentMouseMove(event) {
        mouseX = (event.clientX - windowHalfX) * 0.25;
        mouseY = (event.clientY - windowHalfY) * 0.15
    }

    function onWindowResize(event) {
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize(window.innerWidth, window.innerHeight)
    }

    function animate() {
        requestAnimationFrame(animate);
        render()
    }

    function render() {
        position = ((new Date().getTime() - start_time) * 0.03) % 8000;
        camera.position.x += (mouseX - camera.target.position.x) * 0.01;
        camera.position.y += (-mouseY - camera.target.position.y) * 0.01;
        camera.position.z = -position + 8000;
        camera.target.position.x = camera.position.x;
        camera.target.position.y = camera.position.y;
        camera.target.position.z = camera.position.z - 1000;
        renderer.render(scene, camera)
    }
</script>
</html>
