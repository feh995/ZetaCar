package controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import dao.MarcaDao;
import dominio.Marca;
import lombok.Getter;
import lombok.Setter;

@Resource
public class MarcaController {

	
	
	private MarcaDao marcaDao = new MarcaDao();

	public MarcaController(Result result, MarcaDao marcaDao) {
		this.marcaDao = marcaDao;
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
		result.include("marcasList", marcaDao.pegaTodos());
		result.include("teste", "Variavel do Controller");
	}
	
	@Path("/info")
	public void info() {
		
	}
	
	@Post
	public void adiciona(Marca marca) {
		marcaDao.salva(marca);
		/*result.include("menssagem", "Carro adicionado com sucesso!");*/
		result.include("marcaList", marcaDao.pegaTodos());
		result.redirectTo(CarroController.class).formulario();
	}
	

	

}