<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List, br.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/mostraEmpresa" var="linkMostraEmpresa"></c:url>
<c:url value="/removeEmpresa" var="linkRemoveEmpresa"></c:url>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>
	<c:if test="${not empty empresa}">
		<p>Empresa ${ empresa } cadastrada com sucesso!</p>
	</c:if>
	<p>Lista de empresas cadastradas:</p>
	
	<ol>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
				<a href=${linkMostraEmpresa}?id=${empresa.id}>editar</a>
				<a href=${linkRemoveEmpresa}?id=${empresa.id}>remover</a> 
			</li>
		</c:forEach>
	</ol>
	
</body>
</html>