<%--
  Created by IntelliJ IDEA.
  User: zh.xu
  Date: 2015/1/13
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>收货地址管理</title>
</head>
<body>
<link href="/static/portal/css/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/static/portal/css/jquery.inputbox.css"/>
<script src="/static/portal/js/jquery-1.8.3.min.js" type="application/javascript"></script>
<script src="/static/portal/js/jquery.SuperSlide.2.1.1.js" type="application/javascript"></script>
<script src="/static/portal/js/common.js" type="application/javascript"></script>
<script src="/static/portal/js/jquery.inputbox.js" type="text/javascript"></script>
<script src="/static/portal/js/jquery.ganged.js" type="text/javascript"></script>
<script src="/static/portal/js/diqu.js" type="text/javascript"></script>
<style type="text/css">
    .black_overlay {
        display: none;
        position: absolute;
        top: 0%;
        left: 0%;
        width: 100%;
        height: 100%;
        background-color: black;
        z-index: 1001;
        -moz-opacity: 0.8;
        opacity: .80;
        filter: alpha(opacity=80);
    }

    .white_content {
        display: none;
        position: absolute;
        top: 25%;
        left: 15%;
        width: 70%;
        height: 50%;
        padding: 16px;
        border: 2px solid orange;
        background-color: white;
        z-index:1002;
        overflow: auto;
    }
</style>
<div class="bodybox">
    <div class="bodymain2">
        <div class="usernav">
            <h1>我的壹态</h1>
            <ul>
                <li><a href="/Customer/GetUserInfo">我的资料</a></li>
                <li class="on"><a href="#">管理收货地址</a></li>
                <li><a href="#">查询订单</a></li>
                <li><a href="#">我的抵用金</a></li>
            </ul>
        </div>
        <div class="mainbox">
            <div class="boxtop lan">
                <div class="fl"><a href="#" class="usermenu" onclick="openWindow();"><img
                        src="/static/portal/images/shouhuo.png" alt=""
                        style="vertical-align: middle;"/>添加新收货地址</a></div>
                <div class="fr">
                    <a class="readall" href="#">
                        <img src="/static/portal/images/readall.png" alt="" style="vertical-align: middle;"/>查看全部
                    </a>
                </div>
            </div>
            <div id="deliveryList" class="boxcenter shouhuo" style="overflow-y:scroll; height: 300px;">
                <div class="addmorebox">
                    <ul>
                        <li><div>姓名：徐中华</div></li>
                        <li>电话：18615795110</li>
                        <li>地址：四川省成都市高新区中和镇</li>
                        <li>
                            <a href="javascript:void(0);" style="color:#A9CE2C;" onclick="editShdz(1)">编辑</a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="javascript:void(0);" style="color:#A9CE2C;" onclick="deleteShdz(2)">删除</a>
                        </li>
                    </ul>
                </div>
                <div class="addmorebox">
                    <ul>
                        <li>姓名：徐中华</li>
                        <li>电话：18615795110</li>
                        <li>地址：四川省成都市高新区中和镇</li>
                    </ul>
                </div>
            </div>
            <div class="boxbottom"></div>
        </div>
    </div>
</div>
<div id="light" class="white_content">
    <div style="height: 20px; background-color: aliceblue; padding: 8px;">
        <div style="float: left"><a href="javascript:void(0);" style="color:#A9CE2C; font-weight: bold;">添加收货地址</a></div>
        <div style="float: right;"><a href="javascript:void(0);" style="color:#A9CE2C;" onclick="closeWindow();">关闭</a></div>
    </div>
    <form id="shdz" method="post" action="">
        <div style="padding: 0px; font-size:13px;">
            <div class="boxcenter xiedingdan" style="font-size: 13px;">
                <table>
                    <tr height="50px">
                        <td style="text-align: right;">收货人：</td>
                        <td>
                            <input type="text" name="consignee" value=""
                                   placeholder="收货人姓名" class="inputtype2"
                                   style="width:150px;margin-right:11px"/>
                        </td>
                    </tr>
                    <tr height="50px">
                        <td style="text-align: right;">联系方式：</td>
                        <td>
                            <input
                                    type="text" name="phone" value="" placeholder="收货人联系方式" class="inputtype2"
                                    style="width:150px;"/>
                            <%--&nbsp;&nbsp;<input type="text" name="site" value="" placeholder="邮编信息" class="inputtype2"--%>
                                                                             <%--style="width:150px;"/>--%>
                        </td>
                    </tr>
                    <tr style="padding-top: 10px;" height="50px">
                        <td style="text-align: right;">收货地址：</td>
                        <td>
                            <div id="sel3">
                                <input type="hidden" class="province" value="010000"/>
                                <input type="hidden" class="city" value="010100"/>
                                <input type="hidden" class="area" value="010101"/>
                                <div id="province" name="province" type="selectbox" style="margin-right: 11px;">
                                    <div class="opts"></div>
                                </div>
                                <div name="city" type="selectbox" style="margin-right:5px;">
                                    <div class="opts"></div>
                                </div>
                                <div name="area" type="selectbox" style="margin-right:5px;">
                                    <div class="opts"></div>
                                </div>
                                <input class="real" name="province" type="hidden" value=""/>&nbsp;
                                <input type="text" name="address" value="" placeholder="请填写具体收货地址" class="inputtype2"
                                       style="width:245px;margin-right:19px;"/>
                            </div>
                        </td>
                    </tr>
                    <tr height="60px;">
                        <td colspan="2" style="text-align: center">
                            <a class="greenbtn fl" href="javascript:void(0);"
                               onclick="saveShdz()">保存收货地址</a>
                            <%--<input type="button" value="保存收货地址" style="height: 30px; width: 100px;" onclick="saveShdz()">--%>
                        </td>
                    </tr>
                </table>


                <!--务必不要在input之间加入空格 回车-->
                <script>
                    $('#sel3').ganged({'data': data, 'width': 150, 'height': 32});
                </script>
                <div class="clear"></div>
            </div>

            <div class="boxbottom"></div>
        </div>
    </form>

</div>
<div id="fade" class="black_overlay"></div>

<script language="javascript">
    function openWindow() {
        document.getElementById('light').style.display = 'block';
        document.getElementById('fade').style.display = 'block';
    }
    function closeWindow() {
        document.getElementById('light').style.display = 'none';
        document.getElementById('fade').style.display = 'none';
    }

    function saveShdz(){
        $.ajax({
            url: '/Delivery/addDelivery',
            type: 'POST',
            data: $('#shdz').serialize(),
            dataType: 'json',
            success: function (json) {
                if (json.success) {
                    alert(json.message);
                    closeWindow();
                    window.location.href="/Delivery/DeliveryAddrMan";
                } else {
                    jAlert(json.message);
                }
            },
            error: function (data) {
                jAlert(data);
                closeWindow();
            }
        });
    }

    function editShdz(id){
//        jAlert("请先删除，再添加");
        $(this).parent().find('.province').val("四川省");
        openWindow();
//        $.ajax({
//            url: '/Delivery/editDelivery?id=' + id,
//            type: 'POST',
//            data: $('#shdz').serialize(),
//            dataType: 'json',
//            success: function (json) {
//                //var json = (new Function("return " + data))();
//                if (json.success) { //申报成功
//                    jAlert(json.message);
//                } else {
//                    //$.messager.alert('提示', json.message, 'error');
//                    jAlert(json.message);
//                }
//            },
//            error: function (data) {
//                jAlert(data);
//                closeWindow();
//            }
//        });
    }

    function deleteShdz(id){
        if(confirm("确认要删除该收货地址？")){
            var url = "/Delivery/deleteDelivery?id=" + id;
            alert(url);
            $.ajax({
                url: url,
                type: 'POST',
                data: null,
                dataType: 'json',
                success: function (json) {
                    if (json.success) {
                        window.location.href="/Delivery/DeliveryAddrMan";
                    } else {
                        jAlert(json.message);
                    }
                },
                error: function (data) {
                    jAlert(data);
                    closeWindow();
                }
            });
        }

    }

    $(document).ready(function () {
        $.ajax({
            url: '/Delivery/getDeliveries',
            type: 'GET',
            data: null,
            dataType: 'json',
            success: function (json) {
                if (json.success) {
                    $("#deliveryList").html(json.message);
                } else {
                    jAlert(json.message);
                }
            },
            error: function (data) {
                jAlert(data);
            }
        });
    });
</script>
</body>
</html>