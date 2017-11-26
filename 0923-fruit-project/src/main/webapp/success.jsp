<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ page import="entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>付款成功页面</title>
<link rel="stylesheet" type="text/css"
	href="AmazeUI-2.4.2/assets/css/amazeui.css" />
<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
	type="text/css">
<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />

<link href="css/sustyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="basic/js/jquery-1.7.min.js"></script>

</head>

<body>


	<!--顶部导航条 -->
	<div class="am-container header">
		
		<ul class="message-r">
			<div class="topMessage home">
				<div class="menu-hd">
					<a href="home3.jsp" target="_top" class="h">商城首页</a>
				</div>
			</div>
			<div class="topMessage my-shangcheng">
				<div class="menu-hd MyShangcheng">
					<a href="index.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
				</div>
			</div>
			<div class="topMessage mini-cart">
				<div class="menu-hd">
					<a id="mc-menu-hd" href="shopcart.jsp" target="_top"><i
						class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong
						id="J_MiniCartNum" class="h">0</strong></a>
				</div>
			</div>
			<div class="topMessage favorite">
				<div class="menu-hd"></div>
		</ul>
	</div>

	<!--悬浮搜索框-->

	<div class="nav white">
		<div class="logo">
			<img src="images/logo.png" />
		</div>
		<div class="logoBig">
			<li><img src="images/logobig.png" /></li>
		</div>

		<div class="search-bar pr">
			<a name="index_none_header_sysc" href="#"></a>
			<form action="search.jsp" method="post">
				<input id="searchInput" name="index_none_header_sysc" type="text"
					placeholder="搜索" autocomplete="off"> <input
					id="ai-topsearch" class="submit" value="搜索" index="1" type="submit">
			</form>
		</div>
	</div>

	<div class="clear"></div>

	<%
	session=request.getSession();
	Order order=(Order)session.getAttribute("order");
	%>

	<div class="take-delivery">
		<div class="status">
			<h2>您已成功付款</h2>
			<div class="successInfo">
				<ul>
					<li>付款金额<em><%=order.getPrice() %></em></li>
					<div class="user-info">
						<p>收货人：<%=order.getUname() %></p>
						<p>联系电话：<%=order.getPhone() %></p>
						<p>收货地址：<%=order.getAddress() %></p>
					</div>
					请认真核对您的收货信息，如有错误请联系客服

				</ul>
				<div class="option">
					<span class="info">您可以</span> <a href="#"
						class="J_MakePoint">查看<span>已买到的宝贝</span></a> <a
						href="#" class="J_MakePoint">查看<span>交易详情</span></a>
				</div>
			</div>
		</div>
	</div>


	<%@ include  file="footer.jsp"%>


</body>
</html>
