<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/3
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<c:set var="ctx" value="${pageContext.request.contextPath}" />--%>
<%--<script type="text/javascript">--%>
<%--    var contextPath = "${ctx}";--%>
<%--</script>--%>


<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
<%--    <link type="text/css" rel="stylesheet" href="${ctx}/css/style.css" />--%>
<%--    <!--[if IE 6]>--%>
<%--    <script src="${ctx}/js/iepng.js" type="text/javascript"></script>--%>
<%--    <script type="text/javascript">--%>
<%--        EvPNG.fix('div, ul, img, li, input, a');--%>
<%--    </script>--%>
<%--    <![endif]-->--%>
<%--    <script type="text/javascript" src="${ctx}/js/jquery-1.11.1.min_044d0927.js"></script>--%>
<%--    <script type="text/javascript" src="${ctx}/js/jquery.bxslider_e88acd1b.js"></script>--%>

<%--    <script type="text/javascript" src="${ctx}/js/jquery-1.8.2.min.js"></script>--%>
<%--    <script type="text/javascript" src="${ctx}/js/menu.js"></script>--%>

<%--    <script type="text/javascript" src="${ctx}/js/lrscroll_1.js"></script>--%>


<%--    <script type="text/javascript" src="${ctx}/js/n_nav.js"></script>--%>
<%--    <script type="text/javascript" src="${ctx}/js/milk_ban.js"></script>--%>
<%--    <script type="text/javascript" src="${ctx}/js/paper_ban.js"></script>--%>
<%--    <script type="text/javascript" src="${ctx}/js/baby_ban.js"></script>--%>

<%--    <title>易买网</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<!--Begin Header Begin-->--%>

<%@include file="/front/pages_common/header.jsp"%>
<!--End Header End-->
<!--Begin Menu Begin-->

<%@include file="/front/pages_common/productCateegory.jsp"%>
<!--End Menu End-->
<div class="i_bg">
    <div class="postion">
        <span class="fl">全部 > 美妆个护 > 香水 > 香奈儿</span>
    </div>

    <div class="content mar_20">
        <div class="l_history">
            <div class="his_t">
                <span class="fl">浏览历史</span>
                <span class="fr"><a href="#">清空</a></span>
            </div>
            <ul>
                <li>
                    <div class="img"><a href="#"><img src="${ctx}/images/his_1.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${ctx}/images/his_2.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>768.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${ctx}/images/his_3.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>680.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${ctx}/images/his_4.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="${ctx}/images/his_5.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 18R
                    </div>
                </li>
            </ul>
        </div>
        <div class="l_list">
            <table border="0" style="width:100%; margin-bottom:30px; border:1px solid #eaeaea;" cellspacing="0" cellpadding="0">
                <tr valign="top">
                    <td width="248"><div class="brand_img"><img src="${ctx}/images/brand5.jpg" width="226" height="108" /></div></td>
                    <td class="td_b" style="padding:15px 40px;">
                        所有分类<br />
                        <a href="#" class="now">香水（10）</a><a href="#">彩妆套装（2）</a><a href="#">洁面（1）</a><a href="#">精华（1）</a><a href="#">化妆水（2）</a><a href="#">嫩肤（3）</a>
                    </td>
                </tr>
            </table>
            <div class="list_t">
            	<span class="fl list_or">
                	<a href="#" class="now">默认</a>
                    <a href="#">
                    	<span class="fl">销量</span>
                        <span class="i_up">销量从低到高显示</span>
                        <span class="i_down">销量从高到低显示</span>
                    </a>
                    <a href="#">
                    	<span class="fl">价格</span>
                        <span class="i_up">价格从低到高显示</span>
                        <span class="i_down">价格从高到低显示</span>
                    </a>
                    <a href="#">新品</a>
                </span>
                <span class="fr">共发现${count}件</span>
            </div>
            <div class="list_c">

                <ul class="cate_list">
                    <c:forEach items="${pctList}" var = "pct">
                    <li>
                        <div class="img">
                            <a href="#">
                                <img src="${ctx}/front/product_images/${pct.filename}" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>${pct.price}</span></font> &nbsp; 26R
                        </div>
                        <div class="name"><a href="#">${pct.name}</a></div>
                        <div class="carbg">
                            <a href="#" class="ss">收藏</a>
                            <a href="#" class="j_car" onclick="addCartByParam(${pct.id},1);">加入购物车</a>
                        </div>
                    </li>
                    </c:forEach>
                </ul>

                <div class="pages">
                    <a href="#" class="p_pre">上一页</a><a href="#" class="cur">1</a><a href="#">2</a><a href="#">3</a>...<a href="#">20</a><a href="#" class="p_pre">下一页</a>
                </div>



            </div>
        </div>
    </div>

    <!--Begin Footer Begin -->
    <%@include file="/front/pages_common/footer.jsp"%>
    <!--End Footer End -->
    <script>
        function addCartByParam(entityId,quantity) {
            // alert("djfkj dfdsfsdfsd")
            $.ajax({
                url:"${ctx}/cart",
                type:"post",
                dataType:"json",
                data:{entityId:entityId,quantity:quantity,action:"add"},
                success:function (jsonStr) {
                    // alert('DKJFLSJFK')
                    if (jsonStr.status == 1){
                        alert("操作成功");
                        //异步刷新
                        refreshCart();
                    }else{
                        alert("操作失败");
                    }
                },error:function () {
                    alert("添加数据失败");
                }

            })
        }
        function refreshCart() {
            $.ajax({
                url:"${ctx}/cart",
                type:"post",
                dataType:"html",
                data:{action:"refreshCart"},
                success:function (jsonStr) {
                    //替换购物车节点HTML
                    $("#cart_bar").html(jsonStr);
                },error:function () {
                    alert("添加数据失败");
                }

            })
        }
    </script>