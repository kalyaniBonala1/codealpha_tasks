<html>
<head>
<style>
* {
	margin: 0;
	padding: 0;
}

body, form {
	height: 100vh;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
	flex-direction: column;
}

#box {
	height: 500px;
	width: 500px;
	background-color: rgb(82, 180, 87);
	display: flex;
	align-items: center;
	justify-content: space-evenly;
	flex-direction: column;
	border-radius: 15px;
}

#enter {
	height: 300px;
	width: 300px;
	background-color: rgb(209, 243, 243);
	border-radius: 15px;
	padding: 20px;
}
 #a{
             height: 8%;
             width: 120px;
             background-color: rgb(219, 100, 100);
        }
</style>
</head>

<body>
	<form action="countwords">
		<h1>WORD COUNTER</h1>
		<div id="box">
			<%
			String data="";
			if (request.getAttribute("paragraph") != null) {
				data = (String) request.getAttribute("paragraph");
			}
			%>
			<textarea id="enter" placeholder="Enter your paragraph " name="data" ><%=data %></textarea>
			<input type="submit" value="count" id="a">
			<%
			int count = 0;
			if (request.getAttribute("countOfWords") != null) {
				count = (int) request.getAttribute("countOfWords");
			}
			%>

			<h1>
				count of words <input disabled value=<%=count%>>
			</h1>
		</div>
	</form>
</body>

</html>
