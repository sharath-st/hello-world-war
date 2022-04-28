<html>
<head>
<title>Hello this is Sharath's website!</title>
</head>
<body>
	<h1>Hello this is Sharath's website!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
