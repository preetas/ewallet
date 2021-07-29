<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form1" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<style>
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
<body>
    <div class="w3-container w3-teal w3-center" >
        <h5 ><b>E-WALLET<b></h5>
    </div>
	<div class="w3-container w3-red"  >
 
        <a href="#" class="w3-bar-item w3-button">ABOUT US</a>
         <a href="#" class="w3-bar-item w3-button">CONTACT</a>
    </div> 

	<form1:form action="/NewOne/logincheck" modelAttribute="st">
	


<div >
  <h1>LOGIN HERE</h1>
</div>
		<form1:label path="email" >Enter EMAIL: </form1:label>
		<form1:input path="email"/> <br/>
		
		<form1:label path="pwd" >Enter Password : </form1:label>
		<form1:input path="pwd"/> <br/>
		
		<input type="submit" value="Login" class="button" />
	</form1:form>
	
<div class="w3-container w3-teal w3-right-align" >
   <h5 >Copyright kssp@2017 </h5>
</div>
</body>
</html>