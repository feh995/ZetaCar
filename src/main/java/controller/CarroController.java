package controller;

import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import dao.override.CarroJpa;
import dao.override.MarcaJpa;
import dominio.Carro;
import lombok.Getter;
import lombok.Setter;

@Resource
public class CarroController {

	private MarcaJpa marcaJpa;

	private CarroJpa carroJpa;

	public CarroController(Result result, CarroJpa carroJpa, MarcaJpa marcaJpa) {
		this.carroJpa = carroJpa;
		this.result = result;
		this.marcaJpa = marcaJpa;
	}

	@Getter
	@Setter
	private Result result;

	@Path("/form")
	public void formulario() {
		result.include("marcasList", marcaJpa.pegaTodos());
	}
	@Path("/buscar")
	public void buscar() {
		
	}

	@Post
	public void adiciona(Carro carro) {
		carroJpa.merge(carro);
		result.include("menssagem", "Carro adicionado com sucesso!");
		result.include("carroList", carroJpa.pegaTodos());
		result.redirectTo(CarroController.class).lista();
	}

	@Post
	public void remove(Carro carro) {
		carroJpa.remove(carro);
		result.include("menssagemReport", "Carro removido com sucesso!");
		result.include("carroList", carroJpa.pegaTodos());
		result.redirectTo(CarroController.class).lista();
	}

	public List<Carro> lista() {
		return carroJpa.pegaTodos();
	}

}
