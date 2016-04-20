<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Saisie des informations</title>

<!-- <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="Climatisation.js"></script> -->

</head>
<body>
<c:if test="${not empty sessionScope.nomUser}">
<div>${sessionScope.nomUser} est connecté</div>
<a href="LogoutCineRomeV2">se déconnecter</a><br/>
<form action="PanierCineRomeV2Controller" method="POST">
<input type="submit" value="Voir mon panier" name="action"/>
</form>
</c:if>

<c:if test="${empty sessionScope.nomUser}">
<a href="LoginController">se connecter</a><br/>

</c:if>

<a href="ListDesArticles">liste des articles</a><br/>

<br/>
<br/>

<form action="CineRomeV2Controller" method="POST">
	<label>Choisissez le type d'article</label><%-- <input id="sourceNbId" type="text" value="${nom}" name="nom"/> --%>
	<%-- <span style="color:red">${nomErreur}</span>
	<span id="nbId" style="color:blue"></span> --%>
	<select name="typeArticle" id="typeArticle">
		<optgroup label="discographie">
		<option value="Livre"> Livre </option>
		<option value="DVD"> DVD </option>
		<option value="BluRay"> BluRay </option>
		</optgroup> </select>
	<br/>
	
	<label>prix (HT)</label><input type="text" value="0" name="prixHT"/><span style="color:red">${prixHTErreur}</span><br/>
	<label>stock</label><input type="text" value="10" name="stock"/><span style="color:red">${stockErreur}</span><br/>
	<label>designation </label><input type = "text" value="${designation}" name="designation"><span style="color:red">${designationErreur}</span><br/>
	<label>reference </label><input type = "text" value="${reference}" name="reference"><span style="color:red">${referenceErreur}</span><br/>
	 <%-- <c:if test="${not empty Bluray}">  --%>
	<label>realisateur </label><input type = "text" value="${realisateur}" name="realisateur"><span style="color:red">${realisateurErreur}</span><br/>
	 <%-- </c:if> --%>
	<label>titre </label><input type = "text" value="${titre}" name="titre"><span style="color:red">${titreErreur}</span><br/>
	<label>auteur </label><input type = "text" value="${auteur}" name="auteur"><span style="color:red">${auteurErreur}</span><br/>
	<label>editeur </label><input type = "text" value="${editeur}" name="editeur"><span style="color:red">${editeurErreur}</span><br/>
	<label>genre </label><input type = "text" value="${genre}" name="genre"><span style="color:red">${genreErreur}</span><br/>
	<input type="submit" value="Valider" name="action"/>
	
</form>


</body>
</html>