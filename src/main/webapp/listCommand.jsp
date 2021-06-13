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
<h1> list Commande </h1>
</h:form>
<h:dataTable value="#{cm.allCommands}" var="cm">  
<h:column>  
<h:outputText value="#{cm.id}"/>  
</h:column>  
<h:column>  
<h:outputText value="#{cm.label}"/>  
</h:column> 
<h:column>  
<h:outputText value="#{cm.prix}"/>  
</h:column> 
<h:column>  
<h:outputText value="#{cm.commands}"/>  
</h:column> 
<h:column>  
<h:commandButton  styleClass="btn btn-dark" action="#{cm.getCommandDetailsById(cm.id)}" value="Update" >  
</h:commandButton>  
</h:column> 
<h:column>  
<h:commandButton styleClass="btn btn-danger" action="#{cm.delete(cm.id)}"value="Delete" >  
</h:commandButton>  
</h:column> 
</h:dataTable>
 </f:view>
       
</body>
</html>