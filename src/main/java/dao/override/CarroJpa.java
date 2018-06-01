package dao.override;

import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import dao.Hibernate;
import dominio.Carro;

@Component
public class CarroJpa extends Hibernate {

	public void merge(Carro carro) {
		try {
			entityManager.getTransaction().begin();
			entityManager.merge(carro);
			entityManager.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			entityManager.getTransaction().rollback();
		}
	}

	public List<Carro> pegaTodos() {
		return entityManager.createQuery(" from Carro", Carro.class).getResultList();
	}

	public void remove(Carro carro) {
		try {
			entityManager.getTransaction().begin();
			carro = entityManager.find(Carro.class, carro.getId());
			entityManager.remove(carro);
			entityManager.getTransaction().commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			entityManager.getTransaction().rollback();
		}
	}

}
