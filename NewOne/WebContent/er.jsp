<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form1" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form1:form action="/ewallet/addcustomer" modelAttribute="st">
		<form1:label path="email" >Enter EMAIL: </form1:label>
		<form1:input path="email"/> <br/>
		
		<form1:label path="fname" >Enter First Name : </form1:label>
		<form1:input path="fname"/> <br/>
		
		<form1:label path="lname" >Enter Last name : </form1:label>
		<form1:input path="lname"/> <br/>
		
		<form1:label path="contact" >Enter Contact : </form1:label>
		<form1:input path="contact"/> <br/>
		
		<form1:label path="pwd" >Enter Password : </form1:label>
		<form1:input path="pwd"/> <br/>
		
		
		<form1:label path="city" >Enter City : </form1:label>
		<form1:input path="city"/> <br/>
		
		<form1:label path="country" >Enter Country : </form1:label>
		<form1:input path="country"/> <br/>
		
		<form1:label path="pincode" >Enter PinCode : </form1:label>
		<form1:input path="pincode"/> <br/>
		
		<input type="submit" value="Add customer" />
	</form1:form>
</body>
</html>