package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class  Hibernate {

	private static Hibernate instance;
    protected EntityManager entityManager;
    
    public static Hibernate getInstance(){
              if (instance == null){
                       instance = new Hibernate();
              }
              
              return instance;
    }

    public Hibernate() {
              entityManager = getEntityManager();
    }

    private EntityManager getEntityManager() {
              EntityManagerFactory factory = Persistence.createEntityManagerFactory("crudHibernate");
              if (entityManager == null) {
                       entityManager = factory.createEntityManager();
              }

              return entityManager;
    }
	
}
