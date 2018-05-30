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
							<span><a class="nav-link pl-0" href="#"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Consultar
										Veículos</span></a></span>
							<span><a class="nav-link pl-0" href="/zeta-car/carro/lista"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Listar
										Veículos</span></a></span>
						</ul></li>

					<li class="nav-item"><a class="nav-link pl-0 text-nowrap"
						data-toggle="collapse" href="#menuMarca"> <span
							class="font-weight-bold">Marcas</span></a>
						<ul id="menuMarca" class="collapse librePanelSubListGroupItem">
							<span><a class="nav-link pl-0" href="/zeta-car/marca/formulario"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Cadastrar
										Marca</span></a></span>
							<span><a class="nav-link pl-0" href="#"><i
									class="fa fa-list fa-fw"></i> <span class="d-none d-md-inline">Listar
										Marcas</span></a></span>
						</ul></li>

				</ul>
			</div>
			</nav> </aside>
			<!-- ##################### Fim do menu #####################  -->
			
			
			
			
			<main class="col bg-faded py-3" style="height:800px">
			<h2>Lorem Ipsum</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Praesent blandit ipsum in turpis porttitor posuere. Ut accumsan ex
				tortor, ac vehicula sem mollis in. Nulla facilisi. Donec rhoncus
				lobortis vulputate. Sed porta convallis sollicitudin. Curabitur
				tempor lacus finibus rutrum porta. Etiam eget lobortis mi. Vivamus
				auctor enim tellus, ut lacinia libero rhoncus nec. Sed ornare neque
				sed risus fringilla, eget sodales tortor pharetra. In vitae auctor
				nibh. Proin ac auctor urna. Fusce dapibus turpis placerat dictum
				lacinia. Nullam aliquam leo quis tellus varius efficitur. Aenean nec
				lacinia turpis. Nulla at enim posuere, tempus magna et, blandit
				enim. Nam luctus dui id accumsan pretium. Lorem ipsum dolor sit
				amet, consectetur adipiscing elit. Donec convallis massa ut ex
				venenatis auctor. Pellentesque congue arcu ipsum, euismod interdum
				nulla fringilla ac. Aliquam id ipsum ultrices arcu luctus iaculis a
				et dui. Nam egestas porttitor nunc non volutpat. Phasellus ante
				sapien, laoreet sit amet turpis nec, euismod interdum elit. Mauris
				imperdiet, arcu quis ornare ornare, ipsum massa laoreet ligula, at
				posuere odio tortor sed lectus. Vestibulum quis pulvinar sem. In nec
				dolor vitae magna laoreet dictum. Quisque nulla sem, placerat vel
				scelerisque non, faucibus eget nulla. Vestibulum at efficitur
				ligula, in venenatis arcu. Donec convallis justo eu nisl mollis
				laoreet. Aliquam metus tellus, ornare vel lorem a, congue porta
				ipsum. Nulla facilisi. Donec sit amet sagittis eros. Duis lacinia
				vulputate odio quis pulvinar. Morbi suscipit quam ligula, ac rutrum
				enim feugiat et. Vivamus molestie lectus sed tempor faucibus.
				Suspendisse nec erat commodo, scelerisque mi eu, volutpat lectus.
				Vestibulum turpis sapien, imperdiet eget sem fermentum, rutrum
				euismod nisi. Quisque eros ex, bibendum et augue non, pellentesque
				rutrum dui. Etiam interdum interdum enim at malesuada. Phasellus vel
				urna sit amet lorem venenatis tempor ut eu sem. Mauris dapibus dolor
				diam, eu convallis velit imperdiet nec. Ut condimentum nulla et diam
				tincidunt, id mattis lectus fermentum. Vestibulum egestas dui ut
				purus vulputate, aliquam gravida velit luctus. Morbi nec neque vitae
				dui tincidunt tempor et et justo. Lorem ipsum dolor sit amet,
				consectetur adipiscing elit. Maecenas consectetur auctor ligula
				vehicula blandit. Sed iaculis mi non augue dignissim, mattis finibus
				nisi egestas. In metus arcu, feugiat id augue vel, congue varius
				nisl. Aliquam ullamcorper sit amet mauris vitae suscipit. Proin
				auctor mattis tristique. Phasellus volutpat varius quam a mattis.
				Quisque auctor sit amet risus id semper. Duis aliquet dapibus
				aliquet. Fusce pharetra aliquam fermentum. Integer volutpat
				vestibulum diam sit amet fringilla. Ut quis pellentesque orci, non
				luctus eros. Cras imperdiet quis arcu sit amet pretium. Quisque
				tincidunt metus a augue vestibulum, non iaculis nisl venenatis.
				Nullam eu rhoncus lectus. Nulla rhoncus, dolor sit amet vulputate
				viverra, metus turpis fringilla justo, sed fermentum ex ipsum et
				lectus. Vivamus pulvinar volutpat enim, vel placerat dolor tempor
				ut. Mauris commodo, lorem id volutpat scelerisque, massa mi
				porttitor justo, vel placerat eros eros nec est. Morbi euismod ex
				rhoncus, ornare magna quis, venenatis ex. Mauris dignissim tellus at
				orci malesuada sagittis. Vivamus sagittis tristique arcu, ac
				efficitur leo vestibulum id.</p>
			</main>
		</div>
	</div>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</body>
</html>