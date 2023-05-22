<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>My Application</title>
	</head>
	<body>
		<% 
			String sVal1 = request.getParameter("val1");
			String sVal2 = request.getParameter("val2");
			String total = "";
			if (!(sVal1 == null || sVal2 == null || sVal1.isEmpty() || sVal2.isEmpty())) {
				Integer iTotal = Integer.valueOf(sVal1) + Integer.valueOf(sVal2);
				total = String.valueOf(iTotal);
			}
		%>
		
		<p>This form does a GET request and performs the calculation on the server</p>
	    <form action="index.jsp" method="GET">
	    	Input field #1: <input type="number" name="val1" value="<%= sVal1 %>" required/>
	    	<br/>
	    	Input field #2: <input type="number" name="val2" value="<%= sVal2 %>" required/>
	    	<br/>
	    	<input type="submit" value="Calculate Sum"/>
	    	Total: <% out.print(total); %>
	    </form>
	    
	    <br/>
		<br/>

	    <p>This form performs the calculation in the browser through javascript</p>
    	Input field #1: <input id="a" type="number" required/>
    	<br/>
    	Input field #2: <input id="b" type="number" required/>
    	<br/>
    	<button onclick="calculateSum()">Calculate Sum</button>
	    <span id="total">Total: </span>
		
	</body>
	<script src="script.js"></script>
</html>