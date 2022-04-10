<html>
<head>
<title>Hello devops!</title>
</head>
<body>
	<h1>Hello devops!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
