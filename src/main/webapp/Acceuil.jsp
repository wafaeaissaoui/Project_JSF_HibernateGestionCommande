<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><style type="text/css">
body{
background-color : #AEACAB;
color : white;
}
.w3-card{
background-color : #C2C0C0 ;
margin-top:16px;margin-bottom:16px;
box-shadow:0 2px 5px0  rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)
}
.left{
       height: 400px;
		width: 48%;
		float: left;
}
.right{
       height: 400px;
		width: 48%;
		float: right;
}
h1{
color:black;

}
p{
margin-left:10px;
}
</style>
</head>
<body>
<f:view>
<div class="container">
<div class="left"> 
  <div class="w3-card">
  <h1>Commande#1-WAFAE Aissaoui</h1>
  <p> 200DH</p>
  <p>1 * produit A=200dh</p>
  <p>7-29-2020 a 12:20h</p>
  <p>en cours</p>
 <h:commandButton value="Modifier" style="background-color:#ADADAD;border-radius:5px;width:100px; margin-left:10px;padding:10px; color:white;border:0 "></h:commandButton>
 <h:commandButton value="Annuler" style="background-color:red;border-radius:5px;width:100px; margin-left:10px;padding:10px; color:white; border:0"></h:commandButton>
 <h:commandButton value="Livree" style="background-color:#2DE45E;border-radius:5px;width:100px ;margin-left:10px;margin-bottom:10px;padding:10px;color:white; border:0"></h:commandButton>
  </div>
  <div class="w3-card"><h1>Commande#1-Mohamed Abdellaoui</h1>
  <p> 200DH</p>
  <p>1 * produit A=200dh</p>
  <p>7-29-2020 a 12:20h</p>
  <p>en cours</p>
  <h:commandButton value="Modifier" style="background-color:#ADADAD;border-radius:5px;width:100px; margin-left:10px;padding:10px; color:white; border:0 "></h:commandButton>
 <h:commandButton value="Annuler" style="background-color:red;border-radius:5px;width:100px; margin-left:10px;padding:10px; color:white; border:0"></h:commandButton>
 <h:commandButton value="Livree" style="background-color:#2DE45E;border-radius:5px;width:100px ;margin-left:10px;margin-bottom:10px;padding:10px;color:white; border:0"></h:commandButton></div>
  <div class="w3-card">
  <h1>Commande#1-abir Machmachi</h1>
  <p> 200DH</p>
  <p>1 * produit A=200dh</p>
  <p>7-29-2020 a 12:20h</p>
  <p>en cours</p>
  <h:commandButton value="Modifier" style="background-color:#ADADAD;border-radius:5px;width:100px; margin-left:10px;padding:10px; color:white; border:0 "></h:commandButton>
 <h:commandButton value="Annuler" style="background-color:red;border-radius:5px;width:100px; margin-left:10px; padding:10px; color:white; border:0"></h:commandButton>
 <h:commandButton value="Livree" style="background-color:#2DE45E;border-radius:5px;width:100px ;margin-left:10px;margin-bottom:10px; padding:10px; color:white; border:0;"></h:commandButton></div>
</div>
<div class="right">

<h:commandButton value="Nouvelle Commande"  style="display: block;
color:white;
top:150px; 
font-size: 1.6em;
font-weight: bold;
margin: 10px auto;
padding: 1em 5em;
position: relative;
border-radius: 4px;
border:0;
background-color:orange;"></h:commandButton>
<h:commandButton value="Chercher Commande"  style="display: block;
color:white;
top:150px;
font-size: 1.6em;
font-weight: bold;
margin: 10px auto;
padding: 1em 5em;
position: relative;
border:0;
border-radius: 4px;
background-color:#1090FD ;
"></h:commandButton>
<h:commandButton value="Chercher Client          "  style="display: block;
color:white;
top:150px;
font-size: 1.6em;
font-weight: bold;
margin: 10px auto;
padding: 1em 5em;
position: relative;
border-radius: 4px;
border:0;
background-color:#14DE4A;"></h:commandButton>


</div>
</div>
</f:view>
</body>
</html>