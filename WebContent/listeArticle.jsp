<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste des articles</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty sessionScope.nomUser}">
			<div>${sessionScope.nomUser}estconnecté</div>
			<a href="CineRomeV2Controller"> Ajouter un appareil</a>
			<br />
			<a href="LogoutCineRomeV2"> Se déconnecter</a>
			<br />
			<br />
		</c:when>
		<c:otherwise>
			<a href="LoginController"> Se connecter</a>
			<br />
			<br />
		</c:otherwise>
	</c:choose>
	<fieldset>

		<p>la liste des articles : ${listArticles}</p>
		<legend>Articles : </legend>
		<!-- <table>
			<tr>
				<th>Nom</th>
				<th>Température</th>
				<th>Pression</th>
			</tr> -->



		<c:forEach var="object_article" items="${listArticles}">
			<tr>
				<%-- 				<td>${object_article.getClass()}</td> --%>
				<td>${object_article.prixHt}</td>
				<td>${object_article.stock}</td>
				<td>${object_article.designation}</td>
				<td>${object_article.reference}</td>
				<td>${object_article.titre}</td>
				<%-- <c:if (objet_article instanceof BluRayCineRomeV2) > --%>
				<%-- 	<td>${(BluRayCineRomeV2)object_article.realisateur}</td> --%>
				<%-- 	</c:if> --%>
				<td>${object_article.auteur}</td>
				<td>${object_article.editeur}</td>
				<td>${object_article.genre}</td>
				<form action="ListDesArticles" method="POST">
					<p>
						<label> Qté : </label> <input type="text" value="" name="Qty"/>
						<input type="hidden" name="reference" value="${object_article.reference}" />
						<input type="submit" value="Ajouter" name="addItem"/>
						<input type="submit" value="Retirer" name="rmItem"/>
					</p>
				</form>
				<BR>
			</tr>

		</c:forEach>
	</fieldset>

	<div>${rechercheToutErreur}</div>

</body>
</html>