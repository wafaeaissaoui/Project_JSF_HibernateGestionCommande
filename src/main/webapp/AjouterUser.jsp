<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />    

<title>Insert title here</title>
<style type="text/css">
body{
background-color : #AEACAB;
color : white;
}</style>
</head>
<body>
<f:view>
<center><h2>Ajouter User</h2></center>
    <!-- New Student Form -->
    <h3 class="marginLeft12"></h3>
    <h:form id="studentSaveForm" styleClass="form-horizontal">    	
        <h:panelGrid columns="2">  
        	<div class="form-group">
            	<h:outputLabel value="Id:" styleClass="control-label" />
            	<div class="col-xs-10">	
            		<h:inputText value="#{c.id}" styleClass="form-control" />
            	</div> 
            </div>
            <div class="form-group">
            	<h:outputLabel value="Nom produit:" styleClass="control-label" />
            	<div class="col-xs-10">
            		<h:inputText value="#{c.name}" styleClass="form-control" /> 
            	</div> 
            </div>
            <div class="form-group">
            	<h:outputLabel value="Prix produit:" styleClass="control-label" />
            	<div class="col-xs-10">	
            		<h:inputText value="#{c.email}" styleClass="form-control" />
            	</div> 
            </div>
            <div class="form-group">
            	<h:outputLabel value="Categorie:" styleClass="control-label" />
            	<div class="col-xs-10">	
            	<h:inputText value="#{c.tele}" styleClass="form-control" />
           	</div> 
            </div>
            <div class="form-group">
        		<div class="col-xs-offset-2 col-xs-10">
            		<h:commandButton value="Enregistrer " action="#{c.saveUserRecord}" styleClass="btn btn-primary btn-sm btnPos" />
            	</div>
            </div>
        </h:panelGrid>
        <h:outputText id="saveResult" rendered="#{not empty createdUserId}" value="!!User ajouter bien success!!" style="color:green " />
    </h:form>
    <br /><br />
</f:view>
</body>
</html>