<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>新增权限</title>
<link rel="stylesheet"
	href="../css/goodstudy.css">
</head>

<body>
	<div id="container">
		<input type="hidden" id="msg" value="" />
		<div class="crumb">
			<span class="breadcrumb"> <a href="javascript:void(0);">用户管理</a>&gt;
				<a href="javascript:void(0);">权限管理</a>&gt; <a
				href="javascript:void(0);">新增</a>
			</span>
		</div>
		<div class="operatewin">
			<form class="editform layui-form" action="add.do?param=powerAdd" method="post" style="width:360px;">
				<!-- 添加隐藏的文本框,避免文本框里输入回车自动提交表单的问题 -->
				<input style="display:none" />
				<div class="form-item">
					<div class="form-label">
						<label>权限名称:</label>
					</div>
					<div class="input-inline">
						<input type="text" class="txt" name="powerId" value=""/>
					</div>
				</div>



				<input type="submit" class="btn normal" value="确定" id="new"/>


			</form>

		</div>
	</div>

</body>
</html>


