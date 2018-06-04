package dao;

import java.util.List;

public interface GenrericDAO<E>{

	public void salva(E element);

	public List<E> pegaTodos();

	public void remove(E element);
	
}