package dao.override;

import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import dao.Hibernate;
import dominio.Marca;

@Component
public class MarcaDao extends Hibernate {

	public List<Marca> pegaTodos() {
		return entityManager.createQuery(" from Marca", Marca.class).getResultList();
	}
}