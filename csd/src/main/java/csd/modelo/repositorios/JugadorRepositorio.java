package csd.modelo.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import csd.modelo.entidades.Jugador;


@Repository
public interface JugadorRepositorio  extends JpaRepository<Jugador, Long> {

	

	List<Jugador> findByNombreContaining(String busqueda);

}
