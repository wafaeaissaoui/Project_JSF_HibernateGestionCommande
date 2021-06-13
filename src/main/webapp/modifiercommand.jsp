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
<center><h2></h2></center>
    <!-- New Student Form -->
   
    <h:form id="studentSaveForm" style=" height: 300px;
		width: 50%;
		float: left;">  <h3 >Modifier Commande</h3>   	
        <h:panelGrid columns="2">  
        	<div class="form-group">
            	
            </div>
            <div class="form-group">
            	<h:outputLabel value="Nom produit:" styleClass="control-label" />
            	<div class="col-xs-10">
            		<h:inputText value="#{cm.label} " styleClass="form-control" /> 
            	</div> 
            </div>
            <div class="form-group">
            	<h:outputLabel value="Prix produit:" styleClass="control-label" />
            	<div class="col-xs-10">	
            		<h:inputText value="#{cm.prix}" styleClass="form-control" />
            	</div> 
            </div>
            <div class="form-group">
            	<h:outputLabel value="date de commande :" styleClass="control-label" />
            	<div class="col-xs-10">	
            	<h:inputText value="#{cm.date_command}" styleClass="form-control" />
           	</div> 
            </div>
            <div class="form-group">
        		<div class="col-xs-10">
            		<h:commandButton value="Enregistrer " action="#{cm.update}" style="background-color:#14DE4A; padding:5px;margin:15px;border:0" />
            		<h:commandButton value="Annuler " action="#{cm.update}" style="background-color:red;padding:5px;margin:15px;border:0" />
            	</div>
            </div>
        </h:panelGrid>
        <h:outputText id="saveResult" rendered="#{not empty createdStudentId}" value="!!Produit ajouter bien success!!" style="color:red " />
    </h:form>
    <br /><br />
</f:view>
</body>
</html>