package com.empresa.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.empresa.entity.Cliente;

import com.empresa.service.ClienteService;


@Controller
public class RegisterController {
	
	@Autowired
	private ClienteService  clienteService;

	
	@RequestMapping("/verRegistro")
	public String ver() {
		return "registraCliente";
	}
	

	//el redifrect es para que al recargar f5 no se cree otra ves
	@RequestMapping("/insertaCliente")
	public String regCliente(Cliente obj,HttpSession sesion) {
		try{
			Cliente objSalida= clienteService.RegistrarCliente(obj);
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
	 

	

}
