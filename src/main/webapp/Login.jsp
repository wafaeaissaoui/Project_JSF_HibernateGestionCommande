<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-color : #E9967A;
color : white;
}
</style>
</head>
<body>
<f:view>
	<h:form>
		<h3>Login</h3>
		<h:outputText value="Email" />
		<h:inputText id="email" value="#{admin.email}"  required="true"/>
		<br>
		<h:message for="email" style="color:red" />
          <br></br>
		<h:outputText value="Password" />
		<h:inputSecret id="password" value="#{admin.password}" required="true"  />
		<br>
		<h:message for="password" style="color:red" />
         <br></br>
		
		<h:commandButton action="#{admin.checkuser}"
			value="Login"></h:commandButton>
	</h:form>
</f:view>
</body>
</html>