<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	window.onload = function() {//在文档加载完成后马上执行！
		//得到btn元素
		var btn = document.getElementById("btn");
		// 给btn的click事件注册监听
		btn.onclick = function() {//在按按钮被点击时执行！
			// 获取h1元素对应的DOM对象
			var h1 = document.getElementById("h1");
			// 给h1添加内容
			h1.innerHTML = "Hello JS!!!";
		};
	};
</script>
<body>
	<button id="btn">点击这里</button>
	<h1 id="h1"></h1>
</body>
</html>