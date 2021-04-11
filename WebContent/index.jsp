<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OpenWeather</title>
  <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
  <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script> 
  <link href="style.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
  
</head>
<body>




<main>
<h1 class="mdc-typography--headline2">Weather</h1>
 <form action="OWservlet" method="get">  
 
	<label class="mdc-text-field mdc-text-field--filled" data-mdc-auto-init="MDCTextField">
	<span class="mdc-text-field__ripple"></span>
	<input class="mdc-text-field__input" type="text" aria-labelledby="label" name="city" required="required">
	<span id="label" class="mdc-floating-label">City</span>
	<span class="mdc-line-ripple"></span>
	</label>
	<br>  


	<label class="mdc-text-field mdc-text-field--filled" data-mdc-auto-init="MDCTextField">
	<span class="mdc-text-field__ripple"></span>
	<input class="mdc-text-field__input" type="text" aria-labelledby="label" name="country" required="required">
	<span id="label" class="mdc-floating-label">Country Code</span>
	<span class="mdc-line-ripple"></span>
	</label> 

    <br>
    
    <button class="mdc-button mdc-button--raised" type="submit"> 
    <span class="mdc-button__ripple"></span>
    <i class="material-icons mdc-button__icon" aria-hidden="true">search</i> 
  	<span class="mdc-button__label">SEARCH</span>
  	</button>

    </form>  

</main>



<script>
mdc.autoInit();
</script>

</body>
</html>