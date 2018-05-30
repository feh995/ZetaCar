package controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import dao.override.MarcaJpa;
import lombok.Getter;
import lombok.Setter;

@Resource
public class MarcaController {

	
	
	private MarcaJpa marcaJpa = new MarcaJpa();

	public MarcaController(Result result, MarcaJpa marcaJpa) {
		this.marcaJpa = marcaJpa;
		this.result = result;
	}
	
	@Path("/marca/formulario")
	public void formulario() {
		
	}
	
	
	
	@Getter
	@Setter
	private Result result;

	

	@Path("/index")
	public void index() {
		result.include("marcasList", marcaJpa.pegaTodos());
		result.include("teste", "Variavel do Controller");
	}
	
	@Path("/info")
	public void info() {
		
	}
	
	
	/*IMPLEMENTAR INCREMENTO DE MARCAS
	@Post
	public void adiciona(Marca marca) {
		marcaJpa.salva(marca);
		result.include("menssagem", "Carro adicionado com sucesso!");
		result.include("marcaList", marcaJpa.pegaTodos());
		result.redirectTo(CarroController.class).formulario();
	}*/
	

	

}