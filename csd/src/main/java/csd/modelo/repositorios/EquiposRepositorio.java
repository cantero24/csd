package csd.modelo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import csd.modelo.entidades.Equipos;

@Repository
public interface EquiposRepositorio  extends CrudRepository<Equipos, Long>{

	

	List<Equipos> findByNombreContaining(String busqueda);

	
	

}
	