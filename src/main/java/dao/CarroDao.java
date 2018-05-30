package dao;

import java.util.List;

import dominio.Carro;

public interface CarroDao {

	public void salva(Carro carro);

	public List<Carro> pegaTodos();

	public void remove(Carro carro);
	
}
