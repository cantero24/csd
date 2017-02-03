package csd.modelo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import csd.modelo.entidades.Federacion;


@Repository
public interface FederacionRepositorio  extends CrudRepository<Federacion, Long>{

	

	List<Federacion> findByNombreContaining(String busqueda);
	

}
	
	
	
	

