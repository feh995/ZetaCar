package dao.override;

import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import dao.Hibernate;
import dominio.Carro;

@Component
public class CarroJpa extends Hibernate {

	/*private static int idGlobal = 1;*/

	public void merge(Carro carro) {
		try {
			/*carro.setId(idGlobal);*/
			entityManager.getTransaction().begin();
			entityManager.merge(carro);
			entityManager.getTransaction().commit();
			/*idGlobal++;*/
		} catch (Exception ex) {
			ex.printStackTrace();
			entityManager.getTransaction().rollback();
		}
	}

	public List<Carro> pegaTodos() {
		return entityManager.createQuery(" from Carro", Carro.class).getResultList();
	}

}
