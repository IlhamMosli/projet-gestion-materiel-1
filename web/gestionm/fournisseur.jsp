<%-- 
    Document   : fournisseur
    Created on : 14 mai 2024, 20:15:02
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags"  prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> FOURNISSEUR </title>
    </head>
    <body>
        <h1>AJOUTER FOURNISSEUR </h1>
    <s:form action="add">
        <s: textfield name="nom" label="Nom"/>
        <s: textfield name="adresse" label="Adresse"/>
        <s: textfield name="email" label="Email"/>
        <s: textfield name="telephone" label="Tel"/>
        <s: textfield name="site_web" label="SiteWeb"/>
        <s: submit value="AJOUTER" align="center"/>
    </s:form>
    </body>
</html>
