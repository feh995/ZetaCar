package controller;

import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import dao.override.CarroDao;
import dao.override.MarcaDao;
import dominio.Carro;
import lombok.Getter;
import lombok.Setter;

@Resource
public class CarroController {

	private MarcaDao marcaDao;

	private CarroDao carroDao;

	public CarroController(Result result, CarroDao carroDao, MarcaDao marcaDao) {
		this.carroDao = carroDao;
		this.result = result;
		this.marcaDao = marcaDao;
	}

	@Getter

	@Setter
	private Result result;

	@Path("/form")
	public void formulario() {
		result.include("marcasList", marcaDao.pegaTodos());
	}

	@Post
	public void adiciona(Carro carro) {
		carroDao.merge(carro);
		result.include("menssagem", "Carro adicionado com sucesso!");
		result.include("carroList", carroDao.pegaTodos());
		result.redirectTo(CarroController.class).lista();
	}

	@Post
	public void remove(Carro carro) {
		carroDao.remove(carro);
		result.include("menssagemReport", "Carro removido com sucesso!");
		result.include("carroList", carroDao.pegaTodos());
		result.redirectTo(CarroController.class).lista();
	}

	@Post
	public void busca(Carro carro) {
		result.include("marcasList", marcaDao.pegaTodos());
		result.include(carroDao.getById(carro.getId()));
	}

	public List<Carro> lista() {
		return carroDao.pegaTodos();
	}

}