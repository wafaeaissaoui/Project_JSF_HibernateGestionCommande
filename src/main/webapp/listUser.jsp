<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
<h:form>
<h1> list User </h1>
</h:form>
<h:dataTable value="#{c.user}" var="p">  
<h:column>  
<h:outputText value="#{c.id}"/>  
</h:column>  
<h:column>  
<h:outputText value="#{c.name}"/>  
</h:column> 
<h:column>  
<h:outputText value="#{c.email}"/>  
</h:column> 
<h:column>  
<h:outputText value="#{c.tele}"/>  
</h:column> 
<h:column>  
<h:commandButton  styleClass="btn btn-dark"  value="Update" >  
</h:commandButton>  
</h:column> 
<h:column>  
<h:commandButton styleClass="btn btn-danger" action="#{c.delete(c.id)}" value="Delete" >  
</h:commandButton>  
</h:column> 
</h:dataTable>
 </f:view>
       
</body>
</html>