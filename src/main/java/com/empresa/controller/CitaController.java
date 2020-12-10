package com.empresa.controller;
import java.text.ParseException;

import javax.servlet.http.HttpSession;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.empresa.entity.Cita;
import com.empresa.entity.Cliente;
import com.empresa.entity.Horario;
import com.empresa.entity.Medico;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/")
public class CitaController {
	
	private String URL="http://localhost:8090/medico";
	
	@RequestMapping("/cargaMedico/{s1}")
	@ResponseBody
	public  Medico[] listamedicosxespecialidad(@PathVariable("s1") String filtro){
		
		Medico[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Medico[]>data= rt.getForEntity(
						URL+"/buscarmedicos/"+filtro,Medico[].class);
		lista=data.getBody();
		return lista;
	}
	
	@RequestMapping("/cargaHorario/{s1}")
	@ResponseBody
	public Horario[] listaHorarioxMedico(@PathVariable("s1") int filtro) {
		Horario[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Horario[]>data= rt.getForEntity(
						URL+"/buscarhorario/"+filtro,Horario[].class);
		lista=data.getBody();
		return lista;
	}
	
	@RequestMapping("/cargaMedicos")
	@ResponseBody
	public Medico[] listaTodosMedicos() {
		Medico[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Medico[]>data= rt.getForEntity(
						URL+"/listamedicos",Medico[].class);
		lista=data.getBody();
		return lista;
	}
	
	@RequestMapping(value = "/saveCita")
	public String registraCita(@RequestParam("idMedico") int idm,
			                   @RequestParam("fechaHorario") String fh,
			                   @RequestParam("horaInicio") String hi,
			                   @RequestParam("horaFin") String hf,
			                   RedirectAttributes redirect,HttpSession session) throws ParseException 
	{
		
		Cliente obj = (Cliente) session.getAttribute("objCliente");
		
		/*
		DateFormat formatter = new SimpleDateFormat("hh:mm:ss");
		Date horainicio = (Date)formatter.parse(hi);
		Date horafin = (Date)formatter.parse(hf);
*/
		Cita med=new Cita();
		med.setFechaCita(fh);
		med.setHoraInicio(hi);
		med.setHoraFin(hf);
		med.setEstado("Pendiente");
		Medico m = new Medico();
		m.setIdMedico(idm);
		med.setMedico(m);
		med.setPaciente(obj);
		
		//serializar
		Gson gson=new Gson();
		String json=gson.toJson(med);
		//
		RestTemplate rt=new RestTemplate();
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		//unir json+headers
		HttpEntity<String> request=new HttpEntity<String>(json,headers);
		rt.postForObject(URL+"/saveCita/", request, String.class);
	    redirect.addFlashAttribute("MENSAJE","Registro correcto...");
		return "redirect:/verIntranetHome";
	}
	
	
	
	@RequestMapping("/cargaCitas")
	public String listaCitasxPaciente(Model model,HttpSession session) {
        
		Cliente obj = (Cliente) session.getAttribute("objCliente");
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Cita[]>data= rt.getForEntity(URL+"/listarCitasXPaciente/"+obj.getIdPaciente(), Cita[].class);
		Cita[] lista=data.getBody();
		
		model.addAttribute("Citas",lista);
	
		return "crudCita";
	}
	
}
