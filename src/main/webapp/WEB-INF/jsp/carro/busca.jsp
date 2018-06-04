<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zeta Car</title>
</head>
<body>
	<!-- ##################### Cabeçalho do Site ##################### -->
	<div style="background: #23706f; color: #ddd; padding: 8px">
		<h3>
			<center>Sistema de Veiculos</center>
		</h3>
	</div>
	<!-- ##################### Fim do Cabeçalho ##################### -->
	<!-- ##################### Menu do Site  #####################  -->


	<div class="container-fluid h-100">
		<div class="row h-100">
			<aside class="col-12 col-md-2 p-0 bg-dark"> <nav
				class="navbar navbar-expand navbar-dark bg-dark flex-md-column flex-row align-items-start py-2">
			<div class="collapse navbar-collapse">
				<ul
					class="flex-md-column flex-row navbar-nav w-100 justify-content-between">
					<li class="nav-item"><a class="nav-link pl-0 text-nowrap"
						data-toggle="collapse" href="#menuCarro"> <span
							class="font-weight-bold">Carros</span></a>
						<ul id="menuCarro" class="collapse librePanelSubListGroupItem">
							<span><a class="nav-link pl-0" href="/zeta-car/form"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Cadastrar
										Veículo</span></a></span>
							<!-- <span><a class="nav-link pl-0" href="/zeta-car/buscar"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Consultar
										Veículos</span></a></span> -->
							<span><a class="nav-link pl-0"
								href="/zeta-car/carro/lista"><i class="fa fa-list fa-fw"></i>
									<span class="d-none d-md-inline">Listar Veículos</span></a></span>
						</ul></li>

					<!-- <li class="nav-item"><a class="nav-link pl-0 text-nowrap"
						data-toggle="collapse" href="#menuMarca"> <span
							class="font-weight-bold">Marcas</span></a>
						<ul id="menuMarca" class="collapse librePanelSubListGroupItem">
							<span><a class="nav-link pl-0" href="/zeta-car/marca/formulario"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Cadastrar
										Marca</span></a></span>
							<span><a class="nav-link pl-0" href="#"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Listar
										Marcas</span></a></span>
						</ul></li> -->

				</ul>
			</div>
			</nav> </aside>
			<!-- ##################### Fim do menu #####################  -->


			<main class="col bg-faded py-0" style="height:800px;padding:0px">
			<div>
				<table class="table table-striped table-dark">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Marca</th>
							<th scope="col">Modelo</th>
							<th scope="col">Preço</th>
							<th scope="col">Dir. Hidraulica</th>
							<th scope="col">Cor</th>
							<th scope="col">Salvar</th>
						</tr>
					</thead>
					<tbody>
						<form action="<c:url value="/carro/adiciona" />" method="post">
							<tr>
								<td><input type="text" name="carro.id" class="form-control"
									value="${carro.id}" readonly="true" /></td>
								<td><div>
										<select class="form-control" value="carro.marca"
											name="carro.marca" type="text">
											<c:forEach var="marca" items="${marcasList}">
												<option ${marca.nome == carro.marca? 'selected="selected"':'' }>${marca.nome}</option>
											</c:forEach>
										</select>
									</div></td>
								<td><input type="text" name="carro.modelo"
									class="form-control" value="${carro.modelo}" /></td>
								<td>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text">$</span>
										</div>
										<input type="text" name="carro.preco" class="form-control"
											value="${carro.preco}" />
									</div>
								</td>
								<td>
									<div>
										<label> <input type="checkbox" autocomplete="off"
											name="carro.direcao"
											${carro.direcao == 'true'? 'checked="checked"':''}>
										</label>
									</div>
								</td>
								<td>
									<div class="form-group small">
										<div class="form-check form-check-inline">
											<label class="form-check-label"> <input
												class="form-check-input" type="radio" name="carro.cor"
												value="Vermelho"
												${carro.cor == 'Vermelho'? 'checked="checked"':'' }>
												Vermelho
											</label>
										</div>
										<div class="form-check form-check-inline disabled">
											<label class="form-check-label"> <input
												class="form-check-input" type="radio" name="carro.cor"
												value="Branco"
												${carro.cor == 'Branco'? 'checked="checked"':'' }>
												Branco
											</label>
										</div>
										<div class="form-check form-check-inline">
											<label class="form-check-label"> <input
												class="form-check-input" type="radio" name="carro.cor"
												value="Preto"
												${carro.cor == 'Preto'? 'checked="checked"':'' }>
												Preto
											</label>
										</div>
									</div>
								</td>
								<td><input type="submit" value="Salvar" /></td>
							</tr>
						</form>
					</tbody>
				</table>
			</div>
			</main>

		</div>
	</div>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</body>
</html>