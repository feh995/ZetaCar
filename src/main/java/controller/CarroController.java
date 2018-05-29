package controller;

import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import dao.CarroDao;
import dao.MarcaDao;
import dominio.Carro;
import lombok.Getter;
import lombok.Setter;

@Resource
public class CarroController {

	private MarcaDao marcaDao;

	public CarroController(Result result, CarroDao carroDao, MarcaDao marcaDao) {
		this.carroDao = carroDao;
		this.result = result;
		this.marcaDao = marcaDao;
	}

	private CarroDao carroDao = new CarroDao();

	@Getter
	@Setter
	private Result result;

	@Path("/form")
	public void formulario() {
		result.include("marcasList", marcaDao.pegaTodos());
	}

	@Post
	public void adiciona(Carro carro) {
		carroDao.salva(carro);
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

	public List<Carro> lista() {
		return carroDao.pegaTodos();
	}

}
