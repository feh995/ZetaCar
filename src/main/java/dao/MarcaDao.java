package dao;

import java.util.List;

import dominio.Marca;

public interface MarcaDao {

	public void salva(Marca marca) ;

	public List<Marca> pegaTodos();

}
