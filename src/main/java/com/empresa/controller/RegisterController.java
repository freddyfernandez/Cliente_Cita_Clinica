package com.empresa.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
	


	
	@RequestMapping("/verRegistro")
	public String ver() {
		return "registraCliente";
	}
	

	//el redifrect es para que al recargar f5 no se cree otra ves
	//@RequestMapping("/insertaCliente")
	/*public String regCliente(Cliente obj,HttpSession sesion) {
		try{
	//		Cliente objSalida= clienteService.RegistrarCliente(obj);
			if(objSalida != null) {
				sesion.setAttribute("MENSAJE", "Se registro correctamente");
				
			}
			else {
				sesion.setAttribute("MENSAJE", "Error al registrar");
			}
		}
		catch(Exception e) {
			sesion.setAttribute("MENSAJE", "Error al registrar");
			e.printStackTrace();
		}
		return "redirect:salida";
	}
	
	
	@RequestMapping("/salida")
	public String salida() {
		return "registraCliente";
	}
	 

	*/

}
