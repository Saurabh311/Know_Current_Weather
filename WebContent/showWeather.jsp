<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.weatherBean" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show weather</title>
  <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
  <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script> 
  <link href="style.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      
</head>
<body>
<%
weatherBean wBean = (weatherBean)request.getAttribute("wBean");
Cookie ck[] = request.getCookies();
%>
  
<main>

	<h1 class="mdc-typography--headline2">Weather</h1>
	<ul class="mdc-list mdc-list--two-line weatherList">
		  <li class="mdc-list-item" tabindex="0">
		    <span class="mdc-list-item__graphic material-icons" aria-hidden="true">thermostat</span>
		    <span class="mdc-list-item__ripple"></span>
		    <span class="mdc-list-item__text">
		
		    <span class="mdc-list-item__primary-text"><%out.print((wBean.getCityStr()) 
		    			+ " " + wBean.getTemperatureInCelcius()); %>°</span>
		    <span class="mdc-list-item__secondary-text"><%out.print(wBean.getCloudsStr()); %></span>
		    </span>
		  </li>
		  
		  <%
		  for (int i = 0; i < ck.length; i++) {
				if(!ck[i].getName().equals("JSESSIONID")){
					String[] splitCookie = ck[i].getValue().split("/");
					
					out.println("<li class=\"mdc-list-item\" tabindex=\"0\">");
					out.println("<span class=\"mdc-list-item__graphic material-icons\" aria-hidden=\"true\">thermostat</span>");
					out.println("<span class=\"mdc-list-item__ripple\"></span>");
					out.println("<span class=\"mdc-list-item__text\">");
					out.println("<span class=\"mdc-list-item__primary-text\">"+ splitCookie[0] + " " + splitCookie[2] +"°</span>");
					out.println("<span class=\"mdc-list-item__secondary-text\">" + splitCookie[1].replaceAll("_", " ") + "</span>");
					out.println("</span>");
					out.println("</li>");
				}
		  
		  }
		  %>
		  
	</ul>


	<a href= "index.jsp">
    <button class="mdc-button mdc-button--raised"> 
    <span class="mdc-button__ripple"></span>
    <span class="material-icons">arrow_back</span>
  	<span class="mdc-button__label">GO BACK</span>
  	</button>
  	</a>
  	
  	

</main>
<script>
mdc.autoInit();
  </script>

</body>
</html>