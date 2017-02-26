<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function createXMLHttpRequest() {
		try {
			return new XMLHttpRequest();//大多数浏览器
		} catch (e) {
			try {
				return ActvieXObject("Msxml2.XMLHTTP");//IE6.0
			} catch (e) {
				try {
					return ActvieXObject("Microsoft.XMLHTTP");//IE5.5及更早版本	
				} catch (e) {
					alert("哥们儿，您用的是什么浏览器啊？");
					throw e;
				}
			}
		}
	}

	window.onload = function() {
		// 获取btn元素
		var btn = document.getElementById("btn");
		btn.onclick = function() {//给按钮的点击事件上添加监听
			// 使用ajax得到服务器端响应，把结果显示到h3中
			//1. 得到request
			var xmlHttp = createXMLHttpRequest();
			//2. 连接
			xmlHttp.open("GET", "<c:url value='/AServlet'/>", true);
			//3. 发送
			xmlHttp.send(null);
			//4. 给xmlHttp的状态改变事件上添加监听
			xmlHttp.onreadystatechange = function() {
				//双重判断
				if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
					var text = xmlHttp.responseText;//它是一个json串
					// 执行json串
					var person = eval("(" + text + ")");
					var s = person.name + ", " + person.age + ", " + person.sex;
					document.getElementById("h3").innerHTML = s;
				}
			};
		};
	};
</script>

<body>
	<button id="btn">点击这里</button>
	<h1>JSON之Hello World</h1>
	<h3 id="h3"></h3>
</body>
</html>