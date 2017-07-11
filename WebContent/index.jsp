<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Gerenciamento</title>
</head>
<body>
	<h2>Bem vindo ao nosso gerenciador de empresas!</h2><br/>
	<c:if test="${usuarioLogado != null}">
		Voce esta logado como ${usuarioLogado.email}</br>
	</c:if>
	
	<form action="executa?tarefa=NovaEmpresa" method="post">
		<h3>Cadastro de nova empresa:</h3></br>
		Nome:<input type="text" name="nome">
		<input type="submit" name="Enviar">
	</form>
	
	</br></br>
	
	<form action="executa?tarefa=BuscaEmpresa" method="get">
		<!--
		<h3>Busca de empresas:</h3></br>
		Nome:<input type="text" name="filtro">
		<input type="submit" name="Buscar">
		-->
	</form>
	
	</br></br>
	
	<form action="login" method="post">
		<h3>Login de usuario:</h3></br>
		Login:<input type="text" name="email">
		</br></br>
		Senha:<input type="password" name="senha">
		<input type="submit" name="Enviar">
	</form>
	
	</br></br>
	
	<form action="executa?tarefa=Logout" method="post">
		<input type="submit" name="Logout"/>
	</form>
	
</body>
</html>