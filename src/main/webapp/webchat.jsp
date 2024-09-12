<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style media="screen" type="text/css">
.chat {
	width: 100%;
	height: 200px;
	border: 1px solid silver;
	overflow-y: scroll;
}

#msg {
	width: 99%;
}

h1 {
	text-align: center;
}
</style>

<script type="text/javascript">
	var wsUrl;
	if (window.location.protocol == 'http:') {
		wsUrl = 'ws://';
	} else {
		wsUrl = 'wss://';
	}
	var ws = new WebSocket(wsUrl + window.location.host + "/MindOverFear/chat");

	ws.onmessage = function(event) {
		var mySpan = document.getElementById("chat");
		mySpan.innerHTML += event.data + "<br/>";
	};

	ws.onerror = function(event) {
		console.log("Error ", event)
	}
	function sendMsg() {
		var msg = document.getElementById("msg").value;
		if (msg) {
			ws.send(msg);
		}
		document.getElementById("msg").value = "";
	}
</script>
</head>
<body>
	<h1>Live Chat updates</h1>

	<div>
		<div id="chat" class="chat"></div>
		<div>
			<input type="text" name="msg" id="msg"
				placeholder="Enter message here" />
			<button onclick="return sendMsg();">Enter</button>
		</div>
	</div>
</body>
</html>