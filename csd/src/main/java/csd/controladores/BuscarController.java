package csd.controladores;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import csd.modelo.repositorios.EquiposRepositorio;
import csd.modelo.repositorios.FederacionRepositorio;
import csd.modelo.repositorios.JugadorRepositorio;

@Controller
@RequestMapping("/buscar")
public class BuscarController {
	
	@Autowired
	private JugadorRepositorio jugadorRepo;
	
	@Autowired
	private EquiposRepositorio equipoRepo;
	
	@Autowired
	private FederacionRepositorio federacionRepo;
	
	@RequestMapping(method = RequestMethod.POST)
	public String buscar (@ModelAttribute String busqueda, BindingResult bindingResult, Model model) {
		
		
		model.addAttribute("titulo", "TU BUSQUEDA");

		model.addAttribute("titulo1", "jugador");
		model.addAttribute("titulo2", "equipo");
		model.addAttribute("titulo3", "federacion");
		model.addAttribute("jugadores", jugadorRepo.findByNombreContaining(busqueda));
		model.addAttribute("equipos", equipoRepo.findByNombreContaining(busqueda));
		model.addAttribute("federacion", federacionRepo.findByNombreContaining(busqueda));

	
		
		return "buscar/buscar";
	}

}
