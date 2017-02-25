<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	window.onload = function() {
		//1.获取a节点，并为其添加onclick响应参数
		document.getElementsByTagName("a")[0].onclick = function() {

			//3.创建一个xmlhttprequst对象
			var request = new XMLHttpRequest();

			//4.准备发送请求的数据：url
			var url = this.href + "?time=" + new Date();
			var method = "GET";

			//5.调用xmlhttprequst对象的open方法
			request.open(method, url);

			//6.调用xmlhttprequst对象的send方法
			request.send(null);

			//7.为xmlhttprequst对象添加onreadystatechange响应函数
			request.onreadystatechange = function() {
				//8.判断响应是否完成：xmlhttprequst对象的readystate属性值是4的时候
				if (request.readyState == 4) {
					//9.再判断响应是否可用：xmlhttprequst对象status属性值是200
					if (request.status == 200 || request.status == 304) {
						//10.响应结果:responseText
						alert(request.responseText);
					}
				}
			}

			//2.取消a节点的响应行为
			return false;
		}
	}
</script>
<body>
	<a href="helloAjax.txt">helloAjax</a>
</body>
</html>