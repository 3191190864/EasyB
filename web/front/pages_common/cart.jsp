
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
    var contextPath = "${ctx}";
</script>

<div class="i_car">
    <div class="car_t">购物车 [
            <span>
                <c:if test="${sessionScope.cart!=null && sessionScope.cart.items.size()>0}">
                    ${sessionScope.cart.items.size()}
                </c:if>
                <c:if test="${sessionScope.cart==null || sessionScope.cart.items.size()<=0}">
                    空
                </c:if>
            </span>
        ]</div>
    <div class="car_bg">
        <!--Begin 购物车未登录 Begin-->
<%--        <c:if test="">--%>
        <div class="un_login">还未登录！<a href="${ctx}/login?action=toLogin" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
<%--        <div class="un_login">还未登录！<a href="${ctx}/login?action=toLogin" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>--%>

<%--        </c:if>--%>
        <!--End 购物车未登录 End-->
        <!--Begin 购物车已登录 Begin-->
        <ul class="cars">
            <c:forEach items="${sessionScope.cart.items}" var="item">
                <li>
                        <%--                    /${item.product.filename}--%>
                    <div class="img"><a href="#"><img src="${ctx}/front/product_images/${item.product.filename}" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">${item.product.name}</a></div>
                    <div class="price"><font color="#ff4e00">￥${item.product.price}</font> X${item.quantity}</div>
                </li>
            </c:forEach>
        </ul>

        <c:if test="${sessionScope.loginUser!=null}">
            <c:if test="${sessionScope.cart!=null && sessionScope.cart.items.size()>0}">
                <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>${sessionScope.cart.sum}</span></div>
                <div class="price_a"><a href="#">去购物车结算</a></div>
            </c:if>
        </c:if>

        <c:if test="${sessionScope.loginUser==null}">
            <c:if test="${sessionScope.cart!=null && sessionScope.cart.items.size()>0}">
                <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>${sessionScope.cart.sum}</span></div>
                <div class="price_a"><a href="#">去登录</a></div>
            </c:if>
        </c:if>

                <c:if test="${sessionScope.cart==null || sessionScope.cart.items.size()<=0}">

                </c:if>



        <!--End 购物车已登录 End-->
    </div>
</div>