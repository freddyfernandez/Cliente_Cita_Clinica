package com.empresa.controller;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.empresa.entity.Cliente;


@Controller
@RequestMapping(value = "/")

public class LoginController {



	@RequestMapping("/")
	public String verIndex() {
		return "Index";
	}
	
	@RequestMapping("/verlogin")
	public String verlogin() {
		return "login";
	}
	
	
	//obtencion de la url correlativo al json
	private String URL="http://localhost:8090/Paciente/ValidarUsuario/";
    @RequestMapping("/login")
	public String login(@RequestParam("login") String vLogin, @RequestParam("password")String vClave,
			Cliente model, HttpServletRequest request, 	HttpSession session){
		
		RestTemplate rt1=new RestTemplate();		
		ResponseEntity<Cliente> response = rt1.getForEntity(URL+vLogin+"/"+vClave, Cliente.class);
		
		
		Cliente objUsu =response.getBody();
		System.out.println(""+URL+vLogin+"/"+vClave);

		if (objUsu == null) {
			request.setAttribute("mensaje", "El usuario no existe");
			return "login";
		} else {
			session.setAttribute("objCliente", objUsu);
			return "redirect:/verIntranetHome";
		}
	}
	

	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		//Destruir todos los objetos de la sesion mediante programación
		session.invalidate();

		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Expires", "0");
		response.setHeader("Pragma", "no-cache");

		request.setAttribute("mensaje", "El usuario salió de sesión");
		return "login";

	}
	
	@RequestMapping("/verIntranetHome")
	public String verIntranet() {
		return "intranetHome";
	}
	@RequestMapping("/verRegistroCita")
	public String verRegistroCita() {
		return "RegistroCita";
	}
	
	

}
