<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>壹态Diet</title>
    <meta name="decorator" content="un-decorator-pages"/>
    <link href="/static/portal/css/common.css" rel="stylesheet" type="text/css">
    <script src="/static/portal/js/jquery-1.8.3.min.js" type="application/javascript"></script>
    <script src="/static/portal/js/jquery.SuperSlide.2.1.1.js" type="application/javascript"></script>
    <script src="/static/portal/js/common.js" type="application/javascript"></script>
</head>
<body>
<div class="headerbox white">
    <div class="header">
        <div class="logo">
            <img src="/static/portal/images/logo2.png" width="230" height="51" alt="壹态" title="壹态">
        </div>
        <div class="nav">
            <ul>
                <li><a href="/">首页</a></li>
                <li><a href="/Product">壹态套餐</a></li>
                <li><a href="/Comment">顾客说</a></li>
                <li><a href="/Delivery">配送服务</a></li>
                <li><a href="/QA">常见问题</a></li>
                <li><a href="/About">关于我们</a></li>
            </ul>
        </div>
        <div class="login">
            <strong>
                <a style="float: left;" href="/Product">
                    <img src="/static/portal/images/goumai.png" alt="立即购买" width="28" height="28" title="立即购买"/>

                    <div>立刻购买</div>
                </a>
                <a style="padding-top:41px;margin:0 5px;float: left">|</a>

                <div style="float: left;">
                    <img id="userPic" src="/static/portal/images/user.png" alt="登陆/注册" title="登陆/注册" width="28" height="28"/>

                    <p id="un_login_state"><a href="/Login">登陆</a><a>/</a><a href="/Register">注册</a></p>
                    <p id="login_state" style="display: none"><a id="userTitle" href="/Customer/GetUserInfo">${userTitle}</a></p>
                </div>
            </strong>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="bodybox">
    <div class="bodymain2">
        <div class="usernav">
            <h1>我的壹态</h1>
            <ul>
                <li class="on"><a href="/Customer/GetUserInfo">我的资料</a></li>
                <li><a href="/Delivery/DeliveryAddrMan">管理收货地址</a></li>
                <li><a href="#">查询订单</a></li>
                <li><a href="#">我的抵用金</a></li>
            </ul>
        </div>
        <div class="mainbox">
            <div class="boxtop lv">
                <div class="fl"><a href="#" class="usermenu"><img src="/static/portal/images/userhd.png" alt=""
                                                                  style="vertical-align: middle;"/>我的资料</a></div>
                <div class="fr">
                    <a class="readall" href="/Customer/EditUserInfo">
                        <img src="/static/portal/images/readall.png" alt="" style="vertical-align: middle;"/>编辑资料
                    </a>
                    <a style="margin-right: 20px;margin-left: -20px;color: darkcyan"
                       href="javascript:void(0);" onclick="logout()"><b>退出</b></a>
                </div>
            </div>
            <div class="boxcenter ziliao">
                <div class="userheader">
                    <div class="userhdshade"></div>
                    <!--头像遮罩-->
                    <img src="/static/portal/images/userdemo.png" width="157" height="210"/><!--头像位置&&头像demo图像-->
                </div>
                <div class="userinfo">
                    <ul>
                        <li>姓名：${realName}</li>
                        <li>电话：${mobile}</li>
                        <li>性别：${sex}</li>
                        <li>生日：${birthday}</li>
                    </ul>
                    <div class="save">
                        <a type="submit" class="greenbtn" style="font-size:11px;color:black;"
                           href="/Customer/FindPwd">修改密码</a>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="boxbottom"></div>
        </div>
    </div>
</div>
<div class="mainbottom">
    <div class="bottombox"></div>
    <div class="footer">
        <div class="leftmenu">
            <ul>
                <li><a href="#"><img src="/static/portal/images/wx.png" alt=""/></a></li>
                <li><a href="#"><img src="/static/portal/images/qq.png" alt=""/></a></li>
                <li><a href="#"><img src="/static/portal/images/weibo.png" alt=""/></a></li>
            </ul>
        </div>
        <div class="rightdesc">
            <ul>
                <li>市场联络：SLKFDJLSKFJS</li>
                <li>京ICP备149594940</li>
                <li>YITAIDIET@163.COM</li>
            </ul>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        if($('#userTitle').text() != ''){
            $('#login_state').show();
            $('#un_login_state').hide();
        }
    });

    function logout(){
        window.location.href = '/Customer/Logout';
    }
</script>
</body>
</html>
